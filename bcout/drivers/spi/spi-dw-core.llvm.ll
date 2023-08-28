; ModuleID = '../bcout/drivers/spi/spi-dw-core.llvm.bc'
source_filename = "drivers/spi/spi-dw-core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
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
%struct.spi_device = type { %struct.device, %struct.spi_controller*, %struct.spi_controller*, i32, i8, i8, i8, i32, i32, i8*, i8*, [32 x i8], i8*, i32, %struct.gpio_desc*, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i64 (%struct.spi_device*)*, i64 (%struct.spi_device*)*, %struct.mutex, %struct.spinlock, %struct.mutex, i8, i32 (%struct.spi_device*)*, i32 (%struct.spi_device*, %struct.spi_delay*, %struct.spi_delay*, %struct.spi_delay*)*, i32 (%struct.spi_device*, %struct.spi_message*)*, void (%struct.spi_device*)*, i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)*, i8, %struct.kthread_worker*, %struct.kthread_work, %struct.spinlock, %struct.list_head, %struct.spi_message*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i64, i32 (%struct.spi_controller*)*, i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*)*, i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*)*, {}*, i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)*, void (%struct.spi_controller*, %struct.spi_message*)*, %struct.spi_controller_mem_ops*, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32*, %struct.gpio_desc**, i8, i8, i8, %struct.spi_statistics, %struct.dma_chan*, %struct.dma_chan*, i8*, i8*, i32 (%struct.spi_controller*, i32)*, i8, i64 }
%struct.spi_transfer = type { i8*, i8*, i32, i64, i64, %struct.sg_table, %struct.sg_table, i8, i8, i16, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, %struct.ptp_system_timestamp*, i8, %struct.list_head, i16 }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.kthread_work* }
%struct.kthread_work = type { %struct.list_head, void (%struct.kthread_work*)*, %struct.kthread_worker*, i32 }
%struct.spi_message = type { %struct.list_head, %struct.spi_device*, i8, void (i8*)*, i8*, i32, i32, i32, %struct.list_head, i8*, %struct.list_head }
%struct.spi_controller_mem_ops = type { i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i1 (%struct.spi_mem*, %struct.spi_mem_op*)*, i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i8* (%struct.spi_mem*)*, i32 (%struct.spi_mem_dirmap_desc*)*, void (%struct.spi_mem_dirmap_desc*)*, i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)*, i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)* }
%struct.spi_mem = type { %struct.spi_device*, i8*, i8* }
%struct.spi_mem_op = type { %struct.anon.65, %struct.anon.66, %struct.anon.67, %struct.anon.68 }
%struct.anon.65 = type { i8, i8, i8, i16 }
%struct.anon.66 = type { i8, i8, i8, i64 }
%struct.anon.67 = type { i8, i8, i8 }
%struct.anon.68 = type { i8, i8, i32, i32, %union.anon.69 }
%union.anon.69 = type { i8* }
%struct.spi_mem_dirmap_desc = type { %struct.spi_mem*, %struct.spi_mem_dirmap_info, i32, i8* }
%struct.spi_mem_dirmap_info = type { %struct.spi_mem_op, i64, i64 }
%struct.dma_chan = type opaque
%struct.gpio_desc = type opaque
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [17 x i64], i64 }
%struct.dw_spi = type { %struct.spi_controller*, i8*, i64, i32, i32, i32, i32, i32, i32, i16, i16, void (%struct.spi_device*, i1)*, i8*, i32, i8*, i32, [266 x i8], i32, i8, i32 (%struct.dw_spi*)*, i32, i32, i32, %struct.spi_controller_mem_ops, %struct.dma_chan*, i32, %struct.dma_chan*, i32, i32, i64, i64, %struct.dw_spi_dma_ops*, %struct.completion }
%struct.dw_spi_dma_ops = type { i32 (%struct.device*, %struct.dw_spi*)*, void (%struct.dw_spi*)*, i32 (%struct.dw_spi*, %struct.spi_transfer*)*, i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)*, i32 (%struct.dw_spi*, %struct.spi_transfer*)*, void (%struct.dw_spi*)* }
%struct.dw_spi_cfg = type { i8, i8, i32, i32 }
%struct.chip_data = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"RX FIFO overflow detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"RX FIFO underflow detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"TX FIFO overflow detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"can not get IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"rx-sample-delay-ns\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"DMA init failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"problem registering spi master\0A\00", align 1
@__UNIQUE_ID_author271 = internal constant [46 x i8] c"spi_dw.author=Feng Tang <feng.tang@intel.com>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description272 = internal constant [61 x i8] c"spi_dw.description=Driver for DesignWare SPI controller core\00", section ".modinfo", align 1, !dbg !150
@__UNIQUE_ID_file273 = internal constant [31 x i8] c"spi_dw.file=drivers/spi/spi-dw\00", section ".modinfo", align 1, !dbg !157
@__UNIQUE_ID_license274 = internal constant [22 x i8] c"spi_dw.license=GPL v2\00", section ".modinfo", align 1, !dbg !162
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"CS de-assertion on Tx\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"FIFO overflow on Rx\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Mem op hanged up\0A\00", align 1
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_author271, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_description272, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_file273, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license274, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dw_spi_set_cs(%struct.spi_device* %spi, i1 zeroext %enable) #0 !dbg !176 {
entry:
  %spi.addr = alloca %struct.spi_device*, align 8
  %enable.addr = alloca i8, align 1
  %dws = alloca %struct.dw_spi*, align 8
  %cs_high = alloca i8, align 1
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !4156, metadata !DIExpression()), !dbg !4157
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !4158, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws, metadata !4160, metadata !DIExpression()), !dbg !4223
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !4224
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %0, i32 0, i32 1, !dbg !4225
  %1 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !4225
  %call = call i8* @spi_controller_get_devdata(%struct.spi_controller* %1) #10, !dbg !4226
  %2 = bitcast i8* %call to %struct.dw_spi*, !dbg !4226
  store %struct.dw_spi* %2, %struct.dw_spi** %dws, align 8, !dbg !4223
  call void @llvm.dbg.declare(metadata i8* %cs_high, metadata !4227, metadata !DIExpression()), !dbg !4228
  %3 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !4229
  %mode = getelementptr inbounds %struct.spi_device, %struct.spi_device* %3, i32 0, i32 7, !dbg !4230
  %4 = load i32, i32* %mode, align 8, !dbg !4230
  %and = and i32 %4, 4, !dbg !4231
  %tobool = icmp ne i32 %and, 0, !dbg !4232
  %lnot = xor i1 %tobool, true, !dbg !4232
  %lnot1 = xor i1 %lnot, true, !dbg !4233
  %frombool2 = zext i1 %lnot1 to i8, !dbg !4228
  store i8 %frombool2, i8* %cs_high, align 1, !dbg !4228
  %5 = load i8, i8* %cs_high, align 1, !dbg !4234
  %tobool3 = trunc i8 %5 to i1, !dbg !4234
  %conv = zext i1 %tobool3 to i32, !dbg !4234
  %6 = load i8, i8* %enable.addr, align 1, !dbg !4236
  %tobool4 = trunc i8 %6 to i1, !dbg !4236
  %conv5 = zext i1 %tobool4 to i32, !dbg !4236
  %cmp = icmp eq i32 %conv, %conv5, !dbg !4237
  br i1 %cmp, label %if.then, label %if.else, !dbg !4238

if.then:                                          ; preds = %entry
  %7 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !4239
  %8 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !4240
  %chip_select = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 4, !dbg !4240
  %9 = load i8, i8* %chip_select, align 4, !dbg !4240
  %conv7 = zext i8 %9 to i32, !dbg !4240
  %sh_prom = zext i32 %conv7 to i64, !dbg !4240
  %shl = shl i64 1, %sh_prom, !dbg !4240
  %conv8 = trunc i64 %shl to i32, !dbg !4240
  call void @dw_writel(%struct.dw_spi* %7, i32 16, i32 %conv8) #10, !dbg !4241
  br label %if.end, !dbg !4241

if.else:                                          ; preds = %entry
  %10 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !4242
  call void @dw_writel(%struct.dw_spi* %10, i32 16, i32 0) #10, !dbg !4243
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4244
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @spi_controller_get_devdata(%struct.spi_controller* %ctlr) #0 !dbg !4245 {
entry:
  %ctlr.addr = alloca %struct.spi_controller*, align 8
  store %struct.spi_controller* %ctlr, %struct.spi_controller** %ctlr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr.addr, metadata !4248, metadata !DIExpression()), !dbg !4249
  %0 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4250
  %dev = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %0, i32 0, i32 0, !dbg !4251
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #10, !dbg !4252
  ret i8* %call, !dbg !4253
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dw_writel(%struct.dw_spi* %dws, i32 %offset, i32 %val) #0 !dbg !4254 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %offset.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !4257, metadata !DIExpression()), !dbg !4258
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !4259, metadata !DIExpression()), !dbg !4260
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4261, metadata !DIExpression()), !dbg !4262
  %0 = load i32, i32* %val.addr, align 4, !dbg !4263
  %1 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4264
  %regs = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %1, i32 0, i32 1, !dbg !4265
  %2 = load i8*, i8** %regs, align 8, !dbg !4265
  %3 = load i32, i32* %offset.addr, align 4, !dbg !4266
  %idx.ext = zext i32 %3 to i64, !dbg !4267
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext, !dbg !4267
  call void @__writel(i32 %0, i8* %add.ptr) #10, !dbg !4268
  ret void, !dbg !4269
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dw_spi_check_status(%struct.dw_spi* %dws, i1 zeroext %raw) #0 !dbg !4270 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %raw.addr = alloca i8, align 1
  %irq_status = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !4273, metadata !DIExpression()), !dbg !4274
  %frombool = zext i1 %raw to i8
  store i8 %frombool, i8* %raw.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %raw.addr, metadata !4275, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.declare(metadata i32* %irq_status, metadata !4277, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4279, metadata !DIExpression()), !dbg !4280
  store i32 0, i32* %ret, align 4, !dbg !4280
  %0 = load i8, i8* %raw.addr, align 1, !dbg !4281
  %tobool = trunc i8 %0 to i1, !dbg !4281
  br i1 %tobool, label %if.then, label %if.else, !dbg !4283

if.then:                                          ; preds = %entry
  %1 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4284
  %call = call i32 @dw_readl(%struct.dw_spi* %1, i32 52) #10, !dbg !4285
  store i32 %call, i32* %irq_status, align 4, !dbg !4286
  br label %if.end, !dbg !4287

if.else:                                          ; preds = %entry
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4288
  %call1 = call i32 @dw_readl(%struct.dw_spi* %2, i32 48) #10, !dbg !4289
  store i32 %call1, i32* %irq_status, align 4, !dbg !4290
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %irq_status, align 4, !dbg !4291
  %and = and i32 %3, 8, !dbg !4293
  %tobool2 = icmp ne i32 %and, 0, !dbg !4293
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4294

if.then3:                                         ; preds = %if.end
  %4 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4295
  %master = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %4, i32 0, i32 0, !dbg !4295
  %5 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4295
  %dev = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %5, i32 0, i32 0, !dbg !4295
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #11, !dbg !4295
  store i32 -5, i32* %ret, align 4, !dbg !4297
  br label %if.end4, !dbg !4298

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %irq_status, align 4, !dbg !4299
  %and5 = and i32 %6, 4, !dbg !4301
  %tobool6 = icmp ne i32 %and5, 0, !dbg !4301
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !4302

if.then7:                                         ; preds = %if.end4
  %7 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4303
  %master8 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %7, i32 0, i32 0, !dbg !4303
  %8 = load %struct.spi_controller*, %struct.spi_controller** %master8, align 8, !dbg !4303
  %dev9 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %8, i32 0, i32 0, !dbg !4303
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !4303
  store i32 -5, i32* %ret, align 4, !dbg !4305
  br label %if.end10, !dbg !4306

if.end10:                                         ; preds = %if.then7, %if.end4
  %9 = load i32, i32* %irq_status, align 4, !dbg !4307
  %and11 = and i32 %9, 2, !dbg !4309
  %tobool12 = icmp ne i32 %and11, 0, !dbg !4309
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !4310

if.then13:                                        ; preds = %if.end10
  %10 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4311
  %master14 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %10, i32 0, i32 0, !dbg !4311
  %11 = load %struct.spi_controller*, %struct.spi_controller** %master14, align 8, !dbg !4311
  %dev15 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %11, i32 0, i32 0, !dbg !4311
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !4311
  store i32 -5, i32* %ret, align 4, !dbg !4313
  br label %if.end16, !dbg !4314

if.end16:                                         ; preds = %if.then13, %if.end10
  %12 = load i32, i32* %ret, align 4, !dbg !4315
  %tobool17 = icmp ne i32 %12, 0, !dbg !4315
  br i1 %tobool17, label %if.then18, label %if.end25, !dbg !4317

if.then18:                                        ; preds = %if.end16
  %13 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4318
  call void @spi_reset_chip(%struct.dw_spi* %13) #10, !dbg !4320
  %14 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4321
  %master19 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %14, i32 0, i32 0, !dbg !4323
  %15 = load %struct.spi_controller*, %struct.spi_controller** %master19, align 8, !dbg !4323
  %cur_msg = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %15, i32 0, i32 28, !dbg !4324
  %16 = load %struct.spi_message*, %struct.spi_message** %cur_msg, align 8, !dbg !4324
  %tobool20 = icmp ne %struct.spi_message* %16, null, !dbg !4321
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !4325

if.then21:                                        ; preds = %if.then18
  %17 = load i32, i32* %ret, align 4, !dbg !4326
  %18 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4327
  %master22 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %18, i32 0, i32 0, !dbg !4328
  %19 = load %struct.spi_controller*, %struct.spi_controller** %master22, align 8, !dbg !4328
  %cur_msg23 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %19, i32 0, i32 28, !dbg !4329
  %20 = load %struct.spi_message*, %struct.spi_message** %cur_msg23, align 8, !dbg !4329
  %status = getelementptr inbounds %struct.spi_message, %struct.spi_message* %20, i32 0, i32 7, !dbg !4330
  store i32 %17, i32* %status, align 8, !dbg !4331
  br label %if.end24, !dbg !4327

if.end24:                                         ; preds = %if.then21, %if.then18
  br label %if.end25, !dbg !4332

if.end25:                                         ; preds = %if.end24, %if.end16
  %21 = load i32, i32* %ret, align 4, !dbg !4333
  ret i32 %21, !dbg !4334
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_readl(%struct.dw_spi* %dws, i32 %offset) #0 !dbg !4335 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %offset.addr = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !4338, metadata !DIExpression()), !dbg !4339
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !4340, metadata !DIExpression()), !dbg !4341
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4342
  %regs = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %0, i32 0, i32 1, !dbg !4343
  %1 = load i8*, i8** %regs, align 8, !dbg !4343
  %2 = load i32, i32* %offset.addr, align 4, !dbg !4344
  %idx.ext = zext i32 %2 to i64, !dbg !4345
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !4345
  %call = call i32 @__readl(i8* %add.ptr) #10, !dbg !4346
  ret i32 %call, !dbg !4347
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_reset_chip(%struct.dw_spi* %dws) #0 !dbg !4348 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !4349, metadata !DIExpression()), !dbg !4350
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4351
  call void @spi_enable_chip(%struct.dw_spi* %0, i32 0) #10, !dbg !4352
  %1 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4353
  call void @spi_mask_intr(%struct.dw_spi* %1, i32 255) #10, !dbg !4354
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4355
  %call = call i32 @dw_readl(%struct.dw_spi* %2, i32 72) #10, !dbg !4356
  %3 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4357
  call void @dw_writel(%struct.dw_spi* %3, i32 16, i32 0) #10, !dbg !4358
  %4 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4359
  call void @spi_enable_chip(%struct.dw_spi* %4, i32 1) #10, !dbg !4360
  ret void, !dbg !4361
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dw_spi_update_config(%struct.dw_spi* %dws, %struct.spi_device* %spi, %struct.dw_spi_cfg* %cfg) #0 !dbg !4362 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %spi.addr = alloca %struct.spi_device*, align 8
  %cfg.addr = alloca %struct.dw_spi_cfg*, align 8
  %chip = alloca %struct.chip_data*, align 8
  %cr0 = alloca i32, align 4
  %speed_hz = alloca i32, align 4
  %clk_div = alloca i16, align 2
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !4372, metadata !DIExpression()), !dbg !4373
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !4374, metadata !DIExpression()), !dbg !4375
  store %struct.dw_spi_cfg* %cfg, %struct.dw_spi_cfg** %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi_cfg** %cfg.addr, metadata !4376, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.declare(metadata %struct.chip_data** %chip, metadata !4378, metadata !DIExpression()), !dbg !4384
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !4385
  %call = call i8* @spi_get_ctldata(%struct.spi_device* %0) #10, !dbg !4386
  %1 = bitcast i8* %call to %struct.chip_data*, !dbg !4386
  store %struct.chip_data* %1, %struct.chip_data** %chip, align 8, !dbg !4384
  call void @llvm.dbg.declare(metadata i32* %cr0, metadata !4387, metadata !DIExpression()), !dbg !4388
  %2 = load %struct.chip_data*, %struct.chip_data** %chip, align 8, !dbg !4389
  %cr01 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %2, i32 0, i32 0, !dbg !4390
  %3 = load i32, i32* %cr01, align 4, !dbg !4390
  store i32 %3, i32* %cr0, align 4, !dbg !4388
  call void @llvm.dbg.declare(metadata i32* %speed_hz, metadata !4391, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.declare(metadata i16* %clk_div, metadata !4393, metadata !DIExpression()), !dbg !4394
  %4 = load %struct.dw_spi_cfg*, %struct.dw_spi_cfg** %cfg.addr, align 8, !dbg !4395
  %dfs = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %4, i32 0, i32 1, !dbg !4396
  %5 = load i8, i8* %dfs, align 1, !dbg !4396
  %conv = zext i8 %5 to i32, !dbg !4395
  %sub = sub i32 %conv, 1, !dbg !4397
  %6 = load i32, i32* %cr0, align 4, !dbg !4398
  %or = or i32 %6, %sub, !dbg !4398
  store i32 %or, i32* %cr0, align 4, !dbg !4398
  %7 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4399
  %caps = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %7, i32 0, i32 7, !dbg !4401
  %8 = load i32, i32* %caps, align 8, !dbg !4401
  %conv2 = zext i32 %8 to i64, !dbg !4399
  %and = and i64 %conv2, 4, !dbg !4402
  %tobool = icmp ne i64 %and, 0, !dbg !4402
  br i1 %tobool, label %if.else, label %if.then, !dbg !4403

if.then:                                          ; preds = %entry
  %9 = load %struct.dw_spi_cfg*, %struct.dw_spi_cfg** %cfg.addr, align 8, !dbg !4404
  %tmode = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %9, i32 0, i32 0, !dbg !4405
  %10 = load i8, i8* %tmode, align 4, !dbg !4405
  %conv3 = zext i8 %10 to i32, !dbg !4404
  %shl = shl i32 %conv3, 8, !dbg !4406
  %11 = load i32, i32* %cr0, align 4, !dbg !4407
  %or4 = or i32 %11, %shl, !dbg !4407
  store i32 %or4, i32* %cr0, align 4, !dbg !4407
  br label %if.end, !dbg !4408

if.else:                                          ; preds = %entry
  %12 = load %struct.dw_spi_cfg*, %struct.dw_spi_cfg** %cfg.addr, align 8, !dbg !4409
  %tmode5 = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %12, i32 0, i32 0, !dbg !4410
  %13 = load i8, i8* %tmode5, align 4, !dbg !4410
  %conv6 = zext i8 %13 to i32, !dbg !4409
  %shl7 = shl i32 %conv6, 10, !dbg !4411
  %14 = load i32, i32* %cr0, align 4, !dbg !4412
  %or8 = or i32 %14, %shl7, !dbg !4412
  store i32 %or8, i32* %cr0, align 4, !dbg !4412
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4413
  %16 = load i32, i32* %cr0, align 4, !dbg !4414
  call void @dw_writel(%struct.dw_spi* %15, i32 0, i32 %16) #10, !dbg !4415
  %17 = load %struct.dw_spi_cfg*, %struct.dw_spi_cfg** %cfg.addr, align 8, !dbg !4416
  %tmode9 = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %17, i32 0, i32 0, !dbg !4418
  %18 = load i8, i8* %tmode9, align 4, !dbg !4418
  %conv10 = zext i8 %18 to i32, !dbg !4416
  %cmp = icmp eq i32 %conv10, 3, !dbg !4419
  br i1 %cmp, label %if.then16, label %lor.lhs.false, !dbg !4420

lor.lhs.false:                                    ; preds = %if.end
  %19 = load %struct.dw_spi_cfg*, %struct.dw_spi_cfg** %cfg.addr, align 8, !dbg !4421
  %tmode12 = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %19, i32 0, i32 0, !dbg !4422
  %20 = load i8, i8* %tmode12, align 4, !dbg !4422
  %conv13 = zext i8 %20 to i32, !dbg !4421
  %cmp14 = icmp eq i32 %conv13, 2, !dbg !4423
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !4424

if.then16:                                        ; preds = %lor.lhs.false, %if.end
  %21 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4425
  %22 = load %struct.dw_spi_cfg*, %struct.dw_spi_cfg** %cfg.addr, align 8, !dbg !4426
  %ndf = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %22, i32 0, i32 2, !dbg !4427
  %23 = load i32, i32* %ndf, align 4, !dbg !4427
  %tobool17 = icmp ne i32 %23, 0, !dbg !4426
  br i1 %tobool17, label %cond.true, label %cond.false, !dbg !4426

cond.true:                                        ; preds = %if.then16
  %24 = load %struct.dw_spi_cfg*, %struct.dw_spi_cfg** %cfg.addr, align 8, !dbg !4428
  %ndf18 = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %24, i32 0, i32 2, !dbg !4429
  %25 = load i32, i32* %ndf18, align 4, !dbg !4429
  %sub19 = sub i32 %25, 1, !dbg !4430
  br label %cond.end, !dbg !4426

cond.false:                                       ; preds = %if.then16
  br label %cond.end, !dbg !4426

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub19, %cond.true ], [ 0, %cond.false ], !dbg !4426
  call void @dw_writel(%struct.dw_spi* %21, i32 4, i32 %cond) #10, !dbg !4431
  br label %if.end20, !dbg !4431

if.end20:                                         ; preds = %cond.end, %lor.lhs.false
  %26 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4432
  %max_freq = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %26, i32 0, i32 6, !dbg !4432
  %27 = load i32, i32* %max_freq, align 4, !dbg !4432
  %28 = load %struct.dw_spi_cfg*, %struct.dw_spi_cfg** %cfg.addr, align 8, !dbg !4432
  %freq = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %28, i32 0, i32 3, !dbg !4432
  %29 = load i32, i32* %freq, align 4, !dbg !4432
  %add = add i32 %27, %29, !dbg !4432
  %sub21 = sub i32 %add, 1, !dbg !4432
  %30 = load %struct.dw_spi_cfg*, %struct.dw_spi_cfg** %cfg.addr, align 8, !dbg !4432
  %freq22 = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %30, i32 0, i32 3, !dbg !4432
  %31 = load i32, i32* %freq22, align 4, !dbg !4432
  %div = udiv i32 %sub21, %31, !dbg !4432
  %add23 = add i32 %div, 1, !dbg !4433
  %and24 = and i32 %add23, 65534, !dbg !4434
  %conv25 = trunc i32 %and24 to i16, !dbg !4435
  store i16 %conv25, i16* %clk_div, align 2, !dbg !4436
  %32 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4437
  %max_freq26 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %32, i32 0, i32 6, !dbg !4438
  %33 = load i32, i32* %max_freq26, align 4, !dbg !4438
  %34 = load i16, i16* %clk_div, align 2, !dbg !4439
  %conv27 = zext i16 %34 to i32, !dbg !4439
  %div28 = udiv i32 %33, %conv27, !dbg !4440
  store i32 %div28, i32* %speed_hz, align 4, !dbg !4441
  %35 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4442
  %current_freq = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %35, i32 0, i32 20, !dbg !4444
  %36 = load i32, i32* %current_freq, align 8, !dbg !4444
  %37 = load i32, i32* %speed_hz, align 4, !dbg !4445
  %cmp29 = icmp ne i32 %36, %37, !dbg !4446
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !4447

if.then31:                                        ; preds = %if.end20
  %38 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4448
  %39 = load i16, i16* %clk_div, align 2, !dbg !4450
  call void @spi_set_clk(%struct.dw_spi* %38, i16 zeroext %39) #10, !dbg !4451
  %40 = load i32, i32* %speed_hz, align 4, !dbg !4452
  %41 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4453
  %current_freq32 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %41, i32 0, i32 20, !dbg !4454
  store i32 %40, i32* %current_freq32, align 8, !dbg !4455
  br label %if.end33, !dbg !4456

if.end33:                                         ; preds = %if.then31, %if.end20
  %42 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4457
  %cur_rx_sample_dly = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %42, i32 0, i32 21, !dbg !4459
  %43 = load i32, i32* %cur_rx_sample_dly, align 4, !dbg !4459
  %44 = load %struct.chip_data*, %struct.chip_data** %chip, align 8, !dbg !4460
  %rx_sample_dly = getelementptr inbounds %struct.chip_data, %struct.chip_data* %44, i32 0, i32 1, !dbg !4461
  %45 = load i32, i32* %rx_sample_dly, align 4, !dbg !4461
  %cmp34 = icmp ne i32 %43, %45, !dbg !4462
  br i1 %cmp34, label %if.then36, label %if.end40, !dbg !4463

if.then36:                                        ; preds = %if.end33
  %46 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4464
  %47 = load %struct.chip_data*, %struct.chip_data** %chip, align 8, !dbg !4466
  %rx_sample_dly37 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %47, i32 0, i32 1, !dbg !4467
  %48 = load i32, i32* %rx_sample_dly37, align 4, !dbg !4467
  call void @dw_writel(%struct.dw_spi* %46, i32 240, i32 %48) #10, !dbg !4468
  %49 = load %struct.chip_data*, %struct.chip_data** %chip, align 8, !dbg !4469
  %rx_sample_dly38 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %49, i32 0, i32 1, !dbg !4470
  %50 = load i32, i32* %rx_sample_dly38, align 4, !dbg !4470
  %51 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4471
  %cur_rx_sample_dly39 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %51, i32 0, i32 21, !dbg !4472
  store i32 %50, i32* %cur_rx_sample_dly39, align 4, !dbg !4473
  br label %if.end40, !dbg !4474

if.end40:                                         ; preds = %if.then36, %if.end33
  ret void, !dbg !4475
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @spi_get_ctldata(%struct.spi_device* %spi) #0 !dbg !4476 {
entry:
  %spi.addr = alloca %struct.spi_device*, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !4479, metadata !DIExpression()), !dbg !4480
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !4481
  %controller_state = getelementptr inbounds %struct.spi_device, %struct.spi_device* %0, i32 0, i32 9, !dbg !4482
  %1 = load i8*, i8** %controller_state, align 8, !dbg !4482
  ret i8* %1, !dbg !4483
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_set_clk(%struct.dw_spi* %dws, i16 zeroext %div) #0 !dbg !4484 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %div.addr = alloca i16, align 2
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !4487, metadata !DIExpression()), !dbg !4488
  store i16 %div, i16* %div.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %div.addr, metadata !4489, metadata !DIExpression()), !dbg !4490
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4491
  %1 = load i16, i16* %div.addr, align 2, !dbg !4492
  %conv = zext i16 %1 to i32, !dbg !4492
  call void @dw_writel(%struct.dw_spi* %0, i32 20, i32 %conv) #10, !dbg !4493
  ret void, !dbg !4494
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dw_spi_add_host(%struct.device* %dev, %struct.dw_spi* %dws) #0 !dbg !4495 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %dws.addr = alloca %struct.dw_spi*, align 8
  %master = alloca %struct.spi_controller*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4496, metadata !DIExpression()), !dbg !4497
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !4498, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %master, metadata !4500, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4502, metadata !DIExpression()), !dbg !4503
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4504
  %tobool = icmp ne %struct.dw_spi* %0, null, !dbg !4504
  br i1 %tobool, label %if.end, label %if.then, !dbg !4506

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4507
  br label %return, !dbg !4507

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4508
  %call = call %struct.spi_controller* @spi_alloc_master(%struct.device* %1, i32 0) #10, !dbg !4509
  store %struct.spi_controller* %call, %struct.spi_controller** %master, align 8, !dbg !4510
  %2 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4511
  %tobool1 = icmp ne %struct.spi_controller* %2, null, !dbg !4511
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4513

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4514
  br label %return, !dbg !4514

if.end3:                                          ; preds = %if.end
  %3 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4515
  %4 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4516
  %master4 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %4, i32 0, i32 0, !dbg !4517
  store %struct.spi_controller* %3, %struct.spi_controller** %master4, align 8, !dbg !4518
  %5 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4519
  %paddr = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %5, i32 0, i32 2, !dbg !4520
  %6 = load i64, i64* %paddr, align 8, !dbg !4520
  %add = add i64 %6, 96, !dbg !4521
  %7 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4522
  %dma_addr = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %7, i32 0, i32 30, !dbg !4523
  store i64 %add, i64* %dma_addr, align 8, !dbg !4524
  %8 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4525
  %9 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4526
  %10 = bitcast %struct.dw_spi* %9 to i8*, !dbg !4526
  call void @spi_controller_set_devdata(%struct.spi_controller* %8, i8* %10) #10, !dbg !4527
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4528
  %12 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4529
  call void @spi_hw_init(%struct.device* %11, %struct.dw_spi* %12) #10, !dbg !4530
  %13 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4531
  %irq = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %13, i32 0, i32 3, !dbg !4532
  %14 = load i32, i32* %irq, align 8, !dbg !4532
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4533
  %call5 = call i8* @dev_name(%struct.device* %15) #10, !dbg !4534
  %16 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4535
  %17 = bitcast %struct.spi_controller* %16 to i8*, !dbg !4535
  %call6 = call i32 @request_irq(i32 %14, i32 (i32, i8*)* @dw_spi_irq, i64 128, i8* %call5, i8* %17) #10, !dbg !4536
  store i32 %call6, i32* %ret, align 4, !dbg !4537
  %18 = load i32, i32* %ret, align 4, !dbg !4538
  %cmp = icmp slt i32 %18, 0, !dbg !4540
  br i1 %cmp, label %land.lhs.true, label %if.end9, !dbg !4541

land.lhs.true:                                    ; preds = %if.end3
  %19 = load i32, i32* %ret, align 4, !dbg !4542
  %cmp7 = icmp ne i32 %19, -107, !dbg !4543
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !4544

if.then8:                                         ; preds = %land.lhs.true
  %20 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4545
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !4545
  br label %err_free_master, !dbg !4547

if.end9:                                          ; preds = %land.lhs.true, %if.end3
  %21 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4548
  call void @dw_spi_init_mem_ops(%struct.dw_spi* %21) #10, !dbg !4549
  %22 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4550
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %22, i32 0, i32 56, !dbg !4551
  store i8 1, i8* %use_gpio_descriptors, align 8, !dbg !4552
  %23 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4553
  %mode_bits = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %23, i32 0, i32 5, !dbg !4554
  store i32 35, i32* %mode_bits, align 8, !dbg !4555
  %24 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4556
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %24, i32 0, i32 7, !dbg !4557
  store i32 65528, i32* %bits_per_word_mask, align 8, !dbg !4558
  %25 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4559
  %bus_num = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %25, i32 0, i32 9, !dbg !4560
  %26 = load i16, i16* %bus_num, align 8, !dbg !4560
  %27 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4561
  %bus_num10 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %27, i32 0, i32 2, !dbg !4562
  store i16 %26, i16* %bus_num10, align 8, !dbg !4563
  %28 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4564
  %num_cs = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %28, i32 0, i32 10, !dbg !4565
  %29 = load i16, i16* %num_cs, align 2, !dbg !4565
  %30 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4566
  %num_chipselect = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %30, i32 0, i32 3, !dbg !4567
  store i16 %29, i16* %num_chipselect, align 2, !dbg !4568
  %31 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4569
  %setup = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %31, i32 0, i32 18, !dbg !4570
  store i32 (%struct.spi_device*)* @dw_spi_setup, i32 (%struct.spi_device*)** %setup, align 8, !dbg !4571
  %32 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4572
  %cleanup = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %32, i32 0, i32 21, !dbg !4573
  store void (%struct.spi_device*)* @dw_spi_cleanup, void (%struct.spi_device*)** %cleanup, align 8, !dbg !4574
  %33 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4575
  %set_cs = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %33, i32 0, i32 11, !dbg !4577
  %34 = load void (%struct.spi_device*, i1)*, void (%struct.spi_device*, i1)** %set_cs, align 8, !dbg !4577
  %tobool11 = icmp ne void (%struct.spi_device*, i1)* %34, null, !dbg !4575
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !4578

if.then12:                                        ; preds = %if.end9
  %35 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4579
  %set_cs13 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %35, i32 0, i32 11, !dbg !4580
  %36 = load void (%struct.spi_device*, i1)*, void (%struct.spi_device*, i1)** %set_cs13, align 8, !dbg !4580
  %37 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4581
  %set_cs14 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %37, i32 0, i32 47, !dbg !4582
  %set_cs15 = bitcast {}** %set_cs14 to void (%struct.spi_device*, i1)**, !dbg !4582
  store void (%struct.spi_device*, i1)* %36, void (%struct.spi_device*, i1)** %set_cs15, align 8, !dbg !4583
  br label %if.end18, !dbg !4581

if.else:                                          ; preds = %if.end9
  %38 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4584
  %set_cs16 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %38, i32 0, i32 47, !dbg !4585
  %set_cs17 = bitcast {}** %set_cs16 to void (%struct.spi_device*, i1)**, !dbg !4585
  store void (%struct.spi_device*, i1)* @dw_spi_set_cs, void (%struct.spi_device*, i1)** %set_cs17, align 8, !dbg !4586
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then12
  %39 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4587
  %transfer_one = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %39, i32 0, i32 48, !dbg !4588
  store i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @dw_spi_transfer_one, i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)** %transfer_one, align 8, !dbg !4589
  %40 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4590
  %handle_err = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %40, i32 0, i32 49, !dbg !4591
  store void (%struct.spi_controller*, %struct.spi_message*)* @dw_spi_handle_err, void (%struct.spi_controller*, %struct.spi_message*)** %handle_err, align 8, !dbg !4592
  %41 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4593
  %mem_ops = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %41, i32 0, i32 23, !dbg !4595
  %exec_op = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %mem_ops, i32 0, i32 2, !dbg !4596
  %42 = load i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i32 (%struct.spi_mem*, %struct.spi_mem_op*)** %exec_op, align 8, !dbg !4596
  %tobool19 = icmp ne i32 (%struct.spi_mem*, %struct.spi_mem_op*)* %42, null, !dbg !4593
  br i1 %tobool19, label %if.then20, label %if.end23, !dbg !4597

if.then20:                                        ; preds = %if.end18
  %43 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4598
  %mem_ops21 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %43, i32 0, i32 23, !dbg !4599
  %44 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4600
  %mem_ops22 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %44, i32 0, i32 50, !dbg !4601
  store %struct.spi_controller_mem_ops* %mem_ops21, %struct.spi_controller_mem_ops** %mem_ops22, align 8, !dbg !4602
  br label %if.end23, !dbg !4600

if.end23:                                         ; preds = %if.then20, %if.end18
  %45 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4603
  %max_freq = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %45, i32 0, i32 6, !dbg !4604
  %46 = load i32, i32* %max_freq, align 4, !dbg !4604
  %47 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4605
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %47, i32 0, i32 9, !dbg !4606
  store i32 %46, i32* %max_speed_hz, align 8, !dbg !4607
  %48 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4608
  %of_node = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 23, !dbg !4609
  %49 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4609
  %50 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4610
  %dev24 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %50, i32 0, i32 0, !dbg !4611
  %of_node25 = getelementptr inbounds %struct.device, %struct.device* %dev24, i32 0, i32 23, !dbg !4612
  store %struct.device_node* %49, %struct.device_node** %of_node25, align 8, !dbg !4613
  %51 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4614
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 24, !dbg !4615
  %52 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !4615
  %53 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4616
  %dev26 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %53, i32 0, i32 0, !dbg !4617
  %fwnode27 = getelementptr inbounds %struct.device, %struct.device* %dev26, i32 0, i32 24, !dbg !4618
  store %struct.fwnode_handle* %52, %struct.fwnode_handle** %fwnode27, align 8, !dbg !4619
  %54 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4620
  %flags = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %54, i32 0, i32 10, !dbg !4621
  store i16 32, i16* %flags, align 4, !dbg !4622
  %55 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4623
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %55, i32 0, i32 33, !dbg !4624
  store i8 1, i8* %auto_runtime_pm, align 4, !dbg !4625
  %56 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4626
  %57 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4627
  %def_rx_sample_dly_ns = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %57, i32 0, i32 22, !dbg !4628
  %call28 = call i32 @device_property_read_u32(%struct.device* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %def_rx_sample_dly_ns) #10, !dbg !4629
  %58 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4630
  %dma_ops = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %58, i32 0, i32 31, !dbg !4632
  %59 = load %struct.dw_spi_dma_ops*, %struct.dw_spi_dma_ops** %dma_ops, align 8, !dbg !4632
  %tobool29 = icmp ne %struct.dw_spi_dma_ops* %59, null, !dbg !4630
  br i1 %tobool29, label %land.lhs.true30, label %if.end45, !dbg !4633

land.lhs.true30:                                  ; preds = %if.end23
  %60 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4634
  %dma_ops31 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %60, i32 0, i32 31, !dbg !4635
  %61 = load %struct.dw_spi_dma_ops*, %struct.dw_spi_dma_ops** %dma_ops31, align 8, !dbg !4635
  %dma_init = getelementptr inbounds %struct.dw_spi_dma_ops, %struct.dw_spi_dma_ops* %61, i32 0, i32 0, !dbg !4636
  %62 = load i32 (%struct.device*, %struct.dw_spi*)*, i32 (%struct.device*, %struct.dw_spi*)** %dma_init, align 8, !dbg !4636
  %tobool32 = icmp ne i32 (%struct.device*, %struct.dw_spi*)* %62, null, !dbg !4634
  br i1 %tobool32, label %if.then33, label %if.end45, !dbg !4637

if.then33:                                        ; preds = %land.lhs.true30
  %63 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4638
  %dma_ops34 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %63, i32 0, i32 31, !dbg !4640
  %64 = load %struct.dw_spi_dma_ops*, %struct.dw_spi_dma_ops** %dma_ops34, align 8, !dbg !4640
  %dma_init35 = getelementptr inbounds %struct.dw_spi_dma_ops, %struct.dw_spi_dma_ops* %64, i32 0, i32 0, !dbg !4641
  %65 = load i32 (%struct.device*, %struct.dw_spi*)*, i32 (%struct.device*, %struct.dw_spi*)** %dma_init35, align 8, !dbg !4641
  %66 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4642
  %67 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4643
  %call36 = call i32 %65(%struct.device* %66, %struct.dw_spi* %67) #10, !dbg !4638
  store i32 %call36, i32* %ret, align 4, !dbg !4644
  %68 = load i32, i32* %ret, align 4, !dbg !4645
  %tobool37 = icmp ne i32 %68, 0, !dbg !4645
  br i1 %tobool37, label %if.then38, label %if.else39, !dbg !4647

if.then38:                                        ; preds = %if.then33
  %69 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4648
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !4648
  br label %if.end44, !dbg !4650

if.else39:                                        ; preds = %if.then33
  %70 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4651
  %dma_ops40 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %70, i32 0, i32 31, !dbg !4653
  %71 = load %struct.dw_spi_dma_ops*, %struct.dw_spi_dma_ops** %dma_ops40, align 8, !dbg !4653
  %can_dma = getelementptr inbounds %struct.dw_spi_dma_ops, %struct.dw_spi_dma_ops* %71, i32 0, i32 3, !dbg !4654
  %72 = load i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)*, i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)** %can_dma, align 8, !dbg !4654
  %73 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4655
  %can_dma41 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %73, i32 0, i32 22, !dbg !4656
  store i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* %72, i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)** %can_dma41, align 8, !dbg !4657
  %74 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4658
  %flags42 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %74, i32 0, i32 10, !dbg !4659
  %75 = load i16, i16* %flags42, align 4, !dbg !4660
  %conv = zext i16 %75 to i64, !dbg !4660
  %or = or i64 %conv, 16, !dbg !4660
  %conv43 = trunc i64 %or to i16, !dbg !4660
  store i16 %conv43, i16* %flags42, align 4, !dbg !4660
  br label %if.end44

if.end44:                                         ; preds = %if.else39, %if.then38
  br label %if.end45, !dbg !4661

if.end45:                                         ; preds = %if.end44, %land.lhs.true30, %if.end23
  %76 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4662
  %call46 = call i32 @spi_register_controller(%struct.spi_controller* %76) #10, !dbg !4663
  store i32 %call46, i32* %ret, align 4, !dbg !4664
  %77 = load i32, i32* %ret, align 4, !dbg !4665
  %tobool47 = icmp ne i32 %77, 0, !dbg !4665
  br i1 %tobool47, label %if.then48, label %if.end50, !dbg !4667

if.then48:                                        ; preds = %if.end45
  %78 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4668
  %dev49 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %78, i32 0, i32 0, !dbg !4668
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !4668
  br label %err_dma_exit, !dbg !4670

if.end50:                                         ; preds = %if.end45
  %79 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4671
  %call51 = call i32 @dw_spi_debugfs_init(%struct.dw_spi* %79) #10, !dbg !4672
  store i32 0, i32* %retval, align 4, !dbg !4673
  br label %return, !dbg !4673

err_dma_exit:                                     ; preds = %if.then48
  call void @llvm.dbg.label(metadata !4674), !dbg !4675
  %80 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4676
  %dma_ops52 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %80, i32 0, i32 31, !dbg !4678
  %81 = load %struct.dw_spi_dma_ops*, %struct.dw_spi_dma_ops** %dma_ops52, align 8, !dbg !4678
  %tobool53 = icmp ne %struct.dw_spi_dma_ops* %81, null, !dbg !4676
  br i1 %tobool53, label %land.lhs.true54, label %if.end60, !dbg !4679

land.lhs.true54:                                  ; preds = %err_dma_exit
  %82 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4680
  %dma_ops55 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %82, i32 0, i32 31, !dbg !4681
  %83 = load %struct.dw_spi_dma_ops*, %struct.dw_spi_dma_ops** %dma_ops55, align 8, !dbg !4681
  %dma_exit = getelementptr inbounds %struct.dw_spi_dma_ops, %struct.dw_spi_dma_ops* %83, i32 0, i32 1, !dbg !4682
  %84 = load void (%struct.dw_spi*)*, void (%struct.dw_spi*)** %dma_exit, align 8, !dbg !4682
  %tobool56 = icmp ne void (%struct.dw_spi*)* %84, null, !dbg !4680
  br i1 %tobool56, label %if.then57, label %if.end60, !dbg !4683

if.then57:                                        ; preds = %land.lhs.true54
  %85 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4684
  %dma_ops58 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %85, i32 0, i32 31, !dbg !4685
  %86 = load %struct.dw_spi_dma_ops*, %struct.dw_spi_dma_ops** %dma_ops58, align 8, !dbg !4685
  %dma_exit59 = getelementptr inbounds %struct.dw_spi_dma_ops, %struct.dw_spi_dma_ops* %86, i32 0, i32 1, !dbg !4686
  %87 = load void (%struct.dw_spi*)*, void (%struct.dw_spi*)** %dma_exit59, align 8, !dbg !4686
  %88 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4687
  call void %87(%struct.dw_spi* %88) #10, !dbg !4684
  br label %if.end60, !dbg !4684

if.end60:                                         ; preds = %if.then57, %land.lhs.true54, %err_dma_exit
  %89 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4688
  call void @spi_enable_chip(%struct.dw_spi* %89, i32 0) #10, !dbg !4689
  %90 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4690
  %irq61 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %90, i32 0, i32 3, !dbg !4691
  %91 = load i32, i32* %irq61, align 8, !dbg !4691
  %92 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4692
  %93 = bitcast %struct.spi_controller* %92 to i8*, !dbg !4692
  %call62 = call i8* @free_irq(i32 %91, i8* %93) #10, !dbg !4693
  br label %err_free_master, !dbg !4693

err_free_master:                                  ; preds = %if.end60, %if.then8
  call void @llvm.dbg.label(metadata !4694), !dbg !4695
  %94 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4696
  call void @spi_controller_put(%struct.spi_controller* %94) #10, !dbg !4697
  %95 = load i32, i32* %ret, align 4, !dbg !4698
  store i32 %95, i32* %retval, align 4, !dbg !4699
  br label %return, !dbg !4699

return:                                           ; preds = %err_free_master, %if.end50, %if.then2, %if.then
  %96 = load i32, i32* %retval, align 4, !dbg !4700
  ret i32 %96, !dbg !4700
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.spi_controller* @spi_alloc_master(%struct.device* %host, i32 %size) #0 !dbg !4701 {
entry:
  %host.addr = alloca %struct.device*, align 8
  %size.addr = alloca i32, align 4
  store %struct.device* %host, %struct.device** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %host.addr, metadata !4704, metadata !DIExpression()), !dbg !4705
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4706, metadata !DIExpression()), !dbg !4707
  %0 = load %struct.device*, %struct.device** %host.addr, align 8, !dbg !4708
  %1 = load i32, i32* %size.addr, align 4, !dbg !4709
  %call = call %struct.spi_controller* @__spi_alloc_controller(%struct.device* %0, i32 %1, i1 zeroext false) #10, !dbg !4710
  ret %struct.spi_controller* %call, !dbg !4711
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_controller_set_devdata(%struct.spi_controller* %ctlr, i8* %data) #0 !dbg !4712 {
entry:
  %ctlr.addr = alloca %struct.spi_controller*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.spi_controller* %ctlr, %struct.spi_controller** %ctlr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4717, metadata !DIExpression()), !dbg !4718
  %0 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4719
  %dev = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %0, i32 0, i32 0, !dbg !4720
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4721
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #10, !dbg !4722
  ret void, !dbg !4723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_hw_init(%struct.device* %dev, %struct.dw_spi* %dws) #0 !dbg !4724 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %dws.addr = alloca %struct.dw_spi*, align 8
  %fifo = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4727, metadata !DIExpression()), !dbg !4728
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4731
  call void @spi_reset_chip(%struct.dw_spi* %0) #10, !dbg !4732
  %1 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4733
  %fifo_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %1, i32 0, i32 4, !dbg !4735
  %2 = load i32, i32* %fifo_len, align 4, !dbg !4735
  %tobool = icmp ne i32 %2, 0, !dbg !4733
  br i1 %tobool, label %if.end5, label %if.then, !dbg !4736

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %fifo, metadata !4737, metadata !DIExpression()), !dbg !4739
  store i32 1, i32* %fifo, align 4, !dbg !4740
  br label %for.cond, !dbg !4742

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %fifo, align 4, !dbg !4743
  %cmp = icmp ult i32 %3, 256, !dbg !4745
  br i1 %cmp, label %for.body, label %for.end, !dbg !4746

for.body:                                         ; preds = %for.cond
  %4 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4747
  %5 = load i32, i32* %fifo, align 4, !dbg !4749
  call void @dw_writel(%struct.dw_spi* %4, i32 24, i32 %5) #10, !dbg !4750
  %6 = load i32, i32* %fifo, align 4, !dbg !4751
  %7 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4753
  %call = call i32 @dw_readl(%struct.dw_spi* %7, i32 24) #10, !dbg !4754
  %cmp1 = icmp ne i32 %6, %call, !dbg !4755
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !4756

if.then2:                                         ; preds = %for.body
  br label %for.end, !dbg !4757

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4758

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %fifo, align 4, !dbg !4759
  %inc = add i32 %8, 1, !dbg !4759
  store i32 %inc, i32* %fifo, align 4, !dbg !4759
  br label %for.cond, !dbg !4760, !llvm.loop !4761

for.end:                                          ; preds = %if.then2, %for.cond
  %9 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4763
  call void @dw_writel(%struct.dw_spi* %9, i32 24, i32 0) #10, !dbg !4764
  %10 = load i32, i32* %fifo, align 4, !dbg !4765
  %cmp3 = icmp eq i32 %10, 1, !dbg !4766
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !4767

cond.true:                                        ; preds = %for.end
  br label %cond.end, !dbg !4767

cond.false:                                       ; preds = %for.end
  %11 = load i32, i32* %fifo, align 4, !dbg !4768
  br label %cond.end, !dbg !4767

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %11, %cond.false ], !dbg !4767
  %12 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4769
  %fifo_len4 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %12, i32 0, i32 4, !dbg !4770
  store i32 %cond, i32* %fifo_len4, align 4, !dbg !4771
  br label %if.end5, !dbg !4772

if.end5:                                          ; preds = %cond.end, %entry
  %13 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4773
  %caps = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %13, i32 0, i32 7, !dbg !4775
  %14 = load i32, i32* %caps, align 8, !dbg !4775
  %conv = zext i32 %14 to i64, !dbg !4773
  %and = and i64 %conv, 1, !dbg !4776
  %tobool6 = icmp ne i64 %and, 0, !dbg !4776
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4777

if.then7:                                         ; preds = %if.end5
  %15 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4778
  call void @dw_writel(%struct.dw_spi* %15, i32 244, i32 15) #10, !dbg !4779
  br label %if.end8, !dbg !4779

if.end8:                                          ; preds = %if.then7, %if.end5
  ret void, !dbg !4780
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #0 !dbg !4781 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4789, metadata !DIExpression()), !dbg !4790
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4791, metadata !DIExpression()), !dbg !4792
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4793, metadata !DIExpression()), !dbg !4794
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4795, metadata !DIExpression()), !dbg !4796
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4797, metadata !DIExpression()), !dbg !4798
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4799
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4800
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4801
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4802
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4803
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #10, !dbg !4804
  ret i32 %call, !dbg !4805
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_spi_irq(i32 %irq, i8* %dev_id) #0 !dbg !4806 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %dev_id.addr = alloca i8*, align 8
  %master = alloca %struct.spi_controller*, align 8
  %dws = alloca %struct.dw_spi*, align 8
  %irq_status = alloca i16, align 2
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4807, metadata !DIExpression()), !dbg !4808
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !4809, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %master, metadata !4811, metadata !DIExpression()), !dbg !4812
  %0 = load i8*, i8** %dev_id.addr, align 8, !dbg !4813
  %1 = bitcast i8* %0 to %struct.spi_controller*, !dbg !4813
  store %struct.spi_controller* %1, %struct.spi_controller** %master, align 8, !dbg !4812
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws, metadata !4814, metadata !DIExpression()), !dbg !4815
  %2 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4816
  %call = call i8* @spi_controller_get_devdata(%struct.spi_controller* %2) #10, !dbg !4817
  %3 = bitcast i8* %call to %struct.dw_spi*, !dbg !4817
  store %struct.dw_spi* %3, %struct.dw_spi** %dws, align 8, !dbg !4815
  call void @llvm.dbg.declare(metadata i16* %irq_status, metadata !4818, metadata !DIExpression()), !dbg !4819
  %4 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !4820
  %call1 = call i32 @dw_readl(%struct.dw_spi* %4, i32 48) #10, !dbg !4821
  %and = and i32 %call1, 63, !dbg !4822
  %conv = trunc i32 %and to i16, !dbg !4821
  store i16 %conv, i16* %irq_status, align 2, !dbg !4819
  %5 = load i16, i16* %irq_status, align 2, !dbg !4823
  %tobool = icmp ne i16 %5, 0, !dbg !4823
  br i1 %tobool, label %if.end, label %if.then, !dbg !4825

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4826
  br label %return, !dbg !4826

if.end:                                           ; preds = %entry
  %6 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !4827
  %cur_msg = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %6, i32 0, i32 28, !dbg !4829
  %7 = load %struct.spi_message*, %struct.spi_message** %cur_msg, align 8, !dbg !4829
  %tobool2 = icmp ne %struct.spi_message* %7, null, !dbg !4827
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4830

if.then3:                                         ; preds = %if.end
  %8 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !4831
  call void @spi_mask_intr(%struct.dw_spi* %8, i32 255) #10, !dbg !4833
  store i32 1, i32* %retval, align 4, !dbg !4834
  br label %return, !dbg !4834

if.end4:                                          ; preds = %if.end
  %9 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !4835
  %transfer_handler = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %9, i32 0, i32 19, !dbg !4836
  %10 = load i32 (%struct.dw_spi*)*, i32 (%struct.dw_spi*)** %transfer_handler, align 8, !dbg !4836
  %11 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !4837
  %call5 = call i32 %10(%struct.dw_spi* %11) #10, !dbg !4835
  store i32 %call5, i32* %retval, align 4, !dbg !4838
  br label %return, !dbg !4838

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4839
  ret i32 %12, !dbg !4839
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !4840 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4843, metadata !DIExpression()), !dbg !4844
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4845
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4847
  %1 = load i8*, i8** %init_name, align 8, !dbg !4847
  %tobool = icmp ne i8* %1, null, !dbg !4845
  br i1 %tobool, label %if.then, label %if.end, !dbg !4848

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4849
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4850
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4850
  store i8* %3, i8** %retval, align 8, !dbg !4851
  br label %return, !dbg !4851

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4852
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4853
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #10, !dbg !4854
  store i8* %call, i8** %retval, align 8, !dbg !4855
  br label %return, !dbg !4855

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4856
  ret i8* %5, !dbg !4856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dw_spi_init_mem_ops(%struct.dw_spi* %dws) #0 !dbg !4857 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4860
  %mem_ops = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %0, i32 0, i32 23, !dbg !4862
  %exec_op = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %mem_ops, i32 0, i32 2, !dbg !4863
  %1 = load i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i32 (%struct.spi_mem*, %struct.spi_mem_op*)** %exec_op, align 8, !dbg !4863
  %tobool = icmp ne i32 (%struct.spi_mem*, %struct.spi_mem_op*)* %1, null, !dbg !4860
  br i1 %tobool, label %if.end11, label %land.lhs.true, !dbg !4864

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4865
  %caps = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %2, i32 0, i32 7, !dbg !4866
  %3 = load i32, i32* %caps, align 8, !dbg !4866
  %conv = zext i32 %3 to i64, !dbg !4865
  %and = and i64 %conv, 1, !dbg !4867
  %tobool1 = icmp ne i64 %and, 0, !dbg !4867
  br i1 %tobool1, label %if.end11, label %land.lhs.true2, !dbg !4868

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4869
  %set_cs = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %4, i32 0, i32 11, !dbg !4870
  %5 = load void (%struct.spi_device*, i1)*, void (%struct.spi_device*, i1)** %set_cs, align 8, !dbg !4870
  %tobool3 = icmp ne void (%struct.spi_device*, i1)* %5, null, !dbg !4869
  br i1 %tobool3, label %if.end11, label %if.then, !dbg !4871

if.then:                                          ; preds = %land.lhs.true2
  %6 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4872
  %mem_ops4 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %6, i32 0, i32 23, !dbg !4874
  %adjust_op_size = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %mem_ops4, i32 0, i32 0, !dbg !4875
  store i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @dw_spi_adjust_mem_op_size, i32 (%struct.spi_mem*, %struct.spi_mem_op*)** %adjust_op_size, align 8, !dbg !4876
  %7 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4877
  %mem_ops5 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %7, i32 0, i32 23, !dbg !4878
  %supports_op = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %mem_ops5, i32 0, i32 1, !dbg !4879
  store i1 (%struct.spi_mem*, %struct.spi_mem_op*)* @dw_spi_supports_mem_op, i1 (%struct.spi_mem*, %struct.spi_mem_op*)** %supports_op, align 8, !dbg !4880
  %8 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4881
  %mem_ops6 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %8, i32 0, i32 23, !dbg !4882
  %exec_op7 = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %mem_ops6, i32 0, i32 2, !dbg !4883
  store i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @dw_spi_exec_mem_op, i32 (%struct.spi_mem*, %struct.spi_mem_op*)** %exec_op7, align 8, !dbg !4884
  %9 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4885
  %max_mem_freq = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %9, i32 0, i32 5, !dbg !4887
  %10 = load i32, i32* %max_mem_freq, align 8, !dbg !4887
  %tobool8 = icmp ne i32 %10, 0, !dbg !4885
  br i1 %tobool8, label %if.end, label %if.then9, !dbg !4888

if.then9:                                         ; preds = %if.then
  %11 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4889
  %max_freq = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %11, i32 0, i32 6, !dbg !4890
  %12 = load i32, i32* %max_freq, align 4, !dbg !4890
  %13 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !4891
  %max_mem_freq10 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %13, i32 0, i32 5, !dbg !4892
  store i32 %12, i32* %max_mem_freq10, align 8, !dbg !4893
  br label %if.end, !dbg !4891

if.end:                                           ; preds = %if.then9, %if.then
  br label %if.end11, !dbg !4894

if.end11:                                         ; preds = %if.end, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !4895
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_spi_setup(%struct.spi_device* %spi) #0 !dbg !4896 {
entry:
  %retval = alloca i32, align 4
  %spi.addr = alloca %struct.spi_device*, align 8
  %dws = alloca %struct.dw_spi*, align 8
  %chip = alloca %struct.chip_data*, align 8
  %dws2 = alloca %struct.dw_spi*, align 8
  %rx_sample_dly_ns = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !4897, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws, metadata !4899, metadata !DIExpression()), !dbg !4900
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !4901
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %0, i32 0, i32 1, !dbg !4902
  %1 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !4902
  %call = call i8* @spi_controller_get_devdata(%struct.spi_controller* %1) #10, !dbg !4903
  %2 = bitcast i8* %call to %struct.dw_spi*, !dbg !4903
  store %struct.dw_spi* %2, %struct.dw_spi** %dws, align 8, !dbg !4900
  call void @llvm.dbg.declare(metadata %struct.chip_data** %chip, metadata !4904, metadata !DIExpression()), !dbg !4905
  %3 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !4906
  %call1 = call i8* @spi_get_ctldata(%struct.spi_device* %3) #10, !dbg !4907
  %4 = bitcast i8* %call1 to %struct.chip_data*, !dbg !4907
  store %struct.chip_data* %4, %struct.chip_data** %chip, align 8, !dbg !4908
  %5 = load %struct.chip_data*, %struct.chip_data** %chip, align 8, !dbg !4909
  %tobool = icmp ne %struct.chip_data* %5, null, !dbg !4909
  br i1 %tobool, label %if.end15, label %if.then, !dbg !4911

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws2, metadata !4912, metadata !DIExpression()), !dbg !4914
  %6 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !4915
  %controller3 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1, !dbg !4916
  %7 = load %struct.spi_controller*, %struct.spi_controller** %controller3, align 8, !dbg !4916
  %call4 = call i8* @spi_controller_get_devdata(%struct.spi_controller* %7) #10, !dbg !4917
  %8 = bitcast i8* %call4 to %struct.dw_spi*, !dbg !4917
  store %struct.dw_spi* %8, %struct.dw_spi** %dws2, align 8, !dbg !4914
  call void @llvm.dbg.declare(metadata i32* %rx_sample_dly_ns, metadata !4918, metadata !DIExpression()), !dbg !4919
  %call5 = call i8* @kzalloc(i64 8, i32 3264) #10, !dbg !4920
  %9 = bitcast i8* %call5 to %struct.chip_data*, !dbg !4920
  store %struct.chip_data* %9, %struct.chip_data** %chip, align 8, !dbg !4921
  %10 = load %struct.chip_data*, %struct.chip_data** %chip, align 8, !dbg !4922
  %tobool6 = icmp ne %struct.chip_data* %10, null, !dbg !4922
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !4924

if.then7:                                         ; preds = %if.then
  store i32 -12, i32* %retval, align 4, !dbg !4925
  br label %return, !dbg !4925

if.end:                                           ; preds = %if.then
  %11 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !4926
  %12 = load %struct.chip_data*, %struct.chip_data** %chip, align 8, !dbg !4927
  %13 = bitcast %struct.chip_data* %12 to i8*, !dbg !4927
  call void @spi_set_ctldata(%struct.spi_device* %11, i8* %13) #10, !dbg !4928
  %14 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !4929
  %dev = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0, !dbg !4931
  %call8 = call i32 @device_property_read_u32(%struct.device* %dev, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %rx_sample_dly_ns) #10, !dbg !4932
  %cmp = icmp ne i32 %call8, 0, !dbg !4933
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !4934

if.then9:                                         ; preds = %if.end
  %15 = load %struct.dw_spi*, %struct.dw_spi** %dws2, align 8, !dbg !4935
  %def_rx_sample_dly_ns = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %15, i32 0, i32 22, !dbg !4936
  %16 = load i32, i32* %def_rx_sample_dly_ns, align 8, !dbg !4936
  store i32 %16, i32* %rx_sample_dly_ns, align 4, !dbg !4937
  br label %if.end10, !dbg !4938

if.end10:                                         ; preds = %if.then9, %if.end
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !4939, metadata !DIExpression()), !dbg !4941
  %17 = load i32, i32* %rx_sample_dly_ns, align 4, !dbg !4941
  store i32 %17, i32* %__x, align 4, !dbg !4941
  call void @llvm.dbg.declare(metadata i64* %__d, metadata !4942, metadata !DIExpression()), !dbg !4941
  %18 = load %struct.dw_spi*, %struct.dw_spi** %dws2, align 8, !dbg !4941
  %max_freq = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %18, i32 0, i32 6, !dbg !4941
  %19 = load i32, i32* %max_freq, align 4, !dbg !4941
  %conv = zext i32 %19 to i64, !dbg !4941
  %div = sdiv i64 1000000000, %conv, !dbg !4941
  store i64 %div, i64* %__d, align 8, !dbg !4941
  %20 = load i32, i32* %__x, align 4, !dbg !4941
  %conv11 = zext i32 %20 to i64, !dbg !4941
  %21 = load i64, i64* %__d, align 8, !dbg !4941
  %div12 = sdiv i64 %21, 2, !dbg !4941
  %add = add i64 %conv11, %div12, !dbg !4941
  %22 = load i64, i64* %__d, align 8, !dbg !4941
  %div13 = sdiv i64 %add, %22, !dbg !4941
  store i64 %div13, i64* %tmp, align 8, !dbg !4941
  %23 = load i64, i64* %tmp, align 8, !dbg !4941
  %conv14 = trunc i64 %23 to i32, !dbg !4943
  %24 = load %struct.chip_data*, %struct.chip_data** %chip, align 8, !dbg !4944
  %rx_sample_dly = getelementptr inbounds %struct.chip_data, %struct.chip_data* %24, i32 0, i32 1, !dbg !4945
  store i32 %conv14, i32* %rx_sample_dly, align 4, !dbg !4946
  br label %if.end15, !dbg !4947

if.end15:                                         ; preds = %if.end10, %entry
  %25 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !4948
  %26 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !4949
  %call16 = call i32 @dw_spi_prepare_cr0(%struct.dw_spi* %25, %struct.spi_device* %26) #10, !dbg !4950
  %27 = load %struct.chip_data*, %struct.chip_data** %chip, align 8, !dbg !4951
  %cr0 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %27, i32 0, i32 0, !dbg !4952
  store i32 %call16, i32* %cr0, align 4, !dbg !4953
  store i32 0, i32* %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

return:                                           ; preds = %if.end15, %if.then7
  %28 = load i32, i32* %retval, align 4, !dbg !4955
  ret i32 %28, !dbg !4955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dw_spi_cleanup(%struct.spi_device* %spi) #0 !dbg !4956 {
entry:
  %spi.addr = alloca %struct.spi_device*, align 8
  %chip = alloca %struct.chip_data*, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.declare(metadata %struct.chip_data** %chip, metadata !4959, metadata !DIExpression()), !dbg !4960
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !4961
  %call = call i8* @spi_get_ctldata(%struct.spi_device* %0) #10, !dbg !4962
  %1 = bitcast i8* %call to %struct.chip_data*, !dbg !4962
  store %struct.chip_data* %1, %struct.chip_data** %chip, align 8, !dbg !4960
  %2 = load %struct.chip_data*, %struct.chip_data** %chip, align 8, !dbg !4963
  %3 = bitcast %struct.chip_data* %2 to i8*, !dbg !4963
  call void @kfree(i8* %3) #10, !dbg !4964
  %4 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !4965
  call void @spi_set_ctldata(%struct.spi_device* %4, i8* null) #10, !dbg !4966
  ret void, !dbg !4967
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_spi_transfer_one(%struct.spi_controller* %master, %struct.spi_device* %spi, %struct.spi_transfer* %transfer) #0 !dbg !4968 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca %struct.spi_controller*, align 8
  %spi.addr = alloca %struct.spi_device*, align 8
  %transfer.addr = alloca %struct.spi_transfer*, align 8
  %dws = alloca %struct.dw_spi*, align 8
  %cfg = alloca %struct.dw_spi_cfg, align 4
  %ret = alloca i32, align 4
  store %struct.spi_controller* %master, %struct.spi_controller** %master.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %master.addr, metadata !4969, metadata !DIExpression()), !dbg !4970
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  store %struct.spi_transfer* %transfer, %struct.spi_transfer** %transfer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_transfer** %transfer.addr, metadata !4973, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws, metadata !4975, metadata !DIExpression()), !dbg !4976
  %0 = load %struct.spi_controller*, %struct.spi_controller** %master.addr, align 8, !dbg !4977
  %call = call i8* @spi_controller_get_devdata(%struct.spi_controller* %0) #10, !dbg !4978
  %1 = bitcast i8* %call to %struct.dw_spi*, !dbg !4978
  store %struct.dw_spi* %1, %struct.dw_spi** %dws, align 8, !dbg !4976
  call void @llvm.dbg.declare(metadata %struct.dw_spi_cfg* %cfg, metadata !4979, metadata !DIExpression()), !dbg !4980
  %tmode = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %cfg, i32 0, i32 0, !dbg !4981
  store i8 0, i8* %tmode, align 4, !dbg !4981
  %dfs = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %cfg, i32 0, i32 1, !dbg !4981
  %2 = load %struct.spi_transfer*, %struct.spi_transfer** %transfer.addr, align 8, !dbg !4982
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %2, i32 0, i32 8, !dbg !4983
  %3 = load i8, i8* %bits_per_word, align 1, !dbg !4983
  store i8 %3, i8* %dfs, align 1, !dbg !4981
  %ndf = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %cfg, i32 0, i32 2, !dbg !4981
  store i32 0, i32* %ndf, align 4, !dbg !4981
  %freq = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %cfg, i32 0, i32 3, !dbg !4981
  %4 = load %struct.spi_transfer*, %struct.spi_transfer** %transfer.addr, align 8, !dbg !4984
  %speed_hz = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 13, !dbg !4985
  %5 = load i32, i32* %speed_hz, align 8, !dbg !4985
  store i32 %5, i32* %freq, align 4, !dbg !4981
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4986, metadata !DIExpression()), !dbg !4987
  %6 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !4988
  %dma_mapped = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %6, i32 0, i32 17, !dbg !4989
  store i32 0, i32* %dma_mapped, align 8, !dbg !4990
  %7 = load %struct.spi_transfer*, %struct.spi_transfer** %transfer.addr, align 8, !dbg !4991
  %bits_per_word1 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 8, !dbg !4991
  %8 = load i8, i8* %bits_per_word1, align 1, !dbg !4991
  %conv = zext i8 %8 to i32, !dbg !4991
  %add = add i32 %conv, 8, !dbg !4991
  %sub = sub i32 %add, 1, !dbg !4991
  %div = sdiv i32 %sub, 8, !dbg !4991
  %conv2 = trunc i32 %div to i8, !dbg !4991
  %9 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !4992
  %n_bytes = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %9, i32 0, i32 18, !dbg !4993
  store i8 %conv2, i8* %n_bytes, align 4, !dbg !4994
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %transfer.addr, align 8, !dbg !4995
  %tx_buf = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0, !dbg !4996
  %11 = load i8*, i8** %tx_buf, align 8, !dbg !4996
  %12 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !4997
  %tx = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %12, i32 0, i32 12, !dbg !4998
  store i8* %11, i8** %tx, align 8, !dbg !4999
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %transfer.addr, align 8, !dbg !5000
  %len = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 2, !dbg !5001
  %14 = load i32, i32* %len, align 8, !dbg !5001
  %15 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5002
  %n_bytes3 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %15, i32 0, i32 18, !dbg !5003
  %16 = load i8, i8* %n_bytes3, align 4, !dbg !5003
  %conv4 = zext i8 %16 to i32, !dbg !5002
  %div5 = udiv i32 %14, %conv4, !dbg !5004
  %17 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5005
  %tx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %17, i32 0, i32 13, !dbg !5006
  store i32 %div5, i32* %tx_len, align 8, !dbg !5007
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %transfer.addr, align 8, !dbg !5008
  %rx_buf = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 1, !dbg !5009
  %19 = load i8*, i8** %rx_buf, align 8, !dbg !5009
  %20 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5010
  %rx = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %20, i32 0, i32 14, !dbg !5011
  store i8* %19, i8** %rx, align 8, !dbg !5012
  %21 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5013
  %tx_len6 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %21, i32 0, i32 13, !dbg !5014
  %22 = load i32, i32* %tx_len6, align 8, !dbg !5014
  %23 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5015
  %rx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %23, i32 0, i32 15, !dbg !5016
  store i32 %22, i32* %rx_len, align 8, !dbg !5017
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5018, !srcloc !5019
  %24 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5020
  call void @spi_enable_chip(%struct.dw_spi* %24, i32 0) #10, !dbg !5021
  %25 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5022
  %26 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !5023
  call void @dw_spi_update_config(%struct.dw_spi* %25, %struct.spi_device* %26, %struct.dw_spi_cfg* %cfg) #10, !dbg !5024
  %27 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5025
  %current_freq = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %27, i32 0, i32 20, !dbg !5026
  %28 = load i32, i32* %current_freq, align 8, !dbg !5026
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %transfer.addr, align 8, !dbg !5027
  %effective_speed_hz = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 14, !dbg !5028
  store i32 %28, i32* %effective_speed_hz, align 4, !dbg !5029
  %30 = load %struct.spi_controller*, %struct.spi_controller** %master.addr, align 8, !dbg !5030
  %can_dma = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %30, i32 0, i32 22, !dbg !5032
  %31 = load i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)*, i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)** %can_dma, align 8, !dbg !5032
  %tobool = icmp ne i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* %31, null, !dbg !5030
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5033

land.lhs.true:                                    ; preds = %entry
  %32 = load %struct.spi_controller*, %struct.spi_controller** %master.addr, align 8, !dbg !5034
  %can_dma7 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %32, i32 0, i32 22, !dbg !5035
  %33 = load i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)*, i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)** %can_dma7, align 8, !dbg !5035
  %34 = load %struct.spi_controller*, %struct.spi_controller** %master.addr, align 8, !dbg !5036
  %35 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !5037
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %transfer.addr, align 8, !dbg !5038
  %call8 = call zeroext i1 %33(%struct.spi_controller* %34, %struct.spi_device* %35, %struct.spi_transfer* %36) #10, !dbg !5034
  br i1 %call8, label %if.then, label %if.end, !dbg !5039

if.then:                                          ; preds = %land.lhs.true
  %37 = load %struct.spi_controller*, %struct.spi_controller** %master.addr, align 8, !dbg !5040
  %cur_msg_mapped = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %37, i32 0, i32 35, !dbg !5041
  %38 = load i8, i8* %cur_msg_mapped, align 2, !dbg !5041
  %tobool10 = trunc i8 %38 to i1, !dbg !5041
  %conv11 = zext i1 %tobool10 to i32, !dbg !5040
  %39 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5042
  %dma_mapped12 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %39, i32 0, i32 17, !dbg !5043
  store i32 %conv11, i32* %dma_mapped12, align 8, !dbg !5044
  br label %if.end, !dbg !5042

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %40 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5045
  call void @spi_mask_intr(%struct.dw_spi* %40, i32 255) #10, !dbg !5046
  %41 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5047
  %dma_mapped13 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %41, i32 0, i32 17, !dbg !5049
  %42 = load i32, i32* %dma_mapped13, align 8, !dbg !5049
  %tobool14 = icmp ne i32 %42, 0, !dbg !5047
  br i1 %tobool14, label %if.then15, label %if.end20, !dbg !5050

if.then15:                                        ; preds = %if.end
  %43 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5051
  %dma_ops = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %43, i32 0, i32 31, !dbg !5053
  %44 = load %struct.dw_spi_dma_ops*, %struct.dw_spi_dma_ops** %dma_ops, align 8, !dbg !5053
  %dma_setup = getelementptr inbounds %struct.dw_spi_dma_ops, %struct.dw_spi_dma_ops* %44, i32 0, i32 2, !dbg !5054
  %45 = load i32 (%struct.dw_spi*, %struct.spi_transfer*)*, i32 (%struct.dw_spi*, %struct.spi_transfer*)** %dma_setup, align 8, !dbg !5054
  %46 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5055
  %47 = load %struct.spi_transfer*, %struct.spi_transfer** %transfer.addr, align 8, !dbg !5056
  %call16 = call i32 %45(%struct.dw_spi* %46, %struct.spi_transfer* %47) #10, !dbg !5051
  store i32 %call16, i32* %ret, align 4, !dbg !5057
  %48 = load i32, i32* %ret, align 4, !dbg !5058
  %tobool17 = icmp ne i32 %48, 0, !dbg !5058
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5060

if.then18:                                        ; preds = %if.then15
  %49 = load i32, i32* %ret, align 4, !dbg !5061
  store i32 %49, i32* %retval, align 4, !dbg !5062
  br label %return, !dbg !5062

if.end19:                                         ; preds = %if.then15
  br label %if.end20, !dbg !5063

if.end20:                                         ; preds = %if.end19, %if.end
  %50 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5064
  call void @spi_enable_chip(%struct.dw_spi* %50, i32 1) #10, !dbg !5065
  %51 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5066
  %dma_mapped21 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %51, i32 0, i32 17, !dbg !5068
  %52 = load i32, i32* %dma_mapped21, align 8, !dbg !5068
  %tobool22 = icmp ne i32 %52, 0, !dbg !5066
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !5069

if.then23:                                        ; preds = %if.end20
  %53 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5070
  %dma_ops24 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %53, i32 0, i32 31, !dbg !5071
  %54 = load %struct.dw_spi_dma_ops*, %struct.dw_spi_dma_ops** %dma_ops24, align 8, !dbg !5071
  %dma_transfer = getelementptr inbounds %struct.dw_spi_dma_ops, %struct.dw_spi_dma_ops* %54, i32 0, i32 4, !dbg !5072
  %55 = load i32 (%struct.dw_spi*, %struct.spi_transfer*)*, i32 (%struct.dw_spi*, %struct.spi_transfer*)** %dma_transfer, align 8, !dbg !5072
  %56 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5073
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %transfer.addr, align 8, !dbg !5074
  %call25 = call i32 %55(%struct.dw_spi* %56, %struct.spi_transfer* %57) #10, !dbg !5070
  store i32 %call25, i32* %retval, align 4, !dbg !5075
  br label %return, !dbg !5075

if.else:                                          ; preds = %if.end20
  %58 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5076
  %irq = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %58, i32 0, i32 3, !dbg !5078
  %59 = load i32, i32* %irq, align 8, !dbg !5078
  %cmp = icmp eq i32 %59, -2147483648, !dbg !5079
  br i1 %cmp, label %if.then27, label %if.end29, !dbg !5080

if.then27:                                        ; preds = %if.else
  %60 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5081
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %transfer.addr, align 8, !dbg !5082
  %call28 = call i32 @dw_spi_poll_transfer(%struct.dw_spi* %60, %struct.spi_transfer* %61) #10, !dbg !5083
  store i32 %call28, i32* %retval, align 4, !dbg !5084
  br label %return, !dbg !5084

if.end29:                                         ; preds = %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29
  %62 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5085
  call void @dw_spi_irq_setup(%struct.dw_spi* %62) #10, !dbg !5086
  store i32 1, i32* %retval, align 4, !dbg !5087
  br label %return, !dbg !5087

return:                                           ; preds = %if.end30, %if.then27, %if.then23, %if.then18
  %63 = load i32, i32* %retval, align 4, !dbg !5088
  ret i32 %63, !dbg !5088
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dw_spi_handle_err(%struct.spi_controller* %master, %struct.spi_message* %msg) #0 !dbg !5089 {
entry:
  %master.addr = alloca %struct.spi_controller*, align 8
  %msg.addr = alloca %struct.spi_message*, align 8
  %dws = alloca %struct.dw_spi*, align 8
  store %struct.spi_controller* %master, %struct.spi_controller** %master.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %master.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  store %struct.spi_message* %msg, %struct.spi_message** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_message** %msg.addr, metadata !5092, metadata !DIExpression()), !dbg !5093
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws, metadata !5094, metadata !DIExpression()), !dbg !5095
  %0 = load %struct.spi_controller*, %struct.spi_controller** %master.addr, align 8, !dbg !5096
  %call = call i8* @spi_controller_get_devdata(%struct.spi_controller* %0) #10, !dbg !5097
  %1 = bitcast i8* %call to %struct.dw_spi*, !dbg !5097
  store %struct.dw_spi* %1, %struct.dw_spi** %dws, align 8, !dbg !5095
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5098
  %dma_mapped = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %2, i32 0, i32 17, !dbg !5100
  %3 = load i32, i32* %dma_mapped, align 8, !dbg !5100
  %tobool = icmp ne i32 %3, 0, !dbg !5098
  br i1 %tobool, label %if.then, label %if.end, !dbg !5101

if.then:                                          ; preds = %entry
  %4 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5102
  %dma_ops = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %4, i32 0, i32 31, !dbg !5103
  %5 = load %struct.dw_spi_dma_ops*, %struct.dw_spi_dma_ops** %dma_ops, align 8, !dbg !5103
  %dma_stop = getelementptr inbounds %struct.dw_spi_dma_ops, %struct.dw_spi_dma_ops* %5, i32 0, i32 5, !dbg !5104
  %6 = load void (%struct.dw_spi*)*, void (%struct.dw_spi*)** %dma_stop, align 8, !dbg !5104
  %7 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5105
  call void %6(%struct.dw_spi* %7) #10, !dbg !5102
  br label %if.end, !dbg !5102

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5106
  call void @spi_reset_chip(%struct.dw_spi* %8) #10, !dbg !5107
  ret void, !dbg !5108
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @device_property_read_u32(%struct.device* %dev, i8* %propname, i32* %val) #0 !dbg !5109 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %propname.addr = alloca i8*, align 8
  %val.addr = alloca i32*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !5115, metadata !DIExpression()), !dbg !5116
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !5117, metadata !DIExpression()), !dbg !5118
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5119
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !5120
  %2 = load i32*, i32** %val.addr, align 8, !dbg !5121
  %call = call i32 @device_property_read_u32_array(%struct.device* %0, i8* %1, i32* %2, i64 1) #10, !dbg !5122
  ret i32 %call, !dbg !5123
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @spi_register_controller(%struct.spi_controller*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_spi_debugfs_init(%struct.dw_spi* %dws) #0 !dbg !5124 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  ret i32 0, !dbg !5129
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_enable_chip(%struct.dw_spi* %dws, i32 %enable) #0 !dbg !5130 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %enable.addr = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !5133, metadata !DIExpression()), !dbg !5134
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !5135, metadata !DIExpression()), !dbg !5136
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5137
  %1 = load i32, i32* %enable.addr, align 4, !dbg !5138
  %tobool = icmp ne i32 %1, 0, !dbg !5138
  %2 = zext i1 %tobool to i64, !dbg !5138
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5138
  call void @dw_writel(%struct.dw_spi* %0, i32 8, i32 %cond) #10, !dbg !5139
  ret void, !dbg !5140
}

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_controller_put(%struct.spi_controller* %ctlr) #0 !dbg !5141 {
entry:
  %ctlr.addr = alloca %struct.spi_controller*, align 8
  store %struct.spi_controller* %ctlr, %struct.spi_controller** %ctlr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr.addr, metadata !5144, metadata !DIExpression()), !dbg !5145
  %0 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !5146
  %tobool = icmp ne %struct.spi_controller* %0, null, !dbg !5146
  br i1 %tobool, label %if.then, label %if.end, !dbg !5148

if.then:                                          ; preds = %entry
  %1 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !5149
  %dev = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %1, i32 0, i32 0, !dbg !5150
  call void @put_device(%struct.device* %dev) #10, !dbg !5151
  br label %if.end, !dbg !5151

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5152
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dw_spi_remove_host(%struct.dw_spi* %dws) #0 !dbg !5153 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5156
  call void @dw_spi_debugfs_remove(%struct.dw_spi* %0) #10, !dbg !5157
  %1 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5158
  %master = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %1, i32 0, i32 0, !dbg !5159
  %2 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !5159
  call void @spi_unregister_controller(%struct.spi_controller* %2) #10, !dbg !5160
  %3 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5161
  %dma_ops = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %3, i32 0, i32 31, !dbg !5163
  %4 = load %struct.dw_spi_dma_ops*, %struct.dw_spi_dma_ops** %dma_ops, align 8, !dbg !5163
  %tobool = icmp ne %struct.dw_spi_dma_ops* %4, null, !dbg !5161
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5164

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5165
  %dma_ops1 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %5, i32 0, i32 31, !dbg !5166
  %6 = load %struct.dw_spi_dma_ops*, %struct.dw_spi_dma_ops** %dma_ops1, align 8, !dbg !5166
  %dma_exit = getelementptr inbounds %struct.dw_spi_dma_ops, %struct.dw_spi_dma_ops* %6, i32 0, i32 1, !dbg !5167
  %7 = load void (%struct.dw_spi*)*, void (%struct.dw_spi*)** %dma_exit, align 8, !dbg !5167
  %tobool2 = icmp ne void (%struct.dw_spi*)* %7, null, !dbg !5165
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5168

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5169
  %dma_ops3 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %8, i32 0, i32 31, !dbg !5170
  %9 = load %struct.dw_spi_dma_ops*, %struct.dw_spi_dma_ops** %dma_ops3, align 8, !dbg !5170
  %dma_exit4 = getelementptr inbounds %struct.dw_spi_dma_ops, %struct.dw_spi_dma_ops* %9, i32 0, i32 1, !dbg !5171
  %10 = load void (%struct.dw_spi*)*, void (%struct.dw_spi*)** %dma_exit4, align 8, !dbg !5171
  %11 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5172
  call void %10(%struct.dw_spi* %11) #10, !dbg !5169
  br label %if.end, !dbg !5169

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5173
  call void @spi_shutdown_chip(%struct.dw_spi* %12) #10, !dbg !5174
  %13 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5175
  %irq = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %13, i32 0, i32 3, !dbg !5176
  %14 = load i32, i32* %irq, align 8, !dbg !5176
  %15 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5177
  %master5 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %15, i32 0, i32 0, !dbg !5178
  %16 = load %struct.spi_controller*, %struct.spi_controller** %master5, align 8, !dbg !5178
  %17 = bitcast %struct.spi_controller* %16 to i8*, !dbg !5177
  %call = call i8* @free_irq(i32 %14, i8* %17) #10, !dbg !5179
  ret void, !dbg !5180
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dw_spi_debugfs_remove(%struct.dw_spi* %dws) #0 !dbg !5181 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !5182, metadata !DIExpression()), !dbg !5183
  ret void, !dbg !5184
}

; Function Attrs: noredzone
declare dso_local void @spi_unregister_controller(%struct.spi_controller*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_shutdown_chip(%struct.dw_spi* %dws) #0 !dbg !5185 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !5186, metadata !DIExpression()), !dbg !5187
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5188
  call void @spi_enable_chip(%struct.dw_spi* %0, i32 0) #10, !dbg !5189
  %1 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5190
  call void @spi_set_clk(%struct.dw_spi* %1, i16 zeroext 0) #10, !dbg !5191
  ret void, !dbg !5192
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dw_spi_suspend_host(%struct.dw_spi* %dws) #0 !dbg !5193 {
entry:
  %retval = alloca i32, align 4
  %dws.addr = alloca %struct.dw_spi*, align 8
  %ret = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !5194, metadata !DIExpression()), !dbg !5195
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5196, metadata !DIExpression()), !dbg !5197
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5198
  %master = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %0, i32 0, i32 0, !dbg !5199
  %1 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !5199
  %call = call i32 @spi_controller_suspend(%struct.spi_controller* %1) #10, !dbg !5200
  store i32 %call, i32* %ret, align 4, !dbg !5201
  %2 = load i32, i32* %ret, align 4, !dbg !5202
  %tobool = icmp ne i32 %2, 0, !dbg !5202
  br i1 %tobool, label %if.then, label %if.end, !dbg !5204

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !5205
  store i32 %3, i32* %retval, align 4, !dbg !5206
  br label %return, !dbg !5206

if.end:                                           ; preds = %entry
  %4 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5207
  call void @spi_shutdown_chip(%struct.dw_spi* %4) #10, !dbg !5208
  store i32 0, i32* %retval, align 4, !dbg !5209
  br label %return, !dbg !5209

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5210
  ret i32 %5, !dbg !5210
}

; Function Attrs: noredzone
declare dso_local i32 @spi_controller_suspend(%struct.spi_controller*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dw_spi_resume_host(%struct.dw_spi* %dws) #0 !dbg !5211 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !5212, metadata !DIExpression()), !dbg !5213
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5214
  %master = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %0, i32 0, i32 0, !dbg !5215
  %1 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !5215
  %dev = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %1, i32 0, i32 0, !dbg !5216
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5217
  call void @spi_hw_init(%struct.device* %dev, %struct.dw_spi* %2) #10, !dbg !5218
  %3 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5219
  %master1 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %3, i32 0, i32 0, !dbg !5220
  %4 = load %struct.spi_controller*, %struct.spi_controller** %master1, align 8, !dbg !5220
  %call = call i32 @spi_controller_resume(%struct.spi_controller* %4) #10, !dbg !5221
  ret i32 %call, !dbg !5222
}

; Function Attrs: noredzone
declare dso_local i32 @spi_controller_resume(%struct.spi_controller*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !5223 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5226, metadata !DIExpression()), !dbg !5227
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5228
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5229
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5229
  ret i8* %1, !dbg !5230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writel(i32 %val, i8* %addr) #0 !dbg !5231 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5237, metadata !DIExpression()), !dbg !5238
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5239, metadata !DIExpression()), !dbg !5238
  %0 = load i32, i32* %val.addr, align 4, !dbg !5238
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5238
  %2 = bitcast i8* %1 to i32*, !dbg !5238
  call void asm sideeffect "movl $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #9, !dbg !5238, !srcloc !5240
  ret void, !dbg !5238
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__readl(i8* %addr) #0 !dbg !5241 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5246, metadata !DIExpression()), !dbg !5247
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5248, metadata !DIExpression()), !dbg !5247
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5247
  %1 = bitcast i8* %0 to i32*, !dbg !5247
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %1) #9, !dbg !5247, !srcloc !5249
  store i32 %2, i32* %ret, align 4, !dbg !5247
  %3 = load i32, i32* %ret, align 4, !dbg !5247
  ret i32 %3, !dbg !5247
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_mask_intr(%struct.dw_spi* %dws, i32 %mask) #0 !dbg !5250 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %mask.addr = alloca i32, align 4
  %new_mask = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !5253, metadata !DIExpression()), !dbg !5254
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5255, metadata !DIExpression()), !dbg !5256
  call void @llvm.dbg.declare(metadata i32* %new_mask, metadata !5257, metadata !DIExpression()), !dbg !5258
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5259
  %call = call i32 @dw_readl(%struct.dw_spi* %0, i32 44) #10, !dbg !5260
  %1 = load i32, i32* %mask.addr, align 4, !dbg !5261
  %neg = xor i32 %1, -1, !dbg !5262
  %and = and i32 %call, %neg, !dbg !5263
  store i32 %and, i32* %new_mask, align 4, !dbg !5264
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5265
  %3 = load i32, i32* %new_mask, align 4, !dbg !5266
  call void @dw_writel(%struct.dw_spi* %2, i32 44, i32 %3) #10, !dbg !5267
  ret void, !dbg !5268
}

; Function Attrs: noredzone
declare dso_local %struct.spi_controller* @__spi_alloc_controller(%struct.device*, i32, i1 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !5269 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5272, metadata !DIExpression()), !dbg !5273
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5276
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5277
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5278
  store i8* %0, i8** %driver_data, align 8, !dbg !5279
  ret void, !dbg !5280
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5281 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5286, metadata !DIExpression()), !dbg !5287
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5288
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5289
  %1 = load i8*, i8** %name, align 8, !dbg !5289
  ret i8* %1, !dbg !5290
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_spi_adjust_mem_op_size(%struct.spi_mem* %mem, %struct.spi_mem_op* %op) #0 !dbg !5291 {
entry:
  %mem.addr = alloca %struct.spi_mem*, align 8
  %op.addr = alloca %struct.spi_mem_op*, align 8
  %__UNIQUE_ID___x255 = alloca i32, align 4
  %__UNIQUE_ID___x253 = alloca i32, align 4
  %__UNIQUE_ID___y254 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y256 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !5292, metadata !DIExpression()), !dbg !5293
  store %struct.spi_mem_op* %op, %struct.spi_mem_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op** %op.addr, metadata !5294, metadata !DIExpression()), !dbg !5295
  %0 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5296
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %0, i32 0, i32 3, !dbg !5298
  %dir = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data, i32 0, i32 2, !dbg !5299
  %1 = load i32, i32* %dir, align 4, !dbg !5299
  %cmp = icmp eq i32 %1, 1, !dbg !5300
  br i1 %cmp, label %if.then, label %if.end, !dbg !5301

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x255, metadata !5302, metadata !DIExpression()), !dbg !5304
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x253, metadata !5305, metadata !DIExpression()), !dbg !5307
  %2 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5307
  %data1 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %2, i32 0, i32 3, !dbg !5307
  %nbytes = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data1, i32 0, i32 3, !dbg !5307
  %3 = load i32, i32* %nbytes, align 8, !dbg !5307
  store i32 %3, i32* %__UNIQUE_ID___x253, align 4, !dbg !5307
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y254, metadata !5308, metadata !DIExpression()), !dbg !5307
  store i32 0, i32* %__UNIQUE_ID___y254, align 4, !dbg !5307
  %4 = load i32, i32* %__UNIQUE_ID___x253, align 4, !dbg !5307
  %5 = load i32, i32* %__UNIQUE_ID___y254, align 4, !dbg !5307
  %cmp2 = icmp ugt i32 %4, %5, !dbg !5307
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !5307

cond.true:                                        ; preds = %if.then
  %6 = load i32, i32* %__UNIQUE_ID___x253, align 4, !dbg !5307
  br label %cond.end, !dbg !5307

cond.false:                                       ; preds = %if.then
  %7 = load i32, i32* %__UNIQUE_ID___y254, align 4, !dbg !5307
  br label %cond.end, !dbg !5307

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !5307
  store i32 %cond, i32* %tmp, align 4, !dbg !5307
  %8 = load i32, i32* %tmp, align 4, !dbg !5307
  store i32 %8, i32* %__UNIQUE_ID___x255, align 4, !dbg !5304
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y256, metadata !5309, metadata !DIExpression()), !dbg !5304
  store i32 65536, i32* %__UNIQUE_ID___y256, align 4, !dbg !5304
  %9 = load i32, i32* %__UNIQUE_ID___x255, align 4, !dbg !5304
  %10 = load i32, i32* %__UNIQUE_ID___y256, align 4, !dbg !5304
  %cmp4 = icmp ult i32 %9, %10, !dbg !5304
  br i1 %cmp4, label %cond.true5, label %cond.false6, !dbg !5304

cond.true5:                                       ; preds = %cond.end
  %11 = load i32, i32* %__UNIQUE_ID___x255, align 4, !dbg !5304
  br label %cond.end7, !dbg !5304

cond.false6:                                      ; preds = %cond.end
  %12 = load i32, i32* %__UNIQUE_ID___y256, align 4, !dbg !5304
  br label %cond.end7, !dbg !5304

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i32 [ %11, %cond.true5 ], [ %12, %cond.false6 ], !dbg !5304
  store i32 %cond8, i32* %tmp3, align 4, !dbg !5304
  %13 = load i32, i32* %tmp3, align 4, !dbg !5304
  %14 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5310
  %data9 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %14, i32 0, i32 3, !dbg !5311
  %nbytes10 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data9, i32 0, i32 3, !dbg !5312
  store i32 %13, i32* %nbytes10, align 8, !dbg !5313
  br label %if.end, !dbg !5310

if.end:                                           ; preds = %cond.end7, %entry
  ret i32 0, !dbg !5314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dw_spi_supports_mem_op(%struct.spi_mem* %mem, %struct.spi_mem_op* %op) #0 !dbg !5315 {
entry:
  %retval = alloca i1, align 1
  %mem.addr = alloca %struct.spi_mem*, align 8
  %op.addr = alloca %struct.spi_mem_op*, align 8
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !5316, metadata !DIExpression()), !dbg !5317
  store %struct.spi_mem_op* %op, %struct.spi_mem_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op** %op.addr, metadata !5318, metadata !DIExpression()), !dbg !5319
  %0 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5320
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %0, i32 0, i32 3, !dbg !5322
  %buswidth = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data, i32 0, i32 0, !dbg !5323
  %1 = load i8, i8* %buswidth, align 8, !dbg !5323
  %conv = zext i8 %1 to i32, !dbg !5320
  %cmp = icmp sgt i32 %conv, 1, !dbg !5324
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5325

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5326
  %addr = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %2, i32 0, i32 1, !dbg !5327
  %buswidth2 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %addr, i32 0, i32 1, !dbg !5328
  %3 = load i8, i8* %buswidth2, align 1, !dbg !5328
  %conv3 = zext i8 %3 to i32, !dbg !5326
  %cmp4 = icmp sgt i32 %conv3, 1, !dbg !5329
  br i1 %cmp4, label %if.then, label %lor.lhs.false6, !dbg !5330

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5331
  %dummy = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %4, i32 0, i32 2, !dbg !5332
  %buswidth7 = getelementptr inbounds %struct.anon.67, %struct.anon.67* %dummy, i32 0, i32 1, !dbg !5333
  %5 = load i8, i8* %buswidth7, align 1, !dbg !5333
  %conv8 = zext i8 %5 to i32, !dbg !5331
  %cmp9 = icmp sgt i32 %conv8, 1, !dbg !5334
  br i1 %cmp9, label %if.then, label %lor.lhs.false11, !dbg !5335

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %6 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5336
  %cmd = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %6, i32 0, i32 0, !dbg !5337
  %buswidth12 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd, i32 0, i32 1, !dbg !5338
  %7 = load i8, i8* %buswidth12, align 1, !dbg !5338
  %conv13 = zext i8 %7 to i32, !dbg !5336
  %cmp14 = icmp sgt i32 %conv13, 1, !dbg !5339
  br i1 %cmp14, label %if.then, label %if.end, !dbg !5340

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false6, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !5341
  br label %return, !dbg !5341

if.end:                                           ; preds = %lor.lhs.false11
  %8 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5342
  %9 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5343
  %call = call zeroext i1 @spi_mem_default_supports_op(%struct.spi_mem* %8, %struct.spi_mem_op* %9) #10, !dbg !5344
  store i1 %call, i1* %retval, align 1, !dbg !5345
  br label %return, !dbg !5345

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, i1* %retval, align 1, !dbg !5346
  ret i1 %10, !dbg !5346
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_spi_exec_mem_op(%struct.spi_mem* %mem, %struct.spi_mem_op* %op) #0 !dbg !5347 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.spi_mem*, align 8
  %op.addr = alloca %struct.spi_mem_op*, align 8
  %dws = alloca %struct.dw_spi*, align 8
  %cfg = alloca %struct.dw_spi_cfg, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x269 = alloca i32, align 4
  %__UNIQUE_ID___x267 = alloca i32, align 4
  %__UNIQUE_ID___y268 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y270 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  %__dummy24 = alloca i64, align 8
  %__dummy225 = alloca i64, align 8
  %tmp28 = alloca i32, align 4
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !5348, metadata !DIExpression()), !dbg !5349
  store %struct.spi_mem_op* %op, %struct.spi_mem_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op** %op.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws, metadata !5352, metadata !DIExpression()), !dbg !5353
  %0 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5354
  %spi = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %0, i32 0, i32 0, !dbg !5355
  %1 = load %struct.spi_device*, %struct.spi_device** %spi, align 8, !dbg !5355
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %1, i32 0, i32 1, !dbg !5356
  %2 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !5356
  %call = call i8* @spi_controller_get_devdata(%struct.spi_controller* %2) #10, !dbg !5357
  %3 = bitcast i8* %call to %struct.dw_spi*, !dbg !5357
  store %struct.dw_spi* %3, %struct.dw_spi** %dws, align 8, !dbg !5353
  call void @llvm.dbg.declare(metadata %struct.dw_spi_cfg* %cfg, metadata !5358, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5360, metadata !DIExpression()), !dbg !5361
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5362, metadata !DIExpression()), !dbg !5363
  %4 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5364
  %5 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5365
  %call1 = call i32 @dw_spi_init_mem_buf(%struct.dw_spi* %4, %struct.spi_mem_op* %5) #10, !dbg !5366
  store i32 %call1, i32* %ret, align 4, !dbg !5367
  %6 = load i32, i32* %ret, align 4, !dbg !5368
  %tobool = icmp ne i32 %6, 0, !dbg !5368
  br i1 %tobool, label %if.then, label %if.end, !dbg !5370

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4, !dbg !5371
  store i32 %7, i32* %retval, align 4, !dbg !5372
  br label %return, !dbg !5372

if.end:                                           ; preds = %entry
  %dfs = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %cfg, i32 0, i32 1, !dbg !5373
  store i8 8, i8* %dfs, align 1, !dbg !5374
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x269, metadata !5375, metadata !DIExpression()), !dbg !5377
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x267, metadata !5378, metadata !DIExpression()), !dbg !5380
  %8 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5380
  %spi2 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %8, i32 0, i32 0, !dbg !5380
  %9 = load %struct.spi_device*, %struct.spi_device** %spi2, align 8, !dbg !5380
  %max_speed_hz = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 3, !dbg !5380
  %10 = load i32, i32* %max_speed_hz, align 8, !dbg !5380
  store i32 %10, i32* %__UNIQUE_ID___x267, align 4, !dbg !5380
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y268, metadata !5381, metadata !DIExpression()), !dbg !5380
  store i32 0, i32* %__UNIQUE_ID___y268, align 4, !dbg !5380
  %11 = load i32, i32* %__UNIQUE_ID___x267, align 4, !dbg !5380
  %12 = load i32, i32* %__UNIQUE_ID___y268, align 4, !dbg !5380
  %cmp = icmp ugt i32 %11, %12, !dbg !5380
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5380

cond.true:                                        ; preds = %if.end
  %13 = load i32, i32* %__UNIQUE_ID___x267, align 4, !dbg !5380
  br label %cond.end, !dbg !5380

cond.false:                                       ; preds = %if.end
  %14 = load i32, i32* %__UNIQUE_ID___y268, align 4, !dbg !5380
  br label %cond.end, !dbg !5380

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !5380
  store i32 %cond, i32* %tmp, align 4, !dbg !5380
  %15 = load i32, i32* %tmp, align 4, !dbg !5380
  store i32 %15, i32* %__UNIQUE_ID___x269, align 4, !dbg !5377
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y270, metadata !5382, metadata !DIExpression()), !dbg !5377
  %16 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5377
  %max_mem_freq = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %16, i32 0, i32 5, !dbg !5377
  %17 = load i32, i32* %max_mem_freq, align 8, !dbg !5377
  store i32 %17, i32* %__UNIQUE_ID___y270, align 4, !dbg !5377
  %18 = load i32, i32* %__UNIQUE_ID___x269, align 4, !dbg !5377
  %19 = load i32, i32* %__UNIQUE_ID___y270, align 4, !dbg !5377
  %cmp4 = icmp ult i32 %18, %19, !dbg !5377
  br i1 %cmp4, label %cond.true5, label %cond.false6, !dbg !5377

cond.true5:                                       ; preds = %cond.end
  %20 = load i32, i32* %__UNIQUE_ID___x269, align 4, !dbg !5377
  br label %cond.end7, !dbg !5377

cond.false6:                                      ; preds = %cond.end
  %21 = load i32, i32* %__UNIQUE_ID___y270, align 4, !dbg !5377
  br label %cond.end7, !dbg !5377

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i32 [ %20, %cond.true5 ], [ %21, %cond.false6 ], !dbg !5377
  store i32 %cond8, i32* %tmp3, align 4, !dbg !5377
  %22 = load i32, i32* %tmp3, align 4, !dbg !5377
  %freq = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %cfg, i32 0, i32 3, !dbg !5383
  store i32 %22, i32* %freq, align 4, !dbg !5384
  %23 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5385
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %23, i32 0, i32 3, !dbg !5387
  %dir = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data, i32 0, i32 2, !dbg !5388
  %24 = load i32, i32* %dir, align 4, !dbg !5388
  %cmp9 = icmp eq i32 %24, 1, !dbg !5389
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !5390

if.then10:                                        ; preds = %cond.end7
  %tmode = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %cfg, i32 0, i32 0, !dbg !5391
  store i8 3, i8* %tmode, align 4, !dbg !5393
  %25 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5394
  %data11 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %25, i32 0, i32 3, !dbg !5395
  %nbytes = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data11, i32 0, i32 3, !dbg !5396
  %26 = load i32, i32* %nbytes, align 8, !dbg !5396
  %ndf = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %cfg, i32 0, i32 2, !dbg !5397
  store i32 %26, i32* %ndf, align 4, !dbg !5398
  br label %if.end13, !dbg !5399

if.else:                                          ; preds = %cond.end7
  %tmode12 = getelementptr inbounds %struct.dw_spi_cfg, %struct.dw_spi_cfg* %cfg, i32 0, i32 0, !dbg !5400
  store i8 1, i8* %tmode12, align 4, !dbg !5402
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  %27 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5403
  call void @spi_enable_chip(%struct.dw_spi* %27, i32 0) #10, !dbg !5404
  %28 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5405
  %29 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5406
  %spi14 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %29, i32 0, i32 0, !dbg !5407
  %30 = load %struct.spi_device*, %struct.spi_device** %spi14, align 8, !dbg !5407
  call void @dw_spi_update_config(%struct.dw_spi* %28, %struct.spi_device* %30, %struct.dw_spi_cfg* %cfg) #10, !dbg !5408
  %31 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5409
  call void @spi_mask_intr(%struct.dw_spi* %31, i32 255) #10, !dbg !5410
  %32 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5411
  call void @spi_enable_chip(%struct.dw_spi* %32, i32 1) #10, !dbg !5412
  br label %do.body, !dbg !5413

do.body:                                          ; preds = %if.end13
  br label %do.body15, !dbg !5414

do.body15:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5416, metadata !DIExpression()), !dbg !5419
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5420, metadata !DIExpression()), !dbg !5419
  %cmp16 = icmp eq i64* %__dummy, %__dummy2, !dbg !5419
  %conv = zext i1 %cmp16 to i32, !dbg !5419
  store i32 1, i32* %tmp17, align 4, !dbg !5419
  %33 = load i32, i32* %tmp17, align 4, !dbg !5419
  %call18 = call i64 @arch_local_irq_save() #10, !dbg !5421
  store i64 %call18, i64* %flags, align 8, !dbg !5421
  br label %do.end, !dbg !5421

do.end:                                           ; preds = %do.body15
  br label %do.end19, !dbg !5414

do.end19:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5422, !srcloc !5423
  %34 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5424
  %35 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5425
  %spi20 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %35, i32 0, i32 0, !dbg !5426
  %36 = load %struct.spi_device*, %struct.spi_device** %spi20, align 8, !dbg !5426
  %call21 = call i32 @dw_spi_write_then_read(%struct.dw_spi* %34, %struct.spi_device* %36) #10, !dbg !5427
  store i32 %call21, i32* %ret, align 4, !dbg !5428
  br label %do.body22, !dbg !5429

do.body22:                                        ; preds = %do.end19
  br label %do.body23, !dbg !5430

do.body23:                                        ; preds = %do.body22
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !5432, metadata !DIExpression()), !dbg !5435
  call void @llvm.dbg.declare(metadata i64* %__dummy225, metadata !5436, metadata !DIExpression()), !dbg !5435
  %cmp26 = icmp eq i64* %__dummy24, %__dummy225, !dbg !5435
  %conv27 = zext i1 %cmp26 to i32, !dbg !5435
  store i32 1, i32* %tmp28, align 4, !dbg !5435
  %37 = load i32, i32* %tmp28, align 4, !dbg !5435
  %38 = load i64, i64* %flags, align 8, !dbg !5437
  call void @arch_local_irq_restore(i64 %38) #10, !dbg !5437
  br label %do.end29, !dbg !5437

do.end29:                                         ; preds = %do.body23
  br label %do.end30, !dbg !5430

do.end30:                                         ; preds = %do.end29
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5438, !srcloc !5439
  %39 = load i32, i32* %ret, align 4, !dbg !5440
  %tobool31 = icmp ne i32 %39, 0, !dbg !5440
  br i1 %tobool31, label %if.end38, label %if.then32, !dbg !5442

if.then32:                                        ; preds = %do.end30
  %40 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5443
  %call33 = call i32 @dw_spi_wait_mem_op_done(%struct.dw_spi* %40) #10, !dbg !5445
  store i32 %call33, i32* %ret, align 4, !dbg !5446
  %41 = load i32, i32* %ret, align 4, !dbg !5447
  %tobool34 = icmp ne i32 %41, 0, !dbg !5447
  br i1 %tobool34, label %if.end37, label %if.then35, !dbg !5449

if.then35:                                        ; preds = %if.then32
  %42 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5450
  %call36 = call i32 @dw_spi_check_status(%struct.dw_spi* %42, i1 zeroext true) #10, !dbg !5451
  store i32 %call36, i32* %ret, align 4, !dbg !5452
  br label %if.end37, !dbg !5453

if.end37:                                         ; preds = %if.then35, %if.then32
  br label %if.end38, !dbg !5454

if.end38:                                         ; preds = %if.end37, %do.end30
  %43 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5455
  %44 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5456
  %spi39 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %44, i32 0, i32 0, !dbg !5457
  %45 = load %struct.spi_device*, %struct.spi_device** %spi39, align 8, !dbg !5457
  call void @dw_spi_stop_mem_op(%struct.dw_spi* %43, %struct.spi_device* %45) #10, !dbg !5458
  %46 = load %struct.dw_spi*, %struct.dw_spi** %dws, align 8, !dbg !5459
  call void @dw_spi_free_mem_buf(%struct.dw_spi* %46) #10, !dbg !5460
  %47 = load i32, i32* %ret, align 4, !dbg !5461
  store i32 %47, i32* %retval, align 4, !dbg !5462
  br label %return, !dbg !5462

return:                                           ; preds = %if.end38, %if.then
  %48 = load i32, i32* %retval, align 4, !dbg !5463
  ret i32 %48, !dbg !5463
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @spi_mem_default_supports_op(%struct.spi_mem*, %struct.spi_mem_op*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_spi_init_mem_buf(%struct.dw_spi* %dws, %struct.spi_mem_op* %op) #0 !dbg !5464 {
entry:
  %retval = alloca i32, align 4
  %dws.addr = alloca %struct.dw_spi*, align 8
  %op.addr = alloca %struct.spi_mem_op*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %out = alloca i8*, align 8
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !5467, metadata !DIExpression()), !dbg !5468
  store %struct.spi_mem_op* %op, %struct.spi_mem_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op** %op.addr, metadata !5469, metadata !DIExpression()), !dbg !5470
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5471, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.declare(metadata i32* %j, metadata !5473, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5475, metadata !DIExpression()), !dbg !5476
  call void @llvm.dbg.declare(metadata i8** %out, metadata !5477, metadata !DIExpression()), !dbg !5478
  %0 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5479
  %cmd = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %0, i32 0, i32 0, !dbg !5480
  %nbytes = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd, i32 0, i32 0, !dbg !5481
  %1 = load i8, i8* %nbytes, align 8, !dbg !5481
  %conv = zext i8 %1 to i32, !dbg !5479
  %2 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5482
  %addr = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %2, i32 0, i32 1, !dbg !5483
  %nbytes1 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %addr, i32 0, i32 0, !dbg !5484
  %3 = load i8, i8* %nbytes1, align 8, !dbg !5484
  %conv2 = zext i8 %3 to i32, !dbg !5482
  %add = add i32 %conv, %conv2, !dbg !5485
  %4 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5486
  %dummy = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %4, i32 0, i32 2, !dbg !5487
  %nbytes3 = getelementptr inbounds %struct.anon.67, %struct.anon.67* %dummy, i32 0, i32 0, !dbg !5488
  %5 = load i8, i8* %nbytes3, align 8, !dbg !5488
  %conv4 = zext i8 %5 to i32, !dbg !5486
  %add5 = add i32 %add, %conv4, !dbg !5489
  store i32 %add5, i32* %len, align 4, !dbg !5490
  %6 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5491
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %6, i32 0, i32 3, !dbg !5493
  %dir = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data, i32 0, i32 2, !dbg !5494
  %7 = load i32, i32* %dir, align 4, !dbg !5494
  %cmp = icmp eq i32 %7, 2, !dbg !5495
  br i1 %cmp, label %if.then, label %if.end, !dbg !5496

if.then:                                          ; preds = %entry
  %8 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5497
  %data7 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %8, i32 0, i32 3, !dbg !5498
  %nbytes8 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data7, i32 0, i32 3, !dbg !5499
  %9 = load i32, i32* %nbytes8, align 8, !dbg !5499
  %10 = load i32, i32* %len, align 4, !dbg !5500
  %add9 = add i32 %10, %9, !dbg !5500
  store i32 %add9, i32* %len, align 4, !dbg !5500
  br label %if.end, !dbg !5501

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %len, align 4, !dbg !5502
  %conv10 = zext i32 %11 to i64, !dbg !5502
  %cmp11 = icmp ule i64 %conv10, 266, !dbg !5504
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !5505

if.then13:                                        ; preds = %if.end
  %12 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5506
  %buf = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %12, i32 0, i32 16, !dbg !5508
  %arraydecay = getelementptr inbounds [266 x i8], [266 x i8]* %buf, i64 0, i64 0, !dbg !5506
  store i8* %arraydecay, i8** %out, align 8, !dbg !5509
  br label %if.end17, !dbg !5510

if.else:                                          ; preds = %if.end
  %13 = load i32, i32* %len, align 4, !dbg !5511
  %conv14 = zext i32 %13 to i64, !dbg !5511
  %call = call i8* @kzalloc(i64 %conv14, i32 3264) #10, !dbg !5513
  store i8* %call, i8** %out, align 8, !dbg !5514
  %14 = load i8*, i8** %out, align 8, !dbg !5515
  %tobool = icmp ne i8* %14, null, !dbg !5515
  br i1 %tobool, label %if.end16, label %if.then15, !dbg !5517

if.then15:                                        ; preds = %if.else
  store i32 -12, i32* %retval, align 4, !dbg !5518
  br label %return, !dbg !5518

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then13
  store i32 0, i32* %i, align 4, !dbg !5519
  br label %for.cond, !dbg !5521

for.cond:                                         ; preds = %for.inc, %if.end17
  %15 = load i32, i32* %i, align 4, !dbg !5522
  %16 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5524
  %cmd18 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %16, i32 0, i32 0, !dbg !5525
  %nbytes19 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd18, i32 0, i32 0, !dbg !5526
  %17 = load i8, i8* %nbytes19, align 8, !dbg !5526
  %conv20 = zext i8 %17 to i32, !dbg !5524
  %cmp21 = icmp ult i32 %15, %conv20, !dbg !5527
  br i1 %cmp21, label %for.body, label %for.end, !dbg !5528

for.body:                                         ; preds = %for.cond
  %18 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5529
  %cmd23 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %18, i32 0, i32 0, !dbg !5529
  %opcode = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd23, i32 0, i32 3, !dbg !5529
  %19 = load i16, i16* %opcode, align 4, !dbg !5529
  %conv24 = zext i16 %19 to i32, !dbg !5529
  %20 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5529
  %cmd25 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %20, i32 0, i32 0, !dbg !5529
  %nbytes26 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd25, i32 0, i32 0, !dbg !5529
  %21 = load i8, i8* %nbytes26, align 8, !dbg !5529
  %conv27 = zext i8 %21 to i32, !dbg !5529
  %22 = load i32, i32* %i, align 4, !dbg !5529
  %sub = sub i32 %conv27, %22, !dbg !5529
  %sub28 = sub i32 %sub, 1, !dbg !5529
  %mul = mul i32 8, %sub28, !dbg !5529
  %shr = ashr i32 %conv24, %mul, !dbg !5529
  %and = and i32 %shr, 255, !dbg !5529
  %conv29 = trunc i32 %and to i8, !dbg !5529
  %23 = load i8*, i8** %out, align 8, !dbg !5530
  %24 = load i32, i32* %i, align 4, !dbg !5531
  %idxprom = zext i32 %24 to i64, !dbg !5530
  %arrayidx = getelementptr i8, i8* %23, i64 %idxprom, !dbg !5530
  store i8 %conv29, i8* %arrayidx, align 1, !dbg !5532
  br label %for.inc, !dbg !5530

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !dbg !5533
  %inc = add i32 %25, 1, !dbg !5533
  store i32 %inc, i32* %i, align 4, !dbg !5533
  br label %for.cond, !dbg !5534, !llvm.loop !5535

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !5537
  br label %for.cond30, !dbg !5539

for.cond30:                                       ; preds = %for.inc49, %for.end
  %26 = load i32, i32* %j, align 4, !dbg !5540
  %27 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5542
  %addr31 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %27, i32 0, i32 1, !dbg !5543
  %nbytes32 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %addr31, i32 0, i32 0, !dbg !5544
  %28 = load i8, i8* %nbytes32, align 8, !dbg !5544
  %conv33 = zext i8 %28 to i32, !dbg !5542
  %cmp34 = icmp ult i32 %26, %conv33, !dbg !5545
  br i1 %cmp34, label %for.body36, label %for.end52, !dbg !5546

for.body36:                                       ; preds = %for.cond30
  %29 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5547
  %addr37 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %29, i32 0, i32 1, !dbg !5547
  %val = getelementptr inbounds %struct.anon.66, %struct.anon.66* %addr37, i32 0, i32 3, !dbg !5547
  %30 = load i64, i64* %val, align 8, !dbg !5547
  %31 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5547
  %addr38 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %31, i32 0, i32 1, !dbg !5547
  %nbytes39 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %addr38, i32 0, i32 0, !dbg !5547
  %32 = load i8, i8* %nbytes39, align 8, !dbg !5547
  %conv40 = zext i8 %32 to i32, !dbg !5547
  %33 = load i32, i32* %j, align 4, !dbg !5547
  %sub41 = sub i32 %conv40, %33, !dbg !5547
  %sub42 = sub i32 %sub41, 1, !dbg !5547
  %mul43 = mul i32 8, %sub42, !dbg !5547
  %sh_prom = zext i32 %mul43 to i64, !dbg !5547
  %shr44 = lshr i64 %30, %sh_prom, !dbg !5547
  %and45 = and i64 %shr44, 255, !dbg !5547
  %conv46 = trunc i64 %and45 to i8, !dbg !5547
  %34 = load i8*, i8** %out, align 8, !dbg !5548
  %35 = load i32, i32* %i, align 4, !dbg !5549
  %idxprom47 = zext i32 %35 to i64, !dbg !5548
  %arrayidx48 = getelementptr i8, i8* %34, i64 %idxprom47, !dbg !5548
  store i8 %conv46, i8* %arrayidx48, align 1, !dbg !5550
  br label %for.inc49, !dbg !5548

for.inc49:                                        ; preds = %for.body36
  %36 = load i32, i32* %i, align 4, !dbg !5551
  %inc50 = add i32 %36, 1, !dbg !5551
  store i32 %inc50, i32* %i, align 4, !dbg !5551
  %37 = load i32, i32* %j, align 4, !dbg !5552
  %inc51 = add i32 %37, 1, !dbg !5552
  store i32 %inc51, i32* %j, align 4, !dbg !5552
  br label %for.cond30, !dbg !5553, !llvm.loop !5554

for.end52:                                        ; preds = %for.cond30
  store i32 0, i32* %j, align 4, !dbg !5556
  br label %for.cond53, !dbg !5558

for.cond53:                                       ; preds = %for.inc62, %for.end52
  %38 = load i32, i32* %j, align 4, !dbg !5559
  %39 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5561
  %dummy54 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %39, i32 0, i32 2, !dbg !5562
  %nbytes55 = getelementptr inbounds %struct.anon.67, %struct.anon.67* %dummy54, i32 0, i32 0, !dbg !5563
  %40 = load i8, i8* %nbytes55, align 8, !dbg !5563
  %conv56 = zext i8 %40 to i32, !dbg !5561
  %cmp57 = icmp ult i32 %38, %conv56, !dbg !5564
  br i1 %cmp57, label %for.body59, label %for.end65, !dbg !5565

for.body59:                                       ; preds = %for.cond53
  %41 = load i8*, i8** %out, align 8, !dbg !5566
  %42 = load i32, i32* %i, align 4, !dbg !5567
  %idxprom60 = zext i32 %42 to i64, !dbg !5566
  %arrayidx61 = getelementptr i8, i8* %41, i64 %idxprom60, !dbg !5566
  store i8 0, i8* %arrayidx61, align 1, !dbg !5568
  br label %for.inc62, !dbg !5566

for.inc62:                                        ; preds = %for.body59
  %43 = load i32, i32* %i, align 4, !dbg !5569
  %inc63 = add i32 %43, 1, !dbg !5569
  store i32 %inc63, i32* %i, align 4, !dbg !5569
  %44 = load i32, i32* %j, align 4, !dbg !5570
  %inc64 = add i32 %44, 1, !dbg !5570
  store i32 %inc64, i32* %j, align 4, !dbg !5570
  br label %for.cond53, !dbg !5571, !llvm.loop !5572

for.end65:                                        ; preds = %for.cond53
  %45 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5574
  %data66 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %45, i32 0, i32 3, !dbg !5576
  %dir67 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data66, i32 0, i32 2, !dbg !5577
  %46 = load i32, i32* %dir67, align 4, !dbg !5577
  %cmp68 = icmp eq i32 %46, 2, !dbg !5578
  br i1 %cmp68, label %if.then70, label %if.end79, !dbg !5579

if.then70:                                        ; preds = %for.end65
  %47 = load i8*, i8** %out, align 8, !dbg !5580
  %48 = load i32, i32* %i, align 4, !dbg !5581
  %idxprom71 = zext i32 %48 to i64, !dbg !5580
  %arrayidx72 = getelementptr i8, i8* %47, i64 %idxprom71, !dbg !5580
  %49 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5582
  %data73 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %49, i32 0, i32 3, !dbg !5583
  %buf74 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data73, i32 0, i32 4, !dbg !5584
  %out75 = bitcast %union.anon.69* %buf74 to i8**, !dbg !5585
  %50 = load i8*, i8** %out75, align 8, !dbg !5585
  %51 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5586
  %data76 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %51, i32 0, i32 3, !dbg !5587
  %nbytes77 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data76, i32 0, i32 3, !dbg !5588
  %52 = load i32, i32* %nbytes77, align 8, !dbg !5588
  %conv78 = zext i32 %52 to i64, !dbg !5586
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx72, i8* align 1 %50, i64 %conv78, i1 false), !dbg !5589
  br label %if.end79, !dbg !5589

if.end79:                                         ; preds = %if.then70, %for.end65
  %53 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5590
  %n_bytes = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %53, i32 0, i32 18, !dbg !5591
  store i8 1, i8* %n_bytes, align 4, !dbg !5592
  %54 = load i8*, i8** %out, align 8, !dbg !5593
  %55 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5594
  %tx = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %55, i32 0, i32 12, !dbg !5595
  store i8* %54, i8** %tx, align 8, !dbg !5596
  %56 = load i32, i32* %len, align 4, !dbg !5597
  %57 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5598
  %tx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %57, i32 0, i32 13, !dbg !5599
  store i32 %56, i32* %tx_len, align 8, !dbg !5600
  %58 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5601
  %data80 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %58, i32 0, i32 3, !dbg !5603
  %dir81 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data80, i32 0, i32 2, !dbg !5604
  %59 = load i32, i32* %dir81, align 4, !dbg !5604
  %cmp82 = icmp eq i32 %59, 1, !dbg !5605
  br i1 %cmp82, label %if.then84, label %if.else89, !dbg !5606

if.then84:                                        ; preds = %if.end79
  %60 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5607
  %data85 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %60, i32 0, i32 3, !dbg !5609
  %buf86 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data85, i32 0, i32 4, !dbg !5610
  %in = bitcast %union.anon.69* %buf86 to i8**, !dbg !5611
  %61 = load i8*, i8** %in, align 8, !dbg !5611
  %62 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5612
  %rx = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %62, i32 0, i32 14, !dbg !5613
  store i8* %61, i8** %rx, align 8, !dbg !5614
  %63 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5615
  %data87 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %63, i32 0, i32 3, !dbg !5616
  %nbytes88 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %data87, i32 0, i32 3, !dbg !5617
  %64 = load i32, i32* %nbytes88, align 8, !dbg !5617
  %65 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5618
  %rx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %65, i32 0, i32 15, !dbg !5619
  store i32 %64, i32* %rx_len, align 8, !dbg !5620
  br label %if.end92, !dbg !5621

if.else89:                                        ; preds = %if.end79
  %66 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5622
  %rx90 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %66, i32 0, i32 14, !dbg !5624
  store i8* null, i8** %rx90, align 8, !dbg !5625
  %67 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5626
  %rx_len91 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %67, i32 0, i32 15, !dbg !5627
  store i32 0, i32* %rx_len91, align 8, !dbg !5628
  br label %if.end92

if.end92:                                         ; preds = %if.else89, %if.then84
  store i32 0, i32* %retval, align 4, !dbg !5629
  br label %return, !dbg !5629

return:                                           ; preds = %if.end92, %if.then15
  %68 = load i32, i32* %retval, align 4, !dbg !5630
  ret i32 %68, !dbg !5630
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !5631 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5635, metadata !DIExpression()), !dbg !5636
  %call = call i64 @arch_local_save_flags() #10, !dbg !5637
  store i64 %call, i64* %f, align 8, !dbg !5638
  call void @arch_local_irq_disable() #10, !dbg !5639
  %0 = load i64, i64* %f, align 8, !dbg !5640
  ret i64 %0, !dbg !5641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_spi_write_then_read(%struct.dw_spi* %dws, %struct.spi_device* %spi) #0 !dbg !5642 {
entry:
  %retval = alloca i32, align 4
  %dws.addr = alloca %struct.dw_spi*, align 8
  %spi.addr = alloca %struct.spi_device*, align 8
  %room = alloca i32, align 4
  %entries = alloca i32, align 4
  %sts = alloca i32, align 4
  %len = alloca i32, align 4
  %buf = alloca i8*, align 8
  %__UNIQUE_ID___x257 = alloca i32, align 4
  %__UNIQUE_ID___y258 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x259 = alloca i32, align 4
  %__UNIQUE_ID___y260 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %__UNIQUE_ID___x261 = alloca i32, align 4
  %__UNIQUE_ID___y262 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !5645, metadata !DIExpression()), !dbg !5646
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !5647, metadata !DIExpression()), !dbg !5648
  call void @llvm.dbg.declare(metadata i32* %room, metadata !5649, metadata !DIExpression()), !dbg !5650
  call void @llvm.dbg.declare(metadata i32* %entries, metadata !5651, metadata !DIExpression()), !dbg !5652
  call void @llvm.dbg.declare(metadata i32* %sts, metadata !5653, metadata !DIExpression()), !dbg !5654
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5655, metadata !DIExpression()), !dbg !5656
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !5657, metadata !DIExpression()), !dbg !5658
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x257, metadata !5659, metadata !DIExpression()), !dbg !5661
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5661
  %fifo_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %0, i32 0, i32 4, !dbg !5661
  %1 = load i32, i32* %fifo_len, align 4, !dbg !5661
  store i32 %1, i32* %__UNIQUE_ID___x257, align 4, !dbg !5661
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y258, metadata !5662, metadata !DIExpression()), !dbg !5661
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5661
  %tx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %2, i32 0, i32 13, !dbg !5661
  %3 = load i32, i32* %tx_len, align 8, !dbg !5661
  store i32 %3, i32* %__UNIQUE_ID___y258, align 4, !dbg !5661
  %4 = load i32, i32* %__UNIQUE_ID___x257, align 4, !dbg !5661
  %5 = load i32, i32* %__UNIQUE_ID___y258, align 4, !dbg !5661
  %cmp = icmp ult i32 %4, %5, !dbg !5661
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5661

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %__UNIQUE_ID___x257, align 4, !dbg !5661
  br label %cond.end, !dbg !5661

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %__UNIQUE_ID___y258, align 4, !dbg !5661
  br label %cond.end, !dbg !5661

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !5661
  store i32 %cond, i32* %tmp, align 4, !dbg !5661
  %8 = load i32, i32* %tmp, align 4, !dbg !5661
  store i32 %8, i32* %len, align 4, !dbg !5663
  %9 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5664
  %tx = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %9, i32 0, i32 12, !dbg !5665
  %10 = load i8*, i8** %tx, align 8, !dbg !5665
  store i8* %10, i8** %buf, align 8, !dbg !5666
  br label %while.cond, !dbg !5667

while.cond:                                       ; preds = %while.body, %cond.end
  %11 = load i32, i32* %len, align 4, !dbg !5668
  %dec = add i32 %11, -1, !dbg !5668
  store i32 %dec, i32* %len, align 4, !dbg !5668
  %tobool = icmp ne i32 %11, 0, !dbg !5667
  br i1 %tobool, label %while.body, label %while.end, !dbg !5667

while.body:                                       ; preds = %while.cond
  %12 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5669
  %13 = load i8*, i8** %buf, align 8, !dbg !5670
  %incdec.ptr = getelementptr i8, i8* %13, i32 1, !dbg !5670
  store i8* %incdec.ptr, i8** %buf, align 8, !dbg !5670
  %14 = load i8, i8* %13, align 1, !dbg !5671
  %conv = zext i8 %14 to i32, !dbg !5671
  call void @dw_write_io_reg(%struct.dw_spi* %12, i32 96, i32 %conv) #10, !dbg !5672
  br label %while.cond, !dbg !5667, !llvm.loop !5673

while.end:                                        ; preds = %while.cond
  %15 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5675
  %tx_len1 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %15, i32 0, i32 13, !dbg !5676
  %16 = load i32, i32* %tx_len1, align 8, !dbg !5676
  %conv2 = zext i32 %16 to i64, !dbg !5675
  %17 = load i8*, i8** %buf, align 8, !dbg !5677
  %18 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5678
  %tx3 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %18, i32 0, i32 12, !dbg !5679
  %19 = load i8*, i8** %tx3, align 8, !dbg !5679
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64, !dbg !5680
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64, !dbg !5680
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5680
  %sub = sub i64 %conv2, %sub.ptr.sub, !dbg !5681
  %conv4 = trunc i64 %sub to i32, !dbg !5675
  store i32 %conv4, i32* %len, align 4, !dbg !5682
  %20 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !5683
  call void @dw_spi_set_cs(%struct.spi_device* %20, i1 zeroext false) #10, !dbg !5684
  br label %while.cond5, !dbg !5685

while.cond5:                                      ; preds = %for.end, %while.end
  %21 = load i32, i32* %len, align 4, !dbg !5686
  %tobool6 = icmp ne i32 %21, 0, !dbg !5685
  br i1 %tobool6, label %while.body7, label %while.end23, !dbg !5685

while.body7:                                      ; preds = %while.cond5
  %22 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5687
  %regs = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %22, i32 0, i32 1, !dbg !5687
  %23 = load i8*, i8** %regs, align 8, !dbg !5687
  %add.ptr = getelementptr i8, i8* %23, i64 32, !dbg !5687
  %call = call i32 @__readl(i8* %add.ptr) #10, !dbg !5687
  store i32 %call, i32* %entries, align 4, !dbg !5689
  %24 = load i32, i32* %entries, align 4, !dbg !5690
  %tobool8 = icmp ne i32 %24, 0, !dbg !5690
  br i1 %tobool8, label %if.end, label %if.then, !dbg !5692

if.then:                                          ; preds = %while.body7
  %25 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5693
  %master = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %25, i32 0, i32 0, !dbg !5693
  %26 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !5693
  %dev = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %26, i32 0, i32 0, !dbg !5693
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !5693
  store i32 -5, i32* %retval, align 4, !dbg !5695
  br label %return, !dbg !5695

if.end:                                           ; preds = %while.body7
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x259, metadata !5696, metadata !DIExpression()), !dbg !5698
  %27 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5698
  %fifo_len9 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %27, i32 0, i32 4, !dbg !5698
  %28 = load i32, i32* %fifo_len9, align 4, !dbg !5698
  %29 = load i32, i32* %entries, align 4, !dbg !5698
  %sub10 = sub i32 %28, %29, !dbg !5698
  store i32 %sub10, i32* %__UNIQUE_ID___x259, align 4, !dbg !5698
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y260, metadata !5699, metadata !DIExpression()), !dbg !5698
  %30 = load i32, i32* %len, align 4, !dbg !5698
  store i32 %30, i32* %__UNIQUE_ID___y260, align 4, !dbg !5698
  %31 = load i32, i32* %__UNIQUE_ID___x259, align 4, !dbg !5698
  %32 = load i32, i32* %__UNIQUE_ID___y260, align 4, !dbg !5698
  %cmp12 = icmp ult i32 %31, %32, !dbg !5698
  br i1 %cmp12, label %cond.true14, label %cond.false15, !dbg !5698

cond.true14:                                      ; preds = %if.end
  %33 = load i32, i32* %__UNIQUE_ID___x259, align 4, !dbg !5698
  br label %cond.end16, !dbg !5698

cond.false15:                                     ; preds = %if.end
  %34 = load i32, i32* %__UNIQUE_ID___y260, align 4, !dbg !5698
  br label %cond.end16, !dbg !5698

cond.end16:                                       ; preds = %cond.false15, %cond.true14
  %cond17 = phi i32 [ %33, %cond.true14 ], [ %34, %cond.false15 ], !dbg !5698
  store i32 %cond17, i32* %tmp11, align 4, !dbg !5698
  %35 = load i32, i32* %tmp11, align 4, !dbg !5698
  store i32 %35, i32* %room, align 4, !dbg !5700
  br label %for.cond, !dbg !5701

for.cond:                                         ; preds = %for.inc, %cond.end16
  %36 = load i32, i32* %room, align 4, !dbg !5702
  %tobool18 = icmp ne i32 %36, 0, !dbg !5705
  br i1 %tobool18, label %for.body, label %for.end, !dbg !5705

for.body:                                         ; preds = %for.cond
  %37 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5706
  %38 = load i8*, i8** %buf, align 8, !dbg !5707
  %incdec.ptr19 = getelementptr i8, i8* %38, i32 1, !dbg !5707
  store i8* %incdec.ptr19, i8** %buf, align 8, !dbg !5707
  %39 = load i8, i8* %38, align 1, !dbg !5708
  %conv20 = zext i8 %39 to i32, !dbg !5708
  call void @dw_write_io_reg(%struct.dw_spi* %37, i32 96, i32 %conv20) #10, !dbg !5709
  br label %for.inc, !dbg !5709

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %room, align 4, !dbg !5710
  %dec21 = add i32 %40, -1, !dbg !5710
  store i32 %dec21, i32* %room, align 4, !dbg !5710
  %41 = load i32, i32* %len, align 4, !dbg !5711
  %dec22 = add i32 %41, -1, !dbg !5711
  store i32 %dec22, i32* %len, align 4, !dbg !5711
  br label %for.cond, !dbg !5712, !llvm.loop !5713

for.end:                                          ; preds = %for.cond
  br label %while.cond5, !dbg !5685, !llvm.loop !5715

while.end23:                                      ; preds = %while.cond5
  %42 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5717
  %rx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %42, i32 0, i32 15, !dbg !5718
  %43 = load i32, i32* %rx_len, align 8, !dbg !5718
  store i32 %43, i32* %len, align 4, !dbg !5719
  %44 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5720
  %rx = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %44, i32 0, i32 14, !dbg !5721
  %45 = load i8*, i8** %rx, align 8, !dbg !5721
  store i8* %45, i8** %buf, align 8, !dbg !5722
  br label %while.cond24, !dbg !5723

while.cond24:                                     ; preds = %for.end57, %if.end39, %while.end23
  %46 = load i32, i32* %len, align 4, !dbg !5724
  %tobool25 = icmp ne i32 %46, 0, !dbg !5723
  br i1 %tobool25, label %while.body26, label %while.end58, !dbg !5723

while.body26:                                     ; preds = %while.cond24
  %47 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5725
  %regs27 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %47, i32 0, i32 1, !dbg !5725
  %48 = load i8*, i8** %regs27, align 8, !dbg !5725
  %add.ptr28 = getelementptr i8, i8* %48, i64 36, !dbg !5725
  %call29 = call i32 @__readl(i8* %add.ptr28) #10, !dbg !5725
  store i32 %call29, i32* %entries, align 4, !dbg !5727
  %49 = load i32, i32* %entries, align 4, !dbg !5728
  %tobool30 = icmp ne i32 %49, 0, !dbg !5728
  br i1 %tobool30, label %if.end40, label %if.then31, !dbg !5730

if.then31:                                        ; preds = %while.body26
  %50 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5731
  %regs32 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %50, i32 0, i32 1, !dbg !5731
  %51 = load i8*, i8** %regs32, align 8, !dbg !5731
  %add.ptr33 = getelementptr i8, i8* %51, i64 52, !dbg !5731
  %call34 = call i32 @__readl(i8* %add.ptr33) #10, !dbg !5731
  store i32 %call34, i32* %sts, align 4, !dbg !5733
  %52 = load i32, i32* %sts, align 4, !dbg !5734
  %and = and i32 %52, 8, !dbg !5736
  %tobool35 = icmp ne i32 %and, 0, !dbg !5736
  br i1 %tobool35, label %if.then36, label %if.end39, !dbg !5737

if.then36:                                        ; preds = %if.then31
  %53 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5738
  %master37 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %53, i32 0, i32 0, !dbg !5738
  %54 = load %struct.spi_controller*, %struct.spi_controller** %master37, align 8, !dbg !5738
  %dev38 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %54, i32 0, i32 0, !dbg !5738
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !5738
  store i32 -5, i32* %retval, align 4, !dbg !5740
  br label %return, !dbg !5740

if.end39:                                         ; preds = %if.then31
  br label %while.cond24, !dbg !5741, !llvm.loop !5742

if.end40:                                         ; preds = %while.body26
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x261, metadata !5744, metadata !DIExpression()), !dbg !5746
  %55 = load i32, i32* %entries, align 4, !dbg !5746
  store i32 %55, i32* %__UNIQUE_ID___x261, align 4, !dbg !5746
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y262, metadata !5747, metadata !DIExpression()), !dbg !5746
  %56 = load i32, i32* %len, align 4, !dbg !5746
  store i32 %56, i32* %__UNIQUE_ID___y262, align 4, !dbg !5746
  %57 = load i32, i32* %__UNIQUE_ID___x261, align 4, !dbg !5746
  %58 = load i32, i32* %__UNIQUE_ID___y262, align 4, !dbg !5746
  %cmp42 = icmp ult i32 %57, %58, !dbg !5746
  br i1 %cmp42, label %cond.true44, label %cond.false45, !dbg !5746

cond.true44:                                      ; preds = %if.end40
  %59 = load i32, i32* %__UNIQUE_ID___x261, align 4, !dbg !5746
  br label %cond.end46, !dbg !5746

cond.false45:                                     ; preds = %if.end40
  %60 = load i32, i32* %__UNIQUE_ID___y262, align 4, !dbg !5746
  br label %cond.end46, !dbg !5746

cond.end46:                                       ; preds = %cond.false45, %cond.true44
  %cond47 = phi i32 [ %59, %cond.true44 ], [ %60, %cond.false45 ], !dbg !5746
  store i32 %cond47, i32* %tmp41, align 4, !dbg !5746
  %61 = load i32, i32* %tmp41, align 4, !dbg !5746
  store i32 %61, i32* %entries, align 4, !dbg !5748
  br label %for.cond48, !dbg !5749

for.cond48:                                       ; preds = %for.inc54, %cond.end46
  %62 = load i32, i32* %entries, align 4, !dbg !5750
  %tobool49 = icmp ne i32 %62, 0, !dbg !5753
  br i1 %tobool49, label %for.body50, label %for.end57, !dbg !5753

for.body50:                                       ; preds = %for.cond48
  %63 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5754
  %call51 = call i32 @dw_read_io_reg(%struct.dw_spi* %63, i32 96) #10, !dbg !5755
  %conv52 = trunc i32 %call51 to i8, !dbg !5755
  %64 = load i8*, i8** %buf, align 8, !dbg !5756
  %incdec.ptr53 = getelementptr i8, i8* %64, i32 1, !dbg !5756
  store i8* %incdec.ptr53, i8** %buf, align 8, !dbg !5756
  store i8 %conv52, i8* %64, align 1, !dbg !5757
  br label %for.inc54, !dbg !5758

for.inc54:                                        ; preds = %for.body50
  %65 = load i32, i32* %entries, align 4, !dbg !5759
  %dec55 = add i32 %65, -1, !dbg !5759
  store i32 %dec55, i32* %entries, align 4, !dbg !5759
  %66 = load i32, i32* %len, align 4, !dbg !5760
  %dec56 = add i32 %66, -1, !dbg !5760
  store i32 %dec56, i32* %len, align 4, !dbg !5760
  br label %for.cond48, !dbg !5761, !llvm.loop !5762

for.end57:                                        ; preds = %for.cond48
  br label %while.cond24, !dbg !5723, !llvm.loop !5742

while.end58:                                      ; preds = %while.cond24
  store i32 0, i32* %retval, align 4, !dbg !5764
  br label %return, !dbg !5764

return:                                           ; preds = %while.end58, %if.then36, %if.then
  %67 = load i32, i32* %retval, align 4, !dbg !5765
  ret i32 %67, !dbg !5765
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5766 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5771, metadata !DIExpression()), !dbg !5773
  %0 = load i64, i64* %__edi, align 8, !dbg !5773
  store i64 %0, i64* %__edi, align 8, !dbg !5773
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5774, metadata !DIExpression()), !dbg !5773
  %1 = load i64, i64* %__esi, align 8, !dbg !5773
  store i64 %1, i64* %__esi, align 8, !dbg !5773
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5775, metadata !DIExpression()), !dbg !5773
  %2 = load i64, i64* %__edx, align 8, !dbg !5773
  store i64 %2, i64* %__edx, align 8, !dbg !5773
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5776, metadata !DIExpression()), !dbg !5773
  %3 = load i64, i64* %__ecx, align 8, !dbg !5773
  store i64 %3, i64* %__ecx, align 8, !dbg !5773
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5777, metadata !DIExpression()), !dbg !5773
  %4 = load i64, i64* %__eax, align 8, !dbg !5773
  store i64 %4, i64* %__eax, align 8, !dbg !5773
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5773
  %6 = call i64 @llvm.read_register.i64(metadata !170), !dbg !5773
  %7 = load i64, i64* %f.addr, align 8, !dbg !5773
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #9, !dbg !5773, !srcloc !5778
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5773
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5773
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5773
  call void @llvm.write_register.i64(metadata !170, i64 %asmresult1), !dbg !5773
  ret void, !dbg !5779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_spi_wait_mem_op_done(%struct.dw_spi* %dws) #0 !dbg !5780 {
entry:
  %retval = alloca i32, align 4
  %dws.addr = alloca %struct.dw_spi*, align 8
  %retry = alloca i32, align 4
  %delay = alloca %struct.spi_delay, align 2
  %ns = alloca i64, align 8
  %us = alloca i64, align 8
  %nents = alloca i32, align 4
  %__UNIQUE_ID___x265 = alloca i64, align 8
  %__UNIQUE_ID___x263 = alloca i64, align 8
  %__UNIQUE_ID___y264 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___y266 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !5781, metadata !DIExpression()), !dbg !5782
  call void @llvm.dbg.declare(metadata i32* %retry, metadata !5783, metadata !DIExpression()), !dbg !5784
  store i32 5, i32* %retry, align 4, !dbg !5784
  call void @llvm.dbg.declare(metadata %struct.spi_delay* %delay, metadata !5785, metadata !DIExpression()), !dbg !5786
  call void @llvm.dbg.declare(metadata i64* %ns, metadata !5787, metadata !DIExpression()), !dbg !5788
  call void @llvm.dbg.declare(metadata i64* %us, metadata !5789, metadata !DIExpression()), !dbg !5790
  call void @llvm.dbg.declare(metadata i32* %nents, metadata !5791, metadata !DIExpression()), !dbg !5792
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5793
  %call = call i32 @dw_readl(%struct.dw_spi* %0, i32 32) #10, !dbg !5794
  store i32 %call, i32* %nents, align 4, !dbg !5795
  %1 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5796
  %current_freq = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %1, i32 0, i32 20, !dbg !5797
  %2 = load i32, i32* %current_freq, align 8, !dbg !5797
  %conv = zext i32 %2 to i64, !dbg !5796
  %div = sdiv i64 1000000000, %conv, !dbg !5798
  %3 = load i32, i32* %nents, align 4, !dbg !5799
  %conv1 = zext i32 %3 to i64, !dbg !5799
  %mul = mul i64 %div, %conv1, !dbg !5800
  store i64 %mul, i64* %ns, align 8, !dbg !5801
  %4 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5802
  %n_bytes = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %4, i32 0, i32 18, !dbg !5803
  %5 = load i8, i8* %n_bytes, align 4, !dbg !5803
  %conv2 = zext i8 %5 to i32, !dbg !5802
  %mul3 = mul i32 %conv2, 8, !dbg !5804
  %conv4 = sext i32 %mul3 to i64, !dbg !5802
  %6 = load i64, i64* %ns, align 8, !dbg !5805
  %mul5 = mul i64 %6, %conv4, !dbg !5805
  store i64 %mul5, i64* %ns, align 8, !dbg !5805
  %7 = load i64, i64* %ns, align 8, !dbg !5806
  %cmp = icmp ule i64 %7, 1000, !dbg !5808
  br i1 %cmp, label %if.then, label %if.else, !dbg !5809

if.then:                                          ; preds = %entry
  %unit = getelementptr inbounds %struct.spi_delay, %struct.spi_delay* %delay, i32 0, i32 1, !dbg !5810
  store i8 1, i8* %unit, align 2, !dbg !5812
  %8 = load i64, i64* %ns, align 8, !dbg !5813
  %conv7 = trunc i64 %8 to i16, !dbg !5813
  %value = getelementptr inbounds %struct.spi_delay, %struct.spi_delay* %delay, i32 0, i32 0, !dbg !5814
  store i16 %conv7, i16* %value, align 2, !dbg !5815
  br label %if.end, !dbg !5816

if.else:                                          ; preds = %entry
  %9 = load i64, i64* %ns, align 8, !dbg !5817
  %add = add i64 %9, 1000, !dbg !5817
  %sub = sub i64 %add, 1, !dbg !5817
  %div8 = udiv i64 %sub, 1000, !dbg !5817
  store i64 %div8, i64* %us, align 8, !dbg !5819
  %unit9 = getelementptr inbounds %struct.spi_delay, %struct.spi_delay* %delay, i32 0, i32 1, !dbg !5820
  store i8 0, i8* %unit9, align 2, !dbg !5821
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x265, metadata !5822, metadata !DIExpression()), !dbg !5824
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x263, metadata !5825, metadata !DIExpression()), !dbg !5827
  %10 = load i64, i64* %us, align 8, !dbg !5827
  store i64 %10, i64* %__UNIQUE_ID___x263, align 8, !dbg !5827
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y264, metadata !5828, metadata !DIExpression()), !dbg !5827
  store i64 0, i64* %__UNIQUE_ID___y264, align 8, !dbg !5827
  %11 = load i64, i64* %__UNIQUE_ID___x263, align 8, !dbg !5827
  %12 = load i64, i64* %__UNIQUE_ID___y264, align 8, !dbg !5827
  %cmp10 = icmp ugt i64 %11, %12, !dbg !5827
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !5827

cond.true:                                        ; preds = %if.else
  %13 = load i64, i64* %__UNIQUE_ID___x263, align 8, !dbg !5827
  br label %cond.end, !dbg !5827

cond.false:                                       ; preds = %if.else
  %14 = load i64, i64* %__UNIQUE_ID___y264, align 8, !dbg !5827
  br label %cond.end, !dbg !5827

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !5827
  store i64 %cond, i64* %tmp, align 8, !dbg !5827
  %15 = load i64, i64* %tmp, align 8, !dbg !5827
  store i64 %15, i64* %__UNIQUE_ID___x265, align 8, !dbg !5824
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y266, metadata !5829, metadata !DIExpression()), !dbg !5824
  store i64 65535, i64* %__UNIQUE_ID___y266, align 8, !dbg !5824
  %16 = load i64, i64* %__UNIQUE_ID___x265, align 8, !dbg !5824
  %17 = load i64, i64* %__UNIQUE_ID___y266, align 8, !dbg !5824
  %cmp13 = icmp ult i64 %16, %17, !dbg !5824
  br i1 %cmp13, label %cond.true15, label %cond.false16, !dbg !5824

cond.true15:                                      ; preds = %cond.end
  %18 = load i64, i64* %__UNIQUE_ID___x265, align 8, !dbg !5824
  br label %cond.end17, !dbg !5824

cond.false16:                                     ; preds = %cond.end
  %19 = load i64, i64* %__UNIQUE_ID___y266, align 8, !dbg !5824
  br label %cond.end17, !dbg !5824

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond18 = phi i64 [ %18, %cond.true15 ], [ %19, %cond.false16 ], !dbg !5824
  store i64 %cond18, i64* %tmp12, align 8, !dbg !5824
  %20 = load i64, i64* %tmp12, align 8, !dbg !5824
  %conv19 = trunc i64 %20 to i16, !dbg !5830
  %value20 = getelementptr inbounds %struct.spi_delay, %struct.spi_delay* %delay, i32 0, i32 0, !dbg !5831
  store i16 %conv19, i16* %value20, align 2, !dbg !5832
  br label %if.end

if.end:                                           ; preds = %cond.end17, %if.then
  br label %while.cond, !dbg !5833

while.cond:                                       ; preds = %while.body, %if.end
  %21 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5834
  %call21 = call zeroext i1 @dw_spi_ctlr_busy(%struct.dw_spi* %21) #10, !dbg !5835
  br i1 %call21, label %land.rhs, label %land.end, !dbg !5836

land.rhs:                                         ; preds = %while.cond
  %22 = load i32, i32* %retry, align 4, !dbg !5837
  %dec = add i32 %22, -1, !dbg !5837
  store i32 %dec, i32* %retry, align 4, !dbg !5837
  %tobool = icmp ne i32 %22, 0, !dbg !5836
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ], !dbg !5838
  br i1 %23, label %while.body, label %while.end, !dbg !5833

while.body:                                       ; preds = %land.end
  %call23 = call i32 @spi_delay_exec(%struct.spi_delay* %delay, %struct.spi_transfer* null) #10, !dbg !5839
  br label %while.cond, !dbg !5833, !llvm.loop !5840

while.end:                                        ; preds = %land.end
  %24 = load i32, i32* %retry, align 4, !dbg !5842
  %cmp24 = icmp slt i32 %24, 0, !dbg !5844
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !5845

if.then26:                                        ; preds = %while.end
  %25 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5846
  %master = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %25, i32 0, i32 0, !dbg !5846
  %26 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !5846
  %dev = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %26, i32 0, i32 0, !dbg !5846
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !5846
  store i32 -5, i32* %retval, align 4, !dbg !5848
  br label %return, !dbg !5848

if.end27:                                         ; preds = %while.end
  store i32 0, i32* %retval, align 4, !dbg !5849
  br label %return, !dbg !5849

return:                                           ; preds = %if.end27, %if.then26
  %27 = load i32, i32* %retval, align 4, !dbg !5850
  ret i32 %27, !dbg !5850
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dw_spi_stop_mem_op(%struct.dw_spi* %dws, %struct.spi_device* %spi) #0 !dbg !5851 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %spi.addr = alloca %struct.spi_device*, align 8
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !5854, metadata !DIExpression()), !dbg !5855
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !5856, metadata !DIExpression()), !dbg !5857
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5858
  call void @spi_enable_chip(%struct.dw_spi* %0, i32 0) #10, !dbg !5859
  %1 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !5860
  call void @dw_spi_set_cs(%struct.spi_device* %1, i1 zeroext true) #10, !dbg !5861
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5862
  call void @spi_enable_chip(%struct.dw_spi* %2, i32 1) #10, !dbg !5863
  ret void, !dbg !5864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dw_spi_free_mem_buf(%struct.dw_spi* %dws) #0 !dbg !5865 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !5866, metadata !DIExpression()), !dbg !5867
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5868
  %tx = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %0, i32 0, i32 12, !dbg !5870
  %1 = load i8*, i8** %tx, align 8, !dbg !5870
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5871
  %buf = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %2, i32 0, i32 16, !dbg !5872
  %arraydecay = getelementptr inbounds [266 x i8], [266 x i8]* %buf, i64 0, i64 0, !dbg !5871
  %cmp = icmp ne i8* %1, %arraydecay, !dbg !5873
  br i1 %cmp, label %if.then, label %if.end, !dbg !5874

if.then:                                          ; preds = %entry
  %3 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !5875
  %tx1 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %3, i32 0, i32 12, !dbg !5876
  %4 = load i8*, i8** %tx1, align 8, !dbg !5876
  call void @kfree(i8* %4) #10, !dbg !5877
  br label %if.end, !dbg !5877

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5878
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5879 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5882, metadata !DIExpression()), !dbg !5886
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5892, metadata !DIExpression()), !dbg !5893
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5894, metadata !DIExpression()), !dbg !5895
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5896, metadata !DIExpression()), !dbg !5897
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5898, metadata !DIExpression()), !dbg !5902
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5904, metadata !DIExpression()), !dbg !5908
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5910, metadata !DIExpression()), !dbg !5914
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5919, metadata !DIExpression()), !dbg !5920
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5921, metadata !DIExpression()), !dbg !5922
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5923, metadata !DIExpression()), !dbg !5924
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5925, metadata !DIExpression()), !dbg !5926
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5927, metadata !DIExpression()), !dbg !5928
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5929, metadata !DIExpression()), !dbg !5930
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5931, metadata !DIExpression()), !dbg !5932
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5933, metadata !DIExpression()), !dbg !5934
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5935, metadata !DIExpression()), !dbg !5936
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5937, metadata !DIExpression()), !dbg !5938
  %0 = load i64, i64* %size.addr, align 8, !dbg !5939
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5940
  %or = or i32 %1, 256, !dbg !5941
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5942
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !5943
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5944

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5945
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5946
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5947

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5948
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5949
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5950
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5951
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5928
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5952
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5953
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5954
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5955
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5956
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5957
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !5958
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5958
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5958
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5958
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !5958
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5959
  br label %kmalloc.exit, !dbg !5959

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5960
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5961
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5961
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5963

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5964
  br label %kmalloc_index.exit.i, !dbg !5964

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5965
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5967
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5968

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5969
  br label %kmalloc_index.exit.i, !dbg !5969

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5970
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5972
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5973

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5974
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5975
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5976

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5977
  br label %kmalloc_index.exit.i, !dbg !5977

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5978
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5980
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5981

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5982
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5983
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5984

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5985
  br label %kmalloc_index.exit.i, !dbg !5985

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5986
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5988
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5989

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5990
  br label %kmalloc_index.exit.i, !dbg !5990

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5991
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5993
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5994

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5995
  br label %kmalloc_index.exit.i, !dbg !5995

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5996
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5998
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5999

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6000
  br label %kmalloc_index.exit.i, !dbg !6000

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6001
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !6003
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6004

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6005
  br label %kmalloc_index.exit.i, !dbg !6005

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6006
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !6008
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6009

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6010
  br label %kmalloc_index.exit.i, !dbg !6010

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6011
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !6013
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6014

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6015
  br label %kmalloc_index.exit.i, !dbg !6015

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6016
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !6018
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6019

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6020
  br label %kmalloc_index.exit.i, !dbg !6020

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6021
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !6023
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6024

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6025
  br label %kmalloc_index.exit.i, !dbg !6025

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6026
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !6028
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6029

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6030
  br label %kmalloc_index.exit.i, !dbg !6030

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6031
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !6033
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6034

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6035
  br label %kmalloc_index.exit.i, !dbg !6035

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6036
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !6038
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6039

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6040
  br label %kmalloc_index.exit.i, !dbg !6040

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6041
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !6043
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6044

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6045
  br label %kmalloc_index.exit.i, !dbg !6045

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6046
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !6048
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6049

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6050
  br label %kmalloc_index.exit.i, !dbg !6050

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6051
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !6053
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6054

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6055
  br label %kmalloc_index.exit.i, !dbg !6055

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6056
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !6058
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6059

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6060
  br label %kmalloc_index.exit.i, !dbg !6060

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6061
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !6063
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6064

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6065
  br label %kmalloc_index.exit.i, !dbg !6065

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6066
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !6068
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6069

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6070
  br label %kmalloc_index.exit.i, !dbg !6070

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6071
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !6073
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6074

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6075
  br label %kmalloc_index.exit.i, !dbg !6075

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6076
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !6078
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6079

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6080
  br label %kmalloc_index.exit.i, !dbg !6080

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6081
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !6083
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6084

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6085
  br label %kmalloc_index.exit.i, !dbg !6085

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6086
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !6088
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6089

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6090
  br label %kmalloc_index.exit.i, !dbg !6090

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6091
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !6093
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6094

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6095
  br label %kmalloc_index.exit.i, !dbg !6095

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6096
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !6098
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6099

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6100
  br label %kmalloc_index.exit.i, !dbg !6100

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6101
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !6103
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6104

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6105
  br label %kmalloc_index.exit.i, !dbg !6105

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !6106, !srcloc !6109
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 238) #9, !dbg !6110, !srcloc !6113
  unreachable, !dbg !6114

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6115
  store i32 %45, i32* %index.i, align 4, !dbg !6116
  %46 = load i32, i32* %index.i, align 4, !dbg !6117
  %tobool.i = icmp ne i32 %46, 0, !dbg !6117
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6119

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6120
  br label %kmalloc.exit, !dbg !6120

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6121
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6122
  %and.i.i = and i32 %48, 17, !dbg !6122
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6122
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6122
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6122
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6122
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6124

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6125
  br label %kmalloc_type.exit.i, !dbg !6125

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6126
  %and2.i.i = and i32 %49, 1, !dbg !6127
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6126
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6126
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6126
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6128
  br label %kmalloc_type.exit.i, !dbg !6128

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6129
  %idxprom.i = zext i32 %51 to i64, !dbg !6130
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6130
  %52 = load i32, i32* %index.i, align 4, !dbg !6131
  %idxprom6.i = zext i32 %52 to i64, !dbg !6130
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6130
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6130
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6132
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6133
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6134
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6135
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !6136
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6136
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6136
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6136
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !6136
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5897
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6137
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6138
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6139
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6140
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !6141
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6142
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6143
  store i8* %62, i8** %retval.i, align 8, !dbg !6144
  br label %kmalloc.exit, !dbg !6144

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6145
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6146
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !6147
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6147
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6147
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6147
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !6147
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6148
  br label %kmalloc.exit, !dbg !6148

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6149
  ret i8* %65, !dbg !6150
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !6151 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6155, metadata !DIExpression()), !dbg !6160
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6162, metadata !DIExpression()), !dbg !6163
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6164, metadata !DIExpression()), !dbg !6165
  %0 = load i64, i64* %size.addr, align 8, !dbg !6166
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6168
  br i1 %1, label %if.then, label %if.end447, !dbg !6169

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6170
  %tobool = icmp ne i64 %2, 0, !dbg !6170
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6173

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6174
  br label %return, !dbg !6174

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6175
  %cmp = icmp ult i64 %3, 4096, !dbg !6177
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6178

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6179
  br label %return, !dbg !6179

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub = sub i64 %4, 1, !dbg !6180
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6180
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6180

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub4 = sub i64 %6, 1, !dbg !6180
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6180
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6180

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub6 = sub i64 %8, 1, !dbg !6180
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6180
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6180

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6180

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub9 = sub i64 %9, 1, !dbg !6180
  %and = and i64 %sub9, -9223372036854775808, !dbg !6180
  %tobool10 = icmp ne i64 %and, 0, !dbg !6180
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6180

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6180

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub13 = sub i64 %10, 1, !dbg !6180
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6180
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6180
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6180

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6180

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub18 = sub i64 %11, 1, !dbg !6180
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6180
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6180
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6180

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6180

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub23 = sub i64 %12, 1, !dbg !6180
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6180
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6180
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6180

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6180

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub28 = sub i64 %13, 1, !dbg !6180
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6180
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6180
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6180

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6180

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub33 = sub i64 %14, 1, !dbg !6180
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6180
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6180
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6180

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6180

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub38 = sub i64 %15, 1, !dbg !6180
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6180
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6180
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6180

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6180

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub43 = sub i64 %16, 1, !dbg !6180
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6180
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6180
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6180

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6180

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub48 = sub i64 %17, 1, !dbg !6180
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6180
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6180
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6180

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6180

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub53 = sub i64 %18, 1, !dbg !6180
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6180
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6180
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6180

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6180

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub58 = sub i64 %19, 1, !dbg !6180
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6180
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6180
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6180

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6180

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub63 = sub i64 %20, 1, !dbg !6180
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6180
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6180
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6180

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6180

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub68 = sub i64 %21, 1, !dbg !6180
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6180
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6180
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6180

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6180

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub73 = sub i64 %22, 1, !dbg !6180
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6180
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6180
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6180

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6180

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub78 = sub i64 %23, 1, !dbg !6180
  %and79 = and i64 %sub78, 562949953421312, !dbg !6180
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6180
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6180

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6180

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub83 = sub i64 %24, 1, !dbg !6180
  %and84 = and i64 %sub83, 281474976710656, !dbg !6180
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6180
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6180

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6180

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub88 = sub i64 %25, 1, !dbg !6180
  %and89 = and i64 %sub88, 140737488355328, !dbg !6180
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6180
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6180

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6180

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub93 = sub i64 %26, 1, !dbg !6180
  %and94 = and i64 %sub93, 70368744177664, !dbg !6180
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6180
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6180

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6180

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub98 = sub i64 %27, 1, !dbg !6180
  %and99 = and i64 %sub98, 35184372088832, !dbg !6180
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6180
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6180

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6180

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub103 = sub i64 %28, 1, !dbg !6180
  %and104 = and i64 %sub103, 17592186044416, !dbg !6180
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6180
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6180

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6180

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub108 = sub i64 %29, 1, !dbg !6180
  %and109 = and i64 %sub108, 8796093022208, !dbg !6180
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6180
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6180

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6180

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub113 = sub i64 %30, 1, !dbg !6180
  %and114 = and i64 %sub113, 4398046511104, !dbg !6180
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6180
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6180

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6180

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub118 = sub i64 %31, 1, !dbg !6180
  %and119 = and i64 %sub118, 2199023255552, !dbg !6180
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6180
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6180

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6180

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub123 = sub i64 %32, 1, !dbg !6180
  %and124 = and i64 %sub123, 1099511627776, !dbg !6180
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6180
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6180

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6180

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub128 = sub i64 %33, 1, !dbg !6180
  %and129 = and i64 %sub128, 549755813888, !dbg !6180
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6180
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6180

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6180

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub133 = sub i64 %34, 1, !dbg !6180
  %and134 = and i64 %sub133, 274877906944, !dbg !6180
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6180
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6180

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6180

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub138 = sub i64 %35, 1, !dbg !6180
  %and139 = and i64 %sub138, 137438953472, !dbg !6180
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6180
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6180

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6180

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub143 = sub i64 %36, 1, !dbg !6180
  %and144 = and i64 %sub143, 68719476736, !dbg !6180
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6180
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6180

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6180

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub148 = sub i64 %37, 1, !dbg !6180
  %and149 = and i64 %sub148, 34359738368, !dbg !6180
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6180
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6180

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6180

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub153 = sub i64 %38, 1, !dbg !6180
  %and154 = and i64 %sub153, 17179869184, !dbg !6180
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6180
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6180

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6180

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub158 = sub i64 %39, 1, !dbg !6180
  %and159 = and i64 %sub158, 8589934592, !dbg !6180
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6180
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6180

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6180

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub163 = sub i64 %40, 1, !dbg !6180
  %and164 = and i64 %sub163, 4294967296, !dbg !6180
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6180
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6180

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6180

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub168 = sub i64 %41, 1, !dbg !6180
  %and169 = and i64 %sub168, 2147483648, !dbg !6180
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6180
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6180

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6180

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub173 = sub i64 %42, 1, !dbg !6180
  %and174 = and i64 %sub173, 1073741824, !dbg !6180
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6180
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6180

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6180

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub178 = sub i64 %43, 1, !dbg !6180
  %and179 = and i64 %sub178, 536870912, !dbg !6180
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6180
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6180

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6180

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub183 = sub i64 %44, 1, !dbg !6180
  %and184 = and i64 %sub183, 268435456, !dbg !6180
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6180
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6180

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6180

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub188 = sub i64 %45, 1, !dbg !6180
  %and189 = and i64 %sub188, 134217728, !dbg !6180
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6180
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6180

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6180

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub193 = sub i64 %46, 1, !dbg !6180
  %and194 = and i64 %sub193, 67108864, !dbg !6180
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6180
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6180

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6180

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub198 = sub i64 %47, 1, !dbg !6180
  %and199 = and i64 %sub198, 33554432, !dbg !6180
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6180
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6180

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6180

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub203 = sub i64 %48, 1, !dbg !6180
  %and204 = and i64 %sub203, 16777216, !dbg !6180
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6180
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6180

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6180

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub208 = sub i64 %49, 1, !dbg !6180
  %and209 = and i64 %sub208, 8388608, !dbg !6180
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6180
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6180

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6180

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub213 = sub i64 %50, 1, !dbg !6180
  %and214 = and i64 %sub213, 4194304, !dbg !6180
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6180
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6180

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6180

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub218 = sub i64 %51, 1, !dbg !6180
  %and219 = and i64 %sub218, 2097152, !dbg !6180
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6180
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6180

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6180

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub223 = sub i64 %52, 1, !dbg !6180
  %and224 = and i64 %sub223, 1048576, !dbg !6180
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6180
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6180

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6180

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub228 = sub i64 %53, 1, !dbg !6180
  %and229 = and i64 %sub228, 524288, !dbg !6180
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6180
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6180

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6180

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub233 = sub i64 %54, 1, !dbg !6180
  %and234 = and i64 %sub233, 262144, !dbg !6180
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6180
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6180

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6180

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub238 = sub i64 %55, 1, !dbg !6180
  %and239 = and i64 %sub238, 131072, !dbg !6180
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6180
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6180

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6180

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub243 = sub i64 %56, 1, !dbg !6180
  %and244 = and i64 %sub243, 65536, !dbg !6180
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6180
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6180

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6180

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub248 = sub i64 %57, 1, !dbg !6180
  %and249 = and i64 %sub248, 32768, !dbg !6180
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6180
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6180

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6180

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub253 = sub i64 %58, 1, !dbg !6180
  %and254 = and i64 %sub253, 16384, !dbg !6180
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6180
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6180

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6180

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub258 = sub i64 %59, 1, !dbg !6180
  %and259 = and i64 %sub258, 8192, !dbg !6180
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6180
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6180

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6180

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub263 = sub i64 %60, 1, !dbg !6180
  %and264 = and i64 %sub263, 4096, !dbg !6180
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6180
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6180

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6180

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub268 = sub i64 %61, 1, !dbg !6180
  %and269 = and i64 %sub268, 2048, !dbg !6180
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6180
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6180

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6180

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub273 = sub i64 %62, 1, !dbg !6180
  %and274 = and i64 %sub273, 1024, !dbg !6180
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6180
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6180

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6180

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub278 = sub i64 %63, 1, !dbg !6180
  %and279 = and i64 %sub278, 512, !dbg !6180
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6180
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6180

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6180

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub283 = sub i64 %64, 1, !dbg !6180
  %and284 = and i64 %sub283, 256, !dbg !6180
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6180
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6180

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6180

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub288 = sub i64 %65, 1, !dbg !6180
  %and289 = and i64 %sub288, 128, !dbg !6180
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6180
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6180

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6180

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub293 = sub i64 %66, 1, !dbg !6180
  %and294 = and i64 %sub293, 64, !dbg !6180
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6180
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6180

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6180

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub298 = sub i64 %67, 1, !dbg !6180
  %and299 = and i64 %sub298, 32, !dbg !6180
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6180
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6180

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6180

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub303 = sub i64 %68, 1, !dbg !6180
  %and304 = and i64 %sub303, 16, !dbg !6180
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6180
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6180

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6180

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub308 = sub i64 %69, 1, !dbg !6180
  %and309 = and i64 %sub308, 8, !dbg !6180
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6180
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6180

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6180

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub313 = sub i64 %70, 1, !dbg !6180
  %and314 = and i64 %sub313, 4, !dbg !6180
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6180
  %71 = zext i1 %tobool315 to i64, !dbg !6180
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6180
  br label %cond.end, !dbg !6180

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6180
  br label %cond.end317, !dbg !6180

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6180
  br label %cond.end319, !dbg !6180

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6180
  br label %cond.end321, !dbg !6180

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6180
  br label %cond.end323, !dbg !6180

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6180
  br label %cond.end325, !dbg !6180

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6180
  br label %cond.end327, !dbg !6180

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6180
  br label %cond.end329, !dbg !6180

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6180
  br label %cond.end331, !dbg !6180

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6180
  br label %cond.end333, !dbg !6180

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6180
  br label %cond.end335, !dbg !6180

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6180
  br label %cond.end337, !dbg !6180

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6180
  br label %cond.end339, !dbg !6180

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6180
  br label %cond.end341, !dbg !6180

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6180
  br label %cond.end343, !dbg !6180

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6180
  br label %cond.end345, !dbg !6180

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6180
  br label %cond.end347, !dbg !6180

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6180
  br label %cond.end349, !dbg !6180

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6180
  br label %cond.end351, !dbg !6180

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6180
  br label %cond.end353, !dbg !6180

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6180
  br label %cond.end355, !dbg !6180

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6180
  br label %cond.end357, !dbg !6180

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6180
  br label %cond.end359, !dbg !6180

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6180
  br label %cond.end361, !dbg !6180

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6180
  br label %cond.end363, !dbg !6180

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6180
  br label %cond.end365, !dbg !6180

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6180
  br label %cond.end367, !dbg !6180

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6180
  br label %cond.end369, !dbg !6180

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6180
  br label %cond.end371, !dbg !6180

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6180
  br label %cond.end373, !dbg !6180

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6180
  br label %cond.end375, !dbg !6180

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6180
  br label %cond.end377, !dbg !6180

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6180
  br label %cond.end379, !dbg !6180

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6180
  br label %cond.end381, !dbg !6180

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6180
  br label %cond.end383, !dbg !6180

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6180
  br label %cond.end385, !dbg !6180

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6180
  br label %cond.end387, !dbg !6180

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6180
  br label %cond.end389, !dbg !6180

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6180
  br label %cond.end391, !dbg !6180

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6180
  br label %cond.end393, !dbg !6180

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6180
  br label %cond.end395, !dbg !6180

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6180
  br label %cond.end397, !dbg !6180

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6180
  br label %cond.end399, !dbg !6180

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6180
  br label %cond.end401, !dbg !6180

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6180
  br label %cond.end403, !dbg !6180

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6180
  br label %cond.end405, !dbg !6180

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6180
  br label %cond.end407, !dbg !6180

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6180
  br label %cond.end409, !dbg !6180

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6180
  br label %cond.end411, !dbg !6180

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6180
  br label %cond.end413, !dbg !6180

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6180
  br label %cond.end415, !dbg !6180

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6180
  br label %cond.end417, !dbg !6180

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6180
  br label %cond.end419, !dbg !6180

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6180
  br label %cond.end421, !dbg !6180

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6180
  br label %cond.end423, !dbg !6180

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6180
  br label %cond.end425, !dbg !6180

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6180
  br label %cond.end427, !dbg !6180

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6180
  br label %cond.end429, !dbg !6180

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6180
  br label %cond.end431, !dbg !6180

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6180
  br label %cond.end433, !dbg !6180

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6180
  br label %cond.end435, !dbg !6180

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6180
  br label %cond.end437, !dbg !6180

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6180
  br label %cond.end440, !dbg !6180

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6180

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6180
  br label %cond.end444, !dbg !6180

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6180
  %sub443 = sub i64 %72, 1, !dbg !6180
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !6180
  br label %cond.end444, !dbg !6180

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6180
  %sub446 = sub i32 %cond445, 12, !dbg !6181
  %add = add i32 %sub446, 1, !dbg !6182
  store i32 %add, i32* %retval, align 4, !dbg !6183
  br label %return, !dbg !6183

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6184
  %dec = add i64 %73, -1, !dbg !6184
  store i64 %dec, i64* %size.addr, align 8, !dbg !6184
  %74 = load i64, i64* %size.addr, align 8, !dbg !6185
  %shr = lshr i64 %74, 12, !dbg !6185
  store i64 %shr, i64* %size.addr, align 8, !dbg !6185
  %75 = load i64, i64* %size.addr, align 8, !dbg !6186
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6163
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6187
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6188
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !6187, !srcloc !6189
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6187
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6190
  %add.i = add i32 %79, 1, !dbg !6191
  store i32 %add.i, i32* %retval, align 4, !dbg !6192
  br label %return, !dbg !6192

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6193
  ret i32 %80, !dbg !6193
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !6194 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6155, metadata !DIExpression()), !dbg !6198
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6162, metadata !DIExpression()), !dbg !6200
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6201, metadata !DIExpression()), !dbg !6202
  %0 = load i64, i64* %n.addr, align 8, !dbg !6203
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6200
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6204
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6205
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !6204, !srcloc !6189
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6204
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6206
  %add.i = add i32 %4, 1, !dbg !6207
  %sub = sub i32 %add.i, 1, !dbg !6208
  ret i32 %sub, !dbg !6209
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6210 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6214, metadata !DIExpression()), !dbg !6215
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6216, metadata !DIExpression()), !dbg !6217
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6218, metadata !DIExpression()), !dbg !6219
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6220, metadata !DIExpression()), !dbg !6221
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6222
  ret i8* %0, !dbg !6223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !6224 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6225, metadata !DIExpression()), !dbg !6227
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6228, metadata !DIExpression()), !dbg !6227
  %0 = load i64, i64* %__edi, align 8, !dbg !6227
  store i64 %0, i64* %__edi, align 8, !dbg !6227
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6229, metadata !DIExpression()), !dbg !6227
  %1 = load i64, i64* %__esi, align 8, !dbg !6227
  store i64 %1, i64* %__esi, align 8, !dbg !6227
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6230, metadata !DIExpression()), !dbg !6227
  %2 = load i64, i64* %__edx, align 8, !dbg !6227
  store i64 %2, i64* %__edx, align 8, !dbg !6227
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6231, metadata !DIExpression()), !dbg !6227
  %3 = load i64, i64* %__ecx, align 8, !dbg !6227
  store i64 %3, i64* %__ecx, align 8, !dbg !6227
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6232, metadata !DIExpression()), !dbg !6227
  %4 = load i64, i64* %__eax, align 8, !dbg !6227
  store i64 %4, i64* %__eax, align 8, !dbg !6227
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6227
  %6 = call i64 @llvm.read_register.i64(metadata !170), !dbg !6233
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #9, !dbg !6233, !srcloc !6236
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6233
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6233
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6233
  call void @llvm.write_register.i64(metadata !170, i64 %asmresult1), !dbg !6233
  %8 = load i64, i64* %__eax, align 8, !dbg !6233
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6237, metadata !DIExpression()), !dbg !6239
  store i64 -1, i64* %__mask, align 8, !dbg !6239
  %9 = load i64, i64* %__mask, align 8, !dbg !6239
  store i64 %9, i64* %tmp, align 8, !dbg !6239
  %10 = load i64, i64* %tmp, align 8, !dbg !6239
  %and = and i64 %8, %10, !dbg !6233
  store i64 %and, i64* %__ret, align 8, !dbg !6233
  %11 = load i64, i64* %__ret, align 8, !dbg !6227
  store i64 %11, i64* %tmp2, align 8, !dbg !6240
  %12 = load i64, i64* %tmp2, align 8, !dbg !6227
  ret i64 %12, !dbg !6241
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6242 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6243, metadata !DIExpression()), !dbg !6245
  %0 = load i64, i64* %__edi, align 8, !dbg !6245
  store i64 %0, i64* %__edi, align 8, !dbg !6245
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6246, metadata !DIExpression()), !dbg !6245
  %1 = load i64, i64* %__esi, align 8, !dbg !6245
  store i64 %1, i64* %__esi, align 8, !dbg !6245
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6247, metadata !DIExpression()), !dbg !6245
  %2 = load i64, i64* %__edx, align 8, !dbg !6245
  store i64 %2, i64* %__edx, align 8, !dbg !6245
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6248, metadata !DIExpression()), !dbg !6245
  %3 = load i64, i64* %__ecx, align 8, !dbg !6245
  store i64 %3, i64* %__ecx, align 8, !dbg !6245
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6249, metadata !DIExpression()), !dbg !6245
  %4 = load i64, i64* %__eax, align 8, !dbg !6245
  store i64 %4, i64* %__eax, align 8, !dbg !6245
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6245
  %6 = call i64 @llvm.read_register.i64(metadata !170), !dbg !6245
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #9, !dbg !6245, !srcloc !6250
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6245
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6245
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6245
  call void @llvm.write_register.i64(metadata !170, i64 %asmresult1), !dbg !6245
  ret void, !dbg !6251
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dw_write_io_reg(%struct.dw_spi* %dws, i32 %offset, i32 %val) #0 !dbg !6252 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %offset.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !6253, metadata !DIExpression()), !dbg !6254
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !6255, metadata !DIExpression()), !dbg !6256
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6257, metadata !DIExpression()), !dbg !6258
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6259
  %reg_io_width = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %0, i32 0, i32 8, !dbg !6260
  %1 = load i32, i32* %reg_io_width, align 4, !dbg !6260
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb1
  ], !dbg !6261

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* %val.addr, align 4, !dbg !6262
  %conv = trunc i32 %2 to i16, !dbg !6262
  %3 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6262
  %regs = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %3, i32 0, i32 1, !dbg !6262
  %4 = load i8*, i8** %regs, align 8, !dbg !6262
  %5 = load i32, i32* %offset.addr, align 4, !dbg !6262
  %idx.ext = zext i32 %5 to i64, !dbg !6262
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !6262
  call void @__writew(i16 zeroext %conv, i8* %add.ptr) #10, !dbg !6262
  br label %sw.epilog, !dbg !6264

sw.bb1:                                           ; preds = %entry
  br label %sw.default, !dbg !6264

sw.default:                                       ; preds = %entry, %sw.bb1
  %6 = load i32, i32* %val.addr, align 4, !dbg !6265
  %7 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6265
  %regs2 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %7, i32 0, i32 1, !dbg !6265
  %8 = load i8*, i8** %regs2, align 8, !dbg !6265
  %9 = load i32, i32* %offset.addr, align 4, !dbg !6265
  %idx.ext3 = zext i32 %9 to i64, !dbg !6265
  %add.ptr4 = getelementptr i8, i8* %8, i64 %idx.ext3, !dbg !6265
  call void @__writel(i32 %6, i8* %add.ptr4) #10, !dbg !6265
  br label %sw.epilog, !dbg !6266

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void, !dbg !6267
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_read_io_reg(%struct.dw_spi* %dws, i32 %offset) #0 !dbg !6268 {
entry:
  %retval = alloca i32, align 4
  %dws.addr = alloca %struct.dw_spi*, align 8
  %offset.addr = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !6269, metadata !DIExpression()), !dbg !6270
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !6271, metadata !DIExpression()), !dbg !6272
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6273
  %reg_io_width = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %0, i32 0, i32 8, !dbg !6274
  %1 = load i32, i32* %reg_io_width, align 4, !dbg !6274
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb1
  ], !dbg !6275

sw.bb:                                            ; preds = %entry
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6276
  %regs = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %2, i32 0, i32 1, !dbg !6276
  %3 = load i8*, i8** %regs, align 8, !dbg !6276
  %4 = load i32, i32* %offset.addr, align 4, !dbg !6276
  %idx.ext = zext i32 %4 to i64, !dbg !6276
  %add.ptr = getelementptr i8, i8* %3, i64 %idx.ext, !dbg !6276
  %call = call zeroext i16 @__readw(i8* %add.ptr) #10, !dbg !6276
  %conv = zext i16 %call to i32, !dbg !6276
  store i32 %conv, i32* %retval, align 4, !dbg !6278
  br label %return, !dbg !6278

sw.bb1:                                           ; preds = %entry
  br label %sw.default, !dbg !6278

sw.default:                                       ; preds = %entry, %sw.bb1
  %5 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6279
  %regs2 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %5, i32 0, i32 1, !dbg !6279
  %6 = load i8*, i8** %regs2, align 8, !dbg !6279
  %7 = load i32, i32* %offset.addr, align 4, !dbg !6279
  %idx.ext3 = zext i32 %7 to i64, !dbg !6279
  %add.ptr4 = getelementptr i8, i8* %6, i64 %idx.ext3, !dbg !6279
  %call5 = call i32 @__readl(i8* %add.ptr4) #10, !dbg !6279
  store i32 %call5, i32* %retval, align 4, !dbg !6280
  br label %return, !dbg !6280

return:                                           ; preds = %sw.default, %sw.bb
  %8 = load i32, i32* %retval, align 4, !dbg !6281
  ret i32 %8, !dbg !6281
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writew(i16 zeroext %val, i8* %addr) #0 !dbg !6282 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca i8*, align 8
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !6285, metadata !DIExpression()), !dbg !6286
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6287, metadata !DIExpression()), !dbg !6286
  %0 = load i16, i16* %val.addr, align 2, !dbg !6286
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !6286
  %2 = bitcast i8* %1 to i16*, !dbg !6286
  call void asm sideeffect "movw $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %2) #9, !dbg !6286, !srcloc !6288
  ret void, !dbg !6286
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @__readw(i8* %addr) #0 !dbg !6289 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i16, align 2
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6292, metadata !DIExpression()), !dbg !6293
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !6294, metadata !DIExpression()), !dbg !6293
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !6293
  %1 = bitcast i8* %0 to i16*, !dbg !6293
  %2 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i16* %1) #9, !dbg !6293, !srcloc !6295
  store i16 %2, i16* %ret, align 2, !dbg !6293
  %3 = load i16, i16* %ret, align 2, !dbg !6293
  ret i16 %3, !dbg !6293
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dw_spi_ctlr_busy(%struct.dw_spi* %dws) #0 !dbg !6296 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !6299, metadata !DIExpression()), !dbg !6300
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6301
  %call = call i32 @dw_readl(%struct.dw_spi* %0, i32 40) #10, !dbg !6302
  %and = and i32 %call, 1, !dbg !6303
  %tobool = icmp ne i32 %and, 0, !dbg !6302
  ret i1 %tobool, !dbg !6304
}

; Function Attrs: noredzone
declare dso_local i32 @spi_delay_exec(%struct.spi_delay*, %struct.spi_transfer*) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_set_ctldata(%struct.spi_device* %spi, i8* %state) #0 !dbg !6305 {
entry:
  %spi.addr = alloca %struct.spi_device*, align 8
  %state.addr = alloca i8*, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !6308, metadata !DIExpression()), !dbg !6309
  store i8* %state, i8** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %state.addr, metadata !6310, metadata !DIExpression()), !dbg !6311
  %0 = load i8*, i8** %state.addr, align 8, !dbg !6312
  %1 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6313
  %controller_state = getelementptr inbounds %struct.spi_device, %struct.spi_device* %1, i32 0, i32 9, !dbg !6314
  store i8* %0, i8** %controller_state, align 8, !dbg !6315
  ret void, !dbg !6316
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_spi_prepare_cr0(%struct.dw_spi* %dws, %struct.spi_device* %spi) #0 !dbg !6317 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %spi.addr = alloca %struct.spi_device*, align 8
  %cr0 = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !6320, metadata !DIExpression()), !dbg !6321
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !6322, metadata !DIExpression()), !dbg !6323
  call void @llvm.dbg.declare(metadata i32* %cr0, metadata !6324, metadata !DIExpression()), !dbg !6325
  store i32 0, i32* %cr0, align 4, !dbg !6325
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6326
  %caps = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %0, i32 0, i32 7, !dbg !6328
  %1 = load i32, i32* %caps, align 8, !dbg !6328
  %conv = zext i32 %1 to i64, !dbg !6326
  %and = and i64 %conv, 4, !dbg !6329
  %tobool = icmp ne i64 %and, 0, !dbg !6329
  br i1 %tobool, label %if.else, label %if.then, !dbg !6330

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %cr0, align 4, !dbg !6331
  store i32 %2, i32* %cr0, align 4, !dbg !6331
  %3 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6333
  %mode = getelementptr inbounds %struct.spi_device, %struct.spi_device* %3, i32 0, i32 7, !dbg !6334
  %4 = load i32, i32* %mode, align 8, !dbg !6334
  %and1 = and i32 %4, 2, !dbg !6335
  %tobool2 = icmp ne i32 %and1, 0, !dbg !6336
  %5 = zext i1 %tobool2 to i64, !dbg !6336
  %cond = select i1 %tobool2, i32 1, i32 0, !dbg !6336
  %shl = shl i32 %cond, 7, !dbg !6337
  %6 = load i32, i32* %cr0, align 4, !dbg !6338
  %or = or i32 %6, %shl, !dbg !6338
  store i32 %or, i32* %cr0, align 4, !dbg !6338
  %7 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6339
  %mode3 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 7, !dbg !6340
  %8 = load i32, i32* %mode3, align 8, !dbg !6340
  %and4 = and i32 %8, 1, !dbg !6341
  %tobool5 = icmp ne i32 %and4, 0, !dbg !6342
  %9 = zext i1 %tobool5 to i64, !dbg !6342
  %cond6 = select i1 %tobool5, i32 1, i32 0, !dbg !6342
  %shl7 = shl i32 %cond6, 6, !dbg !6343
  %10 = load i32, i32* %cr0, align 4, !dbg !6344
  %or8 = or i32 %10, %shl7, !dbg !6344
  store i32 %or8, i32* %cr0, align 4, !dbg !6344
  %11 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6345
  %mode9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 7, !dbg !6346
  %12 = load i32, i32* %mode9, align 8, !dbg !6346
  %and10 = and i32 %12, 32, !dbg !6347
  %tobool11 = icmp ne i32 %and10, 0, !dbg !6348
  %13 = zext i1 %tobool11 to i64, !dbg !6348
  %cond12 = select i1 %tobool11, i32 1, i32 0, !dbg !6348
  %shl13 = shl i32 %cond12, 11, !dbg !6349
  %14 = load i32, i32* %cr0, align 4, !dbg !6350
  %or14 = or i32 %14, %shl13, !dbg !6350
  store i32 %or14, i32* %cr0, align 4, !dbg !6350
  br label %if.end41, !dbg !6351

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %cr0, align 4, !dbg !6352
  store i32 %15, i32* %cr0, align 4, !dbg !6352
  %16 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6354
  %mode15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 7, !dbg !6355
  %17 = load i32, i32* %mode15, align 8, !dbg !6355
  %and16 = and i32 %17, 2, !dbg !6356
  %tobool17 = icmp ne i32 %and16, 0, !dbg !6357
  %18 = zext i1 %tobool17 to i64, !dbg !6357
  %cond18 = select i1 %tobool17, i32 1, i32 0, !dbg !6357
  %shl19 = shl i32 %cond18, 9, !dbg !6358
  %19 = load i32, i32* %cr0, align 4, !dbg !6359
  %or20 = or i32 %19, %shl19, !dbg !6359
  store i32 %or20, i32* %cr0, align 4, !dbg !6359
  %20 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6360
  %mode21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 7, !dbg !6361
  %21 = load i32, i32* %mode21, align 8, !dbg !6361
  %and22 = and i32 %21, 1, !dbg !6362
  %tobool23 = icmp ne i32 %and22, 0, !dbg !6363
  %22 = zext i1 %tobool23 to i64, !dbg !6363
  %cond24 = select i1 %tobool23, i32 1, i32 0, !dbg !6363
  %shl25 = shl i32 %cond24, 8, !dbg !6364
  %23 = load i32, i32* %cr0, align 4, !dbg !6365
  %or26 = or i32 %23, %shl25, !dbg !6365
  store i32 %or26, i32* %cr0, align 4, !dbg !6365
  %24 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6366
  %mode27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 7, !dbg !6367
  %25 = load i32, i32* %mode27, align 8, !dbg !6367
  %and28 = and i32 %25, 32, !dbg !6368
  %tobool29 = icmp ne i32 %and28, 0, !dbg !6369
  %26 = zext i1 %tobool29 to i64, !dbg !6369
  %cond30 = select i1 %tobool29, i32 1, i32 0, !dbg !6369
  %shl31 = shl i32 %cond30, 13, !dbg !6370
  %27 = load i32, i32* %cr0, align 4, !dbg !6371
  %or32 = or i32 %27, %shl31, !dbg !6371
  store i32 %or32, i32* %cr0, align 4, !dbg !6371
  %28 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6372
  %caps33 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %28, i32 0, i32 7, !dbg !6374
  %29 = load i32, i32* %caps33, align 8, !dbg !6374
  %conv34 = zext i32 %29 to i64, !dbg !6372
  %and35 = and i64 %conv34, 2, !dbg !6375
  %tobool36 = icmp ne i64 %and35, 0, !dbg !6375
  br i1 %tobool36, label %if.then37, label %if.end, !dbg !6376

if.then37:                                        ; preds = %if.else
  %30 = load i32, i32* %cr0, align 4, !dbg !6377
  %conv38 = zext i32 %30 to i64, !dbg !6377
  %or39 = or i64 %conv38, 2147483648, !dbg !6377
  %conv40 = trunc i64 %or39 to i32, !dbg !6377
  store i32 %conv40, i32* %cr0, align 4, !dbg !6377
  br label %if.end, !dbg !6378

if.end:                                           ; preds = %if.then37, %if.else
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then
  %31 = load i32, i32* %cr0, align 4, !dbg !6379
  ret i32 %31, !dbg !6380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_spi_poll_transfer(%struct.dw_spi* %dws, %struct.spi_transfer* %transfer) #0 !dbg !6381 {
entry:
  %retval = alloca i32, align 4
  %dws.addr = alloca %struct.dw_spi*, align 8
  %transfer.addr = alloca %struct.spi_transfer*, align 8
  %delay = alloca %struct.spi_delay, align 2
  %nbits = alloca i16, align 2
  %ret = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !6382, metadata !DIExpression()), !dbg !6383
  store %struct.spi_transfer* %transfer, %struct.spi_transfer** %transfer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_transfer** %transfer.addr, metadata !6384, metadata !DIExpression()), !dbg !6385
  call void @llvm.dbg.declare(metadata %struct.spi_delay* %delay, metadata !6386, metadata !DIExpression()), !dbg !6387
  call void @llvm.dbg.declare(metadata i16* %nbits, metadata !6388, metadata !DIExpression()), !dbg !6389
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6390, metadata !DIExpression()), !dbg !6391
  %unit = getelementptr inbounds %struct.spi_delay, %struct.spi_delay* %delay, i32 0, i32 1, !dbg !6392
  store i8 2, i8* %unit, align 2, !dbg !6393
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6394
  %n_bytes = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %0, i32 0, i32 18, !dbg !6395
  %1 = load i8, i8* %n_bytes, align 4, !dbg !6395
  %conv = zext i8 %1 to i32, !dbg !6394
  %mul = mul i32 %conv, 8, !dbg !6396
  %conv1 = trunc i32 %mul to i16, !dbg !6394
  store i16 %conv1, i16* %nbits, align 2, !dbg !6397
  br label %do.body, !dbg !6398

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6399
  call void @dw_writer(%struct.dw_spi* %2) #10, !dbg !6401
  %3 = load i16, i16* %nbits, align 2, !dbg !6402
  %conv2 = zext i16 %3 to i32, !dbg !6402
  %4 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6403
  %rx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %4, i32 0, i32 15, !dbg !6404
  %5 = load i32, i32* %rx_len, align 8, !dbg !6404
  %6 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6405
  %tx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %6, i32 0, i32 13, !dbg !6406
  %7 = load i32, i32* %tx_len, align 8, !dbg !6406
  %sub = sub i32 %5, %7, !dbg !6407
  %mul3 = mul i32 %conv2, %sub, !dbg !6408
  %conv4 = trunc i32 %mul3 to i16, !dbg !6402
  %value = getelementptr inbounds %struct.spi_delay, %struct.spi_delay* %delay, i32 0, i32 0, !dbg !6409
  store i16 %conv4, i16* %value, align 2, !dbg !6410
  %8 = load %struct.spi_transfer*, %struct.spi_transfer** %transfer.addr, align 8, !dbg !6411
  %call = call i32 @spi_delay_exec(%struct.spi_delay* %delay, %struct.spi_transfer* %8) #10, !dbg !6412
  %9 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6413
  call void @dw_reader(%struct.dw_spi* %9) #10, !dbg !6414
  %10 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6415
  %call5 = call i32 @dw_spi_check_status(%struct.dw_spi* %10, i1 zeroext true) #10, !dbg !6416
  store i32 %call5, i32* %ret, align 4, !dbg !6417
  %11 = load i32, i32* %ret, align 4, !dbg !6418
  %tobool = icmp ne i32 %11, 0, !dbg !6418
  br i1 %tobool, label %if.then, label %if.end, !dbg !6420

if.then:                                          ; preds = %do.body
  %12 = load i32, i32* %ret, align 4, !dbg !6421
  store i32 %12, i32* %retval, align 4, !dbg !6422
  br label %return, !dbg !6422

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !6423

do.cond:                                          ; preds = %if.end
  %13 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6424
  %rx_len6 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %13, i32 0, i32 15, !dbg !6425
  %14 = load i32, i32* %rx_len6, align 8, !dbg !6425
  %tobool7 = icmp ne i32 %14, 0, !dbg !6423
  br i1 %tobool7, label %do.body, label %do.end, !dbg !6423, !llvm.loop !6426

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, align 4, !dbg !6428
  br label %return, !dbg !6428

return:                                           ; preds = %do.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !6429
  ret i32 %15, !dbg !6429
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dw_spi_irq_setup(%struct.dw_spi* %dws) #0 !dbg !6430 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %level = alloca i16, align 2
  %imask = alloca i8, align 1
  %__UNIQUE_ID___x251 = alloca i16, align 2
  %__UNIQUE_ID___y252 = alloca i16, align 2
  %tmp = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !6431, metadata !DIExpression()), !dbg !6432
  call void @llvm.dbg.declare(metadata i16* %level, metadata !6433, metadata !DIExpression()), !dbg !6434
  call void @llvm.dbg.declare(metadata i8* %imask, metadata !6435, metadata !DIExpression()), !dbg !6436
  call void @llvm.dbg.declare(metadata i16* %__UNIQUE_ID___x251, metadata !6437, metadata !DIExpression()), !dbg !6439
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6439
  %fifo_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %0, i32 0, i32 4, !dbg !6439
  %1 = load i32, i32* %fifo_len, align 4, !dbg !6439
  %div = udiv i32 %1, 2, !dbg !6439
  %conv = trunc i32 %div to i16, !dbg !6439
  store i16 %conv, i16* %__UNIQUE_ID___x251, align 2, !dbg !6439
  call void @llvm.dbg.declare(metadata i16* %__UNIQUE_ID___y252, metadata !6440, metadata !DIExpression()), !dbg !6439
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6439
  %tx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %2, i32 0, i32 13, !dbg !6439
  %3 = load i32, i32* %tx_len, align 8, !dbg !6439
  %conv1 = trunc i32 %3 to i16, !dbg !6439
  store i16 %conv1, i16* %__UNIQUE_ID___y252, align 2, !dbg !6439
  %4 = load i16, i16* %__UNIQUE_ID___x251, align 2, !dbg !6439
  %conv2 = zext i16 %4 to i32, !dbg !6439
  %5 = load i16, i16* %__UNIQUE_ID___y252, align 2, !dbg !6439
  %conv3 = zext i16 %5 to i32, !dbg !6439
  %cmp = icmp slt i32 %conv2, %conv3, !dbg !6439
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6439

cond.true:                                        ; preds = %entry
  %6 = load i16, i16* %__UNIQUE_ID___x251, align 2, !dbg !6439
  %conv5 = zext i16 %6 to i32, !dbg !6439
  br label %cond.end, !dbg !6439

cond.false:                                       ; preds = %entry
  %7 = load i16, i16* %__UNIQUE_ID___y252, align 2, !dbg !6439
  %conv6 = zext i16 %7 to i32, !dbg !6439
  br label %cond.end, !dbg !6439

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv6, %cond.false ], !dbg !6439
  store i32 %cond, i32* %tmp, align 4, !dbg !6439
  %8 = load i32, i32* %tmp, align 4, !dbg !6439
  %conv7 = trunc i32 %8 to i16, !dbg !6441
  store i16 %conv7, i16* %level, align 2, !dbg !6442
  %9 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6443
  %10 = load i16, i16* %level, align 2, !dbg !6444
  %conv8 = zext i16 %10 to i32, !dbg !6444
  call void @dw_writel(%struct.dw_spi* %9, i32 24, i32 %conv8) #10, !dbg !6445
  %11 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6446
  %12 = load i16, i16* %level, align 2, !dbg !6447
  %conv9 = zext i16 %12 to i32, !dbg !6447
  %sub = sub i32 %conv9, 1, !dbg !6448
  call void @dw_writel(%struct.dw_spi* %11, i32 28, i32 %sub) #10, !dbg !6449
  %13 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6450
  %transfer_handler = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %13, i32 0, i32 19, !dbg !6451
  store i32 (%struct.dw_spi*)* @dw_spi_transfer_handler, i32 (%struct.dw_spi*)** %transfer_handler, align 8, !dbg !6452
  store i8 31, i8* %imask, align 1, !dbg !6453
  %14 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6454
  %15 = load i8, i8* %imask, align 1, !dbg !6455
  %conv10 = zext i8 %15 to i32, !dbg !6455
  call void @spi_umask_intr(%struct.dw_spi* %14, i32 %conv10) #10, !dbg !6456
  ret void, !dbg !6457
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dw_writer(%struct.dw_spi* %dws) #0 !dbg !6458 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %max = alloca i32, align 4
  %txw = alloca i16, align 2
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !6459, metadata !DIExpression()), !dbg !6460
  call void @llvm.dbg.declare(metadata i32* %max, metadata !6461, metadata !DIExpression()), !dbg !6462
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6463
  %call = call i32 @tx_max(%struct.dw_spi* %0) #10, !dbg !6464
  store i32 %call, i32* %max, align 4, !dbg !6462
  call void @llvm.dbg.declare(metadata i16* %txw, metadata !6465, metadata !DIExpression()), !dbg !6466
  store i16 0, i16* %txw, align 2, !dbg !6466
  br label %while.cond, !dbg !6467

while.cond:                                       ; preds = %if.end10, %entry
  %1 = load i32, i32* %max, align 4, !dbg !6468
  %dec = add i32 %1, -1, !dbg !6468
  store i32 %dec, i32* %max, align 4, !dbg !6468
  %tobool = icmp ne i32 %1, 0, !dbg !6467
  br i1 %tobool, label %while.body, label %while.end, !dbg !6467

while.body:                                       ; preds = %while.cond
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6469
  %tx = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %2, i32 0, i32 12, !dbg !6472
  %3 = load i8*, i8** %tx, align 8, !dbg !6472
  %tobool1 = icmp ne i8* %3, null, !dbg !6469
  br i1 %tobool1, label %if.then, label %if.end10, !dbg !6473

if.then:                                          ; preds = %while.body
  %4 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6474
  %n_bytes = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %4, i32 0, i32 18, !dbg !6477
  %5 = load i8, i8* %n_bytes, align 4, !dbg !6477
  %conv = zext i8 %5 to i32, !dbg !6474
  %cmp = icmp eq i32 %conv, 1, !dbg !6478
  br i1 %cmp, label %if.then3, label %if.else, !dbg !6479

if.then3:                                         ; preds = %if.then
  %6 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6480
  %tx4 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %6, i32 0, i32 12, !dbg !6481
  %7 = load i8*, i8** %tx4, align 8, !dbg !6481
  %8 = load i8, i8* %7, align 1, !dbg !6482
  %conv5 = zext i8 %8 to i16, !dbg !6482
  store i16 %conv5, i16* %txw, align 2, !dbg !6483
  br label %if.end, !dbg !6484

if.else:                                          ; preds = %if.then
  %9 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6485
  %tx6 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %9, i32 0, i32 12, !dbg !6486
  %10 = load i8*, i8** %tx6, align 8, !dbg !6486
  %11 = bitcast i8* %10 to i16*, !dbg !6487
  %12 = load i16, i16* %11, align 2, !dbg !6488
  store i16 %12, i16* %txw, align 2, !dbg !6489
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %13 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6490
  %n_bytes7 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %13, i32 0, i32 18, !dbg !6491
  %14 = load i8, i8* %n_bytes7, align 4, !dbg !6491
  %conv8 = zext i8 %14 to i32, !dbg !6490
  %15 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6492
  %tx9 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %15, i32 0, i32 12, !dbg !6493
  %16 = load i8*, i8** %tx9, align 8, !dbg !6494
  %idx.ext = sext i32 %conv8 to i64, !dbg !6494
  %add.ptr = getelementptr i8, i8* %16, i64 %idx.ext, !dbg !6494
  store i8* %add.ptr, i8** %tx9, align 8, !dbg !6494
  br label %if.end10, !dbg !6495

if.end10:                                         ; preds = %if.end, %while.body
  %17 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6496
  %18 = load i16, i16* %txw, align 2, !dbg !6497
  %conv11 = zext i16 %18 to i32, !dbg !6497
  call void @dw_write_io_reg(%struct.dw_spi* %17, i32 96, i32 %conv11) #10, !dbg !6498
  %19 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6499
  %tx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %19, i32 0, i32 13, !dbg !6500
  %20 = load i32, i32* %tx_len, align 8, !dbg !6501
  %dec12 = add i32 %20, -1, !dbg !6501
  store i32 %dec12, i32* %tx_len, align 8, !dbg !6501
  br label %while.cond, !dbg !6467, !llvm.loop !6502

while.end:                                        ; preds = %while.cond
  ret void, !dbg !6504
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dw_reader(%struct.dw_spi* %dws) #0 !dbg !6505 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %max = alloca i32, align 4
  %rxw = alloca i16, align 2
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !6506, metadata !DIExpression()), !dbg !6507
  call void @llvm.dbg.declare(metadata i32* %max, metadata !6508, metadata !DIExpression()), !dbg !6509
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6510
  %call = call i32 @rx_max(%struct.dw_spi* %0) #10, !dbg !6511
  store i32 %call, i32* %max, align 4, !dbg !6509
  call void @llvm.dbg.declare(metadata i16* %rxw, metadata !6512, metadata !DIExpression()), !dbg !6513
  br label %while.cond, !dbg !6514

while.cond:                                       ; preds = %if.end12, %entry
  %1 = load i32, i32* %max, align 4, !dbg !6515
  %dec = add i32 %1, -1, !dbg !6515
  store i32 %dec, i32* %max, align 4, !dbg !6515
  %tobool = icmp ne i32 %1, 0, !dbg !6514
  br i1 %tobool, label %while.body, label %while.end, !dbg !6514

while.body:                                       ; preds = %while.cond
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6516
  %call1 = call i32 @dw_read_io_reg(%struct.dw_spi* %2, i32 96) #10, !dbg !6518
  %conv = trunc i32 %call1 to i16, !dbg !6518
  store i16 %conv, i16* %rxw, align 2, !dbg !6519
  %3 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6520
  %rx = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %3, i32 0, i32 14, !dbg !6522
  %4 = load i8*, i8** %rx, align 8, !dbg !6522
  %tobool2 = icmp ne i8* %4, null, !dbg !6520
  br i1 %tobool2, label %if.then, label %if.end12, !dbg !6523

if.then:                                          ; preds = %while.body
  %5 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6524
  %n_bytes = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %5, i32 0, i32 18, !dbg !6527
  %6 = load i8, i8* %n_bytes, align 4, !dbg !6527
  %conv3 = zext i8 %6 to i32, !dbg !6524
  %cmp = icmp eq i32 %conv3, 1, !dbg !6528
  br i1 %cmp, label %if.then5, label %if.else, !dbg !6529

if.then5:                                         ; preds = %if.then
  %7 = load i16, i16* %rxw, align 2, !dbg !6530
  %conv6 = trunc i16 %7 to i8, !dbg !6530
  %8 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6531
  %rx7 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %8, i32 0, i32 14, !dbg !6532
  %9 = load i8*, i8** %rx7, align 8, !dbg !6532
  store i8 %conv6, i8* %9, align 1, !dbg !6533
  br label %if.end, !dbg !6534

if.else:                                          ; preds = %if.then
  %10 = load i16, i16* %rxw, align 2, !dbg !6535
  %11 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6536
  %rx8 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %11, i32 0, i32 14, !dbg !6537
  %12 = load i8*, i8** %rx8, align 8, !dbg !6537
  %13 = bitcast i8* %12 to i16*, !dbg !6538
  store i16 %10, i16* %13, align 2, !dbg !6539
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %14 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6540
  %n_bytes9 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %14, i32 0, i32 18, !dbg !6541
  %15 = load i8, i8* %n_bytes9, align 4, !dbg !6541
  %conv10 = zext i8 %15 to i32, !dbg !6540
  %16 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6542
  %rx11 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %16, i32 0, i32 14, !dbg !6543
  %17 = load i8*, i8** %rx11, align 8, !dbg !6544
  %idx.ext = sext i32 %conv10 to i64, !dbg !6544
  %add.ptr = getelementptr i8, i8* %17, i64 %idx.ext, !dbg !6544
  store i8* %add.ptr, i8** %rx11, align 8, !dbg !6544
  br label %if.end12, !dbg !6545

if.end12:                                         ; preds = %if.end, %while.body
  %18 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6546
  %rx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %18, i32 0, i32 15, !dbg !6547
  %19 = load i32, i32* %rx_len, align 8, !dbg !6548
  %dec13 = add i32 %19, -1, !dbg !6548
  store i32 %dec13, i32* %rx_len, align 8, !dbg !6548
  br label %while.cond, !dbg !6514, !llvm.loop !6549

while.end:                                        ; preds = %while.cond
  ret void, !dbg !6551
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tx_max(%struct.dw_spi* %dws) #0 !dbg !6552 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %tx_room = alloca i32, align 4
  %rxtx_gap = alloca i32, align 4
  %__UNIQUE_ID___x247 = alloca i32, align 4
  %__UNIQUE_ID___x245 = alloca i32, align 4
  %__UNIQUE_ID___y246 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y248 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !6555, metadata !DIExpression()), !dbg !6556
  call void @llvm.dbg.declare(metadata i32* %tx_room, metadata !6557, metadata !DIExpression()), !dbg !6558
  call void @llvm.dbg.declare(metadata i32* %rxtx_gap, metadata !6559, metadata !DIExpression()), !dbg !6560
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6561
  %fifo_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %0, i32 0, i32 4, !dbg !6562
  %1 = load i32, i32* %fifo_len, align 4, !dbg !6562
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6563
  %call = call i32 @dw_readl(%struct.dw_spi* %2, i32 32) #10, !dbg !6564
  %sub = sub i32 %1, %call, !dbg !6565
  store i32 %sub, i32* %tx_room, align 4, !dbg !6566
  %3 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6567
  %fifo_len1 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %3, i32 0, i32 4, !dbg !6568
  %4 = load i32, i32* %fifo_len1, align 4, !dbg !6568
  %5 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6569
  %rx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %5, i32 0, i32 15, !dbg !6570
  %6 = load i32, i32* %rx_len, align 8, !dbg !6570
  %7 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6571
  %tx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %7, i32 0, i32 13, !dbg !6572
  %8 = load i32, i32* %tx_len, align 8, !dbg !6572
  %sub2 = sub i32 %6, %8, !dbg !6573
  %sub3 = sub i32 %4, %sub2, !dbg !6574
  store i32 %sub3, i32* %rxtx_gap, align 4, !dbg !6575
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x247, metadata !6576, metadata !DIExpression()), !dbg !6578
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x245, metadata !6579, metadata !DIExpression()), !dbg !6581
  %9 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6581
  %tx_len4 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %9, i32 0, i32 13, !dbg !6581
  %10 = load i32, i32* %tx_len4, align 8, !dbg !6581
  store i32 %10, i32* %__UNIQUE_ID___x245, align 4, !dbg !6581
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y246, metadata !6582, metadata !DIExpression()), !dbg !6581
  %11 = load i32, i32* %tx_room, align 4, !dbg !6581
  store i32 %11, i32* %__UNIQUE_ID___y246, align 4, !dbg !6581
  %12 = load i32, i32* %__UNIQUE_ID___x245, align 4, !dbg !6581
  %13 = load i32, i32* %__UNIQUE_ID___y246, align 4, !dbg !6581
  %cmp = icmp ult i32 %12, %13, !dbg !6581
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6581

cond.true:                                        ; preds = %entry
  %14 = load i32, i32* %__UNIQUE_ID___x245, align 4, !dbg !6581
  br label %cond.end, !dbg !6581

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %__UNIQUE_ID___y246, align 4, !dbg !6581
  br label %cond.end, !dbg !6581

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !6581
  store i32 %cond, i32* %tmp, align 4, !dbg !6581
  %16 = load i32, i32* %tmp, align 4, !dbg !6581
  store i32 %16, i32* %__UNIQUE_ID___x247, align 4, !dbg !6578
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y248, metadata !6583, metadata !DIExpression()), !dbg !6578
  %17 = load i32, i32* %rxtx_gap, align 4, !dbg !6578
  store i32 %17, i32* %__UNIQUE_ID___y248, align 4, !dbg !6578
  %18 = load i32, i32* %__UNIQUE_ID___x247, align 4, !dbg !6578
  %19 = load i32, i32* %__UNIQUE_ID___y248, align 4, !dbg !6578
  %cmp6 = icmp ult i32 %18, %19, !dbg !6578
  br i1 %cmp6, label %cond.true7, label %cond.false8, !dbg !6578

cond.true7:                                       ; preds = %cond.end
  %20 = load i32, i32* %__UNIQUE_ID___x247, align 4, !dbg !6578
  br label %cond.end9, !dbg !6578

cond.false8:                                      ; preds = %cond.end
  %21 = load i32, i32* %__UNIQUE_ID___y248, align 4, !dbg !6578
  br label %cond.end9, !dbg !6578

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i32 [ %20, %cond.true7 ], [ %21, %cond.false8 ], !dbg !6578
  store i32 %cond10, i32* %tmp5, align 4, !dbg !6578
  %22 = load i32, i32* %tmp5, align 4, !dbg !6578
  ret i32 %22, !dbg !6584
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rx_max(%struct.dw_spi* %dws) #0 !dbg !6585 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %__UNIQUE_ID___x249 = alloca i32, align 4
  %__UNIQUE_ID___y250 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !6586, metadata !DIExpression()), !dbg !6587
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x249, metadata !6588, metadata !DIExpression()), !dbg !6590
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6590
  %rx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %0, i32 0, i32 15, !dbg !6590
  %1 = load i32, i32* %rx_len, align 8, !dbg !6590
  store i32 %1, i32* %__UNIQUE_ID___x249, align 4, !dbg !6590
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y250, metadata !6591, metadata !DIExpression()), !dbg !6590
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6590
  %call = call i32 @dw_readl(%struct.dw_spi* %2, i32 36) #10, !dbg !6590
  store i32 %call, i32* %__UNIQUE_ID___y250, align 4, !dbg !6590
  %3 = load i32, i32* %__UNIQUE_ID___x249, align 4, !dbg !6590
  %4 = load i32, i32* %__UNIQUE_ID___y250, align 4, !dbg !6590
  %cmp = icmp ult i32 %3, %4, !dbg !6590
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6590

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %__UNIQUE_ID___x249, align 4, !dbg !6590
  br label %cond.end, !dbg !6590

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %__UNIQUE_ID___y250, align 4, !dbg !6590
  br label %cond.end, !dbg !6590

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !6590
  store i32 %cond, i32* %tmp, align 4, !dbg !6590
  %7 = load i32, i32* %tmp, align 4, !dbg !6590
  ret i32 %7, !dbg !6592
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_spi_transfer_handler(%struct.dw_spi* %dws) #0 !dbg !6593 {
entry:
  %retval = alloca i32, align 4
  %dws.addr = alloca %struct.dw_spi*, align 8
  %irq_status = alloca i16, align 2
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !6594, metadata !DIExpression()), !dbg !6595
  call void @llvm.dbg.declare(metadata i16* %irq_status, metadata !6596, metadata !DIExpression()), !dbg !6597
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6598
  %call = call i32 @dw_readl(%struct.dw_spi* %0, i32 48) #10, !dbg !6599
  %conv = trunc i32 %call to i16, !dbg !6599
  store i16 %conv, i16* %irq_status, align 2, !dbg !6597
  %1 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6600
  %call1 = call i32 @dw_spi_check_status(%struct.dw_spi* %1, i1 zeroext false) #10, !dbg !6602
  %tobool = icmp ne i32 %call1, 0, !dbg !6602
  br i1 %tobool, label %if.then, label %if.end, !dbg !6603

if.then:                                          ; preds = %entry
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6604
  %master = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %2, i32 0, i32 0, !dbg !6606
  %3 = load %struct.spi_controller*, %struct.spi_controller** %master, align 8, !dbg !6606
  call void @spi_finalize_current_transfer(%struct.spi_controller* %3) #10, !dbg !6607
  store i32 1, i32* %retval, align 4, !dbg !6608
  br label %return, !dbg !6608

if.end:                                           ; preds = %entry
  %4 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6609
  call void @dw_reader(%struct.dw_spi* %4) #10, !dbg !6610
  %5 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6611
  %rx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %5, i32 0, i32 15, !dbg !6613
  %6 = load i32, i32* %rx_len, align 8, !dbg !6613
  %tobool2 = icmp ne i32 %6, 0, !dbg !6611
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !6614

if.then3:                                         ; preds = %if.end
  %7 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6615
  call void @spi_mask_intr(%struct.dw_spi* %7, i32 255) #10, !dbg !6617
  %8 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6618
  %master4 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %8, i32 0, i32 0, !dbg !6619
  %9 = load %struct.spi_controller*, %struct.spi_controller** %master4, align 8, !dbg !6619
  call void @spi_finalize_current_transfer(%struct.spi_controller* %9) #10, !dbg !6620
  br label %if.end11, !dbg !6621

if.else:                                          ; preds = %if.end
  %10 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6622
  %rx_len5 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %10, i32 0, i32 15, !dbg !6624
  %11 = load i32, i32* %rx_len5, align 8, !dbg !6624
  %12 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6625
  %call6 = call i32 @dw_readl(%struct.dw_spi* %12, i32 28) #10, !dbg !6626
  %cmp = icmp ule i32 %11, %call6, !dbg !6627
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !6628

if.then8:                                         ; preds = %if.else
  %13 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6629
  %14 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6631
  %rx_len9 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %14, i32 0, i32 15, !dbg !6632
  %15 = load i32, i32* %rx_len9, align 8, !dbg !6632
  %sub = sub i32 %15, 1, !dbg !6633
  call void @dw_writel(%struct.dw_spi* %13, i32 28, i32 %sub) #10, !dbg !6634
  br label %if.end10, !dbg !6635

if.end10:                                         ; preds = %if.then8, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then3
  %16 = load i16, i16* %irq_status, align 2, !dbg !6636
  %conv12 = zext i16 %16 to i32, !dbg !6636
  %and = and i32 %conv12, 1, !dbg !6638
  %tobool13 = icmp ne i32 %and, 0, !dbg !6638
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !6639

if.then14:                                        ; preds = %if.end11
  %17 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6640
  call void @dw_writer(%struct.dw_spi* %17) #10, !dbg !6642
  %18 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6643
  %tx_len = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %18, i32 0, i32 13, !dbg !6645
  %19 = load i32, i32* %tx_len, align 8, !dbg !6645
  %tobool15 = icmp ne i32 %19, 0, !dbg !6643
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !6646

if.then16:                                        ; preds = %if.then14
  %20 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6647
  call void @spi_mask_intr(%struct.dw_spi* %20, i32 1) #10, !dbg !6648
  br label %if.end17, !dbg !6648

if.end17:                                         ; preds = %if.then16, %if.then14
  br label %if.end18, !dbg !6649

if.end18:                                         ; preds = %if.end17, %if.end11
  store i32 1, i32* %retval, align 4, !dbg !6650
  br label %return, !dbg !6650

return:                                           ; preds = %if.end18, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !6651
  ret i32 %21, !dbg !6651
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_umask_intr(%struct.dw_spi* %dws, i32 %mask) #0 !dbg !6652 {
entry:
  %dws.addr = alloca %struct.dw_spi*, align 8
  %mask.addr = alloca i32, align 4
  %new_mask = alloca i32, align 4
  store %struct.dw_spi* %dws, %struct.dw_spi** %dws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_spi** %dws.addr, metadata !6653, metadata !DIExpression()), !dbg !6654
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !6655, metadata !DIExpression()), !dbg !6656
  call void @llvm.dbg.declare(metadata i32* %new_mask, metadata !6657, metadata !DIExpression()), !dbg !6658
  %0 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6659
  %call = call i32 @dw_readl(%struct.dw_spi* %0, i32 44) #10, !dbg !6660
  %1 = load i32, i32* %mask.addr, align 4, !dbg !6661
  %or = or i32 %call, %1, !dbg !6662
  store i32 %or, i32* %new_mask, align 4, !dbg !6663
  %2 = load %struct.dw_spi*, %struct.dw_spi** %dws.addr, align 8, !dbg !6664
  %3 = load i32, i32* %new_mask, align 4, !dbg !6665
  call void @dw_writel(%struct.dw_spi* %2, i32 44, i32 %3) #10, !dbg !6666
  ret void, !dbg !6667
}

; Function Attrs: noredzone
declare dso_local void @spi_finalize_current_transfer(%struct.spi_controller*) #3

; Function Attrs: noredzone
declare dso_local i32 @device_property_read_u32_array(%struct.device*, i8*, i32*, i64) #3

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!170}
!llvm.module.flags = !{!171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author271", scope: !2, file: !3, line: 955, type: !167, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !123, globals: !149, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/spi/spi-dw-core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !99, !105, !110, !117}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spi_mem_data_dir", file: !94, line: 65, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/spi/spi-mem.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "SPI_MEM_NO_DATA", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "SPI_MEM_DATA_IN", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "SPI_MEM_DATA_OUT", value: 2, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !100, line: 11, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 10, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !111, line: 305, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!114 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dw_ssi_type", file: !118, line: 114, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "drivers/spi/spi-dw.h", directory: "/home/lizy2001/genbc/linux")
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "SSI_MOTO_SPI", value: 0, isUnsigned: true)
!121 = !DIEnumerator(name: "SSI_TI_SSP", value: 1, isUnsigned: true)
!122 = !DIEnumerator(name: "SSI_NS_MICROWIRE", value: 2, isUnsigned: true)
!123 = !{!124, !131, !132, !7, !134, !136, !137, !138, !139, !141, !142, !146, !147}
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !125, line: 143, baseType: !126)
!125 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !127, line: 23, baseType: !128)
!127 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !129, line: 31, baseType: !130)
!129 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!130 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!131 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !127, line: 21, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !129, line: 27, baseType: !7)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !125, line: 148, baseType: !7)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!138 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !141)
!141 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !127, line: 17, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !129, line: 21, baseType: !145)
!145 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !127, line: 19, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !129, line: 24, baseType: !141)
!149 = !{!0, !150, !157, !162}
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description272", scope: !2, file: !3, line: 956, type: !152, isLocal: true, isDefinition: true, align: 8)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 488, elements: !155)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!155 = !{!156}
!156 = !DISubrange(count: 61)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file273", scope: !2, file: !3, line: 957, type: !159, isLocal: true, isDefinition: true, align: 8)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 248, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 31)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license274", scope: !2, file: !3, line: 957, type: !164, isLocal: true, isDefinition: true, align: 8)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 176, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 22)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 368, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 46)
!170 = !{!"rsp"}
!171 = !{i32 7, !"Dwarf Version", i32 4}
!172 = !{i32 2, !"Debug Info Version", i32 3}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"Code Model", i32 2}
!175 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!176 = distinct !DISubprogram(name: "dw_spi_set_cs", scope: !3, file: !3, line: 92, type: !177, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !220)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179, !453}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_device", file: !181, line: 159, size: 8256, elements: !182)
!181 = !DIFile(filename: "./include/linux/spi/spi.h", directory: "/home/lizy2001/genbc/linux")
!182 = !{!183, !3835, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !180, file: !181, line: 160, baseType: !184, size: 5568)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !185)
!185 = !{!186, !3366, !3368, !3371, !3372, !3423, !3514, !3515, !3516, !3517, !3518, !3527, !3632, !3645, !3648, !3649, !3653, !3655, !3656, !3657, !3661, !3667, !3668, !3671, !3786, !3787, !3788, !3789, !3790, !3791, !3823, !3824, !3825, !3828, !3831, !3832, !3833, !3834}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !184, file: !73, line: 462, baseType: !187, size: 512)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !188, line: 64, size: 512, elements: !189)
!188 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!189 = !{!190, !192, !198, !200, !260, !3229, !3356, !3361, !3362, !3363, !3364, !3365}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !188, line: 65, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !187, file: !188, line: 66, baseType: !193, size: 128, offset: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !125, line: 178, size: 128, elements: !194)
!194 = !{!195, !197}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !125, line: 179, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !193, file: !125, line: 179, baseType: !196, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !188, line: 67, baseType: !199, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !187, file: !188, line: 68, baseType: !201, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !188, line: 192, size: 704, elements: !203)
!203 = !{!204, !205, !221, !222}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !202, file: !188, line: 193, baseType: !193, size: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !202, file: !188, line: 194, baseType: !206, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !207, line: 83, baseType: !208)
!207 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !207, line: 71, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !207, line: 72, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !208, file: !207, line: 72, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !211, file: !207, line: 73, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !207, line: 20, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !214, file: !207, line: 21, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !218, line: 25, baseType: !219)
!218 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 25, elements: !220)
!220 = !{}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !202, file: !188, line: 195, baseType: !187, size: 512, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !202, file: !188, line: 196, baseType: !223, size: 64, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !188, line: 156, size: 192, elements: !226)
!226 = !{!227, !232, !237}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !225, file: !188, line: 157, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!131, !201, !199}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !188, line: 158, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!191, !201, !199}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !225, file: !188, line: 159, baseType: !238, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!131, !201, !199, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !188, line: 148, size: 20736, elements: !244)
!244 = !{!245, !250, !254, !255, !259}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !243, file: !188, line: 149, baseType: !246, size: 192)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 192, elements: !248)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!248 = !{!249}
!249 = !DISubrange(count: 3)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !243, file: !188, line: 150, baseType: !251, size: 4096, offset: 192)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 4096, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !243, file: !188, line: 151, baseType: !131, size: 32, offset: 4288)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !188, line: 152, baseType: !256, size: 16384, offset: 4320)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 16384, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 2048)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !243, file: !188, line: 153, baseType: !131, size: 32, offset: 20704)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !187, file: !188, line: 69, baseType: !261, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !188, line: 138, size: 448, elements: !263)
!263 = !{!264, !268, !296, !298, !3191, !3219, !3223}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !262, file: !188, line: 139, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !199}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !262, file: !188, line: 140, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !272, line: 230, size: 128, elements: !273)
!272 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!273 = !{!274, !289}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !271, file: !272, line: 231, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !199, !283, !247}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !125, line: 60, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !280, line: 73, baseType: !281)
!280 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !280, line: 15, baseType: !282)
!282 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !272, line: 30, size: 128, elements: !285)
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !272, line: 31, baseType: !191, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !284, file: !272, line: 32, baseType: !288, size: 16, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !125, line: 19, baseType: !141)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !271, file: !272, line: 232, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!278, !199, !283, !191, !293}
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 55, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !280, line: 72, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !280, line: 16, baseType: !138)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !262, file: !188, line: 141, baseType: !297, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !262, file: !188, line: 142, baseType: !299, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !272, line: 84, size: 320, elements: !303)
!303 = !{!304, !305, !309, !3188, !3189}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !272, line: 85, baseType: !191, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !302, file: !272, line: 86, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!288, !199, !283, !131}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !302, file: !272, line: 88, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!288, !199, !313, !131}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !272, line: 168, size: 448, elements: !315)
!315 = !{!316, !317, !318, !319, !3183, !3184}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !314, file: !272, line: 169, baseType: !284, size: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !314, file: !272, line: 170, baseType: !293, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !314, file: !272, line: 171, baseType: !137, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !314, file: !272, line: 172, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!278, !323, !199, !313, !247, !494, !293}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !325)
!325 = !{!326, !344, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3166, !3167, !3176, !3177, !3178, !3179, !3180, !3181, !3182}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !324, file: !44, line: 920, baseType: !327, size: 128)
!327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !44, line: 917, size: 128, elements: !328)
!328 = !{!329, !335}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !327, file: !44, line: 918, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !331, line: 58, size: 64, elements: !332)
!331 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !331, line: 59, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !327, file: !44, line: 919, baseType: !336, size: 128, align: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !125, line: 216, size: 128, align: 64, elements: !337)
!337 = !{!338, !340}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !125, line: 217, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !336, file: !125, line: 218, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !339}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !324, file: !44, line: 921, baseType: !345, size: 128, offset: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !346, line: 8, size: 128, elements: !347)
!346 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!347 = !{!348, !352}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !345, file: !346, line: 9, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !351, line: 18, flags: DIFlagFwdDecl)
!351 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!352 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !345, file: !346, line: 10, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !351, line: 89, size: 1536, elements: !355)
!355 = !{!356, !357, !367, !375, !376, !391, !3116, !3118, !3130, !3131, !3132, !3133, !3134, !3140, !3141, !3142}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !354, file: !351, line: 91, baseType: !7, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !354, file: !351, line: 92, baseType: !358, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !359, line: 277, baseType: !360)
!359 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !359, line: 277, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !360, file: !359, line: 277, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !359, line: 70, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !359, line: 65, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !364, file: !359, line: 66, baseType: !7, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !354, file: !351, line: 93, baseType: !368, size: 128, offset: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !369, line: 38, size: 128, elements: !370)
!369 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!370 = !{!371, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !369, line: 39, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !368, file: !369, line: 39, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !354, file: !351, line: 94, baseType: !353, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !354, file: !351, line: 95, baseType: !377, size: 128, offset: 256)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !351, line: 47, size: 128, elements: !378)
!378 = !{!379, !388}
!379 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !351, line: 48, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !351, line: 48, size: 64, elements: !381)
!381 = !{!382, !387}
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !351, line: 49, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !351, line: 49, size: 64, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !383, file: !351, line: 50, baseType: !134, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !383, file: !351, line: 50, baseType: !134, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !380, file: !351, line: 52, baseType: !126, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !377, file: !351, line: 54, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !354, file: !351, line: 96, baseType: !392, size: 64, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !394)
!394 = !{!395, !396, !397, !405, !412, !413, !561, !2820, !2821, !2822, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !3084, !3092, !3093, !3094, !3112, !3113, !3114, !3115}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !393, file: !44, line: 611, baseType: !288, size: 16)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !393, file: !44, line: 612, baseType: !141, size: 16, offset: 16)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !393, file: !44, line: 613, baseType: !398, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !399, line: 23, baseType: !400)
!399 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 21, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !400, file: !399, line: 22, baseType: !403, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !125, line: 32, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !280, line: 49, baseType: !7)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !393, file: !44, line: 614, baseType: !406, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !399, line: 28, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 26, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !407, file: !399, line: 27, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !125, line: 33, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !280, line: 50, baseType: !7)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !393, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !393, file: !44, line: 622, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !417)
!417 = !{!418, !422, !435, !439, !445, !449, !455, !459, !463, !467, !471, !472, !478, !482, !508, !537, !541, !547, !552, !556, !557}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !416, file: !44, line: 1865, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!353, !392, !353, !7}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !416, file: !44, line: 1866, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!191, !353, !392, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !428, line: 10, size: 128, elements: !429)
!428 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!429 = !{!430, !434}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !427, file: !428, line: 11, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !137}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !427, file: !428, line: 12, baseType: !137, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !416, file: !44, line: 1867, baseType: !436, size: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!131, !392, !131}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !416, file: !44, line: 1868, baseType: !440, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!443, !392, !131}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !416, file: !44, line: 1870, baseType: !446, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!131, !353, !247, !131}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !416, file: !44, line: 1872, baseType: !450, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!131, !392, !353, !288, !453}
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !125, line: 30, baseType: !454)
!454 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !416, file: !44, line: 1873, baseType: !456, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!131, !353, !392, !353}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !416, file: !44, line: 1874, baseType: !460, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!131, !392, !353}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !416, file: !44, line: 1875, baseType: !464, size: 64, offset: 512)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!131, !392, !353, !191}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !416, file: !44, line: 1876, baseType: !468, size: 64, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!131, !392, !353, !288}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !416, file: !44, line: 1877, baseType: !460, size: 64, offset: 640)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !416, file: !44, line: 1878, baseType: !473, size: 64, offset: 704)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!131, !392, !353, !288, !476}
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !125, line: 16, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !125, line: 13, baseType: !134)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !416, file: !44, line: 1879, baseType: !479, size: 64, offset: 768)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!131, !392, !353, !392, !353, !7}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !416, file: !44, line: 1881, baseType: !483, size: 64, offset: 832)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!131, !353, !486}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !497, !505, !506, !507}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !487, file: !44, line: 220, baseType: !7, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !487, file: !44, line: 221, baseType: !288, size: 16, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !487, file: !44, line: 222, baseType: !398, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !487, file: !44, line: 223, baseType: !406, size: 32, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !487, file: !44, line: 224, baseType: !494, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !125, line: 46, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !280, line: 88, baseType: !496)
!496 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !487, file: !44, line: 225, baseType: !498, size: 128, offset: 192)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !499, line: 13, size: 128, elements: !500)
!499 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!500 = !{!501, !504}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !498, file: !499, line: 14, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !499, line: 8, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !129, line: 30, baseType: !496)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !498, file: !499, line: 15, baseType: !282, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !487, file: !44, line: 226, baseType: !498, size: 128, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !487, file: !44, line: 227, baseType: !498, size: 128, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !487, file: !44, line: 234, baseType: !323, size: 64, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !416, file: !44, line: 1882, baseType: !509, size: 64, offset: 896)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!131, !512, !514, !134, !7}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !516, line: 22, size: 1152, elements: !517)
!516 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!517 = !{!518, !519, !520, !521, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !515, file: !516, line: 23, baseType: !134, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !515, file: !516, line: 24, baseType: !288, size: 16, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !515, file: !516, line: 25, baseType: !7, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !515, file: !516, line: 26, baseType: !522, size: 32, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !125, line: 104, baseType: !134)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !515, file: !516, line: 27, baseType: !126, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !515, file: !516, line: 28, baseType: !126, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !515, file: !516, line: 37, baseType: !126, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !515, file: !516, line: 38, baseType: !476, size: 32, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !515, file: !516, line: 39, baseType: !476, size: 32, offset: 352)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !515, file: !516, line: 40, baseType: !398, size: 32, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !515, file: !516, line: 41, baseType: !406, size: 32, offset: 416)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !515, file: !516, line: 42, baseType: !494, size: 64, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !515, file: !516, line: 43, baseType: !498, size: 128, offset: 512)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !515, file: !516, line: 44, baseType: !498, size: 128, offset: 640)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !515, file: !516, line: 45, baseType: !498, size: 128, offset: 768)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !515, file: !516, line: 46, baseType: !498, size: 128, offset: 896)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !515, file: !516, line: 47, baseType: !126, size: 64, offset: 1024)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !515, file: !516, line: 48, baseType: !126, size: 64, offset: 1088)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !416, file: !44, line: 1883, baseType: !538, size: 64, offset: 960)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!278, !353, !247, !293}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !416, file: !44, line: 1884, baseType: !542, size: 64, offset: 1024)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!131, !392, !545, !126, !126}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !416, file: !44, line: 1886, baseType: !548, size: 64, offset: 1088)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!131, !392, !551, !131}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !416, file: !44, line: 1887, baseType: !553, size: 64, offset: 1152)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!131, !392, !353, !323, !7, !288}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !416, file: !44, line: 1890, baseType: !468, size: 64, offset: 1216)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !416, file: !44, line: 1891, baseType: !558, size: 64, offset: 1280)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!131, !392, !443, !131}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !393, file: !44, line: 623, baseType: !562, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !620, !2427, !2509, !2592, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2608, !2612, !2613, !2616, !2617, !2620, !2621, !2622, !2663, !2690, !2691, !2692, !2693, !2694, !2695, !2698, !2700, !2707, !2708, !2710, !2711, !2712, !2771, !2772, !2787, !2788, !2789, !2790, !2791, !2794, !2795, !2796, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !563, file: !44, line: 1417, baseType: !193, size: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !563, file: !44, line: 1418, baseType: !476, size: 32, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !563, file: !44, line: 1419, baseType: !145, size: 8, offset: 160)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !563, file: !44, line: 1420, baseType: !138, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !563, file: !44, line: 1421, baseType: !494, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !563, file: !44, line: 1422, baseType: !571, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !573)
!573 = !{!574, !575, !576, !583, !587, !591, !595, !599, !600, !610, !613, !614, !615, !617, !618, !619}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !572, file: !44, line: 2229, baseType: !191, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !572, file: !44, line: 2230, baseType: !131, size: 32, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !572, file: !44, line: 2238, baseType: !577, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!131, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !582, line: 28, flags: DIFlagFwdDecl)
!582 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!583 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !572, file: !44, line: 2239, baseType: !584, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !572, file: !44, line: 2240, baseType: !588, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!353, !571, !131, !191, !137}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !572, file: !44, line: 2242, baseType: !592, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !562}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !572, file: !44, line: 2243, baseType: !596, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !598, line: 189, flags: DIFlagFwdDecl)
!598 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !572, file: !44, line: 2244, baseType: !571, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !572, file: !44, line: 2245, baseType: !601, size: 64, offset: 512)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !125, line: 182, size: 64, elements: !602)
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !601, file: !125, line: 183, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !125, line: 186, size: 128, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !605, file: !125, line: 187, baseType: !604, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !605, file: !125, line: 187, baseType: !609, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !572, file: !44, line: 2247, baseType: !611, offset: 576)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !612, line: 187, elements: !220)
!612 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !572, file: !44, line: 2248, baseType: !611, offset: 576)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !572, file: !44, line: 2249, baseType: !611, offset: 576)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !572, file: !44, line: 2250, baseType: !616, offset: 576)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, elements: !248)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !572, file: !44, line: 2252, baseType: !611, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !572, file: !44, line: 2253, baseType: !611, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !572, file: !44, line: 2254, baseType: !611, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !563, file: !44, line: 1423, baseType: !621, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !624)
!624 = !{!625, !629, !633, !634, !638, !644, !648, !649, !650, !654, !658, !659, !660, !661, !667, !672, !673, !729, !730, !731, !732, !2411, !2426}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !623, file: !44, line: 1936, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!392, !562}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !623, file: !44, line: 1937, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !392}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !623, file: !44, line: 1938, baseType: !630, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !623, file: !44, line: 1940, baseType: !635, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !392, !131}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !623, file: !44, line: 1941, baseType: !639, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!131, !392, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !623, file: !44, line: 1942, baseType: !645, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!131, !392}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !623, file: !44, line: 1943, baseType: !630, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !623, file: !44, line: 1944, baseType: !592, size: 64, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !623, file: !44, line: 1945, baseType: !651, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!131, !562, !131}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !623, file: !44, line: 1946, baseType: !655, size: 64, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!131, !562}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !623, file: !44, line: 1947, baseType: !655, size: 64, offset: 640)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !623, file: !44, line: 1948, baseType: !655, size: 64, offset: 704)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !623, file: !44, line: 1949, baseType: !655, size: 64, offset: 768)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !623, file: !44, line: 1950, baseType: !662, size: 64, offset: 832)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!131, !353, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !623, file: !44, line: 1951, baseType: !668, size: 64, offset: 896)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!131, !562, !671, !247}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !623, file: !44, line: 1952, baseType: !592, size: 64, offset: 960)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !623, file: !44, line: 1954, baseType: !674, size: 64, offset: 1024)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!131, !677, !353}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !679, line: 16, size: 896, elements: !680)
!679 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !702, !724, !725, !728}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !678, file: !679, line: 17, baseType: !247, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !678, file: !679, line: 18, baseType: !293, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !678, file: !679, line: 19, baseType: !293, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !678, file: !679, line: 20, baseType: !293, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !678, file: !679, line: 21, baseType: !293, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !678, file: !679, line: 22, baseType: !494, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !678, file: !679, line: 23, baseType: !494, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !678, file: !679, line: 24, baseType: !689, size: 192, offset: 448)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !690, line: 53, size: 192, elements: !691)
!690 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!691 = !{!692, !700, !701}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !689, file: !690, line: 54, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !694, line: 13, baseType: !695)
!694 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !125, line: 175, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 173, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !696, file: !125, line: 174, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !127, line: 22, baseType: !503)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !689, file: !690, line: 55, baseType: !206, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !689, file: !690, line: 59, baseType: !193, size: 128, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !678, file: !679, line: 25, baseType: !703, size: 64, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !679, line: 31, size: 256, elements: !706)
!706 = !{!707, !712, !716, !720}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !705, file: !679, line: 32, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!137, !677, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !705, file: !679, line: 33, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !677, !137}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !705, file: !679, line: 34, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!137, !677, !137, !711}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !705, file: !679, line: 35, baseType: !721, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!131, !677, !137}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !678, file: !679, line: 26, baseType: !131, size: 32, offset: 704)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !678, file: !679, line: 27, baseType: !726, size: 64, offset: 768)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !678, file: !679, line: 28, baseType: !137, size: 64, offset: 832)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !623, file: !44, line: 1955, baseType: !674, size: 64, offset: 1088)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !623, file: !44, line: 1956, baseType: !674, size: 64, offset: 1152)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !623, file: !44, line: 1957, baseType: !674, size: 64, offset: 1216)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !623, file: !44, line: 1963, baseType: !733, size: 64, offset: 1280)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!131, !562, !736, !136}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !738, line: 68, size: 512, align: 128, elements: !739)
!738 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!739 = !{!740, !741, !2403, !2410}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !738, line: 69, baseType: !138, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !738, line: 77, baseType: !742, size: 320, offset: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !737, file: !738, line: 77, size: 320, elements: !743)
!743 = !{!744, !922, !926, !954, !962, !968, !2334, !2402}
!744 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !738, line: 78, baseType: !745, size: 320)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !738, line: 78, size: 320, elements: !746)
!746 = !{!747, !748, !920, !921}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !745, file: !738, line: 84, baseType: !193, size: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !745, file: !738, line: 86, baseType: !749, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !751)
!751 = !{!752, !753, !760, !761, !766, !781, !790, !791, !792, !793, !913, !914, !917, !918, !919}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !750, file: !44, line: 452, baseType: !392, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !750, file: !44, line: 453, baseType: !754, size: 128, offset: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !755, line: 292, size: 128, elements: !756)
!755 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!756 = !{!757, !758, !759}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !754, file: !755, line: 293, baseType: !206)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !754, file: !755, line: 295, baseType: !136, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !754, file: !755, line: 296, baseType: !137, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !750, file: !44, line: 454, baseType: !136, size: 32, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !750, file: !44, line: 455, baseType: !762, size: 32, offset: 224)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !125, line: 168, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 166, size: 32, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !763, file: !125, line: 167, baseType: !131, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !750, file: !44, line: 460, baseType: !767, size: 128, offset: 256)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !768, line: 125, size: 128, elements: !769)
!768 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!769 = !{!770, !780}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !767, file: !768, line: 126, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !768, line: 31, size: 64, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !771, file: !768, line: 32, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !768, line: 24, size: 192, align: 64, elements: !776)
!776 = !{!777, !778, !779}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !775, file: !768, line: 25, baseType: !138, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !775, file: !768, line: 26, baseType: !774, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !775, file: !768, line: 27, baseType: !774, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !767, file: !768, line: 127, baseType: !774, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !750, file: !44, line: 461, baseType: !782, size: 256, offset: 384)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !783, line: 35, size: 256, elements: !784)
!783 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!784 = !{!785, !786, !787, !789}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !782, file: !783, line: 36, baseType: !693, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !782, file: !783, line: 42, baseType: !693, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !782, file: !783, line: 46, baseType: !788, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !207, line: 29, baseType: !214)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !782, file: !783, line: 47, baseType: !193, size: 128, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !750, file: !44, line: 462, baseType: !138, size: 64, offset: 640)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !750, file: !44, line: 463, baseType: !138, size: 64, offset: 704)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !750, file: !44, line: 464, baseType: !138, size: 64, offset: 768)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !750, file: !44, line: 465, baseType: !794, size: 64, offset: 832)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !797)
!797 = !{!798, !802, !806, !810, !814, !818, !824, !830, !834, !839, !843, !847, !851, !877, !881, !887, !888, !889, !893, !898, !902, !909}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !796, file: !44, line: 368, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!131, !736, !642}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !796, file: !44, line: 369, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!131, !323, !736}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !796, file: !44, line: 372, baseType: !807, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!131, !749, !642}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !796, file: !44, line: 375, baseType: !811, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!131, !736}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !796, file: !44, line: 381, baseType: !815, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!131, !323, !749, !196, !7}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !796, file: !44, line: 383, baseType: !819, size: 64, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !796, file: !44, line: 385, baseType: !825, size: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!131, !323, !749, !494, !7, !7, !828, !829}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !796, file: !44, line: 388, baseType: !831, size: 64, offset: 448)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!131, !323, !749, !494, !7, !7, !736, !137}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !796, file: !44, line: 393, baseType: !835, size: 64, offset: 512)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!838, !749, !838}
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !125, line: 125, baseType: !126)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !796, file: !44, line: 394, baseType: !840, size: 64, offset: 576)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !736, !7, !7}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !796, file: !44, line: 395, baseType: !844, size: 64, offset: 640)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!131, !736, !136}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !796, file: !44, line: 396, baseType: !848, size: 64, offset: 704)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !736}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !796, file: !44, line: 397, baseType: !852, size: 64, offset: 768)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!278, !855, !875}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !857)
!857 = !{!858, !859, !860, !864, !865, !866, !867, !868}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !856, file: !44, line: 321, baseType: !323, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !856, file: !44, line: 326, baseType: !494, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !856, file: !44, line: 327, baseType: !861, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !855, !282, !282}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !856, file: !44, line: 328, baseType: !137, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !856, file: !44, line: 329, baseType: !131, size: 32, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !856, file: !44, line: 330, baseType: !147, size: 16, offset: 288)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !856, file: !44, line: 331, baseType: !147, size: 16, offset: 304)
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !44, line: 332, baseType: !869, size: 64, offset: 320)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !44, line: 332, size: 64, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !869, file: !44, line: 333, baseType: !7, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !869, file: !44, line: 334, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !796, file: !44, line: 402, baseType: !878, size: 64, offset: 832)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!131, !749, !736, !736, !5}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !796, file: !44, line: 404, baseType: !882, size: 64, offset: 896)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!453, !736, !885}
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !886, line: 305, baseType: !7)
!886 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!887 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !796, file: !44, line: 405, baseType: !848, size: 64, offset: 960)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !796, file: !44, line: 406, baseType: !811, size: 64, offset: 1024)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !796, file: !44, line: 407, baseType: !890, size: 64, offset: 1088)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!131, !736, !138, !138}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !796, file: !44, line: 409, baseType: !894, size: 64, offset: 1152)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !736, !897, !897}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !796, file: !44, line: 410, baseType: !899, size: 64, offset: 1216)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!131, !749, !736}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !796, file: !44, line: 413, baseType: !903, size: 64, offset: 1280)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!131, !906, !323, !908}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !796, file: !44, line: 415, baseType: !910, size: 64, offset: 1344)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{null, !323}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !44, line: 466, baseType: !138, size: 64, offset: 896)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !750, file: !44, line: 467, baseType: !915, size: 32, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !916, line: 8, baseType: !134)
!916 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!917 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !750, file: !44, line: 468, baseType: !206, offset: 992)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !750, file: !44, line: 469, baseType: !193, size: 128, offset: 1024)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !750, file: !44, line: 470, baseType: !137, size: 64, offset: 1152)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !745, file: !738, line: 87, baseType: !138, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !745, file: !738, line: 94, baseType: !138, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !738, line: 96, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !738, line: 96, size: 64, elements: !924)
!924 = !{!925}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !923, file: !738, line: 101, baseType: !124, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !738, line: 103, baseType: !927, size: 320)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !738, line: 103, size: 320, elements: !928)
!928 = !{!929, !939, !942, !943}
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !738, line: 104, baseType: !930, size: 128)
!930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !738, line: 104, size: 128, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !930, file: !738, line: 105, baseType: !193, size: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !930, file: !738, line: 106, baseType: !934, size: 128)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !738, line: 106, size: 128, elements: !935)
!935 = !{!936, !937, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !934, file: !738, line: 107, baseType: !736, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !934, file: !738, line: 109, baseType: !131, size: 32, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !934, file: !738, line: 110, baseType: !131, size: 32, offset: 96)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !927, file: !738, line: 117, baseType: !940, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !738, line: 117, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !927, file: !738, line: 119, baseType: !137, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !738, line: 120, baseType: !944, size: 64, offset: 256)
!944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !738, line: 120, size: 64, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !944, file: !738, line: 121, baseType: !137, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !944, file: !738, line: 122, baseType: !138, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !738, line: 123, baseType: !949, size: 32)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !738, line: 123, size: 32, elements: !950)
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !949, file: !738, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !949, file: !738, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !949, file: !738, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !738, line: 130, baseType: !955, size: 192)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !738, line: 130, size: 192, elements: !956)
!956 = !{!957, !958, !959, !960, !961}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !955, file: !738, line: 131, baseType: !138, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !955, file: !738, line: 134, baseType: !145, size: 8, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !955, file: !738, line: 135, baseType: !145, size: 8, offset: 72)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !955, file: !738, line: 136, baseType: !762, size: 32, offset: 96)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !955, file: !738, line: 137, baseType: !7, size: 32, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !738, line: 139, baseType: !963, size: 256)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !738, line: 139, size: 256, elements: !964)
!964 = !{!965, !966, !967}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !963, file: !738, line: 140, baseType: !138, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !963, file: !738, line: 141, baseType: !762, size: 32, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !963, file: !738, line: 143, baseType: !193, size: 128, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !738, line: 145, baseType: !969, size: 256)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !738, line: 145, size: 256, elements: !970)
!970 = !{!971, !972, !975, !976, !2333}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !969, file: !738, line: 146, baseType: !138, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !969, file: !738, line: 147, baseType: !973, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !974, line: 509, baseType: !736)
!974 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !969, file: !738, line: 148, baseType: !138, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !738, line: 149, baseType: !977, size: 64, offset: 192)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !969, file: !738, line: 149, size: 64, elements: !978)
!978 = !{!979, !2332}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !977, file: !738, line: 150, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !738, line: 388, size: 7296, elements: !982)
!982 = !{!983, !2328}
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !738, line: 389, baseType: !984, size: 7296)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !981, file: !738, line: 389, size: 7296, elements: !985)
!985 = !{!986, !1104, !1105, !1106, !1110, !1111, !1112, !1113, !1114, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1155, !1163, !1166, !1206, !1207, !2312, !2313, !2316, !2317, !2318, !2321, !2322, !2323, !2326, !2327}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !984, file: !738, line: 390, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !738, line: 305, size: 1472, elements: !989)
!989 = !{!990, !991, !992, !993, !994, !995, !996, !997, !1004, !1005, !1010, !1011, !1014, !1098, !1099, !1100, !1101, !1102}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !988, file: !738, line: 308, baseType: !138, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !988, file: !738, line: 309, baseType: !138, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !988, file: !738, line: 313, baseType: !987, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !988, file: !738, line: 313, baseType: !987, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !988, file: !738, line: 315, baseType: !775, size: 192, align: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !988, file: !738, line: 323, baseType: !138, size: 64, offset: 448)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !988, file: !738, line: 327, baseType: !980, size: 64, offset: 512)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !988, file: !738, line: 333, baseType: !998, size: 64, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !974, line: 284, baseType: !999)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !974, line: 284, size: 64, elements: !1000)
!1000 = !{!1001}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !999, file: !974, line: 284, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1003, line: 19, baseType: !138)
!1003 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !988, file: !738, line: 334, baseType: !138, size: 64, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !988, file: !738, line: 343, baseType: !1006, size: 256, offset: 704)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !988, file: !738, line: 340, size: 256, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1006, file: !738, line: 341, baseType: !775, size: 192, align: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1006, file: !738, line: 342, baseType: !138, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !988, file: !738, line: 351, baseType: !193, size: 128, offset: 960)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !988, file: !738, line: 353, baseType: !1012, size: 64, offset: 1088)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !738, line: 353, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !988, file: !738, line: 356, baseType: !1015, size: 64, offset: 1152)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1018)
!1018 = !{!1019, !1023, !1024, !1028, !1032, !1072, !1076, !1080, !1084, !1085, !1086, !1090, !1094}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1017, file: !14, line: 558, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !987}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1017, file: !14, line: 559, baseType: !1020, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1017, file: !14, line: 560, baseType: !1025, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!131, !987, !138}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1017, file: !14, line: 561, baseType: !1029, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!131, !987}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1017, file: !14, line: 562, baseType: !1033, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !738, line: 682, baseType: !7)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1043, !1044, !1045, !1052, !1059, !1065, !1066, !1067, !1069, !1071}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1038, file: !14, line: 509, baseType: !987, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1038, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1038, file: !14, line: 511, baseType: !136, size: 32, offset: 96)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1038, file: !14, line: 512, baseType: !138, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1038, file: !14, line: 513, baseType: !138, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1038, file: !14, line: 514, baseType: !1046, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !974, line: 385, baseType: !1048)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !974, line: 385, size: 64, elements: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1048, file: !974, line: 385, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1003, line: 15, baseType: !138)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1038, file: !14, line: 516, baseType: !1053, size: 64, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !974, line: 359, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !974, line: 359, size: 64, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1055, file: !974, line: 359, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1003, line: 16, baseType: !138)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1038, file: !14, line: 519, baseType: !1060, size: 64, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1003, line: 21, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1003, line: 21, size: 64, elements: !1062)
!1062 = !{!1063}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1061, file: !1003, line: 21, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1003, line: 14, baseType: !138)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1038, file: !14, line: 521, baseType: !736, size: 64, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1038, file: !14, line: 522, baseType: !736, size: 64, offset: 512)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1038, file: !14, line: 528, baseType: !1068, size: 64, offset: 576)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1038, file: !14, line: 532, baseType: !1070, size: 64, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1038, file: !14, line: 536, baseType: !973, size: 64, offset: 704)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1017, file: !14, line: 563, baseType: !1073, size: 64, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!1036, !1037, !13}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1017, file: !14, line: 565, baseType: !1077, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !1037, !138, !138}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1017, file: !14, line: 567, baseType: !1081, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!138, !987}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1017, file: !14, line: 571, baseType: !1033, size: 64, offset: 512)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1017, file: !14, line: 574, baseType: !1033, size: 64, offset: 576)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1017, file: !14, line: 579, baseType: !1087, size: 64, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!131, !987, !138, !137, !131, !131}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1017, file: !14, line: 585, baseType: !1091, size: 64, offset: 704)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!191, !987}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1017, file: !14, line: 615, baseType: !1095, size: 64, offset: 768)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!736, !987, !138}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !988, file: !738, line: 359, baseType: !138, size: 64, offset: 1216)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !988, file: !738, line: 361, baseType: !323, size: 64, offset: 1280)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !988, file: !738, line: 362, baseType: !137, size: 64, offset: 1344)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !988, file: !738, line: 365, baseType: !693, size: 64, offset: 1408)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !988, file: !738, line: 373, baseType: !1103, offset: 1472)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !738, line: 296, elements: !220)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !984, file: !738, line: 391, baseType: !771, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !984, file: !738, line: 392, baseType: !126, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !984, file: !738, line: 394, baseType: !1107, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!138, !323, !138, !138, !138, !138}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !984, file: !738, line: 398, baseType: !138, size: 64, offset: 256)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !984, file: !738, line: 399, baseType: !138, size: 64, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !984, file: !738, line: 405, baseType: !138, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !984, file: !738, line: 406, baseType: !138, size: 64, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !984, file: !738, line: 407, baseType: !1115, size: 64, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !974, line: 286, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !974, line: 286, size: 64, elements: !1118)
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1117, file: !974, line: 286, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1003, line: 18, baseType: !138)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !984, file: !738, line: 416, baseType: !762, size: 32, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !984, file: !738, line: 428, baseType: !762, size: 32, offset: 608)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !984, file: !738, line: 437, baseType: !762, size: 32, offset: 640)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !984, file: !738, line: 447, baseType: !762, size: 32, offset: 672)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !984, file: !738, line: 450, baseType: !693, size: 64, offset: 704)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !984, file: !738, line: 452, baseType: !131, size: 32, offset: 768)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !984, file: !738, line: 454, baseType: !206, offset: 800)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !984, file: !738, line: 457, baseType: !782, size: 256, offset: 832)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !984, file: !738, line: 459, baseType: !193, size: 128, offset: 1088)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !984, file: !738, line: 466, baseType: !138, size: 64, offset: 1216)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !984, file: !738, line: 467, baseType: !138, size: 64, offset: 1280)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !984, file: !738, line: 469, baseType: !138, size: 64, offset: 1344)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !984, file: !738, line: 470, baseType: !138, size: 64, offset: 1408)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !984, file: !738, line: 471, baseType: !695, size: 64, offset: 1472)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !984, file: !738, line: 472, baseType: !138, size: 64, offset: 1536)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !984, file: !738, line: 473, baseType: !138, size: 64, offset: 1600)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !984, file: !738, line: 474, baseType: !138, size: 64, offset: 1664)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !984, file: !738, line: 475, baseType: !138, size: 64, offset: 1728)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !984, file: !738, line: 477, baseType: !206, offset: 1792)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !984, file: !738, line: 478, baseType: !138, size: 64, offset: 1792)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !984, file: !738, line: 478, baseType: !138, size: 64, offset: 1856)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !984, file: !738, line: 478, baseType: !138, size: 64, offset: 1920)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !984, file: !738, line: 478, baseType: !138, size: 64, offset: 1984)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !984, file: !738, line: 479, baseType: !138, size: 64, offset: 2048)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !984, file: !738, line: 479, baseType: !138, size: 64, offset: 2112)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !984, file: !738, line: 479, baseType: !138, size: 64, offset: 2176)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !984, file: !738, line: 480, baseType: !138, size: 64, offset: 2240)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !984, file: !738, line: 480, baseType: !138, size: 64, offset: 2304)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !984, file: !738, line: 480, baseType: !138, size: 64, offset: 2368)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !984, file: !738, line: 480, baseType: !138, size: 64, offset: 2432)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !984, file: !738, line: 482, baseType: !1152, size: 2816, offset: 2496)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 2816, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 44)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !984, file: !738, line: 488, baseType: !1156, size: 256, offset: 5312)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1157, line: 60, size: 256, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !{!1159}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1156, file: !1157, line: 61, baseType: !1160, size: 256)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 256, elements: !1161)
!1161 = !{!1162}
!1162 = !DISubrange(count: 4)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !984, file: !738, line: 490, baseType: !1164, size: 64, offset: 5568)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !738, line: 490, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !984, file: !738, line: 493, baseType: !1167, size: 896, offset: 5632)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1168, line: 53, baseType: !1169)
!1168 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1168, line: 13, size: 896, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1177, !1178, !1179, !1180, !1200, !1201, !1202}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1169, file: !1168, line: 18, baseType: !126, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1169, file: !1168, line: 28, baseType: !695, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1169, file: !1168, line: 31, baseType: !782, size: 256, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1169, file: !1168, line: 32, baseType: !1175, size: 64, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1168, line: 32, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1169, file: !1168, line: 37, baseType: !141, size: 16, offset: 448)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1169, file: !1168, line: 40, baseType: !689, size: 192, offset: 512)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1169, file: !1168, line: 41, baseType: !137, size: 64, offset: 704)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1169, file: !1168, line: 42, baseType: !1181, size: 64, offset: 768)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1183)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1184, line: 13, size: 896, elements: !1185)
!1184 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1183, file: !1184, line: 14, baseType: !137, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1183, file: !1184, line: 15, baseType: !138, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1183, file: !1184, line: 17, baseType: !138, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1183, file: !1184, line: 17, baseType: !138, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1183, file: !1184, line: 19, baseType: !282, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1183, file: !1184, line: 21, baseType: !282, size: 64, offset: 320)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1183, file: !1184, line: 22, baseType: !282, size: 64, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1183, file: !1184, line: 23, baseType: !282, size: 64, offset: 448)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1183, file: !1184, line: 24, baseType: !282, size: 64, offset: 512)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1183, file: !1184, line: 25, baseType: !282, size: 64, offset: 576)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1183, file: !1184, line: 26, baseType: !282, size: 64, offset: 640)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1183, file: !1184, line: 27, baseType: !282, size: 64, offset: 704)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1183, file: !1184, line: 28, baseType: !282, size: 64, offset: 768)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1183, file: !1184, line: 29, baseType: !282, size: 64, offset: 832)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1169, file: !1168, line: 44, baseType: !762, size: 32, offset: 832)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1169, file: !1168, line: 50, baseType: !147, size: 16, offset: 864)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1169, file: !1168, line: 51, baseType: !1203, size: 16, offset: 880)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !127, line: 18, baseType: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !129, line: 23, baseType: !1205)
!1205 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !984, file: !738, line: 495, baseType: !138, size: 64, offset: 6528)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !984, file: !738, line: 497, baseType: !1208, size: 64, offset: 6592)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !738, line: 381, size: 384, elements: !1210)
!1210 = !{!1211, !1212, !2311}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1209, file: !738, line: 382, baseType: !762, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1209, file: !738, line: 383, baseType: !1213, size: 128, offset: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !738, line: 376, size: 128, elements: !1214)
!1214 = !{!1215, !2309}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1213, file: !738, line: 377, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1218, line: 640, size: 48640, elements: !1219)
!1218 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1219 = !{!1220, !1226, !1228, !1229, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1246, !1264, !1275, !1358, !1359, !1360, !1371, !1372, !1374, !1375, !1376, !1377, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1456, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1494, !1496, !1497, !1498, !1510, !1511, !1512, !1513, !1514, !1515, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1539, !1544, !1728, !1729, !1730, !1731, !1735, !1738, !1741, !1744, !1747, !1750, !1851, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1897, !1898, !1899, !1900, !1901, !1906, !1907, !1908, !1911, !1912, !1915, !1918, !1921, !1924, !1967, !1970, !1971, !2050, !2051, !2054, !2055, !2058, !2059, !2060, !2064, !2065, !2066, !2079, !2080, !2081, !2091, !2096, !2099, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1217, file: !1218, line: 646, baseType: !1221, size: 128)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1222, line: 56, size: 128, elements: !1223)
!1222 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1221, file: !1222, line: 57, baseType: !138, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1221, file: !1222, line: 58, baseType: !134, size: 32, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1217, file: !1218, line: 649, baseType: !1227, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !282)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1217, file: !1218, line: 657, baseType: !137, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1217, file: !1218, line: 658, baseType: !1230, size: 32, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1231, line: 113, baseType: !1232)
!1231 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1231, line: 111, size: 32, elements: !1233)
!1233 = !{!1234}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1232, file: !1231, line: 112, baseType: !762, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1217, file: !1218, line: 660, baseType: !7, size: 32, offset: 288)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1217, file: !1218, line: 661, baseType: !7, size: 32, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1217, file: !1218, line: 684, baseType: !131, size: 32, offset: 352)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1217, file: !1218, line: 686, baseType: !131, size: 32, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1217, file: !1218, line: 687, baseType: !131, size: 32, offset: 416)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1217, file: !1218, line: 688, baseType: !131, size: 32, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1217, file: !1218, line: 689, baseType: !7, size: 32, offset: 480)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1217, file: !1218, line: 691, baseType: !1243, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1245)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1218, line: 691, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1217, file: !1218, line: 692, baseType: !1247, size: 832, offset: 576)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1218, line: 451, size: 832, elements: !1248)
!1248 = !{!1249, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1247, file: !1218, line: 453, baseType: !1250, size: 128)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1218, line: 325, size: 128, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1250, file: !1218, line: 326, baseType: !138, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1250, file: !1218, line: 327, baseType: !134, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1247, file: !1218, line: 454, baseType: !775, size: 192, align: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1247, file: !1218, line: 455, baseType: !193, size: 128, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1247, file: !1218, line: 456, baseType: !7, size: 32, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1247, file: !1218, line: 458, baseType: !126, size: 64, offset: 512)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1247, file: !1218, line: 459, baseType: !126, size: 64, offset: 576)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1247, file: !1218, line: 460, baseType: !126, size: 64, offset: 640)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1247, file: !1218, line: 461, baseType: !126, size: 64, offset: 704)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1247, file: !1218, line: 463, baseType: !126, size: 64, offset: 768)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1247, file: !1218, line: 465, baseType: !1263, offset: 832)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1218, line: 415, elements: !220)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1217, file: !1218, line: 693, baseType: !1265, size: 384, offset: 1408)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1218, line: 489, size: 384, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1265, file: !1218, line: 490, baseType: !193, size: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1265, file: !1218, line: 491, baseType: !138, size: 64, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1265, file: !1218, line: 492, baseType: !138, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1265, file: !1218, line: 493, baseType: !7, size: 32, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1265, file: !1218, line: 494, baseType: !141, size: 16, offset: 288)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1265, file: !1218, line: 495, baseType: !141, size: 16, offset: 304)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1265, file: !1218, line: 497, baseType: !1274, size: 64, offset: 320)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1217, file: !1218, line: 697, baseType: !1276, size: 1792, offset: 1792)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1218, line: 507, size: 1792, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1355, !1356}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1276, file: !1218, line: 508, baseType: !775, size: 192, align: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1276, file: !1218, line: 515, baseType: !126, size: 64, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1276, file: !1218, line: 516, baseType: !126, size: 64, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1276, file: !1218, line: 517, baseType: !126, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1276, file: !1218, line: 518, baseType: !126, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1276, file: !1218, line: 519, baseType: !126, size: 64, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1276, file: !1218, line: 526, baseType: !699, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1276, file: !1218, line: 527, baseType: !126, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1276, file: !1218, line: 528, baseType: !7, size: 32, offset: 640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1276, file: !1218, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1276, file: !1218, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1276, file: !1218, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1276, file: !1218, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1276, file: !1218, line: 563, baseType: !1292, size: 512, offset: 704)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1293)
!1293 = !{!1294, !1302, !1303, !1308, !1351, !1352, !1353, !1354}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1292, file: !20, line: 119, baseType: !1295, size: 256)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1296, line: 9, size: 256, elements: !1297)
!1296 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1295, file: !1296, line: 10, baseType: !775, size: 192, align: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1295, file: !1296, line: 11, baseType: !1300, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1301, line: 29, baseType: !699)
!1301 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1292, file: !20, line: 120, baseType: !1300, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1292, file: !20, line: 121, baseType: !1304, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!19, !1307}
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1292, file: !20, line: 122, baseType: !1309, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1311)
!1311 = !{!1312, !1332, !1333, !1336, !1341, !1342, !1346, !1350}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1310, file: !20, line: 160, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1314, file: !20, line: 215, baseType: !788)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1314, file: !20, line: 216, baseType: !7, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1314, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1314, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1314, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1314, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1314, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1314, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1314, file: !20, line: 233, baseType: !1300, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1314, file: !20, line: 234, baseType: !1307, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1314, file: !20, line: 235, baseType: !1300, size: 64, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1314, file: !20, line: 236, baseType: !1307, size: 64, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1314, file: !20, line: 237, baseType: !1329, size: 4096, offset: 512)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1310, size: 4096, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: 8)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1310, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1310, file: !20, line: 162, baseType: !1334, size: 32, offset: 96)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !125, line: 27, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !280, line: 96, baseType: !131)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1310, file: !20, line: 163, baseType: !1337, size: 32, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !359, line: 276, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !359, line: 276, size: 32, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1338, file: !359, line: 276, baseType: !363, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1310, file: !20, line: 164, baseType: !1307, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1310, file: !20, line: 165, baseType: !1343, size: 128, offset: 256)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1296, line: 14, size: 128, elements: !1344)
!1344 = !{!1345}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1343, file: !1296, line: 15, baseType: !767, size: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1310, file: !20, line: 166, baseType: !1347, size: 64, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!1300}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1310, file: !20, line: 167, baseType: !1300, size: 64, offset: 448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1292, file: !20, line: 123, baseType: !143, size: 8, offset: 448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1292, file: !20, line: 124, baseType: !143, size: 8, offset: 456)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1292, file: !20, line: 125, baseType: !143, size: 8, offset: 464)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1292, file: !20, line: 126, baseType: !143, size: 8, offset: 472)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1276, file: !1218, line: 572, baseType: !1292, size: 512, offset: 1216)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1276, file: !1218, line: 580, baseType: !1357, size: 64, offset: 1728)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1217, file: !1218, line: 721, baseType: !7, size: 32, offset: 3584)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1217, file: !1218, line: 722, baseType: !131, size: 32, offset: 3616)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1217, file: !1218, line: 723, baseType: !1361, size: 64, offset: 3648)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1364, line: 17, baseType: !1365)
!1364 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1364, line: 17, size: 64, elements: !1366)
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1365, file: !1364, line: 17, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !1369)
!1369 = !{!1370}
!1370 = !DISubrange(count: 1)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1217, file: !1218, line: 724, baseType: !1363, size: 64, offset: 3712)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1217, file: !1218, line: 749, baseType: !1373, offset: 3776)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1218, line: 290, elements: !220)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1217, file: !1218, line: 751, baseType: !193, size: 128, offset: 3776)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1217, file: !1218, line: 757, baseType: !980, size: 64, offset: 3904)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1217, file: !1218, line: 758, baseType: !980, size: 64, offset: 3968)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1217, file: !1218, line: 761, baseType: !1378, size: 320, offset: 4032)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1157, line: 34, size: 320, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1378, file: !1157, line: 35, baseType: !126, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1378, file: !1157, line: 36, baseType: !1382, size: 256, offset: 64)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, size: 256, elements: !1161)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1217, file: !1218, line: 766, baseType: !131, size: 32, offset: 4352)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1217, file: !1218, line: 767, baseType: !131, size: 32, offset: 4384)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1217, file: !1218, line: 768, baseType: !131, size: 32, offset: 4416)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1217, file: !1218, line: 770, baseType: !131, size: 32, offset: 4448)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1217, file: !1218, line: 772, baseType: !138, size: 64, offset: 4480)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1217, file: !1218, line: 775, baseType: !7, size: 32, offset: 4544)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1217, file: !1218, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1217, file: !1218, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1217, file: !1218, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1217, file: !1218, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1217, file: !1218, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1217, file: !1218, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1217, file: !1218, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1217, file: !1218, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1217, file: !1218, line: 831, baseType: !138, size: 64, offset: 4672)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1217, file: !1218, line: 833, baseType: !1399, size: 384, offset: 4736)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1400)
!1400 = !{!1401, !1406}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1399, file: !25, line: 26, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!282, !1405}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !25, line: 27, baseType: !1407, size: 320, offset: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1399, file: !25, line: 27, size: 320, elements: !1408)
!1408 = !{!1409, !1419, !1446}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1407, file: !25, line: 36, baseType: !1410, size: 320)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1407, file: !25, line: 29, size: 320, elements: !1411)
!1411 = !{!1412, !1414, !1415, !1416, !1417, !1418}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1410, file: !25, line: 30, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1410, file: !25, line: 31, baseType: !134, size: 32, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1410, file: !25, line: 32, baseType: !134, size: 32, offset: 96)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1410, file: !25, line: 33, baseType: !134, size: 32, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1410, file: !25, line: 34, baseType: !126, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1410, file: !25, line: 35, baseType: !1413, size: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1407, file: !25, line: 46, baseType: !1420, size: 192)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1407, file: !25, line: 38, size: 192, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1445}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1420, file: !25, line: 39, baseType: !1334, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1420, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !25, line: 41, baseType: !1425, size: 64, offset: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !25, line: 41, size: 64, elements: !1426)
!1426 = !{!1427, !1435}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1425, file: !25, line: 42, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1430, line: 7, size: 128, elements: !1431)
!1430 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1431 = !{!1432, !1434}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1429, file: !1430, line: 8, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !280, line: 93, baseType: !496)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1429, file: !1430, line: 9, baseType: !496, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1425, file: !25, line: 43, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1438, line: 7, size: 64, elements: !1439)
!1438 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1439 = !{!1440, !1444}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1437, file: !1438, line: 8, baseType: !1441, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1438, line: 5, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !127, line: 20, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !129, line: 26, baseType: !131)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1437, file: !1438, line: 9, baseType: !1442, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1420, file: !25, line: 45, baseType: !126, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1407, file: !25, line: 54, baseType: !1447, size: 256)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1407, file: !25, line: 48, size: 256, elements: !1448)
!1448 = !{!1449, !1452, !1453, !1454, !1455}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1447, file: !25, line: 49, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1447, file: !25, line: 50, baseType: !131, size: 32, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1447, file: !25, line: 51, baseType: !131, size: 32, offset: 96)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1447, file: !25, line: 52, baseType: !138, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1447, file: !25, line: 53, baseType: !138, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1217, file: !1218, line: 835, baseType: !1457, size: 32, offset: 5120)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !125, line: 22, baseType: !1458)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !280, line: 28, baseType: !131)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1217, file: !1218, line: 836, baseType: !1457, size: 32, offset: 5152)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1217, file: !1218, line: 840, baseType: !138, size: 64, offset: 5184)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1217, file: !1218, line: 849, baseType: !1216, size: 64, offset: 5248)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1217, file: !1218, line: 852, baseType: !1216, size: 64, offset: 5312)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1217, file: !1218, line: 857, baseType: !193, size: 128, offset: 5376)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1217, file: !1218, line: 858, baseType: !193, size: 128, offset: 5504)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1217, file: !1218, line: 859, baseType: !1216, size: 64, offset: 5632)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1217, file: !1218, line: 867, baseType: !193, size: 128, offset: 5696)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1217, file: !1218, line: 868, baseType: !193, size: 128, offset: 5824)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1217, file: !1218, line: 871, baseType: !1469, size: 64, offset: 5952)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1471)
!1471 = !{!1472, !1473, !1474, !1475, !1477, !1478, !1485, !1486}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1470, file: !53, line: 61, baseType: !1230, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1470, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1470, file: !53, line: 63, baseType: !206, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1470, file: !53, line: 65, baseType: !1476, size: 256, offset: 64)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 256, elements: !1161)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1470, file: !53, line: 66, baseType: !601, size: 64, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1470, file: !53, line: 68, baseType: !1479, size: 128, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1480, line: 40, baseType: !1481)
!1480 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1480, line: 36, size: 128, elements: !1482)
!1482 = !{!1483, !1484}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1481, file: !1480, line: 37, baseType: !206)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1481, file: !1480, line: 38, baseType: !193, size: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1470, file: !53, line: 69, baseType: !336, size: 128, align: 64, offset: 512)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1470, file: !53, line: 70, baseType: !1487, size: 128, offset: 640)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1488, size: 128, elements: !1369)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1488, file: !53, line: 55, baseType: !131, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1488, file: !53, line: 56, baseType: !1492, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1217, file: !1218, line: 872, baseType: !1495, size: 512, offset: 6016)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 512, elements: !1161)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1217, file: !1218, line: 873, baseType: !193, size: 128, offset: 6528)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1217, file: !1218, line: 874, baseType: !193, size: 128, offset: 6656)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1217, file: !1218, line: 876, baseType: !1499, size: 64, offset: 6784)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1501, line: 26, size: 192, elements: !1502)
!1501 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1500, file: !1501, line: 27, baseType: !7, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1500, file: !1501, line: 28, baseType: !1505, size: 128, offset: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1506, line: 43, size: 128, elements: !1507)
!1506 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1505, file: !1506, line: 44, baseType: !788)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1505, file: !1506, line: 45, baseType: !193, size: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1217, file: !1218, line: 879, baseType: !671, size: 64, offset: 6848)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1217, file: !1218, line: 882, baseType: !671, size: 64, offset: 6912)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1217, file: !1218, line: 884, baseType: !126, size: 64, offset: 6976)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1217, file: !1218, line: 885, baseType: !126, size: 64, offset: 7040)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1217, file: !1218, line: 890, baseType: !126, size: 64, offset: 7104)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1217, file: !1218, line: 891, baseType: !1516, size: 128, offset: 7168)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1218, line: 242, size: 128, elements: !1517)
!1517 = !{!1518, !1519, !1520}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1516, file: !1218, line: 244, baseType: !126, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1516, file: !1218, line: 245, baseType: !126, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1516, file: !1218, line: 246, baseType: !788, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1217, file: !1218, line: 900, baseType: !138, size: 64, offset: 7296)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1217, file: !1218, line: 901, baseType: !138, size: 64, offset: 7360)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1217, file: !1218, line: 904, baseType: !126, size: 64, offset: 7424)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1217, file: !1218, line: 907, baseType: !126, size: 64, offset: 7488)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1217, file: !1218, line: 910, baseType: !138, size: 64, offset: 7552)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1217, file: !1218, line: 911, baseType: !138, size: 64, offset: 7616)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1217, file: !1218, line: 914, baseType: !1528, size: 640, offset: 7680)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1529, line: 123, size: 640, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !{!1531, !1537, !1538}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1528, file: !1529, line: 124, baseType: !1532, size: 576)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1533, size: 576, elements: !248)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1529, line: 108, size: 192, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1533, file: !1529, line: 109, baseType: !126, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1533, file: !1529, line: 110, baseType: !1343, size: 128, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1528, file: !1529, line: 125, baseType: !7, size: 32, offset: 576)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1528, file: !1529, line: 126, baseType: !7, size: 32, offset: 608)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1217, file: !1218, line: 917, baseType: !1540, size: 192, offset: 8320)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1529, line: 134, size: 192, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1540, file: !1529, line: 135, baseType: !336, size: 128, align: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1540, file: !1529, line: 136, baseType: !7, size: 32, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1217, file: !1218, line: 923, baseType: !1545, size: 64, offset: 8512)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1548, line: 111, size: 1280, elements: !1549)
!1548 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1549 = !{!1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1569, !1570, !1571, !1572, !1573, !1574, !1681, !1682, !1683, !1684, !1710, !1713, !1723}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1547, file: !1548, line: 112, baseType: !762, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1547, file: !1548, line: 120, baseType: !398, size: 32, offset: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1547, file: !1548, line: 121, baseType: !406, size: 32, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1547, file: !1548, line: 122, baseType: !398, size: 32, offset: 96)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1547, file: !1548, line: 123, baseType: !406, size: 32, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1547, file: !1548, line: 124, baseType: !398, size: 32, offset: 160)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1547, file: !1548, line: 125, baseType: !406, size: 32, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1547, file: !1548, line: 126, baseType: !398, size: 32, offset: 224)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1547, file: !1548, line: 127, baseType: !406, size: 32, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1547, file: !1548, line: 128, baseType: !7, size: 32, offset: 288)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1547, file: !1548, line: 129, baseType: !1561, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1562, line: 26, baseType: !1563)
!1562 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1562, line: 24, size: 64, elements: !1564)
!1564 = !{!1565}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1563, file: !1562, line: 25, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !1567)
!1567 = !{!1568}
!1568 = !DISubrange(count: 2)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1547, file: !1548, line: 130, baseType: !1561, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1547, file: !1548, line: 131, baseType: !1561, size: 64, offset: 448)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1547, file: !1548, line: 132, baseType: !1561, size: 64, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1547, file: !1548, line: 133, baseType: !1561, size: 64, offset: 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1547, file: !1548, line: 135, baseType: !145, size: 8, offset: 640)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1547, file: !1548, line: 137, baseType: !1575, size: 64, offset: 704)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1577, line: 189, size: 1664, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1578 = !{!1579, !1580, !1583, !1588, !1589, !1592, !1593, !1598, !1599, !1600, !1601, !1603, !1604, !1605, !1606, !1607, !1645, !1666}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1576, file: !1577, line: 190, baseType: !1230, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1576, file: !1577, line: 191, baseType: !1581, size: 32, offset: 32)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1577, line: 28, baseType: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !125, line: 98, baseType: !1442)
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !1577, line: 192, baseType: !1584, size: 192, offset: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !1577, line: 192, size: 192, elements: !1585)
!1585 = !{!1586, !1587}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1584, file: !1577, line: 193, baseType: !193, size: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1584, file: !1577, line: 194, baseType: !775, size: 192, align: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1576, file: !1577, line: 199, baseType: !782, size: 256, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1576, file: !1577, line: 200, baseType: !1590, size: 64, offset: 512)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1577, line: 200, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1576, file: !1577, line: 201, baseType: !137, size: 64, offset: 576)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !1577, line: 202, baseType: !1594, size: 64, offset: 640)
!1594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !1577, line: 202, size: 64, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1594, file: !1577, line: 203, baseType: !502, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1594, file: !1577, line: 204, baseType: !502, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1576, file: !1577, line: 206, baseType: !502, size: 64, offset: 704)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1576, file: !1577, line: 207, baseType: !398, size: 32, offset: 768)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1576, file: !1577, line: 208, baseType: !406, size: 32, offset: 800)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1576, file: !1577, line: 209, baseType: !1602, size: 32, offset: 832)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1577, line: 31, baseType: !522)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1576, file: !1577, line: 210, baseType: !141, size: 16, offset: 864)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1576, file: !1577, line: 211, baseType: !141, size: 16, offset: 880)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1576, file: !1577, line: 215, baseType: !1205, size: 16, offset: 896)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1576, file: !1577, line: 222, baseType: !138, size: 64, offset: 960)
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !1577, line: 239, baseType: !1608, size: 320, offset: 1024)
!1608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !1577, line: 239, size: 320, elements: !1609)
!1609 = !{!1610, !1637}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1608, file: !1577, line: 240, baseType: !1611, size: 320)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1577, line: 108, size: 320, elements: !1612)
!1612 = !{!1613, !1614, !1626, !1629, !1636}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1611, file: !1577, line: 110, baseType: !138, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !1577, line: 111, baseType: !1615, size: 64, offset: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1611, file: !1577, line: 111, size: 64, elements: !1616)
!1616 = !{!1617, !1625}
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1577, line: 112, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1615, file: !1577, line: 112, size: 64, elements: !1619)
!1619 = !{!1620, !1621}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1618, file: !1577, line: 114, baseType: !147, size: 16)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1618, file: !1577, line: 115, baseType: !1622, size: 48, offset: 16)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 48, elements: !1623)
!1623 = !{!1624}
!1624 = !DISubrange(count: 6)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1615, file: !1577, line: 121, baseType: !138, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1611, file: !1577, line: 123, baseType: !1627, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1577, line: 96, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1611, file: !1577, line: 124, baseType: !1630, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1577, line: 102, size: 192, elements: !1632)
!1632 = !{!1633, !1634, !1635}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1631, file: !1577, line: 103, baseType: !336, size: 128, align: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1631, file: !1577, line: 104, baseType: !1230, size: 32, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1631, file: !1577, line: 105, baseType: !453, size: 8, offset: 160)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1611, file: !1577, line: 125, baseType: !191, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !1577, line: 241, baseType: !1638, size: 320)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1608, file: !1577, line: 241, size: 320, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1643, !1644}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1638, file: !1577, line: 242, baseType: !138, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1638, file: !1577, line: 243, baseType: !138, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1638, file: !1577, line: 244, baseType: !1627, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1638, file: !1577, line: 245, baseType: !1630, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1638, file: !1577, line: 246, baseType: !247, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !1577, line: 254, baseType: !1646, size: 256, offset: 1344)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !1577, line: 254, size: 256, elements: !1647)
!1647 = !{!1648, !1654}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1646, file: !1577, line: 255, baseType: !1649, size: 256)
!1649 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1577, line: 128, size: 256, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1649, file: !1577, line: 129, baseType: !137, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1649, file: !1577, line: 130, baseType: !1653, size: 256)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !1161)
!1654 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !1577, line: 256, baseType: !1655, size: 256)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1646, file: !1577, line: 256, size: 256, elements: !1656)
!1656 = !{!1657, !1658}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1655, file: !1577, line: 258, baseType: !193, size: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1655, file: !1577, line: 259, baseType: !1659, size: 128, offset: 128)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1660, line: 22, size: 128, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !{!1662, !1665}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1659, file: !1660, line: 23, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1660, line: 23, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1659, file: !1660, line: 24, baseType: !138, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1576, file: !1577, line: 274, baseType: !1667, size: 64, offset: 1600)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1577, line: 170, size: 192, elements: !1669)
!1669 = !{!1670, !1679, !1680}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1668, file: !1577, line: 171, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1577, line: 165, baseType: !1672)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!131, !1575, !1675, !1677, !1575}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1628)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1668, file: !1577, line: 172, baseType: !1575, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1668, file: !1577, line: 173, baseType: !1627, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1547, file: !1548, line: 138, baseType: !1575, size: 64, offset: 768)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1547, file: !1548, line: 139, baseType: !1575, size: 64, offset: 832)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1547, file: !1548, line: 140, baseType: !1575, size: 64, offset: 896)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1547, file: !1548, line: 145, baseType: !1685, size: 64, offset: 960)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1687, line: 13, size: 896, elements: !1688)
!1687 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1688 = !{!1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1686, file: !1687, line: 14, baseType: !1230, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1686, file: !1687, line: 15, baseType: !762, size: 32, offset: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1686, file: !1687, line: 16, baseType: !762, size: 32, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1686, file: !1687, line: 21, baseType: !693, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1686, file: !1687, line: 27, baseType: !138, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1686, file: !1687, line: 28, baseType: !138, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1686, file: !1687, line: 29, baseType: !693, size: 64, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1686, file: !1687, line: 32, baseType: !605, size: 128, offset: 384)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1686, file: !1687, line: 33, baseType: !398, size: 32, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1686, file: !1687, line: 37, baseType: !693, size: 64, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1686, file: !1687, line: 44, baseType: !1700, size: 256, offset: 640)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1701, line: 15, size: 256, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1700, file: !1701, line: 16, baseType: !788)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1700, file: !1701, line: 18, baseType: !131, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1700, file: !1701, line: 19, baseType: !131, size: 32, offset: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1700, file: !1701, line: 20, baseType: !131, size: 32, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1700, file: !1701, line: 21, baseType: !131, size: 32, offset: 96)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1700, file: !1701, line: 22, baseType: !138, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1700, file: !1701, line: 23, baseType: !138, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1547, file: !1548, line: 146, baseType: !1711, size: 64, offset: 1024)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !399, line: 18, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1547, file: !1548, line: 147, baseType: !1714, size: 64, offset: 1088)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1548, line: 25, size: 64, elements: !1716)
!1716 = !{!1717, !1718, !1719}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1715, file: !1548, line: 26, baseType: !762, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1715, file: !1548, line: 27, baseType: !131, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1715, file: !1548, line: 28, baseType: !1720, offset: 64)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, elements: !1721)
!1721 = !{!1722}
!1722 = !DISubrange(count: 0)
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1548, line: 149, baseType: !1724, size: 128, offset: 1152)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1548, line: 149, size: 128, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1724, file: !1548, line: 150, baseType: !131, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1724, file: !1548, line: 151, baseType: !336, size: 128, align: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1217, file: !1218, line: 926, baseType: !1545, size: 64, offset: 8576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1217, file: !1218, line: 929, baseType: !1545, size: 64, offset: 8640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1217, file: !1218, line: 933, baseType: !1575, size: 64, offset: 8704)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1217, file: !1218, line: 943, baseType: !1732, size: 128, offset: 8768)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 128, elements: !1733)
!1733 = !{!1734}
!1734 = !DISubrange(count: 16)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1217, file: !1218, line: 945, baseType: !1736, size: 64, offset: 8896)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1218, line: 49, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1217, file: !1218, line: 956, baseType: !1739, size: 64, offset: 8960)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1218, line: 45, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1217, file: !1218, line: 959, baseType: !1742, size: 64, offset: 9024)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1218, line: 959, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1217, file: !1218, line: 962, baseType: !1745, size: 64, offset: 9088)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1218, line: 66, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1217, file: !1218, line: 966, baseType: !1748, size: 64, offset: 9152)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1218, line: 50, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1217, file: !1218, line: 969, baseType: !1751, size: 64, offset: 9216)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1753, line: 82, size: 7296, elements: !1754)
!1753 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1790, !1799, !1800, !1802, !1803, !1804, !1807, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1837, !1838, !1845, !1846, !1847, !1848, !1849, !1850}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1752, file: !1753, line: 83, baseType: !1230, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1752, file: !1753, line: 84, baseType: !762, size: 32, offset: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1752, file: !1753, line: 85, baseType: !131, size: 32, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1752, file: !1753, line: 86, baseType: !193, size: 128, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1752, file: !1753, line: 88, baseType: !1479, size: 128, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1752, file: !1753, line: 91, baseType: !1216, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1752, file: !1753, line: 94, baseType: !1762, size: 192, offset: 448)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1763, line: 30, size: 192, elements: !1764)
!1763 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1762, file: !1763, line: 31, baseType: !193, size: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1762, file: !1763, line: 32, baseType: !1767, size: 64, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1768, line: 25, baseType: !1769)
!1768 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1768, line: 23, size: 64, elements: !1770)
!1770 = !{!1771}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1769, file: !1768, line: 24, baseType: !1368, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1752, file: !1753, line: 97, baseType: !601, size: 64, offset: 640)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1752, file: !1753, line: 100, baseType: !131, size: 32, offset: 704)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1752, file: !1753, line: 106, baseType: !131, size: 32, offset: 736)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1752, file: !1753, line: 107, baseType: !1216, size: 64, offset: 768)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1752, file: !1753, line: 110, baseType: !131, size: 32, offset: 832)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1752, file: !1753, line: 111, baseType: !7, size: 32, offset: 864)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1752, file: !1753, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1752, file: !1753, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1752, file: !1753, line: 128, baseType: !131, size: 32, offset: 928)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1752, file: !1753, line: 129, baseType: !193, size: 128, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1752, file: !1753, line: 132, baseType: !1292, size: 512, offset: 1088)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1752, file: !1753, line: 133, baseType: !1300, size: 64, offset: 1600)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1752, file: !1753, line: 140, baseType: !1785, size: 256, offset: 1664)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1786, size: 256, elements: !1567)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1753, line: 38, size: 128, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1786, file: !1753, line: 39, baseType: !126, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1786, file: !1753, line: 40, baseType: !126, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1752, file: !1753, line: 146, baseType: !1791, size: 192, offset: 1920)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1753, line: 66, size: 192, elements: !1792)
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1791, file: !1753, line: 67, baseType: !1794, size: 192)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1753, line: 47, size: 192, elements: !1795)
!1795 = !{!1796, !1797, !1798}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1794, file: !1753, line: 48, baseType: !695, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1794, file: !1753, line: 49, baseType: !695, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1794, file: !1753, line: 50, baseType: !695, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1752, file: !1753, line: 150, baseType: !1528, size: 640, offset: 2112)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1752, file: !1753, line: 153, baseType: !1801, size: 256, offset: 2752)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1469, size: 256, elements: !1161)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1752, file: !1753, line: 159, baseType: !1469, size: 64, offset: 3008)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1752, file: !1753, line: 162, baseType: !131, size: 32, offset: 3072)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1752, file: !1753, line: 164, baseType: !1805, size: 64, offset: 3136)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1753, line: 164, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1752, file: !1753, line: 175, baseType: !1808, size: 32, offset: 3200)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !359, line: 805, baseType: !1809)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !359, line: 798, size: 32, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1809, file: !359, line: 803, baseType: !358, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1809, file: !359, line: 804, baseType: !206, offset: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1752, file: !1753, line: 176, baseType: !126, size: 64, offset: 3264)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1752, file: !1753, line: 176, baseType: !126, size: 64, offset: 3328)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1752, file: !1753, line: 176, baseType: !126, size: 64, offset: 3392)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1752, file: !1753, line: 176, baseType: !126, size: 64, offset: 3456)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1752, file: !1753, line: 177, baseType: !126, size: 64, offset: 3520)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1752, file: !1753, line: 178, baseType: !126, size: 64, offset: 3584)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1752, file: !1753, line: 179, baseType: !1516, size: 128, offset: 3648)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1752, file: !1753, line: 180, baseType: !138, size: 64, offset: 3776)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1752, file: !1753, line: 180, baseType: !138, size: 64, offset: 3840)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1752, file: !1753, line: 180, baseType: !138, size: 64, offset: 3904)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1752, file: !1753, line: 180, baseType: !138, size: 64, offset: 3968)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1752, file: !1753, line: 181, baseType: !138, size: 64, offset: 4032)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1752, file: !1753, line: 181, baseType: !138, size: 64, offset: 4096)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1752, file: !1753, line: 181, baseType: !138, size: 64, offset: 4160)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1752, file: !1753, line: 181, baseType: !138, size: 64, offset: 4224)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1752, file: !1753, line: 182, baseType: !138, size: 64, offset: 4288)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1752, file: !1753, line: 182, baseType: !138, size: 64, offset: 4352)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1752, file: !1753, line: 182, baseType: !138, size: 64, offset: 4416)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1752, file: !1753, line: 182, baseType: !138, size: 64, offset: 4480)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1752, file: !1753, line: 183, baseType: !138, size: 64, offset: 4544)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1752, file: !1753, line: 183, baseType: !138, size: 64, offset: 4608)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1752, file: !1753, line: 184, baseType: !1835, offset: 4672)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1836, line: 12, elements: !220)
!1836 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1752, file: !1753, line: 192, baseType: !130, size: 64, offset: 4672)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1752, file: !1753, line: 203, baseType: !1839, size: 2048, offset: 4736)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1840, size: 2048, elements: !1733)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1841, line: 43, size: 128, elements: !1842)
!1841 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1840, file: !1841, line: 44, baseType: !295, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1840, file: !1841, line: 45, baseType: !295, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1752, file: !1753, line: 220, baseType: !453, size: 8, offset: 6784)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1752, file: !1753, line: 221, baseType: !1205, size: 16, offset: 6800)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1752, file: !1753, line: 222, baseType: !1205, size: 16, offset: 6816)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1752, file: !1753, line: 224, baseType: !980, size: 64, offset: 6848)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1752, file: !1753, line: 227, baseType: !689, size: 192, offset: 6912)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1752, file: !1753, line: 233, baseType: !689, size: 192, offset: 7104)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1217, file: !1218, line: 970, baseType: !1852, size: 64, offset: 9280)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1753, line: 20, size: 16576, elements: !1854)
!1854 = !{!1855, !1856, !1857, !1858}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1853, file: !1753, line: 21, baseType: !206)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1853, file: !1753, line: 22, baseType: !1230, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1853, file: !1753, line: 23, baseType: !1479, size: 128, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1853, file: !1753, line: 24, baseType: !1859, size: 16384, offset: 192)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1860, size: 16384, elements: !252)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1763, line: 49, size: 256, elements: !1861)
!1861 = !{!1862}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1860, file: !1763, line: 50, baseType: !1863, size: 256)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1763, line: 35, size: 256, elements: !1864)
!1864 = !{!1865, !1872, !1873, !1879}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1863, file: !1763, line: 37, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1867, line: 19, baseType: !1868)
!1867 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1867, line: 18, baseType: !1870)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{null, !131}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1863, file: !1763, line: 38, baseType: !138, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1863, file: !1763, line: 44, baseType: !1874, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1867, line: 22, baseType: !1875)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1867, line: 21, baseType: !1877)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1863, file: !1763, line: 46, baseType: !1767, size: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1217, file: !1218, line: 971, baseType: !1767, size: 64, offset: 9344)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1217, file: !1218, line: 972, baseType: !1767, size: 64, offset: 9408)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1217, file: !1218, line: 974, baseType: !1767, size: 64, offset: 9472)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1217, file: !1218, line: 975, baseType: !1762, size: 192, offset: 9536)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1217, file: !1218, line: 976, baseType: !138, size: 64, offset: 9728)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1217, file: !1218, line: 977, baseType: !293, size: 64, offset: 9792)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1217, file: !1218, line: 978, baseType: !7, size: 32, offset: 9856)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1217, file: !1218, line: 980, baseType: !339, size: 64, offset: 9920)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1217, file: !1218, line: 989, baseType: !1889, size: 128, offset: 9984)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1890, line: 35, size: 128, elements: !1891)
!1890 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1891 = !{!1892, !1893, !1894}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1889, file: !1890, line: 36, baseType: !131, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1889, file: !1890, line: 37, baseType: !762, size: 32, offset: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1889, file: !1890, line: 38, baseType: !1895, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1890, line: 23, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1217, file: !1218, line: 992, baseType: !126, size: 64, offset: 10112)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1217, file: !1218, line: 993, baseType: !126, size: 64, offset: 10176)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1217, file: !1218, line: 996, baseType: !206, offset: 10240)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1217, file: !1218, line: 999, baseType: !788, offset: 10240)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1217, file: !1218, line: 1001, baseType: !1902, size: 64, offset: 10240)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1218, line: 636, size: 64, elements: !1903)
!1903 = !{!1904}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1902, file: !1218, line: 637, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1217, file: !1218, line: 1005, baseType: !767, size: 128, offset: 10304)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1217, file: !1218, line: 1007, baseType: !1216, size: 64, offset: 10432)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1217, file: !1218, line: 1009, baseType: !1909, size: 64, offset: 10496)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1218, line: 1009, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1217, file: !1218, line: 1043, baseType: !137, size: 64, offset: 10560)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1217, file: !1218, line: 1046, baseType: !1913, size: 64, offset: 10624)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1218, line: 41, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1217, file: !1218, line: 1050, baseType: !1916, size: 64, offset: 10688)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1218, line: 42, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1217, file: !1218, line: 1054, baseType: !1919, size: 64, offset: 10752)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1218, line: 55, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1217, file: !1218, line: 1056, baseType: !1922, size: 64, offset: 10816)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1218, line: 40, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1217, file: !1218, line: 1058, baseType: !1925, size: 64, offset: 10880)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1927, line: 99, size: 704, elements: !1928)
!1927 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1928 = !{!1929, !1930, !1931, !1932, !1933, !1934, !1935, !1954, !1955}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1926, file: !1927, line: 100, baseType: !693, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1926, file: !1927, line: 101, baseType: !762, size: 32, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1926, file: !1927, line: 102, baseType: !762, size: 32, offset: 96)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1926, file: !1927, line: 105, baseType: !206, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1926, file: !1927, line: 107, baseType: !141, size: 16, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1926, file: !1927, line: 109, baseType: !754, size: 128, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1926, file: !1927, line: 110, baseType: !1936, size: 64, offset: 320)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1927, line: 73, size: 448, elements: !1938)
!1938 = !{!1939, !1942, !1943, !1948, !1953}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1937, file: !1927, line: 74, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1927, line: 74, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1937, file: !1927, line: 75, baseType: !1925, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1937, file: !1927, line: 83, baseType: !1944, size: 128, offset: 128)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1937, file: !1927, line: 83, size: 128, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1944, file: !1927, line: 84, baseType: !193, size: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1944, file: !1927, line: 85, baseType: !940, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, scope: !1937, file: !1927, line: 87, baseType: !1949, size: 128, offset: 256)
!1949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1937, file: !1927, line: 87, size: 128, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1949, file: !1927, line: 88, baseType: !605, size: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1949, file: !1927, line: 89, baseType: !336, size: 128, align: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1937, file: !1927, line: 92, baseType: !7, size: 32, offset: 384)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1926, file: !1927, line: 111, baseType: !601, size: 64, offset: 384)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1926, file: !1927, line: 113, baseType: !1956, size: 256, offset: 448)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1957, line: 102, size: 256, elements: !1958)
!1957 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1958 = !{!1959, !1960, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1956, file: !1957, line: 103, baseType: !693, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1956, file: !1957, line: 104, baseType: !193, size: 128, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1956, file: !1957, line: 105, baseType: !1962, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1957, line: 21, baseType: !1963)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !1966}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1217, file: !1218, line: 1061, baseType: !1968, size: 64, offset: 10944)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1218, line: 43, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1217, file: !1218, line: 1064, baseType: !138, size: 64, offset: 11008)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1217, file: !1218, line: 1065, baseType: !1972, size: 64, offset: 11072)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1763, line: 14, baseType: !1974)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1763, line: 12, size: 384, elements: !1975)
!1975 = !{!1976}
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1974, file: !1763, line: 13, baseType: !1977, size: 384)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1974, file: !1763, line: 13, size: 384, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1982}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1977, file: !1763, line: 13, baseType: !131, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1977, file: !1763, line: 13, baseType: !131, size: 32, offset: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1977, file: !1763, line: 13, baseType: !131, size: 32, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1977, file: !1763, line: 13, baseType: !1983, size: 256, offset: 128)
!1983 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1984, line: 32, size: 256, elements: !1985)
!1984 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1985 = !{!1986, !1991, !2004, !2010, !2019, !2039, !2044}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1983, file: !1984, line: 37, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1984, line: 34, size: 64, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1987, file: !1984, line: 35, baseType: !1458, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1987, file: !1984, line: 36, baseType: !404, size: 32, offset: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1983, file: !1984, line: 45, baseType: !1992, size: 192)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1984, line: 40, size: 192, elements: !1993)
!1993 = !{!1994, !1996, !1997, !2003}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1992, file: !1984, line: 41, baseType: !1995, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !280, line: 95, baseType: !131)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1992, file: !1984, line: 42, baseType: !131, size: 32, offset: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1992, file: !1984, line: 43, baseType: !1998, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1984, line: 11, baseType: !1999)
!1999 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1984, line: 8, size: 64, elements: !2000)
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1999, file: !1984, line: 9, baseType: !131, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1999, file: !1984, line: 10, baseType: !137, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1992, file: !1984, line: 44, baseType: !131, size: 32, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1983, file: !1984, line: 52, baseType: !2005, size: 128)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1984, line: 48, size: 128, elements: !2006)
!2006 = !{!2007, !2008, !2009}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2005, file: !1984, line: 49, baseType: !1458, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2005, file: !1984, line: 50, baseType: !404, size: 32, offset: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2005, file: !1984, line: 51, baseType: !1998, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1983, file: !1984, line: 61, baseType: !2011, size: 256)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1984, line: 55, size: 256, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016, !2018}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2011, file: !1984, line: 56, baseType: !1458, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2011, file: !1984, line: 57, baseType: !404, size: 32, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2011, file: !1984, line: 58, baseType: !131, size: 32, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2011, file: !1984, line: 59, baseType: !2017, size: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !280, line: 94, baseType: !281)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2011, file: !1984, line: 60, baseType: !2017, size: 64, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1983, file: !1984, line: 95, baseType: !2020, size: 256)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1984, line: 64, size: 256, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2020, file: !1984, line: 65, baseType: !137, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, scope: !2020, file: !1984, line: 77, baseType: !2024, size: 192, offset: 64)
!2024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2020, file: !1984, line: 77, size: 192, elements: !2025)
!2025 = !{!2026, !2027, !2034}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2024, file: !1984, line: 82, baseType: !1205, size: 16)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2024, file: !1984, line: 88, baseType: !2028, size: 192)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !1984, line: 84, size: 192, elements: !2029)
!2029 = !{!2030, !2032, !2033}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2028, file: !1984, line: 85, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 64, elements: !1330)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2028, file: !1984, line: 86, baseType: !137, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2028, file: !1984, line: 87, baseType: !137, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2024, file: !1984, line: 93, baseType: !2035, size: 96)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !1984, line: 90, size: 96, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2035, file: !1984, line: 91, baseType: !2031, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2035, file: !1984, line: 92, baseType: !135, size: 32, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1983, file: !1984, line: 101, baseType: !2040, size: 128)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1984, line: 98, size: 128, elements: !2041)
!2041 = !{!2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2040, file: !1984, line: 99, baseType: !282, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2040, file: !1984, line: 100, baseType: !131, size: 32, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1983, file: !1984, line: 108, baseType: !2045, size: 128)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1984, line: 104, size: 128, elements: !2046)
!2046 = !{!2047, !2048, !2049}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2045, file: !1984, line: 105, baseType: !137, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2045, file: !1984, line: 106, baseType: !131, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2045, file: !1984, line: 107, baseType: !7, size: 32, offset: 96)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1217, file: !1218, line: 1067, baseType: !1835, offset: 11136)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1217, file: !1218, line: 1099, baseType: !2052, size: 64, offset: 11136)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1218, line: 56, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1217, file: !1218, line: 1103, baseType: !193, size: 128, offset: 11200)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1217, file: !1218, line: 1104, baseType: !2056, size: 64, offset: 11328)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1218, line: 46, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1217, file: !1218, line: 1105, baseType: !689, size: 192, offset: 11392)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1217, file: !1218, line: 1106, baseType: !7, size: 32, offset: 11584)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1217, file: !1218, line: 1109, baseType: !2061, size: 128, offset: 11648)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2062, size: 128, elements: !1567)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1218, line: 51, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1217, file: !1218, line: 1110, baseType: !689, size: 192, offset: 11776)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1217, file: !1218, line: 1111, baseType: !193, size: 128, offset: 11968)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1217, file: !1218, line: 1173, baseType: !2067, size: 64, offset: 12096)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2069, line: 62, size: 256, align: 256, elements: !2070)
!2069 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2070 = !{!2071, !2072, !2073, !2078}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2068, file: !2069, line: 75, baseType: !135, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2068, file: !2069, line: 90, baseType: !135, size: 32, offset: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2068, file: !2069, line: 124, baseType: !2074, size: 64, offset: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2068, file: !2069, line: 109, size: 64, elements: !2075)
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2074, file: !2069, line: 110, baseType: !128, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2074, file: !2069, line: 112, baseType: !128, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2068, file: !2069, line: 144, baseType: !135, size: 32, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1217, file: !1218, line: 1174, baseType: !134, size: 32, offset: 12160)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1217, file: !1218, line: 1179, baseType: !138, size: 64, offset: 12224)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1217, file: !1218, line: 1182, baseType: !2082, size: 128, offset: 12288)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1157, line: 76, size: 128, elements: !2083)
!2083 = !{!2084, !2089, !2090}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2082, file: !1157, line: 85, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2086, line: 7, size: 64, elements: !2087)
!2086 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2087 = !{!2088}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2085, file: !2086, line: 12, baseType: !1365, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2082, file: !1157, line: 88, baseType: !453, size: 8, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2082, file: !1157, line: 95, baseType: !453, size: 8, offset: 72)
!2091 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !1218, line: 1184, baseType: !2092, size: 128, offset: 12416)
!2092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1217, file: !1218, line: 1184, size: 128, elements: !2093)
!2093 = !{!2094, !2095}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2092, file: !1218, line: 1185, baseType: !1230, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2092, file: !1218, line: 1186, baseType: !336, size: 128, align: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1217, file: !1218, line: 1190, baseType: !2097, size: 64, offset: 12544)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1218, line: 53, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1217, file: !1218, line: 1192, baseType: !2100, size: 128, offset: 12608)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1157, line: 64, size: 128, elements: !2101)
!2101 = !{!2102, !2103, !2104}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2100, file: !1157, line: 65, baseType: !736, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2100, file: !1157, line: 67, baseType: !135, size: 32, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2100, file: !1157, line: 68, baseType: !135, size: 32, offset: 96)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1217, file: !1218, line: 1206, baseType: !131, size: 32, offset: 12736)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1217, file: !1218, line: 1207, baseType: !131, size: 32, offset: 12768)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1217, file: !1218, line: 1209, baseType: !138, size: 64, offset: 12800)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1217, file: !1218, line: 1219, baseType: !126, size: 64, offset: 12864)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1217, file: !1218, line: 1220, baseType: !126, size: 64, offset: 12928)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1217, file: !1218, line: 1317, baseType: !131, size: 32, offset: 12992)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1217, file: !1218, line: 1319, baseType: !1216, size: 64, offset: 13056)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1217, file: !1218, line: 1322, baseType: !2113, size: 64, offset: 13120)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2115, line: 56, size: 512, elements: !2116)
!2115 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2116 = !{!2117, !2118, !2119, !2120, !2121, !2122, !2123, !2125}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2114, file: !2115, line: 57, baseType: !2113, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2114, file: !2115, line: 58, baseType: !137, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2114, file: !2115, line: 59, baseType: !138, size: 64, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2114, file: !2115, line: 60, baseType: !138, size: 64, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2114, file: !2115, line: 61, baseType: !828, size: 64, offset: 256)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2114, file: !2115, line: 62, baseType: !7, size: 32, offset: 320)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2114, file: !2115, line: 63, baseType: !2124, size: 64, offset: 384)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !125, line: 153, baseType: !126)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2114, file: !2115, line: 64, baseType: !2126, size: 64, offset: 448)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1217, file: !1218, line: 1326, baseType: !1230, size: 32, offset: 13184)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1217, file: !1218, line: 1342, baseType: !137, size: 64, offset: 13248)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1217, file: !1218, line: 1343, baseType: !128, size: 64, offset: 13312)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1217, file: !1218, line: 1344, baseType: !126, size: 64, offset: 13376)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1217, file: !1218, line: 1345, baseType: !128, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1217, file: !1218, line: 1346, baseType: !128, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1217, file: !1218, line: 1347, baseType: !128, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1217, file: !1218, line: 1348, baseType: !336, size: 128, align: 64, offset: 13504)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1217, file: !1218, line: 1358, baseType: !2137, size: 34816, offset: 13824)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2138, line: 485, size: 34816, elements: !2139)
!2138 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2139 = !{!2140, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2169, !2170, !2171, !2172, !2173, !2174, !2177, !2178, !2179}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2137, file: !2138, line: 487, baseType: !2141, size: 192)
!2141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2142, size: 192, elements: !248)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2143, line: 16, size: 64, elements: !2144)
!2143 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2142, file: !2143, line: 17, baseType: !147, size: 16)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2142, file: !2143, line: 18, baseType: !147, size: 16, offset: 16)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2142, file: !2143, line: 19, baseType: !147, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2142, file: !2143, line: 19, baseType: !147, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2142, file: !2143, line: 19, baseType: !147, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2142, file: !2143, line: 19, baseType: !147, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2142, file: !2143, line: 19, baseType: !147, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2142, file: !2143, line: 20, baseType: !147, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2142, file: !2143, line: 20, baseType: !147, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2142, file: !2143, line: 20, baseType: !147, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2142, file: !2143, line: 20, baseType: !147, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2142, file: !2143, line: 20, baseType: !147, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2142, file: !2143, line: 20, baseType: !147, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2137, file: !2138, line: 491, baseType: !138, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2137, file: !2138, line: 495, baseType: !141, size: 16, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2137, file: !2138, line: 496, baseType: !141, size: 16, offset: 272)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2137, file: !2138, line: 497, baseType: !141, size: 16, offset: 288)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2137, file: !2138, line: 498, baseType: !141, size: 16, offset: 304)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2137, file: !2138, line: 502, baseType: !138, size: 64, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2137, file: !2138, line: 503, baseType: !138, size: 64, offset: 384)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2137, file: !2138, line: 514, baseType: !2166, size: 256, offset: 448)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2167, size: 256, elements: !1161)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2138, line: 483, flags: DIFlagFwdDecl)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2137, file: !2138, line: 516, baseType: !138, size: 64, offset: 704)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2137, file: !2138, line: 518, baseType: !138, size: 64, offset: 768)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2137, file: !2138, line: 520, baseType: !138, size: 64, offset: 832)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2137, file: !2138, line: 521, baseType: !138, size: 64, offset: 896)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2137, file: !2138, line: 522, baseType: !138, size: 64, offset: 960)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2137, file: !2138, line: 528, baseType: !2175, size: 64, offset: 1024)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2138, line: 10, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2137, file: !2138, line: 535, baseType: !138, size: 64, offset: 1088)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2137, file: !2138, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2137, file: !2138, line: 540, baseType: !2180, size: 33280, offset: 1536)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2181, line: 317, size: 33280, elements: !2182)
!2181 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2182 = !{!2183, !2184, !2185}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2180, file: !2181, line: 330, baseType: !7, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2180, file: !2181, line: 337, baseType: !138, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2180, file: !2181, line: 348, baseType: !2186, size: 32768, offset: 512)
!2186 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2181, line: 304, size: 32768, elements: !2187)
!2187 = !{!2188, !2203, !2242, !2292, !2305}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2186, file: !2181, line: 305, baseType: !2189, size: 896)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2181, line: 12, size: 896, elements: !2190)
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2202}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2189, file: !2181, line: 13, baseType: !134, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2189, file: !2181, line: 14, baseType: !134, size: 32, offset: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2189, file: !2181, line: 15, baseType: !134, size: 32, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2189, file: !2181, line: 16, baseType: !134, size: 32, offset: 96)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2189, file: !2181, line: 17, baseType: !134, size: 32, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2189, file: !2181, line: 18, baseType: !134, size: 32, offset: 160)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2189, file: !2181, line: 19, baseType: !134, size: 32, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2189, file: !2181, line: 22, baseType: !2199, size: 640, offset: 224)
!2199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 640, elements: !2200)
!2200 = !{!2201}
!2201 = !DISubrange(count: 20)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2189, file: !2181, line: 25, baseType: !134, size: 32, offset: 864)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2186, file: !2181, line: 306, baseType: !2204, size: 4096, align: 128)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2181, line: 34, size: 4096, align: 128, elements: !2205)
!2205 = !{!2206, !2207, !2208, !2209, !2210, !2225, !2226, !2227, !2231, !2233, !2237}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2204, file: !2181, line: 35, baseType: !147, size: 16)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2204, file: !2181, line: 36, baseType: !147, size: 16, offset: 16)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2204, file: !2181, line: 37, baseType: !147, size: 16, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2204, file: !2181, line: 38, baseType: !147, size: 16, offset: 48)
!2210 = !DIDerivedType(tag: DW_TAG_member, scope: !2204, file: !2181, line: 39, baseType: !2211, size: 128, offset: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2204, file: !2181, line: 39, size: 128, elements: !2212)
!2212 = !{!2213, !2218}
!2213 = !DIDerivedType(tag: DW_TAG_member, scope: !2211, file: !2181, line: 40, baseType: !2214, size: 128)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2211, file: !2181, line: 40, size: 128, elements: !2215)
!2215 = !{!2216, !2217}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2214, file: !2181, line: 41, baseType: !126, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2214, file: !2181, line: 42, baseType: !126, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2211, file: !2181, line: 44, baseType: !2219, size: 128)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2211, file: !2181, line: 44, size: 128, elements: !2220)
!2220 = !{!2221, !2222, !2223, !2224}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2219, file: !2181, line: 45, baseType: !134, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2219, file: !2181, line: 46, baseType: !134, size: 32, offset: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2219, file: !2181, line: 47, baseType: !134, size: 32, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2219, file: !2181, line: 48, baseType: !134, size: 32, offset: 96)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2204, file: !2181, line: 51, baseType: !134, size: 32, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2204, file: !2181, line: 52, baseType: !134, size: 32, offset: 224)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2204, file: !2181, line: 55, baseType: !2228, size: 1024, offset: 256)
!2228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 1024, elements: !2229)
!2229 = !{!2230}
!2230 = !DISubrange(count: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2204, file: !2181, line: 58, baseType: !2232, size: 2048, offset: 1280)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 2048, elements: !252)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2204, file: !2181, line: 60, baseType: !2234, size: 384, offset: 3328)
!2234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 384, elements: !2235)
!2235 = !{!2236}
!2236 = !DISubrange(count: 12)
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !2204, file: !2181, line: 62, baseType: !2238, size: 384, offset: 3712)
!2238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2204, file: !2181, line: 62, size: 384, elements: !2239)
!2239 = !{!2240, !2241}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2238, file: !2181, line: 63, baseType: !2234, size: 384)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2238, file: !2181, line: 64, baseType: !2234, size: 384)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2186, file: !2181, line: 307, baseType: !2243, size: 1088)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2181, line: 79, size: 1088, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2291}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2243, file: !2181, line: 80, baseType: !134, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2243, file: !2181, line: 81, baseType: !134, size: 32, offset: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2243, file: !2181, line: 82, baseType: !134, size: 32, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2243, file: !2181, line: 83, baseType: !134, size: 32, offset: 96)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2243, file: !2181, line: 84, baseType: !134, size: 32, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2243, file: !2181, line: 85, baseType: !134, size: 32, offset: 160)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2243, file: !2181, line: 86, baseType: !134, size: 32, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2243, file: !2181, line: 88, baseType: !2199, size: 640, offset: 224)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2243, file: !2181, line: 89, baseType: !143, size: 8, offset: 864)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2243, file: !2181, line: 90, baseType: !143, size: 8, offset: 872)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2243, file: !2181, line: 91, baseType: !143, size: 8, offset: 880)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2243, file: !2181, line: 92, baseType: !143, size: 8, offset: 888)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2243, file: !2181, line: 93, baseType: !143, size: 8, offset: 896)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2243, file: !2181, line: 94, baseType: !143, size: 8, offset: 904)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2243, file: !2181, line: 95, baseType: !2260, size: 64, offset: 960)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2262, line: 11, size: 128, elements: !2263)
!2262 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2263 = !{!2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2261, file: !2262, line: 12, baseType: !282, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2261, file: !2262, line: 13, baseType: !2266, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2268, line: 56, size: 1344, elements: !2269)
!2268 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2267, file: !2268, line: 61, baseType: !138, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2267, file: !2268, line: 62, baseType: !138, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2267, file: !2268, line: 63, baseType: !138, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2267, file: !2268, line: 64, baseType: !138, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2267, file: !2268, line: 65, baseType: !138, size: 64, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2267, file: !2268, line: 66, baseType: !138, size: 64, offset: 320)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2267, file: !2268, line: 68, baseType: !138, size: 64, offset: 384)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2267, file: !2268, line: 69, baseType: !138, size: 64, offset: 448)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2267, file: !2268, line: 70, baseType: !138, size: 64, offset: 512)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2267, file: !2268, line: 71, baseType: !138, size: 64, offset: 576)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2267, file: !2268, line: 72, baseType: !138, size: 64, offset: 640)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2267, file: !2268, line: 73, baseType: !138, size: 64, offset: 704)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2267, file: !2268, line: 74, baseType: !138, size: 64, offset: 768)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2267, file: !2268, line: 75, baseType: !138, size: 64, offset: 832)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2267, file: !2268, line: 76, baseType: !138, size: 64, offset: 896)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2267, file: !2268, line: 81, baseType: !138, size: 64, offset: 960)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2267, file: !2268, line: 83, baseType: !138, size: 64, offset: 1024)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2267, file: !2268, line: 84, baseType: !138, size: 64, offset: 1088)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2267, file: !2268, line: 85, baseType: !138, size: 64, offset: 1152)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2267, file: !2268, line: 86, baseType: !138, size: 64, offset: 1216)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2267, file: !2268, line: 87, baseType: !138, size: 64, offset: 1280)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2243, file: !2181, line: 96, baseType: !134, size: 32, offset: 1024)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2186, file: !2181, line: 308, baseType: !2293, size: 4608, align: 512)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2181, line: 289, size: 4608, align: 512, elements: !2294)
!2294 = !{!2295, !2296, !2303}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2293, file: !2181, line: 290, baseType: !2204, size: 4096, align: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2293, file: !2181, line: 291, baseType: !2297, size: 512, offset: 4096)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2181, line: 268, size: 512, elements: !2298)
!2298 = !{!2299, !2300, !2301}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2297, file: !2181, line: 269, baseType: !126, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2297, file: !2181, line: 270, baseType: !126, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2297, file: !2181, line: 271, baseType: !2302, size: 384, offset: 128)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 384, elements: !1623)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2293, file: !2181, line: 292, baseType: !2304, offset: 4608)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, elements: !1721)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2186, file: !2181, line: 309, baseType: !2306, size: 32768)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 32768, elements: !2307)
!2307 = !{!2308}
!2308 = !DISubrange(count: 4096)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1213, file: !738, line: 378, baseType: !2310, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1209, file: !738, line: 384, baseType: !1500, size: 192, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !984, file: !738, line: 500, baseType: !206, offset: 6656)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !984, file: !738, line: 501, baseType: !2314, size: 64, offset: 6656)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !738, line: 387, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !984, file: !738, line: 516, baseType: !1711, size: 64, offset: 6720)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !984, file: !738, line: 519, baseType: !323, size: 64, offset: 6784)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !984, file: !738, line: 521, baseType: !2319, size: 64, offset: 6848)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !738, line: 521, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !984, file: !738, line: 545, baseType: !762, size: 32, offset: 6912)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !984, file: !738, line: 548, baseType: !453, size: 8, offset: 6944)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !984, file: !738, line: 550, baseType: !2324, offset: 6952)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2325, line: 142, elements: !220)
!2325 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !984, file: !738, line: 554, baseType: !1956, size: 256, offset: 6976)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !984, file: !738, line: 557, baseType: !134, size: 32, offset: 7232)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !981, file: !738, line: 565, baseType: !2329, offset: 7296)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, elements: !2330)
!2330 = !{!2331}
!2331 = !DISubrange(count: -1)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !977, file: !738, line: 151, baseType: !762, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !969, file: !738, line: 156, baseType: !206, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !738, line: 159, baseType: !2335, size: 128)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !738, line: 159, size: 128, elements: !2336)
!2336 = !{!2337, !2401}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2335, file: !738, line: 161, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2340)
!2340 = !{!2341, !2351, !2372, !2373, !2374, !2375, !2376, !2388, !2389, !2390}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2339, file: !31, line: 111, baseType: !2342, size: 384)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2343)
!2343 = !{!2344, !2346, !2347, !2348, !2349, !2350}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2342, file: !31, line: 20, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2342, file: !31, line: 21, baseType: !2345, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2342, file: !31, line: 22, baseType: !2345, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2342, file: !31, line: 23, baseType: !138, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2342, file: !31, line: 24, baseType: !138, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2342, file: !31, line: 25, baseType: !138, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2339, file: !31, line: 112, baseType: !2352, size: 64, offset: 384)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2354, line: 105, size: 128, elements: !2355)
!2354 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2355 = !{!2356, !2357}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2353, file: !2354, line: 110, baseType: !138, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2353, file: !2354, line: 118, baseType: !2358, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2354, line: 95, size: 448, elements: !2360)
!2360 = !{!2361, !2362, !2367, !2368, !2369, !2370, !2371}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2359, file: !2354, line: 96, baseType: !693, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2359, file: !2354, line: 97, baseType: !2363, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2354, line: 60, baseType: !2365)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !2352}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2359, file: !2354, line: 98, baseType: !2363, size: 64, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2359, file: !2354, line: 99, baseType: !453, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2359, file: !2354, line: 100, baseType: !453, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2359, file: !2354, line: 101, baseType: !336, size: 128, align: 64, offset: 256)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2359, file: !2354, line: 102, baseType: !2352, size: 64, offset: 384)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2339, file: !31, line: 113, baseType: !2353, size: 128, offset: 448)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2339, file: !31, line: 114, baseType: !1500, size: 192, offset: 576)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2339, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2339, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2339, file: !31, line: 117, baseType: !2377, size: 64, offset: 832)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2380)
!2380 = !{!2381, !2382, !2386, !2387}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2379, file: !31, line: 73, baseType: !848, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2379, file: !31, line: 78, baseType: !2383, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{null, !2338}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2379, file: !31, line: 83, baseType: !2383, size: 64, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2379, file: !31, line: 89, baseType: !1033, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2339, file: !31, line: 118, baseType: !137, size: 64, offset: 896)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2339, file: !31, line: 119, baseType: !131, size: 32, offset: 960)
!2390 = !DIDerivedType(tag: DW_TAG_member, scope: !2339, file: !31, line: 120, baseType: !2391, size: 128, offset: 1024)
!2391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2339, file: !31, line: 120, size: 128, elements: !2392)
!2392 = !{!2393, !2399}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2391, file: !31, line: 121, baseType: !2394, size: 128)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2395, line: 6, size: 128, elements: !2396)
!2395 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2396 = !{!2397, !2398}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2394, file: !2395, line: 7, baseType: !126, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2394, file: !2395, line: 8, baseType: !126, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2391, file: !31, line: 122, baseType: !2400)
!2400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2394, elements: !1721)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2335, file: !738, line: 162, baseType: !137, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !742, file: !738, line: 176, baseType: !336, size: 128, align: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !738, line: 179, baseType: !2404, size: 32, offset: 384)
!2404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !737, file: !738, line: 179, size: 32, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2409}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2404, file: !738, line: 184, baseType: !762, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2404, file: !738, line: 192, baseType: !7, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2404, file: !738, line: 194, baseType: !7, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2404, file: !738, line: 195, baseType: !131, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !737, file: !738, line: 199, baseType: !762, size: 32, offset: 416)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !623, file: !44, line: 1964, baseType: !2412, size: 64, offset: 1344)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!282, !562, !2415}
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2417, line: 12, size: 256, elements: !2418)
!2417 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2418 = !{!2419, !2420, !2421, !2422, !2423}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2416, file: !2417, line: 13, baseType: !136, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2416, file: !2417, line: 16, baseType: !131, size: 32, offset: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2416, file: !2417, line: 23, baseType: !138, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2416, file: !2417, line: 30, baseType: !138, size: 64, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2416, file: !2417, line: 33, baseType: !2424, size: 64, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !738, line: 27, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !623, file: !44, line: 1966, baseType: !2412, size: 64, offset: 1408)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !563, file: !44, line: 1424, baseType: !2428, size: 64, offset: 448)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2430)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2431)
!2431 = !{!2432, !2478, !2482, !2486, !2487, !2488, !2489, !2490, !2495, !2500, !2504}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2430, file: !38, line: 323, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!131, !2436}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2463, !2464, !2465}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2437, file: !38, line: 295, baseType: !605, size: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2437, file: !38, line: 296, baseType: !193, size: 128, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2437, file: !38, line: 297, baseType: !193, size: 128, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2437, file: !38, line: 298, baseType: !193, size: 128, offset: 384)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2437, file: !38, line: 299, baseType: !689, size: 192, offset: 512)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2437, file: !38, line: 300, baseType: !206, offset: 704)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2437, file: !38, line: 301, baseType: !762, size: 32, offset: 704)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2437, file: !38, line: 302, baseType: !562, size: 64, offset: 768)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2437, file: !38, line: 303, baseType: !2448, size: 64, offset: 832)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2449)
!2449 = !{!2450, !2462}
!2450 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !38, line: 69, baseType: !2451, size: 32)
!2451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2448, file: !38, line: 69, size: 32, elements: !2452)
!2452 = !{!2453, !2454, !2455}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2451, file: !38, line: 70, baseType: !398, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2451, file: !38, line: 71, baseType: !406, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2451, file: !38, line: 72, baseType: !2456, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2457, line: 24, baseType: !2458)
!2457 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2457, line: 22, size: 32, elements: !2459)
!2459 = !{!2460}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2458, file: !2457, line: 23, baseType: !2461, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2457, line: 20, baseType: !404)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2448, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2437, file: !38, line: 304, baseType: !494, size: 64, offset: 896)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2437, file: !38, line: 305, baseType: !138, size: 64, offset: 960)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2437, file: !38, line: 306, baseType: !2466, size: 576, offset: 1024)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2467)
!2467 = !{!2468, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2466, file: !38, line: 206, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !496)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2466, file: !38, line: 207, baseType: !2469, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2466, file: !38, line: 208, baseType: !2469, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2466, file: !38, line: 209, baseType: !2469, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2466, file: !38, line: 210, baseType: !2469, size: 64, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2466, file: !38, line: 211, baseType: !2469, size: 64, offset: 320)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2466, file: !38, line: 212, baseType: !2469, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2466, file: !38, line: 213, baseType: !502, size: 64, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2466, file: !38, line: 214, baseType: !502, size: 64, offset: 512)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2430, file: !38, line: 324, baseType: !2479, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!2436, !562, !131}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2430, file: !38, line: 325, baseType: !2483, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{null, !2436}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2430, file: !38, line: 326, baseType: !2433, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2430, file: !38, line: 327, baseType: !2433, size: 64, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2430, file: !38, line: 328, baseType: !2433, size: 64, offset: 320)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2430, file: !38, line: 329, baseType: !651, size: 64, offset: 384)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2430, file: !38, line: 332, baseType: !2491, size: 64, offset: 448)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!2494, !392}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2430, file: !38, line: 333, baseType: !2496, size: 64, offset: 512)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!131, !392, !2499}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2430, file: !38, line: 335, baseType: !2501, size: 64, offset: 576)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!131, !392, !2494}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2430, file: !38, line: 337, baseType: !2505, size: 64, offset: 640)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!131, !562, !2508}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !563, file: !44, line: 1425, baseType: !2510, size: 64, offset: 512)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2512)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2513)
!2513 = !{!2514, !2518, !2519, !2523, !2524, !2525, !2540, !2563, !2567, !2568, !2591}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2512, file: !38, line: 429, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!131, !562, !131, !131, !512}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2512, file: !38, line: 430, baseType: !651, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2512, file: !38, line: 431, baseType: !2520, size: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!131, !562, !7}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2512, file: !38, line: 432, baseType: !2520, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2512, file: !38, line: 433, baseType: !651, size: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2512, file: !38, line: 434, baseType: !2526, size: 64, offset: 320)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!131, !562, !131, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2531)
!2531 = !{!2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2530, file: !38, line: 416, baseType: !131, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2530, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2530, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2530, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2530, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2530, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2530, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2530, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2512, file: !38, line: 435, baseType: !2541, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!131, !562, !2448, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2546)
!2546 = !{!2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2545, file: !38, line: 344, baseType: !131, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2545, file: !38, line: 345, baseType: !126, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2545, file: !38, line: 346, baseType: !126, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2545, file: !38, line: 347, baseType: !126, size: 64, offset: 192)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2545, file: !38, line: 348, baseType: !126, size: 64, offset: 256)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2545, file: !38, line: 349, baseType: !126, size: 64, offset: 320)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2545, file: !38, line: 350, baseType: !126, size: 64, offset: 384)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2545, file: !38, line: 351, baseType: !699, size: 64, offset: 448)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2545, file: !38, line: 353, baseType: !699, size: 64, offset: 512)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2545, file: !38, line: 354, baseType: !131, size: 32, offset: 576)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2545, file: !38, line: 355, baseType: !131, size: 32, offset: 608)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2545, file: !38, line: 356, baseType: !126, size: 64, offset: 640)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2545, file: !38, line: 357, baseType: !126, size: 64, offset: 704)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2545, file: !38, line: 358, baseType: !126, size: 64, offset: 768)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2545, file: !38, line: 359, baseType: !699, size: 64, offset: 832)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2545, file: !38, line: 360, baseType: !131, size: 32, offset: 896)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2512, file: !38, line: 436, baseType: !2564, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!131, !562, !2508, !2544}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2512, file: !38, line: 438, baseType: !2541, size: 64, offset: 512)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2512, file: !38, line: 439, baseType: !2569, size: 64, offset: 576)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!131, !562, !2572}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2574)
!2574 = !{!2575, !2576}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2573, file: !38, line: 410, baseType: !7, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2573, file: !38, line: 411, baseType: !2577, size: 1344, offset: 64)
!2577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2578, size: 1344, elements: !248)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2579)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2590}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2578, file: !38, line: 396, baseType: !7, size: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2578, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2578, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2578, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2578, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2578, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2578, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2578, file: !38, line: 404, baseType: !130, size: 64, offset: 256)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2578, file: !38, line: 405, baseType: !2589, size: 64, offset: 320)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !125, line: 126, baseType: !126)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2578, file: !38, line: 406, baseType: !2589, size: 64, offset: 384)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2512, file: !38, line: 440, baseType: !2520, size: 64, offset: 640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !563, file: !44, line: 1426, baseType: !2593, size: 64, offset: 576)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2595)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !563, file: !44, line: 1427, baseType: !138, size: 64, offset: 640)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !563, file: !44, line: 1428, baseType: !138, size: 64, offset: 704)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !563, file: !44, line: 1429, baseType: !138, size: 64, offset: 768)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !563, file: !44, line: 1430, baseType: !353, size: 64, offset: 832)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !563, file: !44, line: 1431, baseType: !782, size: 256, offset: 896)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !563, file: !44, line: 1432, baseType: !131, size: 32, offset: 1152)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !563, file: !44, line: 1433, baseType: !762, size: 32, offset: 1184)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !563, file: !44, line: 1437, baseType: !2604, size: 64, offset: 1216)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2607)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !563, file: !44, line: 1449, baseType: !2609, size: 64, offset: 1280)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !369, line: 34, size: 64, elements: !2610)
!2610 = !{!2611}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2609, file: !369, line: 35, baseType: !372, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !563, file: !44, line: 1450, baseType: !193, size: 128, offset: 1344)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !563, file: !44, line: 1451, baseType: !2614, size: 64, offset: 1472)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !563, file: !44, line: 1452, baseType: !1922, size: 64, offset: 1536)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !563, file: !44, line: 1453, baseType: !2618, size: 64, offset: 1600)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !563, file: !44, line: 1454, baseType: !605, size: 128, offset: 1664)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !563, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !563, file: !44, line: 1456, baseType: !2623, size: 2432, offset: 1856)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2629, !2661}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2623, file: !38, line: 519, baseType: !7, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2623, file: !38, line: 520, baseType: !782, size: 256, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2623, file: !38, line: 521, baseType: !2628, size: 192, offset: 320)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 192, elements: !248)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2623, file: !38, line: 522, baseType: !2630, size: 1728, offset: 512)
!2630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2631, size: 1728, elements: !248)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2632)
!2632 = !{!2633, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2631, file: !38, line: 223, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2636)
!2636 = !{!2637, !2638, !2651, !2652}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2635, file: !38, line: 444, baseType: !131, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2635, file: !38, line: 445, baseType: !2639, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2641)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2641, file: !38, line: 311, baseType: !651, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2641, file: !38, line: 312, baseType: !651, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2641, file: !38, line: 313, baseType: !651, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2641, file: !38, line: 314, baseType: !651, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2641, file: !38, line: 315, baseType: !2433, size: 64, offset: 256)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2641, file: !38, line: 316, baseType: !2433, size: 64, offset: 320)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2641, file: !38, line: 317, baseType: !2433, size: 64, offset: 384)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2641, file: !38, line: 318, baseType: !2505, size: 64, offset: 448)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2635, file: !38, line: 446, baseType: !596, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2635, file: !38, line: 447, baseType: !2634, size: 64, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2631, file: !38, line: 224, baseType: !131, size: 32, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2631, file: !38, line: 226, baseType: !193, size: 128, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2631, file: !38, line: 227, baseType: !138, size: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2631, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2631, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2631, file: !38, line: 230, baseType: !2469, size: 64, offset: 384)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2631, file: !38, line: 231, baseType: !2469, size: 64, offset: 448)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2631, file: !38, line: 232, baseType: !137, size: 64, offset: 512)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2623, file: !38, line: 523, baseType: !2662, size: 192, offset: 2240)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2639, size: 192, elements: !248)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !563, file: !44, line: 1458, baseType: !2664, size: 2112, offset: 4288)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2665)
!2665 = !{!2666, !2667, !2668}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2664, file: !44, line: 1411, baseType: !131, size: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2664, file: !44, line: 1412, baseType: !1479, size: 128, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2664, file: !44, line: 1413, baseType: !2669, size: 1920, offset: 192)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2670, size: 1920, elements: !248)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2671, line: 12, size: 640, elements: !2672)
!2671 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2672 = !{!2673, !2681, !2683, !2688, !2689}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2670, file: !2671, line: 13, baseType: !2674, size: 320)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2675, line: 17, size: 320, elements: !2676)
!2675 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2676 = !{!2677, !2678, !2679, !2680}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2674, file: !2675, line: 18, baseType: !131, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2674, file: !2675, line: 19, baseType: !131, size: 32, offset: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2674, file: !2675, line: 20, baseType: !1479, size: 128, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2674, file: !2675, line: 22, baseType: !336, size: 128, align: 64, offset: 192)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2670, file: !2671, line: 14, baseType: !2682, size: 64, offset: 320)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2670, file: !2671, line: 15, baseType: !2684, size: 64, offset: 384)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2685, line: 16, size: 64, elements: !2686)
!2685 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2686 = !{!2687}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2684, file: !2685, line: 17, baseType: !1216, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2670, file: !2671, line: 16, baseType: !1479, size: 128, offset: 448)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2670, file: !2671, line: 17, baseType: !762, size: 32, offset: 576)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !563, file: !44, line: 1465, baseType: !137, size: 64, offset: 6400)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !563, file: !44, line: 1468, baseType: !134, size: 32, offset: 6464)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !563, file: !44, line: 1470, baseType: !502, size: 64, offset: 6528)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !563, file: !44, line: 1471, baseType: !502, size: 64, offset: 6592)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !563, file: !44, line: 1473, baseType: !135, size: 32, offset: 6656)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !563, file: !44, line: 1474, baseType: !2696, size: 64, offset: 6720)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !563, file: !44, line: 1477, baseType: !2699, size: 256, offset: 6784)
!2699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 256, elements: !2229)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !563, file: !44, line: 1478, baseType: !2701, size: 128, offset: 7040)
!2701 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2702, line: 18, baseType: !2703)
!2702 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2702, line: 16, size: 128, elements: !2704)
!2704 = !{!2705}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2703, file: !2702, line: 17, baseType: !2706, size: 128)
!2706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 128, elements: !1733)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !563, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !563, file: !44, line: 1481, baseType: !2709, size: 32, offset: 7200)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !125, line: 150, baseType: !7)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !563, file: !44, line: 1487, baseType: !689, size: 192, offset: 7232)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !563, file: !44, line: 1493, baseType: !191, size: 64, offset: 7424)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !563, file: !44, line: 1495, baseType: !2713, size: 64, offset: 7488)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2715)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !351, line: 135, size: 1024, align: 512, elements: !2716)
!2716 = !{!2717, !2721, !2722, !2729, !2735, !2739, !2743, !2747, !2748, !2752, !2756, !2761, !2765}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2715, file: !351, line: 136, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!131, !353, !7}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2715, file: !351, line: 137, baseType: !2718, size: 64, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2715, file: !351, line: 138, baseType: !2723, size: 64, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!131, !2726, !2728}
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2715, file: !351, line: 139, baseType: !2730, size: 64, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!131, !2726, !7, !191, !2733}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2715, file: !351, line: 141, baseType: !2736, size: 64, offset: 256)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!131, !2726}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2715, file: !351, line: 142, baseType: !2740, size: 64, offset: 320)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!131, !353}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2715, file: !351, line: 143, baseType: !2744, size: 64, offset: 384)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{null, !353}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2715, file: !351, line: 144, baseType: !2744, size: 64, offset: 448)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2715, file: !351, line: 145, baseType: !2749, size: 64, offset: 512)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{null, !353, !392}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2715, file: !351, line: 146, baseType: !2753, size: 64, offset: 576)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!247, !353, !247, !131}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2715, file: !351, line: 147, baseType: !2757, size: 64, offset: 640)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!349, !2760}
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2715, file: !351, line: 148, baseType: !2762, size: 64, offset: 704)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!131, !512, !453}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2715, file: !351, line: 149, baseType: !2766, size: 64, offset: 768)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!353, !353, !2769}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !563, file: !44, line: 1500, baseType: !131, size: 32, offset: 7552)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !563, file: !44, line: 1502, baseType: !2773, size: 448, offset: 7616)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2417, line: 60, size: 448, elements: !2774)
!2774 = !{!2775, !2780, !2781, !2782, !2783, !2784, !2785}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2773, file: !2417, line: 61, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!138, !2779, !2415}
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2773, file: !2417, line: 63, baseType: !2776, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2773, file: !2417, line: 66, baseType: !282, size: 64, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2773, file: !2417, line: 67, baseType: !131, size: 32, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2773, file: !2417, line: 68, baseType: !7, size: 32, offset: 224)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2773, file: !2417, line: 71, baseType: !193, size: 128, offset: 256)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2773, file: !2417, line: 77, baseType: !2786, size: 64, offset: 384)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !563, file: !44, line: 1505, baseType: !693, size: 64, offset: 8064)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !563, file: !44, line: 1508, baseType: !693, size: 64, offset: 8128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !563, file: !44, line: 1511, baseType: !131, size: 32, offset: 8192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !563, file: !44, line: 1514, baseType: !915, size: 32, offset: 8224)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !563, file: !44, line: 1517, baseType: !2792, size: 64, offset: 8256)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1957, line: 18, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !563, file: !44, line: 1518, baseType: !601, size: 64, offset: 8320)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !563, file: !44, line: 1525, baseType: !1711, size: 64, offset: 8384)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !563, file: !44, line: 1532, baseType: !2797, size: 64, offset: 8448)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2798, line: 52, size: 64, elements: !2799)
!2798 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2799 = !{!2800}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2797, file: !2798, line: 53, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2798, line: 40, size: 256, elements: !2803)
!2803 = !{!2804, !2805, !2810}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2802, file: !2798, line: 42, baseType: !206)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2802, file: !2798, line: 44, baseType: !2806, size: 192)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2798, line: 28, size: 192, elements: !2807)
!2807 = !{!2808, !2809}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2806, file: !2798, line: 29, baseType: !193, size: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2806, file: !2798, line: 31, baseType: !282, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2802, file: !2798, line: 49, baseType: !282, size: 64, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !563, file: !44, line: 1533, baseType: !2797, size: 64, offset: 8512)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !563, file: !44, line: 1534, baseType: !336, size: 128, align: 64, offset: 8576)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !563, file: !44, line: 1535, baseType: !1956, size: 256, offset: 8704)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !563, file: !44, line: 1537, baseType: !689, size: 192, offset: 8960)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !563, file: !44, line: 1542, baseType: !131, size: 32, offset: 9152)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !563, file: !44, line: 1545, baseType: !206, offset: 9184)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !563, file: !44, line: 1546, baseType: !193, size: 128, offset: 9216)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !563, file: !44, line: 1548, baseType: !206, offset: 9344)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !563, file: !44, line: 1549, baseType: !193, size: 128, offset: 9344)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !393, file: !44, line: 624, baseType: !749, size: 64, offset: 256)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !393, file: !44, line: 631, baseType: !138, size: 64, offset: 320)
!2822 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !44, line: 639, baseType: !2823, size: 32, offset: 384)
!2823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !44, line: 639, size: 32, elements: !2824)
!2824 = !{!2825, !2827}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2823, file: !44, line: 640, baseType: !2826, size: 32)
!2826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2823, file: !44, line: 641, baseType: !7, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !393, file: !44, line: 643, baseType: !476, size: 32, offset: 416)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !393, file: !44, line: 644, baseType: !494, size: 64, offset: 448)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !393, file: !44, line: 645, baseType: !498, size: 128, offset: 512)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !393, file: !44, line: 646, baseType: !498, size: 128, offset: 640)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !393, file: !44, line: 647, baseType: !498, size: 128, offset: 768)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !393, file: !44, line: 648, baseType: !206, offset: 896)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !393, file: !44, line: 649, baseType: !141, size: 16, offset: 896)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !393, file: !44, line: 650, baseType: !143, size: 8, offset: 912)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !393, file: !44, line: 651, baseType: !143, size: 8, offset: 920)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !393, file: !44, line: 652, baseType: !2589, size: 64, offset: 960)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !393, file: !44, line: 659, baseType: !138, size: 64, offset: 1024)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !393, file: !44, line: 660, baseType: !782, size: 256, offset: 1088)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !393, file: !44, line: 662, baseType: !138, size: 64, offset: 1344)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !393, file: !44, line: 663, baseType: !138, size: 64, offset: 1408)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !393, file: !44, line: 665, baseType: !605, size: 128, offset: 1472)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !393, file: !44, line: 666, baseType: !193, size: 128, offset: 1600)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !393, file: !44, line: 675, baseType: !193, size: 128, offset: 1728)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !393, file: !44, line: 676, baseType: !193, size: 128, offset: 1856)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !393, file: !44, line: 677, baseType: !193, size: 128, offset: 1984)
!2847 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !44, line: 678, baseType: !2848, size: 128, offset: 2112)
!2848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !44, line: 678, size: 128, elements: !2849)
!2849 = !{!2850, !2851}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2848, file: !44, line: 679, baseType: !601, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2848, file: !44, line: 680, baseType: !336, size: 128, align: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !393, file: !44, line: 682, baseType: !695, size: 64, offset: 2240)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !393, file: !44, line: 683, baseType: !695, size: 64, offset: 2304)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !393, file: !44, line: 684, baseType: !762, size: 32, offset: 2368)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !393, file: !44, line: 685, baseType: !762, size: 32, offset: 2400)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !393, file: !44, line: 686, baseType: !762, size: 32, offset: 2432)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !393, file: !44, line: 688, baseType: !762, size: 32, offset: 2464)
!2858 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !44, line: 690, baseType: !2859, size: 64, offset: 2496)
!2859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !44, line: 690, size: 64, elements: !2860)
!2860 = !{!2861, !3083}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2859, file: !44, line: 691, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2864)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2865)
!2865 = !{!2866, !2867, !2871, !2875, !2879, !2880, !2881, !2885, !2898, !2899, !2907, !2911, !2912, !2916, !2917, !2921, !2926, !2927, !2931, !2935, !3043, !3047, !3048, !3052, !3053, !3057, !3061, !3066, !3070, !3074, !3078, !3082}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2864, file: !44, line: 1823, baseType: !596, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2864, file: !44, line: 1824, baseType: !2868, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!494, !323, !494, !131}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2864, file: !44, line: 1825, baseType: !2872, size: 64, offset: 128)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!278, !323, !247, !293, !711}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2864, file: !44, line: 1826, baseType: !2876, size: 64, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!278, !323, !191, !293, !711}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2864, file: !44, line: 1827, baseType: !852, size: 64, offset: 256)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2864, file: !44, line: 1828, baseType: !852, size: 64, offset: 320)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2864, file: !44, line: 1829, baseType: !2882, size: 64, offset: 384)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!131, !855, !453}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2864, file: !44, line: 1830, baseType: !2886, size: 64, offset: 448)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!131, !323, !2889}
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2891)
!2891 = !{!2892, !2897}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2890, file: !44, line: 1777, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2894)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!131, !2889, !191, !131, !494, !126, !7}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2890, file: !44, line: 1778, baseType: !494, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2864, file: !44, line: 1831, baseType: !2886, size: 64, offset: 512)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2864, file: !44, line: 1832, baseType: !2900, size: 64, offset: 576)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!2903, !323, !2905}
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2904, line: 52, baseType: !7)
!2904 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !582, line: 27, flags: DIFlagFwdDecl)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2864, file: !44, line: 1833, baseType: !2908, size: 64, offset: 640)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!282, !323, !7, !138}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2864, file: !44, line: 1834, baseType: !2908, size: 64, offset: 704)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2864, file: !44, line: 1835, baseType: !2913, size: 64, offset: 768)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!131, !323, !987}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2864, file: !44, line: 1836, baseType: !138, size: 64, offset: 832)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2864, file: !44, line: 1837, baseType: !2918, size: 64, offset: 896)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!131, !392, !323}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2864, file: !44, line: 1838, baseType: !2922, size: 64, offset: 960)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!131, !323, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !137)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2864, file: !44, line: 1839, baseType: !2918, size: 64, offset: 1024)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2864, file: !44, line: 1840, baseType: !2928, size: 64, offset: 1088)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!131, !323, !494, !494, !131}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2864, file: !44, line: 1841, baseType: !2932, size: 64, offset: 1152)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!131, !131, !323, !131}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2864, file: !44, line: 1842, baseType: !2936, size: 64, offset: 1216)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!131, !323, !131, !2939}
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2941)
!2941 = !{!2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2973, !2974, !2975, !2988, !3019}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2940, file: !44, line: 1063, baseType: !2939, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2940, file: !44, line: 1064, baseType: !193, size: 128, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2940, file: !44, line: 1065, baseType: !605, size: 128, offset: 192)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2940, file: !44, line: 1066, baseType: !193, size: 128, offset: 320)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2940, file: !44, line: 1069, baseType: !193, size: 128, offset: 448)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2940, file: !44, line: 1072, baseType: !2925, size: 64, offset: 576)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2940, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2940, file: !44, line: 1074, baseType: !145, size: 8, offset: 672)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2940, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2940, file: !44, line: 1076, baseType: !131, size: 32, offset: 736)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2940, file: !44, line: 1077, baseType: !1479, size: 128, offset: 768)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2940, file: !44, line: 1078, baseType: !323, size: 64, offset: 896)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2940, file: !44, line: 1079, baseType: !494, size: 64, offset: 960)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2940, file: !44, line: 1080, baseType: !494, size: 64, offset: 1024)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2940, file: !44, line: 1082, baseType: !2957, size: 64, offset: 1088)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2959)
!2959 = !{!2960, !2968, !2969, !2970, !2971, !2972}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2958, file: !44, line: 1315, baseType: !2961)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2962, line: 20, baseType: !2963)
!2962 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2962, line: 11, elements: !2964)
!2964 = !{!2965}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2963, file: !2962, line: 12, baseType: !2966)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !218, line: 33, baseType: !2967)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 31, elements: !220)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2958, file: !44, line: 1316, baseType: !131, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2958, file: !44, line: 1317, baseType: !131, size: 32, offset: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2958, file: !44, line: 1318, baseType: !2957, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2958, file: !44, line: 1319, baseType: !323, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2958, file: !44, line: 1320, baseType: !336, size: 128, align: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2940, file: !44, line: 1084, baseType: !138, size: 64, offset: 1152)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2940, file: !44, line: 1085, baseType: !138, size: 64, offset: 1216)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2940, file: !44, line: 1087, baseType: !2976, size: 64, offset: 1280)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2978)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2979)
!2979 = !{!2980, !2984}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2978, file: !44, line: 1012, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !2939, !2939}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2978, file: !44, line: 1013, baseType: !2985, size: 64, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !2939}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2940, file: !44, line: 1088, baseType: !2989, size: 64, offset: 1344)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2991)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2992)
!2992 = !{!2993, !2997, !3001, !3002, !3006, !3010, !3014, !3018}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2991, file: !44, line: 1017, baseType: !2994, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!2925, !2925}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2991, file: !44, line: 1018, baseType: !2998, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !2925}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2991, file: !44, line: 1019, baseType: !2985, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2991, file: !44, line: 1020, baseType: !3003, size: 64, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!131, !2939, !131}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2991, file: !44, line: 1021, baseType: !3007, size: 64, offset: 256)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!453, !2939}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2991, file: !44, line: 1022, baseType: !3011, size: 64, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!131, !2939, !131, !196}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2991, file: !44, line: 1023, baseType: !3015, size: 64, offset: 384)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !2939, !829}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2991, file: !44, line: 1024, baseType: !3007, size: 64, offset: 448)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2940, file: !44, line: 1097, baseType: !3020, size: 256, offset: 1408)
!3020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2940, file: !44, line: 1089, size: 256, elements: !3021)
!3021 = !{!3022, !3031, !3037}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3020, file: !44, line: 1090, baseType: !3023, size: 256)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3024, line: 10, size: 256, elements: !3025)
!3024 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3025 = !{!3026, !3027, !3030}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3023, file: !3024, line: 11, baseType: !134, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3023, file: !3024, line: 12, baseType: !3028, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3024, line: 5, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3023, file: !3024, line: 13, baseType: !193, size: 128, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3020, file: !44, line: 1091, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3024, line: 17, size: 64, elements: !3033)
!3033 = !{!3034}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3032, file: !3024, line: 18, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3024, line: 16, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3020, file: !44, line: 1096, baseType: !3038, size: 192)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3020, file: !44, line: 1092, size: 192, elements: !3039)
!3039 = !{!3040, !3041, !3042}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3038, file: !44, line: 1093, baseType: !193, size: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3038, file: !44, line: 1094, baseType: !131, size: 32, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3038, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2864, file: !44, line: 1843, baseType: !3044, size: 64, offset: 1280)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!278, !323, !736, !131, !293, !711, !131}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2864, file: !44, line: 1844, baseType: !1107, size: 64, offset: 1344)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2864, file: !44, line: 1845, baseType: !3049, size: 64, offset: 1408)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!131, !131}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2864, file: !44, line: 1846, baseType: !2936, size: 64, offset: 1472)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2864, file: !44, line: 1847, baseType: !3054, size: 64, offset: 1536)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!278, !2097, !323, !711, !293, !7}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2864, file: !44, line: 1848, baseType: !3058, size: 64, offset: 1600)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!278, !323, !711, !2097, !293, !7}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2864, file: !44, line: 1849, baseType: !3062, size: 64, offset: 1664)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!131, !323, !282, !3065, !829}
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2864, file: !44, line: 1850, baseType: !3067, size: 64, offset: 1728)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!282, !323, !131, !494, !494}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2864, file: !44, line: 1852, baseType: !3071, size: 64, offset: 1792)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !677, !323}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2864, file: !44, line: 1856, baseType: !3075, size: 64, offset: 1856)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!278, !323, !494, !323, !494, !293, !7}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2864, file: !44, line: 1858, baseType: !3079, size: 64, offset: 1920)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!494, !323, !494, !323, !494, !494, !7}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2864, file: !44, line: 1861, baseType: !2928, size: 64, offset: 1984)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2859, file: !44, line: 692, baseType: !630, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !393, file: !44, line: 694, baseType: !3085, size: 64, offset: 2560)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3091}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3086, file: !44, line: 1101, baseType: !206)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3086, file: !44, line: 1102, baseType: !193, size: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3086, file: !44, line: 1103, baseType: !193, size: 128, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3086, file: !44, line: 1104, baseType: !193, size: 128, offset: 256)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !393, file: !44, line: 695, baseType: !750, size: 1216, align: 64, offset: 2624)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !393, file: !44, line: 696, baseType: !193, size: 128, offset: 3840)
!3094 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !44, line: 697, baseType: !3095, size: 64, offset: 3968)
!3095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !44, line: 697, size: 64, elements: !3096)
!3096 = !{!3097, !3098, !3099, !3110, !3111}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3095, file: !44, line: 698, baseType: !2097, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3095, file: !44, line: 699, baseType: !2614, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3095, file: !44, line: 700, baseType: !3100, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3102, line: 14, size: 832, elements: !3103)
!3102 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3103 = !{!3104, !3105, !3106, !3107, !3108, !3109}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3101, file: !3102, line: 15, baseType: !187, size: 512)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3101, file: !3102, line: 16, baseType: !596, size: 64, offset: 512)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3101, file: !3102, line: 17, baseType: !2862, size: 64, offset: 576)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3101, file: !3102, line: 18, baseType: !193, size: 128, offset: 640)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3101, file: !3102, line: 19, baseType: !476, size: 32, offset: 768)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3101, file: !3102, line: 20, baseType: !7, size: 32, offset: 800)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3095, file: !44, line: 701, baseType: !247, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3095, file: !44, line: 702, baseType: !7, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !393, file: !44, line: 705, baseType: !135, size: 32, offset: 4032)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !393, file: !44, line: 708, baseType: !135, size: 32, offset: 4064)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !393, file: !44, line: 709, baseType: !2696, size: 64, offset: 4096)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !393, file: !44, line: 720, baseType: !137, size: 64, offset: 4160)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !354, file: !351, line: 98, baseType: !3117, size: 256, offset: 448)
!3117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 256, elements: !2229)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !354, file: !351, line: 101, baseType: !3119, size: 32, offset: 704)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3120, line: 25, size: 32, elements: !3121)
!3120 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3121 = !{!3122}
!3122 = !DIDerivedType(tag: DW_TAG_member, scope: !3119, file: !3120, line: 26, baseType: !3123, size: 32)
!3123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3119, file: !3120, line: 26, size: 32, elements: !3124)
!3124 = !{!3125}
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !3123, file: !3120, line: 30, baseType: !3126, size: 32)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3123, file: !3120, line: 30, size: 32, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3126, file: !3120, line: 31, baseType: !206)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3126, file: !3120, line: 32, baseType: !131, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !354, file: !351, line: 102, baseType: !2713, size: 64, offset: 768)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !354, file: !351, line: 103, baseType: !562, size: 64, offset: 832)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !354, file: !351, line: 104, baseType: !138, size: 64, offset: 896)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !354, file: !351, line: 105, baseType: !137, size: 64, offset: 960)
!3134 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !351, line: 107, baseType: !3135, size: 128, offset: 1024)
!3135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !351, line: 107, size: 128, elements: !3136)
!3136 = !{!3137, !3138}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3135, file: !351, line: 108, baseType: !193, size: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3135, file: !351, line: 109, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !354, file: !351, line: 111, baseType: !193, size: 128, offset: 1152)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !354, file: !351, line: 112, baseType: !193, size: 128, offset: 1280)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !354, file: !351, line: 120, baseType: !3143, size: 128, offset: 1408)
!3143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !351, line: 116, size: 128, elements: !3144)
!3144 = !{!3145, !3146, !3147}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3143, file: !351, line: 117, baseType: !605, size: 128)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3143, file: !351, line: 118, baseType: !368, size: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3143, file: !351, line: 119, baseType: !336, size: 128, align: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !324, file: !44, line: 922, baseType: !392, size: 64, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !324, file: !44, line: 923, baseType: !2862, size: 64, offset: 320)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !324, file: !44, line: 929, baseType: !206, offset: 384)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !324, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !324, file: !44, line: 931, baseType: !693, size: 64, offset: 448)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !324, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !324, file: !44, line: 933, baseType: !2709, size: 32, offset: 544)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !324, file: !44, line: 934, baseType: !689, size: 192, offset: 576)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !324, file: !44, line: 935, baseType: !494, size: 64, offset: 768)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !324, file: !44, line: 936, baseType: !3158, size: 192, offset: 832)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3159)
!3159 = !{!3160, !3161, !3162, !3163, !3164, !3165}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3158, file: !44, line: 886, baseType: !2961)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3158, file: !44, line: 887, baseType: !1469, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3158, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3158, file: !44, line: 889, baseType: !398, size: 32, offset: 96)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3158, file: !44, line: 889, baseType: !398, size: 32, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3158, file: !44, line: 890, baseType: !131, size: 32, offset: 160)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !324, file: !44, line: 937, baseType: !1545, size: 64, offset: 1024)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !324, file: !44, line: 938, baseType: !3168, size: 256, offset: 1088)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3169)
!3169 = !{!3170, !3171, !3172, !3173, !3174, !3175}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3168, file: !44, line: 897, baseType: !138, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3168, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3168, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3168, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3168, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3168, file: !44, line: 904, baseType: !494, size: 64, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !324, file: !44, line: 940, baseType: !126, size: 64, offset: 1344)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !324, file: !44, line: 945, baseType: !137, size: 64, offset: 1408)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !324, file: !44, line: 949, baseType: !193, size: 128, offset: 1472)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !324, file: !44, line: 950, baseType: !193, size: 128, offset: 1600)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !324, file: !44, line: 952, baseType: !749, size: 64, offset: 1728)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !324, file: !44, line: 953, baseType: !915, size: 32, offset: 1792)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !324, file: !44, line: 954, baseType: !915, size: 32, offset: 1824)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !314, file: !272, line: 174, baseType: !320, size: 64, offset: 320)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !314, file: !272, line: 176, baseType: !3185, size: 64, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!131, !323, !199, !313, !987}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !302, file: !272, line: 90, baseType: !297, size: 64, offset: 192)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !302, file: !272, line: 91, baseType: !3190, size: 64, offset: 256)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !262, file: !188, line: 143, baseType: !3192, size: 64, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!3195, !199}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3197)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3198)
!3198 = !{!3199, !3200, !3204, !3208, !3214, !3218}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3197, file: !61, line: 40, baseType: !60, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3197, file: !61, line: 41, baseType: !3201, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!453}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3197, file: !61, line: 42, baseType: !3205, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!137}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3197, file: !61, line: 43, baseType: !3209, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!2126, !3212}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3197, file: !61, line: 44, baseType: !3215, size: 64, offset: 256)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!2126}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3197, file: !61, line: 45, baseType: !431, size: 64, offset: 320)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !262, file: !188, line: 144, baseType: !3220, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!2126, !199}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !262, file: !188, line: 145, baseType: !3224, size: 64, offset: 384)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{null, !199, !3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !187, file: !188, line: 70, baseType: !3230, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !582, line: 123, size: 1024, elements: !3232)
!3232 = !{!3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3349, !3350, !3351, !3352, !3353}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3231, file: !582, line: 124, baseType: !762, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3231, file: !582, line: 125, baseType: !762, size: 32, offset: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3231, file: !582, line: 135, baseType: !3230, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3231, file: !582, line: 136, baseType: !191, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3231, file: !582, line: 138, baseType: !775, size: 192, align: 64, offset: 192)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3231, file: !582, line: 140, baseType: !2126, size: 64, offset: 384)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3231, file: !582, line: 141, baseType: !7, size: 32, offset: 448)
!3240 = !DIDerivedType(tag: DW_TAG_member, scope: !3231, file: !582, line: 142, baseType: !3241, size: 256, offset: 512)
!3241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3231, file: !582, line: 142, size: 256, elements: !3242)
!3242 = !{!3243, !3289, !3293}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3241, file: !582, line: 143, baseType: !3244, size: 192)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !582, line: 91, size: 192, elements: !3245)
!3245 = !{!3246, !3247, !3248}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3244, file: !582, line: 92, baseType: !138, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3244, file: !582, line: 94, baseType: !771, size: 64, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3244, file: !582, line: 100, baseType: !3249, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !582, line: 180, size: 704, elements: !3251)
!3251 = !{!3252, !3253, !3254, !3261, !3262, !3263, !3287, !3288}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3250, file: !582, line: 182, baseType: !3230, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3250, file: !582, line: 183, baseType: !7, size: 32, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3250, file: !582, line: 186, baseType: !3255, size: 192, offset: 128)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3256, line: 19, size: 192, elements: !3257)
!3256 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3257 = !{!3258, !3259, !3260}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3255, file: !3256, line: 20, baseType: !754, size: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3255, file: !3256, line: 21, baseType: !7, size: 32, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3255, file: !3256, line: 22, baseType: !7, size: 32, offset: 160)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3250, file: !582, line: 187, baseType: !134, size: 32, offset: 320)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3250, file: !582, line: 188, baseType: !134, size: 32, offset: 352)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3250, file: !582, line: 189, baseType: !3264, size: 64, offset: 384)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !582, line: 168, size: 320, elements: !3266)
!3266 = !{!3267, !3271, !3275, !3279, !3283}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3265, file: !582, line: 169, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!131, !677, !3249}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3265, file: !582, line: 171, baseType: !3272, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!131, !3230, !191, !288}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3265, file: !582, line: 173, baseType: !3276, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!131, !3230}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3265, file: !582, line: 174, baseType: !3280, size: 64, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!131, !3230, !3230, !191}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3265, file: !582, line: 176, baseType: !3284, size: 64, offset: 256)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!131, !677, !3230, !3249}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3250, file: !582, line: 192, baseType: !193, size: 128, offset: 448)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3250, file: !582, line: 194, baseType: !1479, size: 128, offset: 576)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3241, file: !582, line: 144, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !582, line: 103, size: 64, elements: !3291)
!3291 = !{!3292}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3290, file: !582, line: 104, baseType: !3230, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3241, file: !582, line: 145, baseType: !3294, size: 256)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !582, line: 107, size: 256, elements: !3295)
!3295 = !{!3296, !3344, !3347, !3348}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3294, file: !582, line: 108, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3299)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !582, line: 217, size: 768, elements: !3300)
!3300 = !{!3301, !3321, !3325, !3326, !3327, !3328, !3329, !3333, !3334, !3335, !3336, !3340}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3299, file: !582, line: 222, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!131, !3305}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !582, line: 197, size: 1088, elements: !3307)
!3307 = !{!3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3306, file: !582, line: 199, baseType: !3230, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3306, file: !582, line: 200, baseType: !323, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3306, file: !582, line: 201, baseType: !677, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3306, file: !582, line: 202, baseType: !137, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3306, file: !582, line: 205, baseType: !689, size: 192, offset: 256)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3306, file: !582, line: 206, baseType: !689, size: 192, offset: 448)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3306, file: !582, line: 207, baseType: !131, size: 32, offset: 640)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3306, file: !582, line: 208, baseType: !193, size: 128, offset: 704)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3306, file: !582, line: 209, baseType: !247, size: 64, offset: 832)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3306, file: !582, line: 211, baseType: !293, size: 64, offset: 896)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3306, file: !582, line: 212, baseType: !453, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3306, file: !582, line: 213, baseType: !453, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3306, file: !582, line: 214, baseType: !1015, size: 64, offset: 1024)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3299, file: !582, line: 223, baseType: !3322, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{null, !3305}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3299, file: !582, line: 236, baseType: !721, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3299, file: !582, line: 238, baseType: !708, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3299, file: !582, line: 239, baseType: !717, size: 64, offset: 256)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3299, file: !582, line: 240, baseType: !713, size: 64, offset: 320)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3299, file: !582, line: 242, baseType: !3330, size: 64, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!278, !3305, !247, !293, !494}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3299, file: !582, line: 252, baseType: !293, size: 64, offset: 448)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3299, file: !582, line: 259, baseType: !453, size: 8, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3299, file: !582, line: 260, baseType: !3330, size: 64, offset: 576)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3299, file: !582, line: 263, baseType: !3337, size: 64, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!2903, !3305, !2905}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3299, file: !582, line: 266, baseType: !3341, size: 64, offset: 704)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!131, !3305, !987}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3294, file: !582, line: 109, baseType: !3345, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !582, line: 31, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3294, file: !582, line: 110, baseType: !494, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3294, file: !582, line: 111, baseType: !3230, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3231, file: !582, line: 148, baseType: !137, size: 64, offset: 768)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3231, file: !582, line: 154, baseType: !126, size: 64, offset: 832)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3231, file: !582, line: 156, baseType: !141, size: 16, offset: 896)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3231, file: !582, line: 157, baseType: !288, size: 16, offset: 912)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3231, file: !582, line: 158, baseType: !3354, size: 64, offset: 960)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !582, line: 32, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !187, file: !188, line: 71, baseType: !3357, size: 32, offset: 448)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3358, line: 19, size: 32, elements: !3359)
!3358 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3359 = !{!3360}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3357, file: !3358, line: 20, baseType: !1230, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !187, file: !188, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !187, file: !188, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !187, file: !188, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !187, file: !188, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !187, file: !188, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !184, file: !73, line: 463, baseType: !3367, size: 64, offset: 512)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !184, file: !73, line: 465, baseType: !3369, size: 64, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !184, file: !73, line: 467, baseType: !191, size: 64, offset: 640)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !184, file: !73, line: 468, baseType: !3373, size: 64, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3375)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3376)
!3376 = !{!3377, !3378, !3379, !3383, !3388, !3392}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3375, file: !73, line: 88, baseType: !191, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3375, file: !73, line: 89, baseType: !299, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3375, file: !73, line: 90, baseType: !3380, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!131, !3367, !242}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3375, file: !73, line: 91, baseType: !3384, size: 64, offset: 192)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!247, !3367, !3387, !3227, !3228}
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3375, file: !73, line: 93, baseType: !3389, size: 64, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{null, !3367}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3375, file: !73, line: 95, baseType: !3393, size: 64, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3395)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3396)
!3396 = !{!3397, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3395, file: !80, line: 279, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!131, !3367}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3395, file: !80, line: 280, baseType: !3389, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3395, file: !80, line: 281, baseType: !3398, size: 64, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3395, file: !80, line: 282, baseType: !3398, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3395, file: !80, line: 283, baseType: !3398, size: 64, offset: 256)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3395, file: !80, line: 284, baseType: !3398, size: 64, offset: 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3395, file: !80, line: 285, baseType: !3398, size: 64, offset: 384)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3395, file: !80, line: 286, baseType: !3398, size: 64, offset: 448)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3395, file: !80, line: 287, baseType: !3398, size: 64, offset: 512)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3395, file: !80, line: 288, baseType: !3398, size: 64, offset: 576)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3395, file: !80, line: 289, baseType: !3398, size: 64, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3395, file: !80, line: 290, baseType: !3398, size: 64, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3395, file: !80, line: 291, baseType: !3398, size: 64, offset: 768)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3395, file: !80, line: 292, baseType: !3398, size: 64, offset: 832)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3395, file: !80, line: 293, baseType: !3398, size: 64, offset: 896)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3395, file: !80, line: 294, baseType: !3398, size: 64, offset: 960)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3395, file: !80, line: 295, baseType: !3398, size: 64, offset: 1024)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3395, file: !80, line: 296, baseType: !3398, size: 64, offset: 1088)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3395, file: !80, line: 297, baseType: !3398, size: 64, offset: 1152)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3395, file: !80, line: 298, baseType: !3398, size: 64, offset: 1216)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3395, file: !80, line: 299, baseType: !3398, size: 64, offset: 1280)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3395, file: !80, line: 300, baseType: !3398, size: 64, offset: 1344)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3395, file: !80, line: 301, baseType: !3398, size: 64, offset: 1408)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !184, file: !73, line: 470, baseType: !3424, size: 64, offset: 768)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3426, line: 82, size: 1408, elements: !3427)
!3426 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433, !3434, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3509, !3512, !3513}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3425, file: !3426, line: 83, baseType: !191, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3425, file: !3426, line: 84, baseType: !191, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3425, file: !3426, line: 85, baseType: !3367, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3425, file: !3426, line: 86, baseType: !299, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3425, file: !3426, line: 87, baseType: !299, size: 64, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3425, file: !3426, line: 88, baseType: !299, size: 64, offset: 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3425, file: !3426, line: 90, baseType: !3435, size: 64, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!131, !3367, !3438}
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447, !3460, !3473, !3474, !3475, !3476, !3477, !3485, !3486, !3487, !3488, !3489, !3490}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3439, file: !67, line: 96, baseType: !191, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3439, file: !67, line: 97, baseType: !3424, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3439, file: !67, line: 99, baseType: !596, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3439, file: !67, line: 100, baseType: !191, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3439, file: !67, line: 102, baseType: !453, size: 8, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3439, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3439, file: !67, line: 105, baseType: !3448, size: 64, offset: 320)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3450)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3451, line: 262, size: 1600, elements: !3452)
!3451 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3452 = !{!3453, !3454, !3455, !3459}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3450, file: !3451, line: 263, baseType: !2699, size: 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3450, file: !3451, line: 264, baseType: !2699, size: 256, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3450, file: !3451, line: 265, baseType: !3456, size: 1024, offset: 512)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 1024, elements: !3457)
!3457 = !{!3458}
!3458 = !DISubrange(count: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3450, file: !3451, line: 266, baseType: !2126, size: 64, offset: 1536)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3439, file: !67, line: 106, baseType: !3461, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3463)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3451, line: 210, size: 256, elements: !3464)
!3464 = !{!3465, !3469, !3471, !3472}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3463, file: !3451, line: 211, baseType: !3466, size: 72)
!3466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 72, elements: !3467)
!3467 = !{!3468}
!3468 = !DISubrange(count: 9)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3463, file: !3451, line: 212, baseType: !3470, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3451, line: 14, baseType: !138)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3463, file: !3451, line: 213, baseType: !135, size: 32, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3463, file: !3451, line: 214, baseType: !135, size: 32, offset: 224)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3439, file: !67, line: 108, baseType: !3398, size: 64, offset: 448)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3439, file: !67, line: 109, baseType: !3389, size: 64, offset: 512)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3439, file: !67, line: 110, baseType: !3398, size: 64, offset: 576)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3439, file: !67, line: 111, baseType: !3389, size: 64, offset: 640)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3439, file: !67, line: 112, baseType: !3478, size: 64, offset: 704)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!131, !3367, !3481}
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3482)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3483)
!3483 = !{!3484}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3482, file: !80, line: 51, baseType: !131, size: 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3439, file: !67, line: 113, baseType: !3398, size: 64, offset: 768)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3439, file: !67, line: 114, baseType: !299, size: 64, offset: 832)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3439, file: !67, line: 115, baseType: !299, size: 64, offset: 896)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3439, file: !67, line: 117, baseType: !3393, size: 64, offset: 960)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3439, file: !67, line: 118, baseType: !3389, size: 64, offset: 1024)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3439, file: !67, line: 120, baseType: !3491, size: 64, offset: 1088)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3425, file: !3426, line: 91, baseType: !3380, size: 64, offset: 448)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3425, file: !3426, line: 92, baseType: !3398, size: 64, offset: 512)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3425, file: !3426, line: 93, baseType: !3389, size: 64, offset: 576)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3425, file: !3426, line: 94, baseType: !3398, size: 64, offset: 640)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3425, file: !3426, line: 95, baseType: !3389, size: 64, offset: 704)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3425, file: !3426, line: 97, baseType: !3398, size: 64, offset: 768)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3425, file: !3426, line: 98, baseType: !3398, size: 64, offset: 832)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3425, file: !3426, line: 100, baseType: !3478, size: 64, offset: 896)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3425, file: !3426, line: 101, baseType: !3398, size: 64, offset: 960)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3425, file: !3426, line: 103, baseType: !3398, size: 64, offset: 1024)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3425, file: !3426, line: 105, baseType: !3398, size: 64, offset: 1088)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3425, file: !3426, line: 107, baseType: !3393, size: 64, offset: 1152)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3425, file: !3426, line: 109, baseType: !3506, size: 64, offset: 1216)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3508)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3426, line: 109, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3425, file: !3426, line: 111, baseType: !3510, size: 64, offset: 1280)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3426, line: 111, flags: DIFlagFwdDecl)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3425, file: !3426, line: 112, baseType: !611, offset: 1344)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3425, file: !3426, line: 114, baseType: !453, size: 8, offset: 1344)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !184, file: !73, line: 471, baseType: !3438, size: 64, offset: 832)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !184, file: !73, line: 473, baseType: !137, size: 64, offset: 896)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !184, file: !73, line: 475, baseType: !137, size: 64, offset: 960)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !184, file: !73, line: 480, baseType: !689, size: 192, offset: 1024)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !184, file: !73, line: 484, baseType: !3519, size: 576, offset: 1216)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3519, file: !73, line: 362, baseType: !193, size: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3519, file: !73, line: 363, baseType: !193, size: 128, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3519, file: !73, line: 364, baseType: !193, size: 128, offset: 256)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3519, file: !73, line: 365, baseType: !193, size: 128, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3519, file: !73, line: 366, baseType: !453, size: 8, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3519, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !184, file: !73, line: 485, baseType: !3528, size: 2304, offset: 1792)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3529)
!3529 = !{!3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3625, !3629}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3528, file: !80, line: 566, baseType: !3481, size: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3528, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3528, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3528, file: !80, line: 569, baseType: !453, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3528, file: !80, line: 570, baseType: !453, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3528, file: !80, line: 571, baseType: !453, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3528, file: !80, line: 572, baseType: !453, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3528, file: !80, line: 573, baseType: !453, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3528, file: !80, line: 574, baseType: !453, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3528, file: !80, line: 575, baseType: !453, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3528, file: !80, line: 576, baseType: !453, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3528, file: !80, line: 577, baseType: !134, size: 32, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3528, file: !80, line: 578, baseType: !206, offset: 96)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3528, file: !80, line: 580, baseType: !193, size: 128, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3528, file: !80, line: 581, baseType: !1500, size: 192, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3528, file: !80, line: 582, baseType: !3546, size: 64, offset: 448)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3548, line: 43, size: 1472, elements: !3549)
!3548 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3549 = !{!3550, !3551, !3552, !3553, !3554, !3557, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3547, file: !3548, line: 44, baseType: !191, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3547, file: !3548, line: 45, baseType: !131, size: 32, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3547, file: !3548, line: 46, baseType: !193, size: 128, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3547, file: !3548, line: 47, baseType: !206, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3547, file: !3548, line: 48, baseType: !3555, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3547, file: !3548, line: 49, baseType: !3558, size: 320, offset: 320)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3559, line: 11, size: 320, elements: !3560)
!3559 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3560 = !{!3561, !3562, !3563, !3568}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3558, file: !3559, line: 16, baseType: !605, size: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3558, file: !3559, line: 17, baseType: !138, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3558, file: !3559, line: 18, baseType: !3564, size: 64, offset: 192)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !3567}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3558, file: !3559, line: 19, baseType: !134, size: 32, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3547, file: !3548, line: 50, baseType: !138, size: 64, offset: 640)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3547, file: !3548, line: 51, baseType: !1300, size: 64, offset: 704)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3547, file: !3548, line: 52, baseType: !1300, size: 64, offset: 768)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3547, file: !3548, line: 53, baseType: !1300, size: 64, offset: 832)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3547, file: !3548, line: 54, baseType: !1300, size: 64, offset: 896)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3547, file: !3548, line: 55, baseType: !1300, size: 64, offset: 960)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3547, file: !3548, line: 56, baseType: !138, size: 64, offset: 1024)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3547, file: !3548, line: 57, baseType: !138, size: 64, offset: 1088)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3547, file: !3548, line: 58, baseType: !138, size: 64, offset: 1152)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3547, file: !3548, line: 59, baseType: !138, size: 64, offset: 1216)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3547, file: !3548, line: 60, baseType: !138, size: 64, offset: 1280)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3547, file: !3548, line: 61, baseType: !3367, size: 64, offset: 1344)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3547, file: !3548, line: 62, baseType: !453, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3547, file: !3548, line: 63, baseType: !453, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3528, file: !80, line: 583, baseType: !453, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3528, file: !80, line: 584, baseType: !453, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3528, file: !80, line: 585, baseType: !453, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3528, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3528, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3528, file: !80, line: 592, baseType: !1292, size: 512, offset: 576)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3528, file: !80, line: 593, baseType: !126, size: 64, offset: 1088)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3528, file: !80, line: 594, baseType: !1956, size: 256, offset: 1152)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3528, file: !80, line: 595, baseType: !1479, size: 128, offset: 1408)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3528, file: !80, line: 596, baseType: !3555, size: 64, offset: 1536)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3528, file: !80, line: 597, baseType: !762, size: 32, offset: 1600)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3528, file: !80, line: 598, baseType: !762, size: 32, offset: 1632)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3528, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3528, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3528, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3528, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3528, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3528, file: !80, line: 604, baseType: !453, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3528, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3528, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3528, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3528, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3528, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3528, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3528, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3528, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3528, file: !80, line: 613, baseType: !131, size: 32, offset: 1792)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3528, file: !80, line: 614, baseType: !131, size: 32, offset: 1824)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3528, file: !80, line: 615, baseType: !126, size: 64, offset: 1856)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3528, file: !80, line: 616, baseType: !126, size: 64, offset: 1920)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3528, file: !80, line: 617, baseType: !126, size: 64, offset: 1984)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3528, file: !80, line: 618, baseType: !126, size: 64, offset: 2048)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3528, file: !80, line: 620, baseType: !3616, size: 64, offset: 2112)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3618)
!3618 = !{!3619, !3620, !3621, !3622}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3617, file: !80, line: 537, baseType: !206)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3617, file: !80, line: 538, baseType: !7, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3617, file: !80, line: 540, baseType: !193, size: 128, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3617, file: !80, line: 543, baseType: !3623, size: 64, offset: 192)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3528, file: !80, line: 621, baseType: !3626, size: 64, offset: 2176)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{null, !3367, !1442}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3528, file: !80, line: 622, baseType: !3630, size: 64, offset: 2240)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !184, file: !73, line: 486, baseType: !3633, size: 64, offset: 4096)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3642, !3643, !3644}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3634, file: !80, line: 643, baseType: !3395, size: 1472)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3634, file: !80, line: 644, baseType: !3398, size: 64, offset: 1472)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3634, file: !80, line: 645, baseType: !3639, size: 64, offset: 1536)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !3367, !453}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3634, file: !80, line: 646, baseType: !3398, size: 64, offset: 1600)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3634, file: !80, line: 647, baseType: !3389, size: 64, offset: 1664)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3634, file: !80, line: 648, baseType: !3389, size: 64, offset: 1728)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !184, file: !73, line: 493, baseType: !3646, size: 64, offset: 4160)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !184, file: !73, line: 499, baseType: !193, size: 128, offset: 4224)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !184, file: !73, line: 502, baseType: !3650, size: 64, offset: 4352)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !184, file: !73, line: 504, baseType: !3654, size: 64, offset: 4416)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !184, file: !73, line: 505, baseType: !126, size: 64, offset: 4480)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !184, file: !73, line: 510, baseType: !126, size: 64, offset: 4544)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !184, file: !73, line: 511, baseType: !3658, size: 64, offset: 4608)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3660)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !184, file: !73, line: 513, baseType: !3662, size: 64, offset: 4672)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3664)
!3664 = !{!3665, !3666}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3663, file: !73, line: 293, baseType: !7, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3663, file: !73, line: 294, baseType: !138, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !184, file: !73, line: 515, baseType: !193, size: 128, offset: 4736)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !184, file: !73, line: 526, baseType: !3669, offset: 4864)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3670, line: 5, elements: !220)
!3670 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !184, file: !73, line: 528, baseType: !3672, size: 64, offset: 4864)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3674, line: 51, size: 1344, elements: !3675)
!3674 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3675 = !{!3676, !3677, !3679, !3680, !3770, !3779, !3780, !3781, !3782, !3783, !3784, !3785}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3673, file: !3674, line: 52, baseType: !191, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3673, file: !3674, line: 53, baseType: !3678, size: 32, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3674, line: 28, baseType: !134)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3673, file: !3674, line: 54, baseType: !191, size: 64, offset: 128)
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
!3702 = !{!453, !3703}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3681)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3689, file: !3682, line: 114, baseType: !3706, size: 64, offset: 192)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!2126, !3703, !3709}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3689, file: !3682, line: 116, baseType: !3712, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!453, !3703, !191}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3689, file: !3682, line: 118, baseType: !3716, size: 64, offset: 320)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!131, !3703, !191, !7, !137, !293}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3689, file: !3682, line: 123, baseType: !3720, size: 64, offset: 384)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!131, !3703, !191, !3723, !293}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3689, file: !3682, line: 126, baseType: !3725, size: 64, offset: 448)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!191, !3703}
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
!3740 = !{!3685, !3703, !191}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3689, file: !3682, line: 135, baseType: !3742, size: 64, offset: 768)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!131, !3703, !191, !191, !7, !7, !3745}
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3682, line: 43, size: 640, elements: !3747)
!3747 = !{!3748, !3749, !3750}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3746, file: !3682, line: 44, baseType: !3685, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3746, file: !3682, line: 45, baseType: !7, size: 32, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3746, file: !3682, line: 46, baseType: !3751, size: 512, offset: 128)
!3751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 512, elements: !1330)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3689, file: !3682, line: 140, baseType: !3734, size: 64, offset: 832)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3689, file: !3682, line: 143, baseType: !3730, size: 64, offset: 896)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3689, file: !3682, line: 145, baseType: !3692, size: 64, offset: 960)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3689, file: !3682, line: 146, baseType: !3756, size: 64, offset: 1024)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!131, !3703, !3759}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3682, line: 29, size: 128, elements: !3761)
!3761 = !{!3762, !3763, !3764}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3760, file: !3682, line: 30, baseType: !7, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3760, file: !3682, line: 31, baseType: !7, size: 32, offset: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3760, file: !3682, line: 32, baseType: !3703, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3689, file: !3682, line: 148, baseType: !3766, size: 64, offset: 1088)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!131, !3703, !3367}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3681, file: !3682, line: 20, baseType: !3367, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3673, file: !3674, line: 57, baseType: !3771, size: 64, offset: 384)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3674, line: 31, size: 704, elements: !3773)
!3773 = !{!3774, !3775, !3776, !3777, !3778}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3772, file: !3674, line: 32, baseType: !247, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3772, file: !3674, line: 33, baseType: !131, size: 32, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3772, file: !3674, line: 34, baseType: !137, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3772, file: !3674, line: 35, baseType: !3771, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3772, file: !3674, line: 43, baseType: !314, size: 448, offset: 256)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3673, file: !3674, line: 58, baseType: !3771, size: 64, offset: 448)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3673, file: !3674, line: 59, baseType: !3672, size: 64, offset: 512)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3673, file: !3674, line: 60, baseType: !3672, size: 64, offset: 576)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3673, file: !3674, line: 61, baseType: !3672, size: 64, offset: 640)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3673, file: !3674, line: 63, baseType: !187, size: 512, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3673, file: !3674, line: 65, baseType: !138, size: 64, offset: 1216)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3673, file: !3674, line: 66, baseType: !137, size: 64, offset: 1280)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !184, file: !73, line: 529, baseType: !3685, size: 64, offset: 4928)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !184, file: !73, line: 534, baseType: !476, size: 32, offset: 4992)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !184, file: !73, line: 535, baseType: !134, size: 32, offset: 5024)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !184, file: !73, line: 537, baseType: !206, offset: 5056)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !184, file: !73, line: 538, baseType: !193, size: 128, offset: 5056)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !184, file: !73, line: 540, baseType: !3792, size: 64, offset: 5184)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3794, line: 54, size: 960, elements: !3795)
!3794 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3795 = !{!3796, !3797, !3798, !3799, !3800, !3801, !3802, !3806, !3810, !3811, !3812, !3813, !3817, !3821, !3822}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3793, file: !3794, line: 55, baseType: !191, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3793, file: !3794, line: 56, baseType: !596, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3793, file: !3794, line: 58, baseType: !299, size: 64, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3793, file: !3794, line: 59, baseType: !299, size: 64, offset: 192)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3793, file: !3794, line: 60, baseType: !199, size: 64, offset: 256)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3793, file: !3794, line: 62, baseType: !3380, size: 64, offset: 320)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3793, file: !3794, line: 63, baseType: !3803, size: 64, offset: 384)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!247, !3367, !3387}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3793, file: !3794, line: 65, baseType: !3807, size: 64, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{null, !3792}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3793, file: !3794, line: 66, baseType: !3389, size: 64, offset: 512)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3793, file: !3794, line: 68, baseType: !3398, size: 64, offset: 576)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3793, file: !3794, line: 70, baseType: !3195, size: 64, offset: 640)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3793, file: !3794, line: 71, baseType: !3814, size: 64, offset: 704)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!2126, !3367}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3793, file: !3794, line: 73, baseType: !3818, size: 64, offset: 768)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{null, !3367, !3227, !3228}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3793, file: !3794, line: 75, baseType: !3393, size: 64, offset: 832)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3793, file: !3794, line: 77, baseType: !3510, size: 64, offset: 896)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !184, file: !73, line: 541, baseType: !299, size: 64, offset: 5248)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !184, file: !73, line: 543, baseType: !3389, size: 64, offset: 5312)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !184, file: !73, line: 544, baseType: !3826, size: 64, offset: 5376)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !184, file: !73, line: 545, baseType: !3829, size: 64, offset: 5440)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !184, file: !73, line: 547, baseType: !453, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !184, file: !73, line: 548, baseType: !453, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !184, file: !73, line: 549, baseType: !453, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !184, file: !73, line: 550, baseType: !453, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !180, file: !181, line: 161, baseType: !3836, size: 64, offset: 5568)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_controller", file: !181, line: 466, size: 11072, elements: !3838)
!3838 = !{!3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3855, !3856, !3857, !3858, !3859, !3860, !3864, !3873, !3891, !3895, !3945, !3946, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3988, !3992, !3993, !3994, !3995, !3996, !3998, !4002, !4006, !4098, !4099, !4100, !4101, !4102, !4107, !4108, !4109, !4110, !4129, !4132, !4133, !4134, !4135, !4139, !4140}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3837, file: !181, line: 467, baseType: !184, size: 5568)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3837, file: !181, line: 469, baseType: !193, size: 128, offset: 5568)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "bus_num", scope: !3837, file: !181, line: 477, baseType: !1203, size: 16, offset: 5696)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "num_chipselect", scope: !3837, file: !181, line: 482, baseType: !147, size: 16, offset: 5712)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3837, file: !181, line: 487, baseType: !147, size: 16, offset: 5728)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !3837, file: !181, line: 490, baseType: !134, size: 32, offset: 5760)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth_override_bits", scope: !3837, file: !181, line: 493, baseType: !134, size: 32, offset: 5792)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_word_mask", scope: !3837, file: !181, line: 496, baseType: !134, size: 32, offset: 5824)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "min_speed_hz", scope: !3837, file: !181, line: 501, baseType: !134, size: 32, offset: 5856)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed_hz", scope: !3837, file: !181, line: 502, baseType: !134, size: 32, offset: 5888)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3837, file: !181, line: 505, baseType: !147, size: 16, offset: 5920)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !3837, file: !181, line: 515, baseType: !453, size: 8, offset: 5936)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "max_transfer_size", scope: !3837, file: !181, line: 521, baseType: !3852, size: 64, offset: 5952)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!293, !179}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "max_message_size", scope: !3837, file: !181, line: 522, baseType: !3852, size: 64, offset: 6016)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "io_mutex", scope: !3837, file: !181, line: 525, baseType: !689, size: 192, offset: 6080)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock_spinlock", scope: !3837, file: !181, line: 528, baseType: !206, offset: 6272)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock_mutex", scope: !3837, file: !181, line: 529, baseType: !689, size: 192, offset: 6272)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock_flag", scope: !3837, file: !181, line: 532, baseType: !453, size: 8, offset: 6464)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3837, file: !181, line: 540, baseType: !3861, size: 64, offset: 6528)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!131, !179}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "set_cs_timing", scope: !3837, file: !181, line: 550, baseType: !3865, size: 64, offset: 6592)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!131, !179, !3868, !3868, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_delay", file: !181, line: 98, size: 32, elements: !3870)
!3870 = !{!3871, !3872}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3869, file: !181, line: 102, baseType: !147, size: 16)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "unit", scope: !3869, file: !181, line: 103, baseType: !143, size: 8, offset: 16)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !3837, file: !181, line: 572, baseType: !3874, size: 64, offset: 6656)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!131, !179, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_message", file: !181, line: 999, size: 832, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "transfers", scope: !3878, file: !181, line: 1000, baseType: !193, size: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "spi", scope: !3878, file: !181, line: 1002, baseType: !179, size: 64, offset: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "is_dma_mapped", scope: !3878, file: !181, line: 1004, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3878, file: !181, line: 1018, baseType: !431, size: 64, offset: 256)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3878, file: !181, line: 1019, baseType: !137, size: 64, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "frame_length", scope: !3878, file: !181, line: 1020, baseType: !7, size: 32, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3878, file: !181, line: 1021, baseType: !7, size: 32, offset: 416)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3878, file: !181, line: 1022, baseType: !131, size: 32, offset: 448)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3878, file: !181, line: 1028, baseType: !193, size: 128, offset: 512)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3878, file: !181, line: 1029, baseType: !137, size: 64, offset: 640)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3878, file: !181, line: 1032, baseType: !193, size: 128, offset: 704)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3837, file: !181, line: 576, baseType: !3892, size: 64, offset: 6720)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{null, !179}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "can_dma", scope: !3837, file: !181, line: 585, baseType: !3896, size: 64, offset: 6784)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!453, !3836, !179, !3899}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_transfer", file: !181, line: 926, size: 1152, elements: !3901)
!3901 = !{!3902, !3903, !3904, !3905, !3906, !3907, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3942, !3943, !3944}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "tx_buf", scope: !3900, file: !181, line: 932, baseType: !2126, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf", scope: !3900, file: !181, line: 933, baseType: !137, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3900, file: !181, line: 934, baseType: !7, size: 32, offset: 128)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "tx_dma", scope: !3900, file: !181, line: 936, baseType: !124, size: 64, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "rx_dma", scope: !3900, file: !181, line: 937, baseType: !124, size: 64, offset: 256)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "tx_sg", scope: !3900, file: !181, line: 938, baseType: !3908, size: 128, offset: 320)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !3909, line: 42, size: 128, elements: !3910)
!3909 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!3910 = !{!3911, !3920, !3921}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !3908, file: !3909, line: 43, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !3909, line: 11, size: 256, elements: !3914)
!3914 = !{!3915, !3916, !3917, !3918, !3919}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !3913, file: !3909, line: 12, baseType: !138, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3913, file: !3909, line: 13, baseType: !7, size: 32, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3913, file: !3909, line: 14, baseType: !7, size: 32, offset: 96)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !3913, file: !3909, line: 15, baseType: !124, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !3913, file: !3909, line: 17, baseType: !7, size: 32, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !3908, file: !3909, line: 44, baseType: !7, size: 32, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !3908, file: !3909, line: 45, baseType: !7, size: 32, offset: 96)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "rx_sg", scope: !3900, file: !181, line: 939, baseType: !3908, size: 128, offset: 448)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "cs_change", scope: !3900, file: !181, line: 941, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "tx_nbits", scope: !3900, file: !181, line: 942, baseType: !7, size: 3, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "rx_nbits", scope: !3900, file: !181, line: 943, baseType: !7, size: 3, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_word", scope: !3900, file: !181, line: 947, baseType: !143, size: 8, offset: 584)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "delay_usecs", scope: !3900, file: !181, line: 948, baseType: !147, size: 16, offset: 592)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !3900, file: !181, line: 949, baseType: !3869, size: 32, offset: 608)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "cs_change_delay", scope: !3900, file: !181, line: 950, baseType: !3869, size: 32, offset: 640)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "word_delay", scope: !3900, file: !181, line: 951, baseType: !3869, size: 32, offset: 672)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "speed_hz", scope: !3900, file: !181, line: 952, baseType: !134, size: 32, offset: 704)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "effective_speed_hz", scope: !3900, file: !181, line: 954, baseType: !134, size: 32, offset: 736)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts_word_pre", scope: !3900, file: !181, line: 956, baseType: !7, size: 32, offset: 768)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts_word_post", scope: !3900, file: !181, line: 957, baseType: !7, size: 32, offset: 800)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts", scope: !3900, file: !181, line: 959, baseType: !3936, size: 64, offset: 832)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_system_timestamp", file: !3938, line: 33, size: 256, elements: !3939)
!3938 = !DIFile(filename: "./include/linux/ptp_clock_kernel.h", directory: "/home/lizy2001/genbc/linux")
!3939 = !{!3940, !3941}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "pre_ts", scope: !3937, file: !3938, line: 34, baseType: !498, size: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "post_ts", scope: !3937, file: !3938, line: 35, baseType: !498, size: 128, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "timestamped", scope: !3900, file: !181, line: 961, baseType: !453, size: 8, offset: 896)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_list", scope: !3900, file: !181, line: 963, baseType: !193, size: 128, offset: 960)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3900, file: !181, line: 966, baseType: !147, size: 16, offset: 1088)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !3837, file: !181, line: 595, baseType: !453, size: 8, offset: 6848)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "kworker", scope: !3837, file: !181, line: 596, baseType: !3947, size: 64, offset: 6912)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !3949, line: 89, size: 448, elements: !3950)
!3949 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/lizy2001/genbc/linux")
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3948, file: !3949, line: 90, baseType: !7, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3948, file: !3949, line: 91, baseType: !788, offset: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3948, file: !3949, line: 92, baseType: !193, size: 128, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !3948, file: !3949, line: 93, baseType: !193, size: 128, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3948, file: !3949, line: 94, baseType: !1216, size: 64, offset: 320)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !3948, file: !3949, line: 95, baseType: !3957, size: 64, offset: 384)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !3949, line: 98, size: 320, elements: !3959)
!3959 = !{!3960, !3961, !3966, !3967}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3958, file: !3949, line: 99, baseType: !193, size: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3958, file: !3949, line: 100, baseType: !3962, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !3949, line: 82, baseType: !3963)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !3957}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !3958, file: !3949, line: 101, baseType: !3947, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !3958, file: !3949, line: 103, baseType: !131, size: 32, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "pump_messages", scope: !3837, file: !181, line: 597, baseType: !3958, size: 320, offset: 6976)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !3837, file: !181, line: 598, baseType: !206, offset: 7296)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3837, file: !181, line: 599, baseType: !193, size: 128, offset: 7296)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "cur_msg", scope: !3837, file: !181, line: 600, baseType: !3877, size: 64, offset: 7424)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "idling", scope: !3837, file: !181, line: 601, baseType: !453, size: 8, offset: 7488)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3837, file: !181, line: 602, baseType: !453, size: 8, offset: 7496)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3837, file: !181, line: 603, baseType: !453, size: 8, offset: 7504)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3837, file: !181, line: 604, baseType: !453, size: 8, offset: 7512)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "auto_runtime_pm", scope: !3837, file: !181, line: 605, baseType: !453, size: 8, offset: 7520)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "cur_msg_prepared", scope: !3837, file: !181, line: 606, baseType: !453, size: 8, offset: 7528)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "cur_msg_mapped", scope: !3837, file: !181, line: 607, baseType: !453, size: 8, offset: 7536)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "last_cs_enable", scope: !3837, file: !181, line: 608, baseType: !453, size: 8, offset: 7544)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "last_cs_mode_high", scope: !3837, file: !181, line: 609, baseType: !453, size: 8, offset: 7552)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "fallback", scope: !3837, file: !181, line: 610, baseType: !453, size: 8, offset: 7560)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_completion", scope: !3837, file: !181, line: 611, baseType: !1500, size: 192, offset: 7616)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "max_dma_len", scope: !3837, file: !181, line: 612, baseType: !293, size: 64, offset: 7808)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_transfer_hardware", scope: !3837, file: !181, line: 614, baseType: !3985, size: 64, offset: 7872)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!131, !3836}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_one_message", scope: !3837, file: !181, line: 615, baseType: !3989, size: 64, offset: 7936)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!131, !3836, !3877}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_transfer_hardware", scope: !3837, file: !181, line: 617, baseType: !3985, size: 64, offset: 8000)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_message", scope: !3837, file: !181, line: 618, baseType: !3989, size: 64, offset: 8064)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_message", scope: !3837, file: !181, line: 620, baseType: !3989, size: 64, offset: 8128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "slave_abort", scope: !3837, file: !181, line: 622, baseType: !3985, size: 64, offset: 8192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "set_cs", scope: !3837, file: !181, line: 628, baseType: !3997, size: 64, offset: 8256)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_one", scope: !3837, file: !181, line: 629, baseType: !3999, size: 64, offset: 8320)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!131, !3836, !179, !3899}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "handle_err", scope: !3837, file: !181, line: 631, baseType: !4003, size: 64, offset: 8384)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{null, !3836, !3877}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "mem_ops", scope: !3837, file: !181, line: 635, baseType: !4007, size: 64, offset: 8448)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4009)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_controller_mem_ops", file: !94, line: 264, size: 512, elements: !4010)
!4010 = !{!4011, !4056, !4062, !4066, !4070, !4086, !4090, !4094}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "adjust_op_size", scope: !4009, file: !94, line: 265, baseType: !4012, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!131, !4015, !4021}
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_mem", file: !94, line: 194, size: 192, elements: !4017)
!4017 = !{!4018, !4019, !4020}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "spi", scope: !4016, file: !94, line: 195, baseType: !179, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "drvpriv", scope: !4016, file: !94, line: 196, baseType: !137, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4016, file: !94, line: 197, baseType: !191, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_mem_op", file: !94, line: 98, size: 448, elements: !4023)
!4023 = !{!4024, !4031, !4038, !4044}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4022, file: !94, line: 104, baseType: !4025, size: 48)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4022, file: !94, line: 99, size: 48, elements: !4026)
!4026 = !{!4027, !4028, !4029, !4030}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4025, file: !94, line: 100, baseType: !143, size: 8)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth", scope: !4025, file: !94, line: 101, baseType: !143, size: 8, offset: 8)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !4025, file: !94, line: 102, baseType: !143, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4025, file: !94, line: 103, baseType: !147, size: 16, offset: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4022, file: !94, line: 111, baseType: !4032, size: 128, offset: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4022, file: !94, line: 106, size: 128, elements: !4033)
!4033 = !{!4034, !4035, !4036, !4037}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4032, file: !94, line: 107, baseType: !143, size: 8)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth", scope: !4032, file: !94, line: 108, baseType: !143, size: 8, offset: 8)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !4032, file: !94, line: 109, baseType: !143, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4032, file: !94, line: 110, baseType: !126, size: 64, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !4022, file: !94, line: 117, baseType: !4039, size: 24, offset: 192)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4022, file: !94, line: 113, size: 24, elements: !4040)
!4040 = !{!4041, !4042, !4043}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4039, file: !94, line: 114, baseType: !143, size: 8)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth", scope: !4039, file: !94, line: 115, baseType: !143, size: 8, offset: 8)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !4039, file: !94, line: 116, baseType: !143, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4022, file: !94, line: 128, baseType: !4045, size: 192, offset: 256)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4022, file: !94, line: 119, size: 192, elements: !4046)
!4046 = !{!4047, !4048, !4049, !4050, !4051}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth", scope: !4045, file: !94, line: 120, baseType: !143, size: 8)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !4045, file: !94, line: 121, baseType: !143, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4045, file: !94, line: 122, baseType: !93, size: 32, offset: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4045, file: !94, line: 123, baseType: !7, size: 32, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4045, file: !94, line: 127, baseType: !4052, size: 64, offset: 128)
!4052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4045, file: !94, line: 124, size: 64, elements: !4053)
!4053 = !{!4054, !4055}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4052, file: !94, line: 125, baseType: !137, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4052, file: !94, line: 126, baseType: !2126, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "supports_op", scope: !4009, file: !94, line: 266, baseType: !4057, size: 64, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!453, !4015, !4060}
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4022)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "exec_op", scope: !4009, file: !94, line: 268, baseType: !4063, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!131, !4015, !4060}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4009, file: !94, line: 270, baseType: !4067, size: 64, offset: 192)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!191, !4015}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "dirmap_create", scope: !4009, file: !94, line: 271, baseType: !4071, size: 64, offset: 256)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!131, !4074}
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_mem_dirmap_desc", file: !94, line: 175, size: 768, elements: !4076)
!4076 = !{!4077, !4078, !4084, !4085}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !4075, file: !94, line: 176, baseType: !4015, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4075, file: !94, line: 177, baseType: !4079, size: 576, offset: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_mem_dirmap_info", file: !94, line: 152, size: 576, elements: !4080)
!4080 = !{!4081, !4082, !4083}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "op_tmpl", scope: !4079, file: !94, line: 153, baseType: !4022, size: 448)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4079, file: !94, line: 154, baseType: !126, size: 64, offset: 448)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4079, file: !94, line: 155, baseType: !126, size: 64, offset: 512)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "nodirmap", scope: !4075, file: !94, line: 178, baseType: !7, size: 32, offset: 640)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4075, file: !94, line: 179, baseType: !137, size: 64, offset: 704)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "dirmap_destroy", scope: !4009, file: !94, line: 272, baseType: !4087, size: 64, offset: 320)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{null, !4074}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "dirmap_read", scope: !4009, file: !94, line: 273, baseType: !4091, size: 64, offset: 384)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!278, !4074, !126, !293, !137}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "dirmap_write", scope: !4009, file: !94, line: 275, baseType: !4095, size: 64, offset: 448)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!278, !4074, !126, !293, !2126}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "cs_setup", scope: !3837, file: !181, line: 638, baseType: !3869, size: 32, offset: 8512)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "cs_hold", scope: !3837, file: !181, line: 639, baseType: !3869, size: 32, offset: 8544)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "cs_inactive", scope: !3837, file: !181, line: 640, baseType: !3869, size: 32, offset: 8576)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpios", scope: !3837, file: !181, line: 643, baseType: !671, size: 64, offset: 8640)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpiods", scope: !3837, file: !181, line: 644, baseType: !4103, size: 64, offset: 8704)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4106, line: 19, flags: DIFlagFwdDecl)
!4106 = !DIFile(filename: "./include/linux/gpio/consumer.h", directory: "/home/lizy2001/genbc/linux")
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "use_gpio_descriptors", scope: !3837, file: !181, line: 645, baseType: !453, size: 8, offset: 8768)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "unused_native_cs", scope: !3837, file: !181, line: 646, baseType: !143, size: 8, offset: 8776)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "max_native_cs", scope: !3837, file: !181, line: 647, baseType: !143, size: 8, offset: 8784)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !3837, file: !181, line: 650, baseType: !4111, size: 1792, offset: 8832)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_statistics", file: !181, line: 56, size: 1792, elements: !4112)
!4112 = !{!4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4128}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4111, file: !181, line: 57, baseType: !206)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "messages", scope: !4111, file: !181, line: 59, baseType: !138, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "transfers", scope: !4111, file: !181, line: 60, baseType: !138, size: 64, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !4111, file: !181, line: 61, baseType: !138, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !4111, file: !181, line: 62, baseType: !138, size: 64, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "spi_sync", scope: !4111, file: !181, line: 64, baseType: !138, size: 64, offset: 256)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "spi_sync_immediate", scope: !4111, file: !181, line: 65, baseType: !138, size: 64, offset: 320)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "spi_async", scope: !4111, file: !181, line: 66, baseType: !138, size: 64, offset: 384)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4111, file: !181, line: 68, baseType: !130, size: 64, offset: 448)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_rx", scope: !4111, file: !181, line: 69, baseType: !130, size: 64, offset: 512)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_tx", scope: !4111, file: !181, line: 70, baseType: !130, size: 64, offset: 576)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_bytes_histo", scope: !4111, file: !181, line: 73, baseType: !4125, size: 1088, offset: 640)
!4125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 1088, elements: !4126)
!4126 = !{!4127}
!4127 = !DISubrange(count: 17)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "transfers_split_maxsize", scope: !4111, file: !181, line: 75, baseType: !138, size: 64, offset: 1728)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "dma_tx", scope: !3837, file: !181, line: 653, baseType: !4130, size: 64, offset: 10624)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan", file: !181, line: 18, flags: DIFlagFwdDecl)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "dma_rx", scope: !3837, file: !181, line: 654, baseType: !4130, size: 64, offset: 10688)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_rx", scope: !3837, file: !181, line: 657, baseType: !137, size: 64, offset: 10752)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_tx", scope: !3837, file: !181, line: 658, baseType: !137, size: 64, offset: 10816)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "fw_translate_cs", scope: !3837, file: !181, line: 660, baseType: !4136, size: 64, offset: 10880)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!131, !3836, !7}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts_supported", scope: !3837, file: !181, line: 666, baseType: !453, size: 8, offset: 10944)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags", scope: !3837, file: !181, line: 669, baseType: !138, size: 64, offset: 11008)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !180, file: !181, line: 162, baseType: !3836, size: 64, offset: 5632)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed_hz", scope: !180, file: !181, line: 163, baseType: !134, size: 32, offset: 5696)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "chip_select", scope: !180, file: !181, line: 164, baseType: !143, size: 8, offset: 5728)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_word", scope: !180, file: !181, line: 165, baseType: !143, size: 8, offset: 5736)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !180, file: !181, line: 166, baseType: !453, size: 8, offset: 5744)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !180, file: !181, line: 167, baseType: !134, size: 32, offset: 5760)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !180, file: !181, line: 188, baseType: !131, size: 32, offset: 5792)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "controller_state", scope: !180, file: !181, line: 189, baseType: !137, size: 64, offset: 5824)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "controller_data", scope: !180, file: !181, line: 190, baseType: !137, size: 64, offset: 5888)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "modalias", scope: !180, file: !181, line: 191, baseType: !2699, size: 256, offset: 5952)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !180, file: !181, line: 192, baseType: !191, size: 64, offset: 6208)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpio", scope: !180, file: !181, line: 193, baseType: !131, size: 32, offset: 6272)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpiod", scope: !180, file: !181, line: 194, baseType: !4104, size: 64, offset: 6336)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "word_delay", scope: !180, file: !181, line: 195, baseType: !3869, size: 32, offset: 6400)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !180, file: !181, line: 198, baseType: !4111, size: 1792, offset: 6464)
!4156 = !DILocalVariable(name: "spi", arg: 1, scope: !176, file: !3, line: 92, type: !179)
!4157 = !DILocation(line: 92, column: 39, scope: !176)
!4158 = !DILocalVariable(name: "enable", arg: 2, scope: !176, file: !3, line: 92, type: !453)
!4159 = !DILocation(line: 92, column: 49, scope: !176)
!4160 = !DILocalVariable(name: "dws", scope: !176, file: !3, line: 94, type: !4161)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dw_spi", file: !118, line: 144, size: 4288, elements: !4163)
!4163 = !{!4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4184, !4185, !4186, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4222}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4162, file: !118, line: 145, baseType: !3836, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4162, file: !118, line: 147, baseType: !137, size: 64, offset: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", scope: !4162, file: !118, line: 148, baseType: !138, size: 64, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4162, file: !118, line: 149, baseType: !131, size: 32, offset: 192)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_len", scope: !4162, file: !118, line: 150, baseType: !134, size: 32, offset: 224)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "max_mem_freq", scope: !4162, file: !118, line: 151, baseType: !134, size: 32, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !4162, file: !118, line: 152, baseType: !134, size: 32, offset: 288)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4162, file: !118, line: 154, baseType: !134, size: 32, offset: 320)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "reg_io_width", scope: !4162, file: !118, line: 156, baseType: !134, size: 32, offset: 352)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "bus_num", scope: !4162, file: !118, line: 157, baseType: !147, size: 16, offset: 384)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "num_cs", scope: !4162, file: !118, line: 158, baseType: !147, size: 16, offset: 400)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "set_cs", scope: !4162, file: !118, line: 159, baseType: !3997, size: 64, offset: 448)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !4162, file: !118, line: 162, baseType: !137, size: 64, offset: 512)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "tx_len", scope: !4162, file: !118, line: 163, baseType: !7, size: 32, offset: 576)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !4162, file: !118, line: 164, baseType: !137, size: 64, offset: 640)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "rx_len", scope: !4162, file: !118, line: 165, baseType: !7, size: 32, offset: 704)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4162, file: !118, line: 166, baseType: !4181, size: 2128, offset: 736)
!4181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 2128, elements: !4182)
!4182 = !{!4183}
!4183 = !DISubrange(count: 266)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mapped", scope: !4162, file: !118, line: 167, baseType: !131, size: 32, offset: 2880)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "n_bytes", scope: !4162, file: !118, line: 168, baseType: !143, size: 8, offset: 2912)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_handler", scope: !4162, file: !118, line: 169, baseType: !4187, size: 64, offset: 2944)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!4190, !4161}
!4190 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !100, line: 17, baseType: !99)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "current_freq", scope: !4162, file: !118, line: 170, baseType: !134, size: 32, offset: 3008)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "cur_rx_sample_dly", scope: !4162, file: !118, line: 171, baseType: !134, size: 32, offset: 3040)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "def_rx_sample_dly_ns", scope: !4162, file: !118, line: 172, baseType: !134, size: 32, offset: 3072)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "mem_ops", scope: !4162, file: !118, line: 175, baseType: !4009, size: 512, offset: 3136)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "txchan", scope: !4162, file: !118, line: 178, baseType: !4130, size: 64, offset: 3648)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "txburst", scope: !4162, file: !118, line: 179, baseType: !134, size: 32, offset: 3712)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "rxchan", scope: !4162, file: !118, line: 180, baseType: !4130, size: 64, offset: 3776)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "rxburst", scope: !4162, file: !118, line: 181, baseType: !134, size: 32, offset: 3840)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "dma_sg_burst", scope: !4162, file: !118, line: 182, baseType: !134, size: 32, offset: 3872)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "dma_chan_busy", scope: !4162, file: !118, line: 183, baseType: !138, size: 64, offset: 3904)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4162, file: !118, line: 184, baseType: !124, size: 64, offset: 3968)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4162, file: !118, line: 185, baseType: !4203, size: 64, offset: 4032)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4205)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dw_spi_dma_ops", file: !118, line: 134, size: 384, elements: !4206)
!4206 = !{!4207, !4211, !4215, !4219, !4220, !4221}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "dma_init", scope: !4205, file: !118, line: 135, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!131, !3367, !4161}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dma_exit", scope: !4205, file: !118, line: 136, baseType: !4212, size: 64, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{null, !4161}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "dma_setup", scope: !4205, file: !118, line: 137, baseType: !4216, size: 64, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!131, !4161, !3899}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "can_dma", scope: !4205, file: !118, line: 138, baseType: !3896, size: 64, offset: 192)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "dma_transfer", scope: !4205, file: !118, line: 140, baseType: !4216, size: 64, offset: 256)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dma_stop", scope: !4205, file: !118, line: 141, baseType: !4212, size: 64, offset: 320)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "dma_completion", scope: !4162, file: !118, line: 186, baseType: !1500, size: 192, offset: 4096)
!4223 = !DILocation(line: 94, column: 17, scope: !176)
!4224 = !DILocation(line: 94, column: 50, scope: !176)
!4225 = !DILocation(line: 94, column: 55, scope: !176)
!4226 = !DILocation(line: 94, column: 23, scope: !176)
!4227 = !DILocalVariable(name: "cs_high", scope: !176, file: !3, line: 95, type: !453)
!4228 = !DILocation(line: 95, column: 7, scope: !176)
!4229 = !DILocation(line: 95, column: 20, scope: !176)
!4230 = !DILocation(line: 95, column: 25, scope: !176)
!4231 = !DILocation(line: 95, column: 30, scope: !176)
!4232 = !DILocation(line: 95, column: 18, scope: !176)
!4233 = !DILocation(line: 95, column: 17, scope: !176)
!4234 = !DILocation(line: 104, column: 6, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !176, file: !3, line: 104, column: 6)
!4236 = !DILocation(line: 104, column: 17, scope: !4235)
!4237 = !DILocation(line: 104, column: 14, scope: !4235)
!4238 = !DILocation(line: 104, column: 6, scope: !176)
!4239 = !DILocation(line: 105, column: 13, scope: !4235)
!4240 = !DILocation(line: 105, column: 30, scope: !4235)
!4241 = !DILocation(line: 105, column: 3, scope: !4235)
!4242 = !DILocation(line: 107, column: 13, scope: !4235)
!4243 = !DILocation(line: 107, column: 3, scope: !4235)
!4244 = !DILocation(line: 108, column: 1, scope: !176)
!4245 = distinct !DISubprogram(name: "spi_controller_get_devdata", scope: !181, file: !181, line: 672, type: !4246, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!137, !3836}
!4248 = !DILocalVariable(name: "ctlr", arg: 1, scope: !4245, file: !181, line: 672, type: !3836)
!4249 = !DILocation(line: 672, column: 71, scope: !4245)
!4250 = !DILocation(line: 674, column: 26, scope: !4245)
!4251 = !DILocation(line: 674, column: 32, scope: !4245)
!4252 = !DILocation(line: 674, column: 9, scope: !4245)
!4253 = !DILocation(line: 674, column: 2, scope: !4245)
!4254 = distinct !DISubprogram(name: "dw_writel", scope: !118, file: !118, line: 199, type: !4255, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !4161, !134, !134}
!4257 = !DILocalVariable(name: "dws", arg: 1, scope: !4254, file: !118, line: 199, type: !4161)
!4258 = !DILocation(line: 199, column: 45, scope: !4254)
!4259 = !DILocalVariable(name: "offset", arg: 2, scope: !4254, file: !118, line: 199, type: !134)
!4260 = !DILocation(line: 199, column: 54, scope: !4254)
!4261 = !DILocalVariable(name: "val", arg: 3, scope: !4254, file: !118, line: 199, type: !134)
!4262 = !DILocation(line: 199, column: 66, scope: !4254)
!4263 = !DILocation(line: 201, column: 15, scope: !4254)
!4264 = !DILocation(line: 201, column: 20, scope: !4254)
!4265 = !DILocation(line: 201, column: 25, scope: !4254)
!4266 = !DILocation(line: 201, column: 32, scope: !4254)
!4267 = !DILocation(line: 201, column: 30, scope: !4254)
!4268 = !DILocation(line: 201, column: 2, scope: !4254)
!4269 = !DILocation(line: 202, column: 1, scope: !4254)
!4270 = distinct !DISubprogram(name: "dw_spi_check_status", scope: !3, file: !3, line: 175, type: !4271, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!131, !4161, !453}
!4273 = !DILocalVariable(name: "dws", arg: 1, scope: !4270, file: !3, line: 175, type: !4161)
!4274 = !DILocation(line: 175, column: 40, scope: !4270)
!4275 = !DILocalVariable(name: "raw", arg: 2, scope: !4270, file: !3, line: 175, type: !453)
!4276 = !DILocation(line: 175, column: 50, scope: !4270)
!4277 = !DILocalVariable(name: "irq_status", scope: !4270, file: !3, line: 177, type: !134)
!4278 = !DILocation(line: 177, column: 6, scope: !4270)
!4279 = !DILocalVariable(name: "ret", scope: !4270, file: !3, line: 178, type: !131)
!4280 = !DILocation(line: 178, column: 6, scope: !4270)
!4281 = !DILocation(line: 180, column: 6, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 180, column: 6)
!4283 = !DILocation(line: 180, column: 6, scope: !4270)
!4284 = !DILocation(line: 181, column: 25, scope: !4282)
!4285 = !DILocation(line: 181, column: 16, scope: !4282)
!4286 = !DILocation(line: 181, column: 14, scope: !4282)
!4287 = !DILocation(line: 181, column: 3, scope: !4282)
!4288 = !DILocation(line: 183, column: 25, scope: !4282)
!4289 = !DILocation(line: 183, column: 16, scope: !4282)
!4290 = !DILocation(line: 183, column: 14, scope: !4282)
!4291 = !DILocation(line: 185, column: 6, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 185, column: 6)
!4293 = !DILocation(line: 185, column: 17, scope: !4292)
!4294 = !DILocation(line: 185, column: 6, scope: !4270)
!4295 = !DILocation(line: 186, column: 3, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4292, file: !3, line: 185, column: 33)
!4297 = !DILocation(line: 187, column: 7, scope: !4296)
!4298 = !DILocation(line: 188, column: 2, scope: !4296)
!4299 = !DILocation(line: 190, column: 6, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 190, column: 6)
!4301 = !DILocation(line: 190, column: 17, scope: !4300)
!4302 = !DILocation(line: 190, column: 6, scope: !4270)
!4303 = !DILocation(line: 191, column: 3, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 190, column: 33)
!4305 = !DILocation(line: 192, column: 7, scope: !4304)
!4306 = !DILocation(line: 193, column: 2, scope: !4304)
!4307 = !DILocation(line: 195, column: 6, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 195, column: 6)
!4309 = !DILocation(line: 195, column: 17, scope: !4308)
!4310 = !DILocation(line: 195, column: 6, scope: !4270)
!4311 = !DILocation(line: 196, column: 3, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 195, column: 33)
!4313 = !DILocation(line: 197, column: 7, scope: !4312)
!4314 = !DILocation(line: 198, column: 2, scope: !4312)
!4315 = !DILocation(line: 201, column: 6, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 201, column: 6)
!4317 = !DILocation(line: 201, column: 6, scope: !4270)
!4318 = !DILocation(line: 202, column: 18, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4316, file: !3, line: 201, column: 11)
!4320 = !DILocation(line: 202, column: 3, scope: !4319)
!4321 = !DILocation(line: 203, column: 7, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 203, column: 7)
!4323 = !DILocation(line: 203, column: 12, scope: !4322)
!4324 = !DILocation(line: 203, column: 20, scope: !4322)
!4325 = !DILocation(line: 203, column: 7, scope: !4319)
!4326 = !DILocation(line: 204, column: 35, scope: !4322)
!4327 = !DILocation(line: 204, column: 4, scope: !4322)
!4328 = !DILocation(line: 204, column: 9, scope: !4322)
!4329 = !DILocation(line: 204, column: 17, scope: !4322)
!4330 = !DILocation(line: 204, column: 26, scope: !4322)
!4331 = !DILocation(line: 204, column: 33, scope: !4322)
!4332 = !DILocation(line: 205, column: 2, scope: !4319)
!4333 = !DILocation(line: 207, column: 9, scope: !4270)
!4334 = !DILocation(line: 207, column: 2, scope: !4270)
!4335 = distinct !DISubprogram(name: "dw_readl", scope: !118, file: !118, line: 194, type: !4336, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!134, !4161, !134}
!4338 = !DILocalVariable(name: "dws", arg: 1, scope: !4335, file: !118, line: 194, type: !4161)
!4339 = !DILocation(line: 194, column: 43, scope: !4335)
!4340 = !DILocalVariable(name: "offset", arg: 2, scope: !4335, file: !118, line: 194, type: !134)
!4341 = !DILocation(line: 194, column: 52, scope: !4335)
!4342 = !DILocation(line: 196, column: 21, scope: !4335)
!4343 = !DILocation(line: 196, column: 26, scope: !4335)
!4344 = !DILocation(line: 196, column: 33, scope: !4335)
!4345 = !DILocation(line: 196, column: 31, scope: !4335)
!4346 = !DILocation(line: 196, column: 9, scope: !4335)
!4347 = !DILocation(line: 196, column: 2, scope: !4335)
!4348 = distinct !DISubprogram(name: "spi_reset_chip", scope: !118, file: !118, line: 261, type: !4213, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4349 = !DILocalVariable(name: "dws", arg: 1, scope: !4348, file: !118, line: 261, type: !4161)
!4350 = !DILocation(line: 261, column: 50, scope: !4348)
!4351 = !DILocation(line: 263, column: 18, scope: !4348)
!4352 = !DILocation(line: 263, column: 2, scope: !4348)
!4353 = !DILocation(line: 264, column: 16, scope: !4348)
!4354 = !DILocation(line: 264, column: 2, scope: !4348)
!4355 = !DILocation(line: 265, column: 11, scope: !4348)
!4356 = !DILocation(line: 265, column: 2, scope: !4348)
!4357 = !DILocation(line: 266, column: 12, scope: !4348)
!4358 = !DILocation(line: 266, column: 2, scope: !4348)
!4359 = !DILocation(line: 267, column: 18, scope: !4348)
!4360 = !DILocation(line: 267, column: 2, scope: !4348)
!4361 = !DILocation(line: 268, column: 1, scope: !4348)
!4362 = distinct !DISubprogram(name: "dw_spi_update_config", scope: !3, file: !3, line: 306, type: !4363, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{null, !4161, !179, !4365}
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dw_spi_cfg", file: !118, line: 126, size: 96, elements: !4367)
!4367 = !{!4368, !4369, !4370, !4371}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "tmode", scope: !4366, file: !118, line: 127, baseType: !143, size: 8)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "dfs", scope: !4366, file: !118, line: 128, baseType: !143, size: 8, offset: 8)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "ndf", scope: !4366, file: !118, line: 129, baseType: !134, size: 32, offset: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4366, file: !118, line: 130, baseType: !134, size: 32, offset: 64)
!4372 = !DILocalVariable(name: "dws", arg: 1, scope: !4362, file: !3, line: 306, type: !4161)
!4373 = !DILocation(line: 306, column: 42, scope: !4362)
!4374 = !DILocalVariable(name: "spi", arg: 2, scope: !4362, file: !3, line: 306, type: !179)
!4375 = !DILocation(line: 306, column: 66, scope: !4362)
!4376 = !DILocalVariable(name: "cfg", arg: 3, scope: !4362, file: !3, line: 307, type: !4365)
!4377 = !DILocation(line: 307, column: 25, scope: !4362)
!4378 = !DILocalVariable(name: "chip", scope: !4362, file: !3, line: 309, type: !4379)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chip_data", file: !3, line: 27, size: 64, elements: !4381)
!4381 = !{!4382, !4383}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "cr0", scope: !4380, file: !3, line: 28, baseType: !134, size: 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "rx_sample_dly", scope: !4380, file: !3, line: 29, baseType: !134, size: 32, offset: 32)
!4384 = !DILocation(line: 309, column: 20, scope: !4362)
!4385 = !DILocation(line: 309, column: 43, scope: !4362)
!4386 = !DILocation(line: 309, column: 27, scope: !4362)
!4387 = !DILocalVariable(name: "cr0", scope: !4362, file: !3, line: 310, type: !134)
!4388 = !DILocation(line: 310, column: 6, scope: !4362)
!4389 = !DILocation(line: 310, column: 12, scope: !4362)
!4390 = !DILocation(line: 310, column: 18, scope: !4362)
!4391 = !DILocalVariable(name: "speed_hz", scope: !4362, file: !3, line: 311, type: !134)
!4392 = !DILocation(line: 311, column: 6, scope: !4362)
!4393 = !DILocalVariable(name: "clk_div", scope: !4362, file: !3, line: 312, type: !147)
!4394 = !DILocation(line: 312, column: 6, scope: !4362)
!4395 = !DILocation(line: 315, column: 10, scope: !4362)
!4396 = !DILocation(line: 315, column: 15, scope: !4362)
!4397 = !DILocation(line: 315, column: 19, scope: !4362)
!4398 = !DILocation(line: 315, column: 6, scope: !4362)
!4399 = !DILocation(line: 317, column: 8, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 317, column: 6)
!4401 = !DILocation(line: 317, column: 13, scope: !4400)
!4402 = !DILocation(line: 317, column: 18, scope: !4400)
!4403 = !DILocation(line: 317, column: 6, scope: !4362)
!4404 = !DILocation(line: 319, column: 10, scope: !4400)
!4405 = !DILocation(line: 319, column: 15, scope: !4400)
!4406 = !DILocation(line: 319, column: 21, scope: !4400)
!4407 = !DILocation(line: 319, column: 7, scope: !4400)
!4408 = !DILocation(line: 319, column: 3, scope: !4400)
!4409 = !DILocation(line: 322, column: 10, scope: !4400)
!4410 = !DILocation(line: 322, column: 15, scope: !4400)
!4411 = !DILocation(line: 322, column: 21, scope: !4400)
!4412 = !DILocation(line: 322, column: 7, scope: !4400)
!4413 = !DILocation(line: 324, column: 12, scope: !4362)
!4414 = !DILocation(line: 324, column: 32, scope: !4362)
!4415 = !DILocation(line: 324, column: 2, scope: !4362)
!4416 = !DILocation(line: 326, column: 6, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 326, column: 6)
!4418 = !DILocation(line: 326, column: 11, scope: !4417)
!4419 = !DILocation(line: 326, column: 17, scope: !4417)
!4420 = !DILocation(line: 326, column: 39, scope: !4417)
!4421 = !DILocation(line: 326, column: 42, scope: !4417)
!4422 = !DILocation(line: 326, column: 47, scope: !4417)
!4423 = !DILocation(line: 326, column: 53, scope: !4417)
!4424 = !DILocation(line: 326, column: 6, scope: !4362)
!4425 = !DILocation(line: 327, column: 13, scope: !4417)
!4426 = !DILocation(line: 327, column: 33, scope: !4417)
!4427 = !DILocation(line: 327, column: 38, scope: !4417)
!4428 = !DILocation(line: 327, column: 44, scope: !4417)
!4429 = !DILocation(line: 327, column: 49, scope: !4417)
!4430 = !DILocation(line: 327, column: 53, scope: !4417)
!4431 = !DILocation(line: 327, column: 3, scope: !4417)
!4432 = !DILocation(line: 330, column: 13, scope: !4362)
!4433 = !DILocation(line: 330, column: 52, scope: !4362)
!4434 = !DILocation(line: 330, column: 57, scope: !4362)
!4435 = !DILocation(line: 330, column: 12, scope: !4362)
!4436 = !DILocation(line: 330, column: 10, scope: !4362)
!4437 = !DILocation(line: 331, column: 13, scope: !4362)
!4438 = !DILocation(line: 331, column: 18, scope: !4362)
!4439 = !DILocation(line: 331, column: 29, scope: !4362)
!4440 = !DILocation(line: 331, column: 27, scope: !4362)
!4441 = !DILocation(line: 331, column: 11, scope: !4362)
!4442 = !DILocation(line: 333, column: 6, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 333, column: 6)
!4444 = !DILocation(line: 333, column: 11, scope: !4443)
!4445 = !DILocation(line: 333, column: 27, scope: !4443)
!4446 = !DILocation(line: 333, column: 24, scope: !4443)
!4447 = !DILocation(line: 333, column: 6, scope: !4362)
!4448 = !DILocation(line: 334, column: 15, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 333, column: 37)
!4450 = !DILocation(line: 334, column: 20, scope: !4449)
!4451 = !DILocation(line: 334, column: 3, scope: !4449)
!4452 = !DILocation(line: 335, column: 23, scope: !4449)
!4453 = !DILocation(line: 335, column: 3, scope: !4449)
!4454 = !DILocation(line: 335, column: 8, scope: !4449)
!4455 = !DILocation(line: 335, column: 21, scope: !4449)
!4456 = !DILocation(line: 336, column: 2, scope: !4449)
!4457 = !DILocation(line: 339, column: 6, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 339, column: 6)
!4459 = !DILocation(line: 339, column: 11, scope: !4458)
!4460 = !DILocation(line: 339, column: 32, scope: !4458)
!4461 = !DILocation(line: 339, column: 38, scope: !4458)
!4462 = !DILocation(line: 339, column: 29, scope: !4458)
!4463 = !DILocation(line: 339, column: 6, scope: !4362)
!4464 = !DILocation(line: 340, column: 13, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 339, column: 53)
!4466 = !DILocation(line: 340, column: 40, scope: !4465)
!4467 = !DILocation(line: 340, column: 46, scope: !4465)
!4468 = !DILocation(line: 340, column: 3, scope: !4465)
!4469 = !DILocation(line: 341, column: 28, scope: !4465)
!4470 = !DILocation(line: 341, column: 34, scope: !4465)
!4471 = !DILocation(line: 341, column: 3, scope: !4465)
!4472 = !DILocation(line: 341, column: 8, scope: !4465)
!4473 = !DILocation(line: 341, column: 26, scope: !4465)
!4474 = !DILocation(line: 342, column: 2, scope: !4465)
!4475 = !DILocation(line: 343, column: 1, scope: !4362)
!4476 = distinct !DISubprogram(name: "spi_get_ctldata", scope: !181, file: !181, line: 228, type: !4477, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!137, !179}
!4479 = !DILocalVariable(name: "spi", arg: 1, scope: !4476, file: !181, line: 228, type: !179)
!4480 = !DILocation(line: 228, column: 56, scope: !4476)
!4481 = !DILocation(line: 230, column: 9, scope: !4476)
!4482 = !DILocation(line: 230, column: 14, scope: !4476)
!4483 = !DILocation(line: 230, column: 2, scope: !4476)
!4484 = distinct !DISubprogram(name: "spi_set_clk", scope: !118, file: !118, line: 233, type: !4485, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{null, !4161, !147}
!4487 = !DILocalVariable(name: "dws", arg: 1, scope: !4484, file: !118, line: 233, type: !4161)
!4488 = !DILocation(line: 233, column: 47, scope: !4484)
!4489 = !DILocalVariable(name: "div", arg: 2, scope: !4484, file: !118, line: 233, type: !147)
!4490 = !DILocation(line: 233, column: 56, scope: !4484)
!4491 = !DILocation(line: 235, column: 12, scope: !4484)
!4492 = !DILocation(line: 235, column: 31, scope: !4484)
!4493 = !DILocation(line: 235, column: 2, scope: !4484)
!4494 = !DILocation(line: 236, column: 1, scope: !4484)
!4495 = distinct !DISubprogram(name: "dw_spi_add_host", scope: !3, file: !3, line: 836, type: !4209, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4496 = !DILocalVariable(name: "dev", arg: 1, scope: !4495, file: !3, line: 836, type: !3367)
!4497 = !DILocation(line: 836, column: 36, scope: !4495)
!4498 = !DILocalVariable(name: "dws", arg: 2, scope: !4495, file: !3, line: 836, type: !4161)
!4499 = !DILocation(line: 836, column: 56, scope: !4495)
!4500 = !DILocalVariable(name: "master", scope: !4495, file: !3, line: 838, type: !3836)
!4501 = !DILocation(line: 838, column: 25, scope: !4495)
!4502 = !DILocalVariable(name: "ret", scope: !4495, file: !3, line: 839, type: !131)
!4503 = !DILocation(line: 839, column: 6, scope: !4495)
!4504 = !DILocation(line: 841, column: 7, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 841, column: 6)
!4506 = !DILocation(line: 841, column: 6, scope: !4495)
!4507 = !DILocation(line: 842, column: 3, scope: !4505)
!4508 = !DILocation(line: 844, column: 28, scope: !4495)
!4509 = !DILocation(line: 844, column: 11, scope: !4495)
!4510 = !DILocation(line: 844, column: 9, scope: !4495)
!4511 = !DILocation(line: 845, column: 7, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 845, column: 6)
!4513 = !DILocation(line: 845, column: 6, scope: !4495)
!4514 = !DILocation(line: 846, column: 3, scope: !4512)
!4515 = !DILocation(line: 848, column: 16, scope: !4495)
!4516 = !DILocation(line: 848, column: 2, scope: !4495)
!4517 = !DILocation(line: 848, column: 7, scope: !4495)
!4518 = !DILocation(line: 848, column: 14, scope: !4495)
!4519 = !DILocation(line: 849, column: 31, scope: !4495)
!4520 = !DILocation(line: 849, column: 36, scope: !4495)
!4521 = !DILocation(line: 849, column: 42, scope: !4495)
!4522 = !DILocation(line: 849, column: 2, scope: !4495)
!4523 = !DILocation(line: 849, column: 7, scope: !4495)
!4524 = !DILocation(line: 849, column: 16, scope: !4495)
!4525 = !DILocation(line: 851, column: 29, scope: !4495)
!4526 = !DILocation(line: 851, column: 37, scope: !4495)
!4527 = !DILocation(line: 851, column: 2, scope: !4495)
!4528 = !DILocation(line: 854, column: 14, scope: !4495)
!4529 = !DILocation(line: 854, column: 19, scope: !4495)
!4530 = !DILocation(line: 854, column: 2, scope: !4495)
!4531 = !DILocation(line: 856, column: 20, scope: !4495)
!4532 = !DILocation(line: 856, column: 25, scope: !4495)
!4533 = !DILocation(line: 856, column: 64, scope: !4495)
!4534 = !DILocation(line: 856, column: 55, scope: !4495)
!4535 = !DILocation(line: 857, column: 6, scope: !4495)
!4536 = !DILocation(line: 856, column: 8, scope: !4495)
!4537 = !DILocation(line: 856, column: 6, scope: !4495)
!4538 = !DILocation(line: 858, column: 6, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 858, column: 6)
!4540 = !DILocation(line: 858, column: 10, scope: !4539)
!4541 = !DILocation(line: 858, column: 14, scope: !4539)
!4542 = !DILocation(line: 858, column: 17, scope: !4539)
!4543 = !DILocation(line: 858, column: 21, scope: !4539)
!4544 = !DILocation(line: 858, column: 6, scope: !4495)
!4545 = !DILocation(line: 859, column: 3, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 858, column: 35)
!4547 = !DILocation(line: 860, column: 3, scope: !4546)
!4548 = !DILocation(line: 863, column: 22, scope: !4495)
!4549 = !DILocation(line: 863, column: 2, scope: !4495)
!4550 = !DILocation(line: 865, column: 2, scope: !4495)
!4551 = !DILocation(line: 865, column: 10, scope: !4495)
!4552 = !DILocation(line: 865, column: 31, scope: !4495)
!4553 = !DILocation(line: 866, column: 2, scope: !4495)
!4554 = !DILocation(line: 866, column: 10, scope: !4495)
!4555 = !DILocation(line: 866, column: 20, scope: !4495)
!4556 = !DILocation(line: 867, column: 2, scope: !4495)
!4557 = !DILocation(line: 867, column: 10, scope: !4495)
!4558 = !DILocation(line: 867, column: 29, scope: !4495)
!4559 = !DILocation(line: 868, column: 20, scope: !4495)
!4560 = !DILocation(line: 868, column: 25, scope: !4495)
!4561 = !DILocation(line: 868, column: 2, scope: !4495)
!4562 = !DILocation(line: 868, column: 10, scope: !4495)
!4563 = !DILocation(line: 868, column: 18, scope: !4495)
!4564 = !DILocation(line: 869, column: 27, scope: !4495)
!4565 = !DILocation(line: 869, column: 32, scope: !4495)
!4566 = !DILocation(line: 869, column: 2, scope: !4495)
!4567 = !DILocation(line: 869, column: 10, scope: !4495)
!4568 = !DILocation(line: 869, column: 25, scope: !4495)
!4569 = !DILocation(line: 870, column: 2, scope: !4495)
!4570 = !DILocation(line: 870, column: 10, scope: !4495)
!4571 = !DILocation(line: 870, column: 16, scope: !4495)
!4572 = !DILocation(line: 871, column: 2, scope: !4495)
!4573 = !DILocation(line: 871, column: 10, scope: !4495)
!4574 = !DILocation(line: 871, column: 18, scope: !4495)
!4575 = !DILocation(line: 872, column: 6, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 872, column: 6)
!4577 = !DILocation(line: 872, column: 11, scope: !4576)
!4578 = !DILocation(line: 872, column: 6, scope: !4495)
!4579 = !DILocation(line: 873, column: 20, scope: !4576)
!4580 = !DILocation(line: 873, column: 25, scope: !4576)
!4581 = !DILocation(line: 873, column: 3, scope: !4576)
!4582 = !DILocation(line: 873, column: 11, scope: !4576)
!4583 = !DILocation(line: 873, column: 18, scope: !4576)
!4584 = !DILocation(line: 875, column: 3, scope: !4576)
!4585 = !DILocation(line: 875, column: 11, scope: !4576)
!4586 = !DILocation(line: 875, column: 18, scope: !4576)
!4587 = !DILocation(line: 876, column: 2, scope: !4495)
!4588 = !DILocation(line: 876, column: 10, scope: !4495)
!4589 = !DILocation(line: 876, column: 23, scope: !4495)
!4590 = !DILocation(line: 877, column: 2, scope: !4495)
!4591 = !DILocation(line: 877, column: 10, scope: !4495)
!4592 = !DILocation(line: 877, column: 21, scope: !4495)
!4593 = !DILocation(line: 878, column: 6, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 878, column: 6)
!4595 = !DILocation(line: 878, column: 11, scope: !4594)
!4596 = !DILocation(line: 878, column: 19, scope: !4594)
!4597 = !DILocation(line: 878, column: 6, scope: !4495)
!4598 = !DILocation(line: 879, column: 22, scope: !4594)
!4599 = !DILocation(line: 879, column: 27, scope: !4594)
!4600 = !DILocation(line: 879, column: 3, scope: !4594)
!4601 = !DILocation(line: 879, column: 11, scope: !4594)
!4602 = !DILocation(line: 879, column: 19, scope: !4594)
!4603 = !DILocation(line: 880, column: 25, scope: !4495)
!4604 = !DILocation(line: 880, column: 30, scope: !4495)
!4605 = !DILocation(line: 880, column: 2, scope: !4495)
!4606 = !DILocation(line: 880, column: 10, scope: !4495)
!4607 = !DILocation(line: 880, column: 23, scope: !4495)
!4608 = !DILocation(line: 881, column: 24, scope: !4495)
!4609 = !DILocation(line: 881, column: 29, scope: !4495)
!4610 = !DILocation(line: 881, column: 2, scope: !4495)
!4611 = !DILocation(line: 881, column: 10, scope: !4495)
!4612 = !DILocation(line: 881, column: 14, scope: !4495)
!4613 = !DILocation(line: 881, column: 22, scope: !4495)
!4614 = !DILocation(line: 882, column: 23, scope: !4495)
!4615 = !DILocation(line: 882, column: 28, scope: !4495)
!4616 = !DILocation(line: 882, column: 2, scope: !4495)
!4617 = !DILocation(line: 882, column: 10, scope: !4495)
!4618 = !DILocation(line: 882, column: 14, scope: !4495)
!4619 = !DILocation(line: 882, column: 21, scope: !4495)
!4620 = !DILocation(line: 883, column: 2, scope: !4495)
!4621 = !DILocation(line: 883, column: 10, scope: !4495)
!4622 = !DILocation(line: 883, column: 16, scope: !4495)
!4623 = !DILocation(line: 884, column: 2, scope: !4495)
!4624 = !DILocation(line: 884, column: 10, scope: !4495)
!4625 = !DILocation(line: 884, column: 26, scope: !4495)
!4626 = !DILocation(line: 887, column: 27, scope: !4495)
!4627 = !DILocation(line: 888, column: 7, scope: !4495)
!4628 = !DILocation(line: 888, column: 12, scope: !4495)
!4629 = !DILocation(line: 887, column: 2, scope: !4495)
!4630 = !DILocation(line: 890, column: 6, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 890, column: 6)
!4632 = !DILocation(line: 890, column: 11, scope: !4631)
!4633 = !DILocation(line: 890, column: 19, scope: !4631)
!4634 = !DILocation(line: 890, column: 22, scope: !4631)
!4635 = !DILocation(line: 890, column: 27, scope: !4631)
!4636 = !DILocation(line: 890, column: 36, scope: !4631)
!4637 = !DILocation(line: 890, column: 6, scope: !4495)
!4638 = !DILocation(line: 891, column: 9, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 890, column: 46)
!4640 = !DILocation(line: 891, column: 14, scope: !4639)
!4641 = !DILocation(line: 891, column: 23, scope: !4639)
!4642 = !DILocation(line: 891, column: 32, scope: !4639)
!4643 = !DILocation(line: 891, column: 37, scope: !4639)
!4644 = !DILocation(line: 891, column: 7, scope: !4639)
!4645 = !DILocation(line: 892, column: 7, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 892, column: 7)
!4647 = !DILocation(line: 892, column: 7, scope: !4639)
!4648 = !DILocation(line: 893, column: 4, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 892, column: 12)
!4650 = !DILocation(line: 894, column: 3, scope: !4649)
!4651 = !DILocation(line: 895, column: 22, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 894, column: 10)
!4653 = !DILocation(line: 895, column: 27, scope: !4652)
!4654 = !DILocation(line: 895, column: 36, scope: !4652)
!4655 = !DILocation(line: 895, column: 4, scope: !4652)
!4656 = !DILocation(line: 895, column: 12, scope: !4652)
!4657 = !DILocation(line: 895, column: 20, scope: !4652)
!4658 = !DILocation(line: 896, column: 4, scope: !4652)
!4659 = !DILocation(line: 896, column: 12, scope: !4652)
!4660 = !DILocation(line: 896, column: 18, scope: !4652)
!4661 = !DILocation(line: 898, column: 2, scope: !4639)
!4662 = !DILocation(line: 900, column: 32, scope: !4495)
!4663 = !DILocation(line: 900, column: 8, scope: !4495)
!4664 = !DILocation(line: 900, column: 6, scope: !4495)
!4665 = !DILocation(line: 901, column: 6, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 901, column: 6)
!4667 = !DILocation(line: 901, column: 6, scope: !4495)
!4668 = !DILocation(line: 902, column: 3, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 901, column: 11)
!4670 = !DILocation(line: 903, column: 3, scope: !4669)
!4671 = !DILocation(line: 906, column: 22, scope: !4495)
!4672 = !DILocation(line: 906, column: 2, scope: !4495)
!4673 = !DILocation(line: 907, column: 2, scope: !4495)
!4674 = !DILabel(scope: !4495, name: "err_dma_exit", file: !3, line: 909)
!4675 = !DILocation(line: 909, column: 1, scope: !4495)
!4676 = !DILocation(line: 910, column: 6, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 910, column: 6)
!4678 = !DILocation(line: 910, column: 11, scope: !4677)
!4679 = !DILocation(line: 910, column: 19, scope: !4677)
!4680 = !DILocation(line: 910, column: 22, scope: !4677)
!4681 = !DILocation(line: 910, column: 27, scope: !4677)
!4682 = !DILocation(line: 910, column: 36, scope: !4677)
!4683 = !DILocation(line: 910, column: 6, scope: !4495)
!4684 = !DILocation(line: 911, column: 3, scope: !4677)
!4685 = !DILocation(line: 911, column: 8, scope: !4677)
!4686 = !DILocation(line: 911, column: 17, scope: !4677)
!4687 = !DILocation(line: 911, column: 26, scope: !4677)
!4688 = !DILocation(line: 912, column: 18, scope: !4495)
!4689 = !DILocation(line: 912, column: 2, scope: !4495)
!4690 = !DILocation(line: 913, column: 11, scope: !4495)
!4691 = !DILocation(line: 913, column: 16, scope: !4495)
!4692 = !DILocation(line: 913, column: 21, scope: !4495)
!4693 = !DILocation(line: 913, column: 2, scope: !4495)
!4694 = !DILabel(scope: !4495, name: "err_free_master", file: !3, line: 914)
!4695 = !DILocation(line: 914, column: 1, scope: !4495)
!4696 = !DILocation(line: 915, column: 21, scope: !4495)
!4697 = !DILocation(line: 915, column: 2, scope: !4495)
!4698 = !DILocation(line: 916, column: 9, scope: !4495)
!4699 = !DILocation(line: 916, column: 2, scope: !4495)
!4700 = !DILocation(line: 917, column: 1, scope: !4495)
!4701 = distinct !DISubprogram(name: "spi_alloc_master", scope: !181, file: !181, line: 722, type: !4702, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!3836, !3367, !7}
!4704 = !DILocalVariable(name: "host", arg: 1, scope: !4701, file: !181, line: 722, type: !3367)
!4705 = !DILocation(line: 722, column: 70, scope: !4701)
!4706 = !DILocalVariable(name: "size", arg: 2, scope: !4701, file: !181, line: 723, type: !7)
!4707 = !DILocation(line: 723, column: 26, scope: !4701)
!4708 = !DILocation(line: 725, column: 32, scope: !4701)
!4709 = !DILocation(line: 725, column: 38, scope: !4701)
!4710 = !DILocation(line: 725, column: 9, scope: !4701)
!4711 = !DILocation(line: 725, column: 2, scope: !4701)
!4712 = distinct !DISubprogram(name: "spi_controller_set_devdata", scope: !181, file: !181, line: 677, type: !4713, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{null, !3836, !137}
!4715 = !DILocalVariable(name: "ctlr", arg: 1, scope: !4712, file: !181, line: 677, type: !3836)
!4716 = !DILocation(line: 677, column: 70, scope: !4712)
!4717 = !DILocalVariable(name: "data", arg: 2, scope: !4712, file: !181, line: 678, type: !137)
!4718 = !DILocation(line: 678, column: 18, scope: !4712)
!4719 = !DILocation(line: 680, column: 19, scope: !4712)
!4720 = !DILocation(line: 680, column: 25, scope: !4712)
!4721 = !DILocation(line: 680, column: 30, scope: !4712)
!4722 = !DILocation(line: 680, column: 2, scope: !4712)
!4723 = !DILocation(line: 681, column: 1, scope: !4712)
!4724 = distinct !DISubprogram(name: "spi_hw_init", scope: !3, file: !3, line: 809, type: !4725, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{null, !3367, !4161}
!4727 = !DILocalVariable(name: "dev", arg: 1, scope: !4724, file: !3, line: 809, type: !3367)
!4728 = !DILocation(line: 809, column: 40, scope: !4724)
!4729 = !DILocalVariable(name: "dws", arg: 2, scope: !4724, file: !3, line: 809, type: !4161)
!4730 = !DILocation(line: 809, column: 60, scope: !4724)
!4731 = !DILocation(line: 811, column: 17, scope: !4724)
!4732 = !DILocation(line: 811, column: 2, scope: !4724)
!4733 = !DILocation(line: 817, column: 7, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 817, column: 6)
!4735 = !DILocation(line: 817, column: 12, scope: !4734)
!4736 = !DILocation(line: 817, column: 6, scope: !4724)
!4737 = !DILocalVariable(name: "fifo", scope: !4738, file: !3, line: 818, type: !134)
!4738 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 817, column: 22)
!4739 = !DILocation(line: 818, column: 7, scope: !4738)
!4740 = !DILocation(line: 820, column: 13, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4738, file: !3, line: 820, column: 3)
!4742 = !DILocation(line: 820, column: 8, scope: !4741)
!4743 = !DILocation(line: 820, column: 18, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 820, column: 3)
!4745 = !DILocation(line: 820, column: 23, scope: !4744)
!4746 = !DILocation(line: 820, column: 3, scope: !4741)
!4747 = !DILocation(line: 821, column: 14, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 820, column: 38)
!4749 = !DILocation(line: 821, column: 34, scope: !4748)
!4750 = !DILocation(line: 821, column: 4, scope: !4748)
!4751 = !DILocation(line: 822, column: 8, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 822, column: 8)
!4753 = !DILocation(line: 822, column: 25, scope: !4752)
!4754 = !DILocation(line: 822, column: 16, scope: !4752)
!4755 = !DILocation(line: 822, column: 13, scope: !4752)
!4756 = !DILocation(line: 822, column: 8, scope: !4748)
!4757 = !DILocation(line: 823, column: 5, scope: !4752)
!4758 = !DILocation(line: 824, column: 3, scope: !4748)
!4759 = !DILocation(line: 820, column: 34, scope: !4744)
!4760 = !DILocation(line: 820, column: 3, scope: !4744)
!4761 = distinct !{!4761, !4746, !4762}
!4762 = !DILocation(line: 824, column: 3, scope: !4741)
!4763 = !DILocation(line: 825, column: 13, scope: !4738)
!4764 = !DILocation(line: 825, column: 3, scope: !4738)
!4765 = !DILocation(line: 827, column: 20, scope: !4738)
!4766 = !DILocation(line: 827, column: 25, scope: !4738)
!4767 = !DILocation(line: 827, column: 19, scope: !4738)
!4768 = !DILocation(line: 827, column: 37, scope: !4738)
!4769 = !DILocation(line: 827, column: 3, scope: !4738)
!4770 = !DILocation(line: 827, column: 8, scope: !4738)
!4771 = !DILocation(line: 827, column: 17, scope: !4738)
!4772 = !DILocation(line: 829, column: 2, scope: !4738)
!4773 = !DILocation(line: 832, column: 6, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 832, column: 6)
!4775 = !DILocation(line: 832, column: 11, scope: !4774)
!4776 = !DILocation(line: 832, column: 16, scope: !4774)
!4777 = !DILocation(line: 832, column: 6, scope: !4724)
!4778 = !DILocation(line: 833, column: 13, scope: !4774)
!4779 = !DILocation(line: 833, column: 3, scope: !4774)
!4780 = !DILocation(line: 834, column: 1, scope: !4724)
!4781 = distinct !DISubprogram(name: "request_irq", scope: !4782, file: !4782, line: 157, type: !4783, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4782 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!131, !7, !4785, !138, !191, !137}
!4785 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4782, line: 92, baseType: !4786)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!4190, !131, !137}
!4789 = !DILocalVariable(name: "irq", arg: 1, scope: !4781, file: !4782, line: 157, type: !7)
!4790 = !DILocation(line: 157, column: 26, scope: !4781)
!4791 = !DILocalVariable(name: "handler", arg: 2, scope: !4781, file: !4782, line: 157, type: !4785)
!4792 = !DILocation(line: 157, column: 45, scope: !4781)
!4793 = !DILocalVariable(name: "flags", arg: 3, scope: !4781, file: !4782, line: 157, type: !138)
!4794 = !DILocation(line: 157, column: 68, scope: !4781)
!4795 = !DILocalVariable(name: "name", arg: 4, scope: !4781, file: !4782, line: 158, type: !191)
!4796 = !DILocation(line: 158, column: 18, scope: !4781)
!4797 = !DILocalVariable(name: "dev", arg: 5, scope: !4781, file: !4782, line: 158, type: !137)
!4798 = !DILocation(line: 158, column: 30, scope: !4781)
!4799 = !DILocation(line: 160, column: 30, scope: !4781)
!4800 = !DILocation(line: 160, column: 35, scope: !4781)
!4801 = !DILocation(line: 160, column: 50, scope: !4781)
!4802 = !DILocation(line: 160, column: 57, scope: !4781)
!4803 = !DILocation(line: 160, column: 63, scope: !4781)
!4804 = !DILocation(line: 160, column: 9, scope: !4781)
!4805 = !DILocation(line: 160, column: 2, scope: !4781)
!4806 = distinct !DISubprogram(name: "dw_spi_irq", scope: !3, file: !3, line: 249, type: !4787, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4807 = !DILocalVariable(name: "irq", arg: 1, scope: !4806, file: !3, line: 249, type: !131)
!4808 = !DILocation(line: 249, column: 35, scope: !4806)
!4809 = !DILocalVariable(name: "dev_id", arg: 2, scope: !4806, file: !3, line: 249, type: !137)
!4810 = !DILocation(line: 249, column: 46, scope: !4806)
!4811 = !DILocalVariable(name: "master", scope: !4806, file: !3, line: 251, type: !3836)
!4812 = !DILocation(line: 251, column: 25, scope: !4806)
!4813 = !DILocation(line: 251, column: 34, scope: !4806)
!4814 = !DILocalVariable(name: "dws", scope: !4806, file: !3, line: 252, type: !4161)
!4815 = !DILocation(line: 252, column: 17, scope: !4806)
!4816 = !DILocation(line: 252, column: 50, scope: !4806)
!4817 = !DILocation(line: 252, column: 23, scope: !4806)
!4818 = !DILocalVariable(name: "irq_status", scope: !4806, file: !3, line: 253, type: !147)
!4819 = !DILocation(line: 253, column: 6, scope: !4806)
!4820 = !DILocation(line: 253, column: 28, scope: !4806)
!4821 = !DILocation(line: 253, column: 19, scope: !4806)
!4822 = !DILocation(line: 253, column: 45, scope: !4806)
!4823 = !DILocation(line: 255, column: 7, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 255, column: 6)
!4825 = !DILocation(line: 255, column: 6, scope: !4806)
!4826 = !DILocation(line: 256, column: 3, scope: !4824)
!4827 = !DILocation(line: 258, column: 7, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 258, column: 6)
!4829 = !DILocation(line: 258, column: 15, scope: !4828)
!4830 = !DILocation(line: 258, column: 6, scope: !4806)
!4831 = !DILocation(line: 259, column: 17, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 258, column: 24)
!4833 = !DILocation(line: 259, column: 3, scope: !4832)
!4834 = !DILocation(line: 260, column: 3, scope: !4832)
!4835 = !DILocation(line: 263, column: 9, scope: !4806)
!4836 = !DILocation(line: 263, column: 14, scope: !4806)
!4837 = !DILocation(line: 263, column: 31, scope: !4806)
!4838 = !DILocation(line: 263, column: 2, scope: !4806)
!4839 = !DILocation(line: 264, column: 1, scope: !4806)
!4840 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !4841, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!191, !3709}
!4843 = !DILocalVariable(name: "dev", arg: 1, scope: !4840, file: !73, line: 609, type: !3709)
!4844 = !DILocation(line: 609, column: 57, scope: !4840)
!4845 = !DILocation(line: 612, column: 6, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4840, file: !73, line: 612, column: 6)
!4847 = !DILocation(line: 612, column: 11, scope: !4846)
!4848 = !DILocation(line: 612, column: 6, scope: !4840)
!4849 = !DILocation(line: 613, column: 10, scope: !4846)
!4850 = !DILocation(line: 613, column: 15, scope: !4846)
!4851 = !DILocation(line: 613, column: 3, scope: !4846)
!4852 = !DILocation(line: 615, column: 23, scope: !4840)
!4853 = !DILocation(line: 615, column: 28, scope: !4840)
!4854 = !DILocation(line: 615, column: 9, scope: !4840)
!4855 = !DILocation(line: 615, column: 2, scope: !4840)
!4856 = !DILocation(line: 616, column: 1, scope: !4840)
!4857 = distinct !DISubprogram(name: "dw_spi_init_mem_ops", scope: !3, file: !3, line: 751, type: !4213, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4858 = !DILocalVariable(name: "dws", arg: 1, scope: !4857, file: !3, line: 751, type: !4161)
!4859 = !DILocation(line: 751, column: 48, scope: !4857)
!4860 = !DILocation(line: 753, column: 7, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 753, column: 6)
!4862 = !DILocation(line: 753, column: 12, scope: !4861)
!4863 = !DILocation(line: 753, column: 20, scope: !4861)
!4864 = !DILocation(line: 753, column: 28, scope: !4861)
!4865 = !DILocation(line: 753, column: 33, scope: !4861)
!4866 = !DILocation(line: 753, column: 38, scope: !4861)
!4867 = !DILocation(line: 753, column: 43, scope: !4861)
!4868 = !DILocation(line: 753, column: 69, scope: !4861)
!4869 = !DILocation(line: 754, column: 7, scope: !4861)
!4870 = !DILocation(line: 754, column: 12, scope: !4861)
!4871 = !DILocation(line: 753, column: 6, scope: !4857)
!4872 = !DILocation(line: 755, column: 3, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 754, column: 20)
!4874 = !DILocation(line: 755, column: 8, scope: !4873)
!4875 = !DILocation(line: 755, column: 16, scope: !4873)
!4876 = !DILocation(line: 755, column: 31, scope: !4873)
!4877 = !DILocation(line: 756, column: 3, scope: !4873)
!4878 = !DILocation(line: 756, column: 8, scope: !4873)
!4879 = !DILocation(line: 756, column: 16, scope: !4873)
!4880 = !DILocation(line: 756, column: 28, scope: !4873)
!4881 = !DILocation(line: 757, column: 3, scope: !4873)
!4882 = !DILocation(line: 757, column: 8, scope: !4873)
!4883 = !DILocation(line: 757, column: 16, scope: !4873)
!4884 = !DILocation(line: 757, column: 24, scope: !4873)
!4885 = !DILocation(line: 758, column: 8, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 758, column: 7)
!4887 = !DILocation(line: 758, column: 13, scope: !4886)
!4888 = !DILocation(line: 758, column: 7, scope: !4873)
!4889 = !DILocation(line: 759, column: 24, scope: !4886)
!4890 = !DILocation(line: 759, column: 29, scope: !4886)
!4891 = !DILocation(line: 759, column: 4, scope: !4886)
!4892 = !DILocation(line: 759, column: 9, scope: !4886)
!4893 = !DILocation(line: 759, column: 22, scope: !4886)
!4894 = !DILocation(line: 760, column: 2, scope: !4873)
!4895 = !DILocation(line: 761, column: 1, scope: !4857)
!4896 = distinct !DISubprogram(name: "dw_spi_setup", scope: !3, file: !3, line: 764, type: !3862, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4897 = !DILocalVariable(name: "spi", arg: 1, scope: !4896, file: !3, line: 764, type: !179)
!4898 = !DILocation(line: 764, column: 44, scope: !4896)
!4899 = !DILocalVariable(name: "dws", scope: !4896, file: !3, line: 766, type: !4161)
!4900 = !DILocation(line: 766, column: 17, scope: !4896)
!4901 = !DILocation(line: 766, column: 50, scope: !4896)
!4902 = !DILocation(line: 766, column: 55, scope: !4896)
!4903 = !DILocation(line: 766, column: 23, scope: !4896)
!4904 = !DILocalVariable(name: "chip", scope: !4896, file: !3, line: 767, type: !4379)
!4905 = !DILocation(line: 767, column: 20, scope: !4896)
!4906 = !DILocation(line: 770, column: 25, scope: !4896)
!4907 = !DILocation(line: 770, column: 9, scope: !4896)
!4908 = !DILocation(line: 770, column: 7, scope: !4896)
!4909 = !DILocation(line: 771, column: 7, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 771, column: 6)
!4911 = !DILocation(line: 771, column: 6, scope: !4896)
!4912 = !DILocalVariable(name: "dws", scope: !4913, file: !3, line: 772, type: !4161)
!4913 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 771, column: 13)
!4914 = !DILocation(line: 772, column: 18, scope: !4913)
!4915 = !DILocation(line: 772, column: 51, scope: !4913)
!4916 = !DILocation(line: 772, column: 56, scope: !4913)
!4917 = !DILocation(line: 772, column: 24, scope: !4913)
!4918 = !DILocalVariable(name: "rx_sample_dly_ns", scope: !4913, file: !3, line: 773, type: !134)
!4919 = !DILocation(line: 773, column: 7, scope: !4913)
!4920 = !DILocation(line: 775, column: 10, scope: !4913)
!4921 = !DILocation(line: 775, column: 8, scope: !4913)
!4922 = !DILocation(line: 776, column: 8, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 776, column: 7)
!4924 = !DILocation(line: 776, column: 7, scope: !4913)
!4925 = !DILocation(line: 777, column: 4, scope: !4923)
!4926 = !DILocation(line: 778, column: 19, scope: !4913)
!4927 = !DILocation(line: 778, column: 24, scope: !4913)
!4928 = !DILocation(line: 778, column: 3, scope: !4913)
!4929 = !DILocation(line: 780, column: 33, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 780, column: 7)
!4931 = !DILocation(line: 780, column: 38, scope: !4930)
!4932 = !DILocation(line: 780, column: 7, scope: !4930)
!4933 = !DILocation(line: 782, column: 30, scope: !4930)
!4934 = !DILocation(line: 780, column: 7, scope: !4913)
!4935 = !DILocation(line: 784, column: 23, scope: !4930)
!4936 = !DILocation(line: 784, column: 28, scope: !4930)
!4937 = !DILocation(line: 784, column: 21, scope: !4930)
!4938 = !DILocation(line: 784, column: 4, scope: !4930)
!4939 = !DILocalVariable(name: "__x", scope: !4940, file: !3, line: 785, type: !134)
!4940 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 785, column: 25)
!4941 = !DILocation(line: 785, column: 25, scope: !4940)
!4942 = !DILocalVariable(name: "__d", scope: !4940, file: !3, line: 785, type: !282)
!4943 = !DILocation(line: 785, column: 25, scope: !4913)
!4944 = !DILocation(line: 785, column: 3, scope: !4913)
!4945 = !DILocation(line: 785, column: 9, scope: !4913)
!4946 = !DILocation(line: 785, column: 23, scope: !4913)
!4947 = !DILocation(line: 788, column: 2, scope: !4913)
!4948 = !DILocation(line: 795, column: 33, scope: !4896)
!4949 = !DILocation(line: 795, column: 38, scope: !4896)
!4950 = !DILocation(line: 795, column: 14, scope: !4896)
!4951 = !DILocation(line: 795, column: 2, scope: !4896)
!4952 = !DILocation(line: 795, column: 8, scope: !4896)
!4953 = !DILocation(line: 795, column: 12, scope: !4896)
!4954 = !DILocation(line: 797, column: 2, scope: !4896)
!4955 = !DILocation(line: 798, column: 1, scope: !4896)
!4956 = distinct !DISubprogram(name: "dw_spi_cleanup", scope: !3, file: !3, line: 800, type: !3893, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4957 = !DILocalVariable(name: "spi", arg: 1, scope: !4956, file: !3, line: 800, type: !179)
!4958 = !DILocation(line: 800, column: 47, scope: !4956)
!4959 = !DILocalVariable(name: "chip", scope: !4956, file: !3, line: 802, type: !4379)
!4960 = !DILocation(line: 802, column: 20, scope: !4956)
!4961 = !DILocation(line: 802, column: 43, scope: !4956)
!4962 = !DILocation(line: 802, column: 27, scope: !4956)
!4963 = !DILocation(line: 804, column: 8, scope: !4956)
!4964 = !DILocation(line: 804, column: 2, scope: !4956)
!4965 = !DILocation(line: 805, column: 18, scope: !4956)
!4966 = !DILocation(line: 805, column: 2, scope: !4956)
!4967 = !DILocation(line: 806, column: 1, scope: !4956)
!4968 = distinct !DISubprogram(name: "dw_spi_transfer_one", scope: !3, file: !3, line: 403, type: !4000, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!4969 = !DILocalVariable(name: "master", arg: 1, scope: !4968, file: !3, line: 403, type: !3836)
!4970 = !DILocation(line: 403, column: 55, scope: !4968)
!4971 = !DILocalVariable(name: "spi", arg: 2, scope: !4968, file: !3, line: 404, type: !179)
!4972 = !DILocation(line: 404, column: 22, scope: !4968)
!4973 = !DILocalVariable(name: "transfer", arg: 3, scope: !4968, file: !3, line: 404, type: !3899)
!4974 = !DILocation(line: 404, column: 48, scope: !4968)
!4975 = !DILocalVariable(name: "dws", scope: !4968, file: !3, line: 406, type: !4161)
!4976 = !DILocation(line: 406, column: 17, scope: !4968)
!4977 = !DILocation(line: 406, column: 50, scope: !4968)
!4978 = !DILocation(line: 406, column: 23, scope: !4968)
!4979 = !DILocalVariable(name: "cfg", scope: !4968, file: !3, line: 407, type: !4366)
!4980 = !DILocation(line: 407, column: 20, scope: !4968)
!4981 = !DILocation(line: 407, column: 26, scope: !4968)
!4982 = !DILocation(line: 409, column: 10, scope: !4968)
!4983 = !DILocation(line: 409, column: 20, scope: !4968)
!4984 = !DILocation(line: 410, column: 11, scope: !4968)
!4985 = !DILocation(line: 410, column: 21, scope: !4968)
!4986 = !DILocalVariable(name: "ret", scope: !4968, file: !3, line: 412, type: !131)
!4987 = !DILocation(line: 412, column: 6, scope: !4968)
!4988 = !DILocation(line: 414, column: 2, scope: !4968)
!4989 = !DILocation(line: 414, column: 7, scope: !4968)
!4990 = !DILocation(line: 414, column: 18, scope: !4968)
!4991 = !DILocation(line: 415, column: 17, scope: !4968)
!4992 = !DILocation(line: 415, column: 2, scope: !4968)
!4993 = !DILocation(line: 415, column: 7, scope: !4968)
!4994 = !DILocation(line: 415, column: 15, scope: !4968)
!4995 = !DILocation(line: 416, column: 20, scope: !4968)
!4996 = !DILocation(line: 416, column: 30, scope: !4968)
!4997 = !DILocation(line: 416, column: 2, scope: !4968)
!4998 = !DILocation(line: 416, column: 7, scope: !4968)
!4999 = !DILocation(line: 416, column: 10, scope: !4968)
!5000 = !DILocation(line: 417, column: 16, scope: !4968)
!5001 = !DILocation(line: 417, column: 26, scope: !4968)
!5002 = !DILocation(line: 417, column: 32, scope: !4968)
!5003 = !DILocation(line: 417, column: 37, scope: !4968)
!5004 = !DILocation(line: 417, column: 30, scope: !4968)
!5005 = !DILocation(line: 417, column: 2, scope: !4968)
!5006 = !DILocation(line: 417, column: 7, scope: !4968)
!5007 = !DILocation(line: 417, column: 14, scope: !4968)
!5008 = !DILocation(line: 418, column: 12, scope: !4968)
!5009 = !DILocation(line: 418, column: 22, scope: !4968)
!5010 = !DILocation(line: 418, column: 2, scope: !4968)
!5011 = !DILocation(line: 418, column: 7, scope: !4968)
!5012 = !DILocation(line: 418, column: 10, scope: !4968)
!5013 = !DILocation(line: 419, column: 16, scope: !4968)
!5014 = !DILocation(line: 419, column: 21, scope: !4968)
!5015 = !DILocation(line: 419, column: 2, scope: !4968)
!5016 = !DILocation(line: 419, column: 7, scope: !4968)
!5017 = !DILocation(line: 419, column: 14, scope: !4968)
!5018 = !DILocation(line: 422, column: 2, scope: !4968)
!5019 = !{i32 -2141723576}
!5020 = !DILocation(line: 424, column: 18, scope: !4968)
!5021 = !DILocation(line: 424, column: 2, scope: !4968)
!5022 = !DILocation(line: 426, column: 23, scope: !4968)
!5023 = !DILocation(line: 426, column: 28, scope: !4968)
!5024 = !DILocation(line: 426, column: 2, scope: !4968)
!5025 = !DILocation(line: 428, column: 33, scope: !4968)
!5026 = !DILocation(line: 428, column: 38, scope: !4968)
!5027 = !DILocation(line: 428, column: 2, scope: !4968)
!5028 = !DILocation(line: 428, column: 12, scope: !4968)
!5029 = !DILocation(line: 428, column: 31, scope: !4968)
!5030 = !DILocation(line: 431, column: 6, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 431, column: 6)
!5032 = !DILocation(line: 431, column: 14, scope: !5031)
!5033 = !DILocation(line: 431, column: 22, scope: !5031)
!5034 = !DILocation(line: 431, column: 25, scope: !5031)
!5035 = !DILocation(line: 431, column: 33, scope: !5031)
!5036 = !DILocation(line: 431, column: 41, scope: !5031)
!5037 = !DILocation(line: 431, column: 49, scope: !5031)
!5038 = !DILocation(line: 431, column: 54, scope: !5031)
!5039 = !DILocation(line: 431, column: 6, scope: !4968)
!5040 = !DILocation(line: 432, column: 21, scope: !5031)
!5041 = !DILocation(line: 432, column: 29, scope: !5031)
!5042 = !DILocation(line: 432, column: 3, scope: !5031)
!5043 = !DILocation(line: 432, column: 8, scope: !5031)
!5044 = !DILocation(line: 432, column: 19, scope: !5031)
!5045 = !DILocation(line: 435, column: 16, scope: !4968)
!5046 = !DILocation(line: 435, column: 2, scope: !4968)
!5047 = !DILocation(line: 437, column: 6, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 437, column: 6)
!5049 = !DILocation(line: 437, column: 11, scope: !5048)
!5050 = !DILocation(line: 437, column: 6, scope: !4968)
!5051 = !DILocation(line: 438, column: 9, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5048, file: !3, line: 437, column: 23)
!5053 = !DILocation(line: 438, column: 14, scope: !5052)
!5054 = !DILocation(line: 438, column: 23, scope: !5052)
!5055 = !DILocation(line: 438, column: 33, scope: !5052)
!5056 = !DILocation(line: 438, column: 38, scope: !5052)
!5057 = !DILocation(line: 438, column: 7, scope: !5052)
!5058 = !DILocation(line: 439, column: 7, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 439, column: 7)
!5060 = !DILocation(line: 439, column: 7, scope: !5052)
!5061 = !DILocation(line: 440, column: 11, scope: !5059)
!5062 = !DILocation(line: 440, column: 4, scope: !5059)
!5063 = !DILocation(line: 441, column: 2, scope: !5052)
!5064 = !DILocation(line: 443, column: 18, scope: !4968)
!5065 = !DILocation(line: 443, column: 2, scope: !4968)
!5066 = !DILocation(line: 445, column: 6, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 445, column: 6)
!5068 = !DILocation(line: 445, column: 11, scope: !5067)
!5069 = !DILocation(line: 445, column: 6, scope: !4968)
!5070 = !DILocation(line: 446, column: 10, scope: !5067)
!5071 = !DILocation(line: 446, column: 15, scope: !5067)
!5072 = !DILocation(line: 446, column: 24, scope: !5067)
!5073 = !DILocation(line: 446, column: 37, scope: !5067)
!5074 = !DILocation(line: 446, column: 42, scope: !5067)
!5075 = !DILocation(line: 446, column: 3, scope: !5067)
!5076 = !DILocation(line: 447, column: 11, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 447, column: 11)
!5078 = !DILocation(line: 447, column: 16, scope: !5077)
!5079 = !DILocation(line: 447, column: 20, scope: !5077)
!5080 = !DILocation(line: 447, column: 11, scope: !5067)
!5081 = !DILocation(line: 448, column: 31, scope: !5077)
!5082 = !DILocation(line: 448, column: 36, scope: !5077)
!5083 = !DILocation(line: 448, column: 10, scope: !5077)
!5084 = !DILocation(line: 448, column: 3, scope: !5077)
!5085 = !DILocation(line: 450, column: 19, scope: !4968)
!5086 = !DILocation(line: 450, column: 2, scope: !4968)
!5087 = !DILocation(line: 452, column: 2, scope: !4968)
!5088 = !DILocation(line: 453, column: 1, scope: !4968)
!5089 = distinct !DISubprogram(name: "dw_spi_handle_err", scope: !3, file: !3, line: 455, type: !4004, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5090 = !DILocalVariable(name: "master", arg: 1, scope: !5089, file: !3, line: 455, type: !3836)
!5091 = !DILocation(line: 455, column: 54, scope: !5089)
!5092 = !DILocalVariable(name: "msg", arg: 2, scope: !5089, file: !3, line: 456, type: !3877)
!5093 = !DILocation(line: 456, column: 23, scope: !5089)
!5094 = !DILocalVariable(name: "dws", scope: !5089, file: !3, line: 458, type: !4161)
!5095 = !DILocation(line: 458, column: 17, scope: !5089)
!5096 = !DILocation(line: 458, column: 50, scope: !5089)
!5097 = !DILocation(line: 458, column: 23, scope: !5089)
!5098 = !DILocation(line: 460, column: 6, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 460, column: 6)
!5100 = !DILocation(line: 460, column: 11, scope: !5099)
!5101 = !DILocation(line: 460, column: 6, scope: !5089)
!5102 = !DILocation(line: 461, column: 3, scope: !5099)
!5103 = !DILocation(line: 461, column: 8, scope: !5099)
!5104 = !DILocation(line: 461, column: 17, scope: !5099)
!5105 = !DILocation(line: 461, column: 26, scope: !5099)
!5106 = !DILocation(line: 463, column: 17, scope: !5089)
!5107 = !DILocation(line: 463, column: 2, scope: !5089)
!5108 = !DILocation(line: 464, column: 1, scope: !5089)
!5109 = distinct !DISubprogram(name: "device_property_read_u32", scope: !5110, file: !5110, line: 141, type: !5111, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5110 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!131, !3367, !191, !1413}
!5113 = !DILocalVariable(name: "dev", arg: 1, scope: !5109, file: !5110, line: 141, type: !3367)
!5114 = !DILocation(line: 141, column: 59, scope: !5109)
!5115 = !DILocalVariable(name: "propname", arg: 2, scope: !5109, file: !5110, line: 142, type: !191)
!5116 = !DILocation(line: 142, column: 21, scope: !5109)
!5117 = !DILocalVariable(name: "val", arg: 3, scope: !5109, file: !5110, line: 142, type: !1413)
!5118 = !DILocation(line: 142, column: 36, scope: !5109)
!5119 = !DILocation(line: 144, column: 40, scope: !5109)
!5120 = !DILocation(line: 144, column: 45, scope: !5109)
!5121 = !DILocation(line: 144, column: 55, scope: !5109)
!5122 = !DILocation(line: 144, column: 9, scope: !5109)
!5123 = !DILocation(line: 144, column: 2, scope: !5109)
!5124 = distinct !DISubprogram(name: "dw_spi_debugfs_init", scope: !3, file: !3, line: 82, type: !5125, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!131, !4161}
!5127 = !DILocalVariable(name: "dws", arg: 1, scope: !5124, file: !3, line: 82, type: !4161)
!5128 = !DILocation(line: 82, column: 54, scope: !5124)
!5129 = !DILocation(line: 84, column: 2, scope: !5124)
!5130 = distinct !DISubprogram(name: "spi_enable_chip", scope: !118, file: !118, line: 228, type: !5131, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{null, !4161, !131}
!5133 = !DILocalVariable(name: "dws", arg: 1, scope: !5130, file: !118, line: 228, type: !4161)
!5134 = !DILocation(line: 228, column: 51, scope: !5130)
!5135 = !DILocalVariable(name: "enable", arg: 2, scope: !5130, file: !118, line: 228, type: !131)
!5136 = !DILocation(line: 228, column: 60, scope: !5130)
!5137 = !DILocation(line: 230, column: 12, scope: !5130)
!5138 = !DILocation(line: 230, column: 33, scope: !5130)
!5139 = !DILocation(line: 230, column: 2, scope: !5130)
!5140 = !DILocation(line: 231, column: 1, scope: !5130)
!5141 = distinct !DISubprogram(name: "spi_controller_put", scope: !181, file: !181, line: 690, type: !5142, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{null, !3836}
!5144 = !DILocalVariable(name: "ctlr", arg: 1, scope: !5141, file: !181, line: 690, type: !3836)
!5145 = !DILocation(line: 690, column: 62, scope: !5141)
!5146 = !DILocation(line: 692, column: 6, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5141, file: !181, line: 692, column: 6)
!5148 = !DILocation(line: 692, column: 6, scope: !5141)
!5149 = !DILocation(line: 693, column: 15, scope: !5147)
!5150 = !DILocation(line: 693, column: 21, scope: !5147)
!5151 = !DILocation(line: 693, column: 3, scope: !5147)
!5152 = !DILocation(line: 694, column: 1, scope: !5141)
!5153 = distinct !DISubprogram(name: "dw_spi_remove_host", scope: !3, file: !3, line: 920, type: !4213, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5154 = !DILocalVariable(name: "dws", arg: 1, scope: !5153, file: !3, line: 920, type: !4161)
!5155 = !DILocation(line: 920, column: 40, scope: !5153)
!5156 = !DILocation(line: 922, column: 24, scope: !5153)
!5157 = !DILocation(line: 922, column: 2, scope: !5153)
!5158 = !DILocation(line: 924, column: 28, scope: !5153)
!5159 = !DILocation(line: 924, column: 33, scope: !5153)
!5160 = !DILocation(line: 924, column: 2, scope: !5153)
!5161 = !DILocation(line: 926, column: 6, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 926, column: 6)
!5163 = !DILocation(line: 926, column: 11, scope: !5162)
!5164 = !DILocation(line: 926, column: 19, scope: !5162)
!5165 = !DILocation(line: 926, column: 22, scope: !5162)
!5166 = !DILocation(line: 926, column: 27, scope: !5162)
!5167 = !DILocation(line: 926, column: 36, scope: !5162)
!5168 = !DILocation(line: 926, column: 6, scope: !5153)
!5169 = !DILocation(line: 927, column: 3, scope: !5162)
!5170 = !DILocation(line: 927, column: 8, scope: !5162)
!5171 = !DILocation(line: 927, column: 17, scope: !5162)
!5172 = !DILocation(line: 927, column: 26, scope: !5162)
!5173 = !DILocation(line: 929, column: 20, scope: !5153)
!5174 = !DILocation(line: 929, column: 2, scope: !5153)
!5175 = !DILocation(line: 931, column: 11, scope: !5153)
!5176 = !DILocation(line: 931, column: 16, scope: !5153)
!5177 = !DILocation(line: 931, column: 21, scope: !5153)
!5178 = !DILocation(line: 931, column: 26, scope: !5153)
!5179 = !DILocation(line: 931, column: 2, scope: !5153)
!5180 = !DILocation(line: 932, column: 1, scope: !5153)
!5181 = distinct !DISubprogram(name: "dw_spi_debugfs_remove", scope: !3, file: !3, line: 87, type: !4213, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5182 = !DILocalVariable(name: "dws", arg: 1, scope: !5181, file: !3, line: 87, type: !4161)
!5183 = !DILocation(line: 87, column: 57, scope: !5181)
!5184 = !DILocation(line: 89, column: 1, scope: !5181)
!5185 = distinct !DISubprogram(name: "spi_shutdown_chip", scope: !118, file: !118, line: 270, type: !4213, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5186 = !DILocalVariable(name: "dws", arg: 1, scope: !5185, file: !118, line: 270, type: !4161)
!5187 = !DILocation(line: 270, column: 53, scope: !5185)
!5188 = !DILocation(line: 272, column: 18, scope: !5185)
!5189 = !DILocation(line: 272, column: 2, scope: !5185)
!5190 = !DILocation(line: 273, column: 14, scope: !5185)
!5191 = !DILocation(line: 273, column: 2, scope: !5185)
!5192 = !DILocation(line: 274, column: 1, scope: !5185)
!5193 = distinct !DISubprogram(name: "dw_spi_suspend_host", scope: !3, file: !3, line: 935, type: !5125, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5194 = !DILocalVariable(name: "dws", arg: 1, scope: !5193, file: !3, line: 935, type: !4161)
!5195 = !DILocation(line: 935, column: 40, scope: !5193)
!5196 = !DILocalVariable(name: "ret", scope: !5193, file: !3, line: 937, type: !131)
!5197 = !DILocation(line: 937, column: 6, scope: !5193)
!5198 = !DILocation(line: 939, column: 31, scope: !5193)
!5199 = !DILocation(line: 939, column: 36, scope: !5193)
!5200 = !DILocation(line: 939, column: 8, scope: !5193)
!5201 = !DILocation(line: 939, column: 6, scope: !5193)
!5202 = !DILocation(line: 940, column: 6, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 940, column: 6)
!5204 = !DILocation(line: 940, column: 6, scope: !5193)
!5205 = !DILocation(line: 941, column: 10, scope: !5203)
!5206 = !DILocation(line: 941, column: 3, scope: !5203)
!5207 = !DILocation(line: 943, column: 20, scope: !5193)
!5208 = !DILocation(line: 943, column: 2, scope: !5193)
!5209 = !DILocation(line: 944, column: 2, scope: !5193)
!5210 = !DILocation(line: 945, column: 1, scope: !5193)
!5211 = distinct !DISubprogram(name: "dw_spi_resume_host", scope: !3, file: !3, line: 948, type: !5125, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5212 = !DILocalVariable(name: "dws", arg: 1, scope: !5211, file: !3, line: 948, type: !4161)
!5213 = !DILocation(line: 948, column: 39, scope: !5211)
!5214 = !DILocation(line: 950, column: 15, scope: !5211)
!5215 = !DILocation(line: 950, column: 20, scope: !5211)
!5216 = !DILocation(line: 950, column: 28, scope: !5211)
!5217 = !DILocation(line: 950, column: 33, scope: !5211)
!5218 = !DILocation(line: 950, column: 2, scope: !5211)
!5219 = !DILocation(line: 951, column: 31, scope: !5211)
!5220 = !DILocation(line: 951, column: 36, scope: !5211)
!5221 = !DILocation(line: 951, column: 9, scope: !5211)
!5222 = !DILocation(line: 951, column: 2, scope: !5211)
!5223 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5224, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{!137, !3709}
!5226 = !DILocalVariable(name: "dev", arg: 1, scope: !5223, file: !73, line: 655, type: !3709)
!5227 = !DILocation(line: 655, column: 58, scope: !5223)
!5228 = !DILocation(line: 657, column: 9, scope: !5223)
!5229 = !DILocation(line: 657, column: 14, scope: !5223)
!5230 = !DILocation(line: 657, column: 2, scope: !5223)
!5231 = distinct !DISubprogram(name: "__writel", scope: !5232, file: !5232, line: 71, type: !5233, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5232 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5233 = !DISubroutineType(types: !5234)
!5234 = !{null, !7, !5235}
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5237 = !DILocalVariable(name: "val", arg: 1, scope: !5231, file: !5232, line: 71, type: !7)
!5238 = !DILocation(line: 71, column: 1, scope: !5231)
!5239 = !DILocalVariable(name: "addr", arg: 2, scope: !5231, file: !5232, line: 71, type: !5235)
!5240 = !{i32 -2142374771}
!5241 = distinct !DISubprogram(name: "__readl", scope: !5232, file: !5232, line: 63, type: !5242, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!7, !5244}
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5236)
!5246 = !DILocalVariable(name: "addr", arg: 1, scope: !5241, file: !5232, line: 63, type: !5244)
!5247 = !DILocation(line: 63, column: 1, scope: !5241)
!5248 = !DILocalVariable(name: "ret", scope: !5241, file: !5232, line: 63, type: !7)
!5249 = !{i32 -2142377074}
!5250 = distinct !DISubprogram(name: "spi_mask_intr", scope: !118, file: !118, line: 239, type: !5251, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{null, !4161, !134}
!5253 = !DILocalVariable(name: "dws", arg: 1, scope: !5250, file: !118, line: 239, type: !4161)
!5254 = !DILocation(line: 239, column: 49, scope: !5250)
!5255 = !DILocalVariable(name: "mask", arg: 2, scope: !5250, file: !118, line: 239, type: !134)
!5256 = !DILocation(line: 239, column: 58, scope: !5250)
!5257 = !DILocalVariable(name: "new_mask", scope: !5250, file: !118, line: 241, type: !134)
!5258 = !DILocation(line: 241, column: 6, scope: !5250)
!5259 = !DILocation(line: 243, column: 22, scope: !5250)
!5260 = !DILocation(line: 243, column: 13, scope: !5250)
!5261 = !DILocation(line: 243, column: 42, scope: !5250)
!5262 = !DILocation(line: 243, column: 41, scope: !5250)
!5263 = !DILocation(line: 243, column: 39, scope: !5250)
!5264 = !DILocation(line: 243, column: 11, scope: !5250)
!5265 = !DILocation(line: 244, column: 12, scope: !5250)
!5266 = !DILocation(line: 244, column: 29, scope: !5250)
!5267 = !DILocation(line: 244, column: 2, scope: !5250)
!5268 = !DILocation(line: 245, column: 1, scope: !5250)
!5269 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !5270, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{null, !3367, !137}
!5272 = !DILocalVariable(name: "dev", arg: 1, scope: !5269, file: !73, line: 660, type: !3367)
!5273 = !DILocation(line: 660, column: 51, scope: !5269)
!5274 = !DILocalVariable(name: "data", arg: 2, scope: !5269, file: !73, line: 660, type: !137)
!5275 = !DILocation(line: 660, column: 62, scope: !5269)
!5276 = !DILocation(line: 662, column: 21, scope: !5269)
!5277 = !DILocation(line: 662, column: 2, scope: !5269)
!5278 = !DILocation(line: 662, column: 7, scope: !5269)
!5279 = !DILocation(line: 662, column: 19, scope: !5269)
!5280 = !DILocation(line: 663, column: 1, scope: !5269)
!5281 = distinct !DISubprogram(name: "kobject_name", scope: !188, file: !188, line: 88, type: !5282, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{!191, !5284}
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!5286 = !DILocalVariable(name: "kobj", arg: 1, scope: !5281, file: !188, line: 88, type: !5284)
!5287 = !DILocation(line: 88, column: 62, scope: !5281)
!5288 = !DILocation(line: 90, column: 9, scope: !5281)
!5289 = !DILocation(line: 90, column: 15, scope: !5281)
!5290 = !DILocation(line: 90, column: 2, scope: !5281)
!5291 = distinct !DISubprogram(name: "dw_spi_adjust_mem_op_size", scope: !3, file: !3, line: 466, type: !4013, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5292 = !DILocalVariable(name: "mem", arg: 1, scope: !5291, file: !3, line: 466, type: !4015)
!5293 = !DILocation(line: 466, column: 54, scope: !5291)
!5294 = !DILocalVariable(name: "op", arg: 2, scope: !5291, file: !3, line: 466, type: !4021)
!5295 = !DILocation(line: 466, column: 78, scope: !5291)
!5296 = !DILocation(line: 468, column: 6, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 468, column: 6)
!5298 = !DILocation(line: 468, column: 10, scope: !5297)
!5299 = !DILocation(line: 468, column: 15, scope: !5297)
!5300 = !DILocation(line: 468, column: 19, scope: !5297)
!5301 = !DILocation(line: 468, column: 6, scope: !5291)
!5302 = !DILocalVariable(name: "__UNIQUE_ID___x255", scope: !5303, file: !3, line: 469, type: !7)
!5303 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 469, column: 21)
!5304 = !DILocation(line: 469, column: 21, scope: !5303)
!5305 = !DILocalVariable(name: "__UNIQUE_ID___x253", scope: !5306, file: !3, line: 469, type: !7)
!5306 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 469, column: 21)
!5307 = !DILocation(line: 469, column: 21, scope: !5306)
!5308 = !DILocalVariable(name: "__UNIQUE_ID___y254", scope: !5306, file: !3, line: 469, type: !7)
!5309 = !DILocalVariable(name: "__UNIQUE_ID___y256", scope: !5303, file: !3, line: 469, type: !7)
!5310 = !DILocation(line: 469, column: 3, scope: !5297)
!5311 = !DILocation(line: 469, column: 7, scope: !5297)
!5312 = !DILocation(line: 469, column: 12, scope: !5297)
!5313 = !DILocation(line: 469, column: 19, scope: !5297)
!5314 = !DILocation(line: 471, column: 2, scope: !5291)
!5315 = distinct !DISubprogram(name: "dw_spi_supports_mem_op", scope: !3, file: !3, line: 474, type: !4058, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5316 = !DILocalVariable(name: "mem", arg: 1, scope: !5315, file: !3, line: 474, type: !4015)
!5317 = !DILocation(line: 474, column: 52, scope: !5315)
!5318 = !DILocalVariable(name: "op", arg: 2, scope: !5315, file: !3, line: 475, type: !4060)
!5319 = !DILocation(line: 475, column: 33, scope: !5315)
!5320 = !DILocation(line: 477, column: 6, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 477, column: 6)
!5322 = !DILocation(line: 477, column: 10, scope: !5321)
!5323 = !DILocation(line: 477, column: 15, scope: !5321)
!5324 = !DILocation(line: 477, column: 24, scope: !5321)
!5325 = !DILocation(line: 477, column: 28, scope: !5321)
!5326 = !DILocation(line: 477, column: 31, scope: !5321)
!5327 = !DILocation(line: 477, column: 35, scope: !5321)
!5328 = !DILocation(line: 477, column: 40, scope: !5321)
!5329 = !DILocation(line: 477, column: 49, scope: !5321)
!5330 = !DILocation(line: 477, column: 53, scope: !5321)
!5331 = !DILocation(line: 478, column: 6, scope: !5321)
!5332 = !DILocation(line: 478, column: 10, scope: !5321)
!5333 = !DILocation(line: 478, column: 16, scope: !5321)
!5334 = !DILocation(line: 478, column: 25, scope: !5321)
!5335 = !DILocation(line: 478, column: 29, scope: !5321)
!5336 = !DILocation(line: 478, column: 32, scope: !5321)
!5337 = !DILocation(line: 478, column: 36, scope: !5321)
!5338 = !DILocation(line: 478, column: 40, scope: !5321)
!5339 = !DILocation(line: 478, column: 49, scope: !5321)
!5340 = !DILocation(line: 477, column: 6, scope: !5315)
!5341 = !DILocation(line: 479, column: 3, scope: !5321)
!5342 = !DILocation(line: 481, column: 37, scope: !5315)
!5343 = !DILocation(line: 481, column: 42, scope: !5315)
!5344 = !DILocation(line: 481, column: 9, scope: !5315)
!5345 = !DILocation(line: 481, column: 2, scope: !5315)
!5346 = !DILocation(line: 482, column: 1, scope: !5315)
!5347 = distinct !DISubprogram(name: "dw_spi_exec_mem_op", scope: !3, file: !3, line: 650, type: !4064, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5348 = !DILocalVariable(name: "mem", arg: 1, scope: !5347, file: !3, line: 650, type: !4015)
!5349 = !DILocation(line: 650, column: 47, scope: !5347)
!5350 = !DILocalVariable(name: "op", arg: 2, scope: !5347, file: !3, line: 650, type: !4060)
!5351 = !DILocation(line: 650, column: 77, scope: !5347)
!5352 = !DILocalVariable(name: "dws", scope: !5347, file: !3, line: 652, type: !4161)
!5353 = !DILocation(line: 652, column: 17, scope: !5347)
!5354 = !DILocation(line: 652, column: 50, scope: !5347)
!5355 = !DILocation(line: 652, column: 55, scope: !5347)
!5356 = !DILocation(line: 652, column: 60, scope: !5347)
!5357 = !DILocation(line: 652, column: 23, scope: !5347)
!5358 = !DILocalVariable(name: "cfg", scope: !5347, file: !3, line: 653, type: !4366)
!5359 = !DILocation(line: 653, column: 20, scope: !5347)
!5360 = !DILocalVariable(name: "flags", scope: !5347, file: !3, line: 654, type: !138)
!5361 = !DILocation(line: 654, column: 16, scope: !5347)
!5362 = !DILocalVariable(name: "ret", scope: !5347, file: !3, line: 655, type: !131)
!5363 = !DILocation(line: 655, column: 6, scope: !5347)
!5364 = !DILocation(line: 661, column: 28, scope: !5347)
!5365 = !DILocation(line: 661, column: 33, scope: !5347)
!5366 = !DILocation(line: 661, column: 8, scope: !5347)
!5367 = !DILocation(line: 661, column: 6, scope: !5347)
!5368 = !DILocation(line: 662, column: 6, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 662, column: 6)
!5370 = !DILocation(line: 662, column: 6, scope: !5347)
!5371 = !DILocation(line: 663, column: 10, scope: !5369)
!5372 = !DILocation(line: 663, column: 3, scope: !5369)
!5373 = !DILocation(line: 669, column: 6, scope: !5347)
!5374 = !DILocation(line: 669, column: 10, scope: !5347)
!5375 = !DILocalVariable(name: "__UNIQUE_ID___x269", scope: !5376, file: !3, line: 670, type: !134)
!5376 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 670, column: 13)
!5377 = !DILocation(line: 670, column: 13, scope: !5376)
!5378 = !DILocalVariable(name: "__UNIQUE_ID___x267", scope: !5379, file: !3, line: 670, type: !134)
!5379 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 670, column: 13)
!5380 = !DILocation(line: 670, column: 13, scope: !5379)
!5381 = !DILocalVariable(name: "__UNIQUE_ID___y268", scope: !5379, file: !3, line: 670, type: !7)
!5382 = !DILocalVariable(name: "__UNIQUE_ID___y270", scope: !5376, file: !3, line: 670, type: !134)
!5383 = !DILocation(line: 670, column: 6, scope: !5347)
!5384 = !DILocation(line: 670, column: 11, scope: !5347)
!5385 = !DILocation(line: 671, column: 6, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 671, column: 6)
!5387 = !DILocation(line: 671, column: 10, scope: !5386)
!5388 = !DILocation(line: 671, column: 15, scope: !5386)
!5389 = !DILocation(line: 671, column: 19, scope: !5386)
!5390 = !DILocation(line: 671, column: 6, scope: !5347)
!5391 = !DILocation(line: 672, column: 7, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 671, column: 39)
!5393 = !DILocation(line: 672, column: 13, scope: !5392)
!5394 = !DILocation(line: 673, column: 13, scope: !5392)
!5395 = !DILocation(line: 673, column: 17, scope: !5392)
!5396 = !DILocation(line: 673, column: 22, scope: !5392)
!5397 = !DILocation(line: 673, column: 7, scope: !5392)
!5398 = !DILocation(line: 673, column: 11, scope: !5392)
!5399 = !DILocation(line: 674, column: 2, scope: !5392)
!5400 = !DILocation(line: 675, column: 7, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 674, column: 9)
!5402 = !DILocation(line: 675, column: 13, scope: !5401)
!5403 = !DILocation(line: 678, column: 18, scope: !5347)
!5404 = !DILocation(line: 678, column: 2, scope: !5347)
!5405 = !DILocation(line: 680, column: 23, scope: !5347)
!5406 = !DILocation(line: 680, column: 28, scope: !5347)
!5407 = !DILocation(line: 680, column: 33, scope: !5347)
!5408 = !DILocation(line: 680, column: 2, scope: !5347)
!5409 = !DILocation(line: 682, column: 16, scope: !5347)
!5410 = !DILocation(line: 682, column: 2, scope: !5347)
!5411 = !DILocation(line: 684, column: 18, scope: !5347)
!5412 = !DILocation(line: 684, column: 2, scope: !5347)
!5413 = !DILocation(line: 714, column: 2, scope: !5347)
!5414 = !DILocation(line: 714, column: 2, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 714, column: 2)
!5416 = !DILocalVariable(name: "__dummy", scope: !5417, file: !3, line: 714, type: !138)
!5417 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 714, column: 2)
!5418 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 714, column: 2)
!5419 = !DILocation(line: 714, column: 2, scope: !5417)
!5420 = !DILocalVariable(name: "__dummy2", scope: !5417, file: !3, line: 714, type: !138)
!5421 = !DILocation(line: 714, column: 2, scope: !5418)
!5422 = !DILocation(line: 715, column: 2, scope: !5347)
!5423 = !{i32 -2141672238}
!5424 = !DILocation(line: 717, column: 31, scope: !5347)
!5425 = !DILocation(line: 717, column: 36, scope: !5347)
!5426 = !DILocation(line: 717, column: 41, scope: !5347)
!5427 = !DILocation(line: 717, column: 8, scope: !5347)
!5428 = !DILocation(line: 717, column: 6, scope: !5347)
!5429 = !DILocation(line: 719, column: 2, scope: !5347)
!5430 = !DILocation(line: 719, column: 2, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 719, column: 2)
!5432 = !DILocalVariable(name: "__dummy", scope: !5433, file: !3, line: 719, type: !138)
!5433 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 719, column: 2)
!5434 = distinct !DILexicalBlock(scope: !5431, file: !3, line: 719, column: 2)
!5435 = !DILocation(line: 719, column: 2, scope: !5433)
!5436 = !DILocalVariable(name: "__dummy2", scope: !5433, file: !3, line: 719, type: !138)
!5437 = !DILocation(line: 719, column: 2, scope: !5434)
!5438 = !DILocation(line: 720, column: 2, scope: !5347)
!5439 = !{i32 -2141671920}
!5440 = !DILocation(line: 729, column: 7, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 729, column: 6)
!5442 = !DILocation(line: 729, column: 6, scope: !5347)
!5443 = !DILocation(line: 730, column: 33, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 729, column: 12)
!5445 = !DILocation(line: 730, column: 9, scope: !5444)
!5446 = !DILocation(line: 730, column: 7, scope: !5444)
!5447 = !DILocation(line: 731, column: 8, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 731, column: 7)
!5449 = !DILocation(line: 731, column: 7, scope: !5444)
!5450 = !DILocation(line: 732, column: 30, scope: !5448)
!5451 = !DILocation(line: 732, column: 10, scope: !5448)
!5452 = !DILocation(line: 732, column: 8, scope: !5448)
!5453 = !DILocation(line: 732, column: 4, scope: !5448)
!5454 = !DILocation(line: 733, column: 2, scope: !5444)
!5455 = !DILocation(line: 735, column: 21, scope: !5347)
!5456 = !DILocation(line: 735, column: 26, scope: !5347)
!5457 = !DILocation(line: 735, column: 31, scope: !5347)
!5458 = !DILocation(line: 735, column: 2, scope: !5347)
!5459 = !DILocation(line: 737, column: 22, scope: !5347)
!5460 = !DILocation(line: 737, column: 2, scope: !5347)
!5461 = !DILocation(line: 739, column: 9, scope: !5347)
!5462 = !DILocation(line: 739, column: 2, scope: !5347)
!5463 = !DILocation(line: 740, column: 1, scope: !5347)
!5464 = distinct !DISubprogram(name: "dw_spi_init_mem_buf", scope: !3, file: !3, line: 484, type: !5465, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5465 = !DISubroutineType(types: !5466)
!5466 = !{!131, !4161, !4060}
!5467 = !DILocalVariable(name: "dws", arg: 1, scope: !5464, file: !3, line: 484, type: !4161)
!5468 = !DILocation(line: 484, column: 47, scope: !5464)
!5469 = !DILocalVariable(name: "op", arg: 2, scope: !5464, file: !3, line: 484, type: !4060)
!5470 = !DILocation(line: 484, column: 77, scope: !5464)
!5471 = !DILocalVariable(name: "i", scope: !5464, file: !3, line: 486, type: !7)
!5472 = !DILocation(line: 486, column: 15, scope: !5464)
!5473 = !DILocalVariable(name: "j", scope: !5464, file: !3, line: 486, type: !7)
!5474 = !DILocation(line: 486, column: 18, scope: !5464)
!5475 = !DILocalVariable(name: "len", scope: !5464, file: !3, line: 486, type: !7)
!5476 = !DILocation(line: 486, column: 21, scope: !5464)
!5477 = !DILocalVariable(name: "out", scope: !5464, file: !3, line: 487, type: !142)
!5478 = !DILocation(line: 487, column: 6, scope: !5464)
!5479 = !DILocation(line: 493, column: 8, scope: !5464)
!5480 = !DILocation(line: 493, column: 12, scope: !5464)
!5481 = !DILocation(line: 493, column: 16, scope: !5464)
!5482 = !DILocation(line: 493, column: 25, scope: !5464)
!5483 = !DILocation(line: 493, column: 29, scope: !5464)
!5484 = !DILocation(line: 493, column: 34, scope: !5464)
!5485 = !DILocation(line: 493, column: 23, scope: !5464)
!5486 = !DILocation(line: 493, column: 43, scope: !5464)
!5487 = !DILocation(line: 493, column: 47, scope: !5464)
!5488 = !DILocation(line: 493, column: 53, scope: !5464)
!5489 = !DILocation(line: 493, column: 41, scope: !5464)
!5490 = !DILocation(line: 493, column: 6, scope: !5464)
!5491 = !DILocation(line: 494, column: 6, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 494, column: 6)
!5493 = !DILocation(line: 494, column: 10, scope: !5492)
!5494 = !DILocation(line: 494, column: 15, scope: !5492)
!5495 = !DILocation(line: 494, column: 19, scope: !5492)
!5496 = !DILocation(line: 494, column: 6, scope: !5464)
!5497 = !DILocation(line: 495, column: 10, scope: !5492)
!5498 = !DILocation(line: 495, column: 14, scope: !5492)
!5499 = !DILocation(line: 495, column: 19, scope: !5492)
!5500 = !DILocation(line: 495, column: 7, scope: !5492)
!5501 = !DILocation(line: 495, column: 3, scope: !5492)
!5502 = !DILocation(line: 497, column: 6, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 497, column: 6)
!5504 = !DILocation(line: 497, column: 10, scope: !5503)
!5505 = !DILocation(line: 497, column: 6, scope: !5464)
!5506 = !DILocation(line: 498, column: 9, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 497, column: 27)
!5508 = !DILocation(line: 498, column: 14, scope: !5507)
!5509 = !DILocation(line: 498, column: 7, scope: !5507)
!5510 = !DILocation(line: 499, column: 2, scope: !5507)
!5511 = !DILocation(line: 500, column: 17, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 499, column: 9)
!5513 = !DILocation(line: 500, column: 9, scope: !5512)
!5514 = !DILocation(line: 500, column: 7, scope: !5512)
!5515 = !DILocation(line: 501, column: 8, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 501, column: 7)
!5517 = !DILocation(line: 501, column: 7, scope: !5512)
!5518 = !DILocation(line: 502, column: 4, scope: !5516)
!5519 = !DILocation(line: 510, column: 9, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 510, column: 2)
!5521 = !DILocation(line: 510, column: 7, scope: !5520)
!5522 = !DILocation(line: 510, column: 14, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5520, file: !3, line: 510, column: 2)
!5524 = !DILocation(line: 510, column: 18, scope: !5523)
!5525 = !DILocation(line: 510, column: 22, scope: !5523)
!5526 = !DILocation(line: 510, column: 26, scope: !5523)
!5527 = !DILocation(line: 510, column: 16, scope: !5523)
!5528 = !DILocation(line: 510, column: 2, scope: !5520)
!5529 = !DILocation(line: 511, column: 12, scope: !5523)
!5530 = !DILocation(line: 511, column: 3, scope: !5523)
!5531 = !DILocation(line: 511, column: 7, scope: !5523)
!5532 = !DILocation(line: 511, column: 10, scope: !5523)
!5533 = !DILocation(line: 510, column: 34, scope: !5523)
!5534 = !DILocation(line: 510, column: 2, scope: !5523)
!5535 = distinct !{!5535, !5528, !5536}
!5536 = !DILocation(line: 511, column: 12, scope: !5520)
!5537 = !DILocation(line: 512, column: 9, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 512, column: 2)
!5539 = !DILocation(line: 512, column: 7, scope: !5538)
!5540 = !DILocation(line: 512, column: 14, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 512, column: 2)
!5542 = !DILocation(line: 512, column: 18, scope: !5541)
!5543 = !DILocation(line: 512, column: 22, scope: !5541)
!5544 = !DILocation(line: 512, column: 27, scope: !5541)
!5545 = !DILocation(line: 512, column: 16, scope: !5541)
!5546 = !DILocation(line: 512, column: 2, scope: !5538)
!5547 = !DILocation(line: 513, column: 12, scope: !5541)
!5548 = !DILocation(line: 513, column: 3, scope: !5541)
!5549 = !DILocation(line: 513, column: 7, scope: !5541)
!5550 = !DILocation(line: 513, column: 10, scope: !5541)
!5551 = !DILocation(line: 512, column: 35, scope: !5541)
!5552 = !DILocation(line: 512, column: 40, scope: !5541)
!5553 = !DILocation(line: 512, column: 2, scope: !5541)
!5554 = distinct !{!5554, !5546, !5555}
!5555 = !DILocation(line: 513, column: 12, scope: !5538)
!5556 = !DILocation(line: 514, column: 9, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 514, column: 2)
!5558 = !DILocation(line: 514, column: 7, scope: !5557)
!5559 = !DILocation(line: 514, column: 14, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 514, column: 2)
!5561 = !DILocation(line: 514, column: 18, scope: !5560)
!5562 = !DILocation(line: 514, column: 22, scope: !5560)
!5563 = !DILocation(line: 514, column: 28, scope: !5560)
!5564 = !DILocation(line: 514, column: 16, scope: !5560)
!5565 = !DILocation(line: 514, column: 2, scope: !5557)
!5566 = !DILocation(line: 515, column: 3, scope: !5560)
!5567 = !DILocation(line: 515, column: 7, scope: !5560)
!5568 = !DILocation(line: 515, column: 10, scope: !5560)
!5569 = !DILocation(line: 514, column: 36, scope: !5560)
!5570 = !DILocation(line: 514, column: 41, scope: !5560)
!5571 = !DILocation(line: 514, column: 2, scope: !5560)
!5572 = distinct !{!5572, !5565, !5573}
!5573 = !DILocation(line: 515, column: 12, scope: !5557)
!5574 = !DILocation(line: 517, column: 6, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 517, column: 6)
!5576 = !DILocation(line: 517, column: 10, scope: !5575)
!5577 = !DILocation(line: 517, column: 15, scope: !5575)
!5578 = !DILocation(line: 517, column: 19, scope: !5575)
!5579 = !DILocation(line: 517, column: 6, scope: !5464)
!5580 = !DILocation(line: 518, column: 11, scope: !5575)
!5581 = !DILocation(line: 518, column: 15, scope: !5575)
!5582 = !DILocation(line: 518, column: 19, scope: !5575)
!5583 = !DILocation(line: 518, column: 23, scope: !5575)
!5584 = !DILocation(line: 518, column: 28, scope: !5575)
!5585 = !DILocation(line: 518, column: 32, scope: !5575)
!5586 = !DILocation(line: 518, column: 37, scope: !5575)
!5587 = !DILocation(line: 518, column: 41, scope: !5575)
!5588 = !DILocation(line: 518, column: 46, scope: !5575)
!5589 = !DILocation(line: 518, column: 3, scope: !5575)
!5590 = !DILocation(line: 520, column: 2, scope: !5464)
!5591 = !DILocation(line: 520, column: 7, scope: !5464)
!5592 = !DILocation(line: 520, column: 15, scope: !5464)
!5593 = !DILocation(line: 521, column: 12, scope: !5464)
!5594 = !DILocation(line: 521, column: 2, scope: !5464)
!5595 = !DILocation(line: 521, column: 7, scope: !5464)
!5596 = !DILocation(line: 521, column: 10, scope: !5464)
!5597 = !DILocation(line: 522, column: 16, scope: !5464)
!5598 = !DILocation(line: 522, column: 2, scope: !5464)
!5599 = !DILocation(line: 522, column: 7, scope: !5464)
!5600 = !DILocation(line: 522, column: 14, scope: !5464)
!5601 = !DILocation(line: 523, column: 6, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 523, column: 6)
!5603 = !DILocation(line: 523, column: 10, scope: !5602)
!5604 = !DILocation(line: 523, column: 15, scope: !5602)
!5605 = !DILocation(line: 523, column: 19, scope: !5602)
!5606 = !DILocation(line: 523, column: 6, scope: !5464)
!5607 = !DILocation(line: 524, column: 13, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 523, column: 39)
!5609 = !DILocation(line: 524, column: 17, scope: !5608)
!5610 = !DILocation(line: 524, column: 22, scope: !5608)
!5611 = !DILocation(line: 524, column: 26, scope: !5608)
!5612 = !DILocation(line: 524, column: 3, scope: !5608)
!5613 = !DILocation(line: 524, column: 8, scope: !5608)
!5614 = !DILocation(line: 524, column: 11, scope: !5608)
!5615 = !DILocation(line: 525, column: 17, scope: !5608)
!5616 = !DILocation(line: 525, column: 21, scope: !5608)
!5617 = !DILocation(line: 525, column: 26, scope: !5608)
!5618 = !DILocation(line: 525, column: 3, scope: !5608)
!5619 = !DILocation(line: 525, column: 8, scope: !5608)
!5620 = !DILocation(line: 525, column: 15, scope: !5608)
!5621 = !DILocation(line: 526, column: 2, scope: !5608)
!5622 = !DILocation(line: 527, column: 3, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 526, column: 9)
!5624 = !DILocation(line: 527, column: 8, scope: !5623)
!5625 = !DILocation(line: 527, column: 11, scope: !5623)
!5626 = !DILocation(line: 528, column: 3, scope: !5623)
!5627 = !DILocation(line: 528, column: 8, scope: !5623)
!5628 = !DILocation(line: 528, column: 15, scope: !5623)
!5629 = !DILocation(line: 531, column: 2, scope: !5464)
!5630 = !DILocation(line: 532, column: 1, scope: !5464)
!5631 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5632, file: !5632, line: 666, type: !5633, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5632 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5633 = !DISubroutineType(types: !5634)
!5634 = !{!138}
!5635 = !DILocalVariable(name: "f", scope: !5631, file: !5632, line: 668, type: !138)
!5636 = !DILocation(line: 668, column: 16, scope: !5631)
!5637 = !DILocation(line: 670, column: 6, scope: !5631)
!5638 = !DILocation(line: 670, column: 4, scope: !5631)
!5639 = !DILocation(line: 671, column: 2, scope: !5631)
!5640 = !DILocation(line: 672, column: 9, scope: !5631)
!5641 = !DILocation(line: 672, column: 2, scope: !5631)
!5642 = distinct !DISubprogram(name: "dw_spi_write_then_read", scope: !3, file: !3, line: 540, type: !5643, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{!131, !4161, !179}
!5645 = !DILocalVariable(name: "dws", arg: 1, scope: !5642, file: !3, line: 540, type: !4161)
!5646 = !DILocation(line: 540, column: 50, scope: !5642)
!5647 = !DILocalVariable(name: "spi", arg: 2, scope: !5642, file: !3, line: 540, type: !179)
!5648 = !DILocation(line: 540, column: 74, scope: !5642)
!5649 = !DILocalVariable(name: "room", scope: !5642, file: !3, line: 542, type: !134)
!5650 = !DILocation(line: 542, column: 6, scope: !5642)
!5651 = !DILocalVariable(name: "entries", scope: !5642, file: !3, line: 542, type: !134)
!5652 = !DILocation(line: 542, column: 12, scope: !5642)
!5653 = !DILocalVariable(name: "sts", scope: !5642, file: !3, line: 542, type: !134)
!5654 = !DILocation(line: 542, column: 21, scope: !5642)
!5655 = !DILocalVariable(name: "len", scope: !5642, file: !3, line: 543, type: !7)
!5656 = !DILocation(line: 543, column: 15, scope: !5642)
!5657 = !DILocalVariable(name: "buf", scope: !5642, file: !3, line: 544, type: !142)
!5658 = !DILocation(line: 544, column: 6, scope: !5642)
!5659 = !DILocalVariable(name: "__UNIQUE_ID___x257", scope: !5660, file: !3, line: 551, type: !134)
!5660 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 551, column: 8)
!5661 = !DILocation(line: 551, column: 8, scope: !5660)
!5662 = !DILocalVariable(name: "__UNIQUE_ID___y258", scope: !5660, file: !3, line: 551, type: !7)
!5663 = !DILocation(line: 551, column: 6, scope: !5642)
!5664 = !DILocation(line: 552, column: 8, scope: !5642)
!5665 = !DILocation(line: 552, column: 13, scope: !5642)
!5666 = !DILocation(line: 552, column: 6, scope: !5642)
!5667 = !DILocation(line: 553, column: 2, scope: !5642)
!5668 = !DILocation(line: 553, column: 12, scope: !5642)
!5669 = !DILocation(line: 554, column: 19, scope: !5642)
!5670 = !DILocation(line: 554, column: 39, scope: !5642)
!5671 = !DILocation(line: 554, column: 35, scope: !5642)
!5672 = !DILocation(line: 554, column: 3, scope: !5642)
!5673 = distinct !{!5673, !5667, !5674}
!5674 = !DILocation(line: 554, column: 41, scope: !5642)
!5675 = !DILocation(line: 562, column: 8, scope: !5642)
!5676 = !DILocation(line: 562, column: 13, scope: !5642)
!5677 = !DILocation(line: 562, column: 31, scope: !5642)
!5678 = !DILocation(line: 562, column: 37, scope: !5642)
!5679 = !DILocation(line: 562, column: 42, scope: !5642)
!5680 = !DILocation(line: 562, column: 35, scope: !5642)
!5681 = !DILocation(line: 562, column: 20, scope: !5642)
!5682 = !DILocation(line: 562, column: 6, scope: !5642)
!5683 = !DILocation(line: 563, column: 16, scope: !5642)
!5684 = !DILocation(line: 563, column: 2, scope: !5642)
!5685 = !DILocation(line: 564, column: 2, scope: !5642)
!5686 = !DILocation(line: 564, column: 9, scope: !5642)
!5687 = !DILocation(line: 565, column: 13, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 564, column: 14)
!5689 = !DILocation(line: 565, column: 11, scope: !5688)
!5690 = !DILocation(line: 566, column: 8, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5688, file: !3, line: 566, column: 7)
!5692 = !DILocation(line: 566, column: 7, scope: !5688)
!5693 = !DILocation(line: 567, column: 4, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 566, column: 17)
!5695 = !DILocation(line: 568, column: 4, scope: !5694)
!5696 = !DILocalVariable(name: "__UNIQUE_ID___x259", scope: !5697, file: !3, line: 570, type: !7)
!5697 = distinct !DILexicalBlock(scope: !5688, file: !3, line: 570, column: 10)
!5698 = !DILocation(line: 570, column: 10, scope: !5697)
!5699 = !DILocalVariable(name: "__UNIQUE_ID___y260", scope: !5697, file: !3, line: 570, type: !7)
!5700 = !DILocation(line: 570, column: 8, scope: !5688)
!5701 = !DILocation(line: 571, column: 3, scope: !5688)
!5702 = !DILocation(line: 571, column: 10, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 571, column: 3)
!5704 = distinct !DILexicalBlock(scope: !5688, file: !3, line: 571, column: 3)
!5705 = !DILocation(line: 571, column: 3, scope: !5704)
!5706 = !DILocation(line: 572, column: 20, scope: !5703)
!5707 = !DILocation(line: 572, column: 40, scope: !5703)
!5708 = !DILocation(line: 572, column: 36, scope: !5703)
!5709 = !DILocation(line: 572, column: 4, scope: !5703)
!5710 = !DILocation(line: 571, column: 16, scope: !5703)
!5711 = !DILocation(line: 571, column: 24, scope: !5703)
!5712 = !DILocation(line: 571, column: 3, scope: !5703)
!5713 = distinct !{!5713, !5705, !5714}
!5714 = !DILocation(line: 572, column: 42, scope: !5704)
!5715 = distinct !{!5715, !5685, !5716}
!5716 = !DILocation(line: 573, column: 2, scope: !5642)
!5717 = !DILocation(line: 580, column: 8, scope: !5642)
!5718 = !DILocation(line: 580, column: 13, scope: !5642)
!5719 = !DILocation(line: 580, column: 6, scope: !5642)
!5720 = !DILocation(line: 581, column: 8, scope: !5642)
!5721 = !DILocation(line: 581, column: 13, scope: !5642)
!5722 = !DILocation(line: 581, column: 6, scope: !5642)
!5723 = !DILocation(line: 582, column: 2, scope: !5642)
!5724 = !DILocation(line: 582, column: 9, scope: !5642)
!5725 = !DILocation(line: 583, column: 13, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 582, column: 14)
!5727 = !DILocation(line: 583, column: 11, scope: !5726)
!5728 = !DILocation(line: 584, column: 8, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 584, column: 7)
!5730 = !DILocation(line: 584, column: 7, scope: !5726)
!5731 = !DILocation(line: 585, column: 10, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 584, column: 17)
!5733 = !DILocation(line: 585, column: 8, scope: !5732)
!5734 = !DILocation(line: 586, column: 8, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 586, column: 8)
!5736 = !DILocation(line: 586, column: 12, scope: !5735)
!5737 = !DILocation(line: 586, column: 8, scope: !5732)
!5738 = !DILocation(line: 587, column: 5, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 586, column: 28)
!5740 = !DILocation(line: 588, column: 5, scope: !5739)
!5741 = !DILocation(line: 590, column: 4, scope: !5732)
!5742 = distinct !{!5742, !5723, !5743}
!5743 = !DILocation(line: 595, column: 2, scope: !5642)
!5744 = !DILocalVariable(name: "__UNIQUE_ID___x261", scope: !5745, file: !3, line: 592, type: !134)
!5745 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 592, column: 13)
!5746 = !DILocation(line: 592, column: 13, scope: !5745)
!5747 = !DILocalVariable(name: "__UNIQUE_ID___y262", scope: !5745, file: !3, line: 592, type: !7)
!5748 = !DILocation(line: 592, column: 11, scope: !5726)
!5749 = !DILocation(line: 593, column: 3, scope: !5726)
!5750 = !DILocation(line: 593, column: 10, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 593, column: 3)
!5752 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 593, column: 3)
!5753 = !DILocation(line: 593, column: 3, scope: !5752)
!5754 = !DILocation(line: 594, column: 28, scope: !5751)
!5755 = !DILocation(line: 594, column: 13, scope: !5751)
!5756 = !DILocation(line: 594, column: 8, scope: !5751)
!5757 = !DILocation(line: 594, column: 11, scope: !5751)
!5758 = !DILocation(line: 594, column: 4, scope: !5751)
!5759 = !DILocation(line: 593, column: 19, scope: !5751)
!5760 = !DILocation(line: 593, column: 30, scope: !5751)
!5761 = !DILocation(line: 593, column: 3, scope: !5751)
!5762 = distinct !{!5762, !5753, !5763}
!5763 = !DILocation(line: 594, column: 42, scope: !5752)
!5764 = !DILocation(line: 597, column: 2, scope: !5642)
!5765 = !DILocation(line: 598, column: 1, scope: !5642)
!5766 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5632, file: !5632, line: 651, type: !5767, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5767 = !DISubroutineType(types: !5768)
!5768 = !{null, !138}
!5769 = !DILocalVariable(name: "f", arg: 1, scope: !5766, file: !5632, line: 651, type: !138)
!5770 = !DILocation(line: 651, column: 65, scope: !5766)
!5771 = !DILocalVariable(name: "__edi", scope: !5772, file: !5632, line: 653, type: !138)
!5772 = distinct !DILexicalBlock(scope: !5766, file: !5632, line: 653, column: 2)
!5773 = !DILocation(line: 653, column: 2, scope: !5772)
!5774 = !DILocalVariable(name: "__esi", scope: !5772, file: !5632, line: 653, type: !138)
!5775 = !DILocalVariable(name: "__edx", scope: !5772, file: !5632, line: 653, type: !138)
!5776 = !DILocalVariable(name: "__ecx", scope: !5772, file: !5632, line: 653, type: !138)
!5777 = !DILocalVariable(name: "__eax", scope: !5772, file: !5632, line: 653, type: !138)
!5778 = !{i32 -2145722933, i32 -2145722183, i32 -2145721949, i32 -2145721898, i32 -2145721870, i32 -2145721845, i32 -2145722161, i32 -2145722148, i32 -2145721710, i32 -2145721591, i32 -2145722056, i32 -2145722029, i32 -2145722001, i32 -2145721971}
!5779 = !DILocation(line: 654, column: 1, scope: !5766)
!5780 = distinct !DISubprogram(name: "dw_spi_wait_mem_op_done", scope: !3, file: !3, line: 605, type: !5125, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5781 = !DILocalVariable(name: "dws", arg: 1, scope: !5780, file: !3, line: 605, type: !4161)
!5782 = !DILocation(line: 605, column: 51, scope: !5780)
!5783 = !DILocalVariable(name: "retry", scope: !5780, file: !3, line: 607, type: !131)
!5784 = !DILocation(line: 607, column: 6, scope: !5780)
!5785 = !DILocalVariable(name: "delay", scope: !5780, file: !3, line: 608, type: !3869)
!5786 = !DILocation(line: 608, column: 19, scope: !5780)
!5787 = !DILocalVariable(name: "ns", scope: !5780, file: !3, line: 609, type: !138)
!5788 = !DILocation(line: 609, column: 16, scope: !5780)
!5789 = !DILocalVariable(name: "us", scope: !5780, file: !3, line: 609, type: !138)
!5790 = !DILocation(line: 609, column: 20, scope: !5780)
!5791 = !DILocalVariable(name: "nents", scope: !5780, file: !3, line: 610, type: !134)
!5792 = !DILocation(line: 610, column: 6, scope: !5780)
!5793 = !DILocation(line: 612, column: 19, scope: !5780)
!5794 = !DILocation(line: 612, column: 10, scope: !5780)
!5795 = !DILocation(line: 612, column: 8, scope: !5780)
!5796 = !DILocation(line: 613, column: 22, scope: !5780)
!5797 = !DILocation(line: 613, column: 27, scope: !5780)
!5798 = !DILocation(line: 613, column: 20, scope: !5780)
!5799 = !DILocation(line: 613, column: 42, scope: !5780)
!5800 = !DILocation(line: 613, column: 40, scope: !5780)
!5801 = !DILocation(line: 613, column: 5, scope: !5780)
!5802 = !DILocation(line: 614, column: 8, scope: !5780)
!5803 = !DILocation(line: 614, column: 13, scope: !5780)
!5804 = !DILocation(line: 614, column: 21, scope: !5780)
!5805 = !DILocation(line: 614, column: 5, scope: !5780)
!5806 = !DILocation(line: 615, column: 6, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 615, column: 6)
!5808 = !DILocation(line: 615, column: 9, scope: !5807)
!5809 = !DILocation(line: 615, column: 6, scope: !5780)
!5810 = !DILocation(line: 616, column: 9, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 615, column: 27)
!5812 = !DILocation(line: 616, column: 14, scope: !5811)
!5813 = !DILocation(line: 617, column: 17, scope: !5811)
!5814 = !DILocation(line: 617, column: 9, scope: !5811)
!5815 = !DILocation(line: 617, column: 15, scope: !5811)
!5816 = !DILocation(line: 618, column: 2, scope: !5811)
!5817 = !DILocation(line: 619, column: 8, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 618, column: 9)
!5819 = !DILocation(line: 619, column: 6, scope: !5818)
!5820 = !DILocation(line: 620, column: 9, scope: !5818)
!5821 = !DILocation(line: 620, column: 14, scope: !5818)
!5822 = !DILocalVariable(name: "__UNIQUE_ID___x265", scope: !5823, file: !3, line: 621, type: !138)
!5823 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 621, column: 17)
!5824 = !DILocation(line: 621, column: 17, scope: !5823)
!5825 = !DILocalVariable(name: "__UNIQUE_ID___x263", scope: !5826, file: !3, line: 621, type: !138)
!5826 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 621, column: 17)
!5827 = !DILocation(line: 621, column: 17, scope: !5826)
!5828 = !DILocalVariable(name: "__UNIQUE_ID___y264", scope: !5826, file: !3, line: 621, type: !138)
!5829 = !DILocalVariable(name: "__UNIQUE_ID___y266", scope: !5823, file: !3, line: 621, type: !138)
!5830 = !DILocation(line: 621, column: 17, scope: !5818)
!5831 = !DILocation(line: 621, column: 9, scope: !5818)
!5832 = !DILocation(line: 621, column: 15, scope: !5818)
!5833 = !DILocation(line: 624, column: 2, scope: !5780)
!5834 = !DILocation(line: 624, column: 26, scope: !5780)
!5835 = !DILocation(line: 624, column: 9, scope: !5780)
!5836 = !DILocation(line: 624, column: 31, scope: !5780)
!5837 = !DILocation(line: 624, column: 39, scope: !5780)
!5838 = !DILocation(line: 0, scope: !5780)
!5839 = !DILocation(line: 625, column: 3, scope: !5780)
!5840 = distinct !{!5840, !5833, !5841}
!5841 = !DILocation(line: 625, column: 30, scope: !5780)
!5842 = !DILocation(line: 627, column: 6, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 627, column: 6)
!5844 = !DILocation(line: 627, column: 12, scope: !5843)
!5845 = !DILocation(line: 627, column: 6, scope: !5780)
!5846 = !DILocation(line: 628, column: 3, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 627, column: 17)
!5848 = !DILocation(line: 629, column: 3, scope: !5847)
!5849 = !DILocation(line: 632, column: 2, scope: !5780)
!5850 = !DILocation(line: 633, column: 1, scope: !5780)
!5851 = distinct !DISubprogram(name: "dw_spi_stop_mem_op", scope: !3, file: !3, line: 635, type: !5852, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5852 = !DISubroutineType(types: !5853)
!5853 = !{null, !4161, !179}
!5854 = !DILocalVariable(name: "dws", arg: 1, scope: !5851, file: !3, line: 635, type: !4161)
!5855 = !DILocation(line: 635, column: 47, scope: !5851)
!5856 = !DILocalVariable(name: "spi", arg: 2, scope: !5851, file: !3, line: 635, type: !179)
!5857 = !DILocation(line: 635, column: 71, scope: !5851)
!5858 = !DILocation(line: 637, column: 18, scope: !5851)
!5859 = !DILocation(line: 637, column: 2, scope: !5851)
!5860 = !DILocation(line: 638, column: 16, scope: !5851)
!5861 = !DILocation(line: 638, column: 2, scope: !5851)
!5862 = !DILocation(line: 639, column: 18, scope: !5851)
!5863 = !DILocation(line: 639, column: 2, scope: !5851)
!5864 = !DILocation(line: 640, column: 1, scope: !5851)
!5865 = distinct !DISubprogram(name: "dw_spi_free_mem_buf", scope: !3, file: !3, line: 534, type: !4213, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5866 = !DILocalVariable(name: "dws", arg: 1, scope: !5865, file: !3, line: 534, type: !4161)
!5867 = !DILocation(line: 534, column: 48, scope: !5865)
!5868 = !DILocation(line: 536, column: 6, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 536, column: 6)
!5870 = !DILocation(line: 536, column: 11, scope: !5869)
!5871 = !DILocation(line: 536, column: 17, scope: !5869)
!5872 = !DILocation(line: 536, column: 22, scope: !5869)
!5873 = !DILocation(line: 536, column: 14, scope: !5869)
!5874 = !DILocation(line: 536, column: 6, scope: !5865)
!5875 = !DILocation(line: 537, column: 9, scope: !5869)
!5876 = !DILocation(line: 537, column: 14, scope: !5869)
!5877 = !DILocation(line: 537, column: 3, scope: !5869)
!5878 = !DILocation(line: 538, column: 1, scope: !5865)
!5879 = distinct !DISubprogram(name: "kzalloc", scope: !111, file: !111, line: 662, type: !5880, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5880 = !DISubroutineType(types: !5881)
!5881 = !{!137, !293, !136}
!5882 = !DILocalVariable(name: "s", arg: 1, scope: !5883, file: !111, line: 445, type: !940)
!5883 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !111, file: !111, line: 445, type: !5884, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5884 = !DISubroutineType(types: !5885)
!5885 = !{!137, !940, !136, !293}
!5886 = !DILocation(line: 445, column: 72, scope: !5883, inlinedAt: !5887)
!5887 = distinct !DILocation(line: 552, column: 10, scope: !5888, inlinedAt: !5891)
!5888 = distinct !DILexicalBlock(scope: !5889, file: !111, line: 540, column: 34)
!5889 = distinct !DILexicalBlock(scope: !5890, file: !111, line: 540, column: 6)
!5890 = distinct !DISubprogram(name: "kmalloc", scope: !111, file: !111, line: 538, type: !5880, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5891 = distinct !DILocation(line: 664, column: 9, scope: !5879)
!5892 = !DILocalVariable(name: "flags", arg: 2, scope: !5883, file: !111, line: 446, type: !136)
!5893 = !DILocation(line: 446, column: 9, scope: !5883, inlinedAt: !5887)
!5894 = !DILocalVariable(name: "size", arg: 3, scope: !5883, file: !111, line: 446, type: !293)
!5895 = !DILocation(line: 446, column: 23, scope: !5883, inlinedAt: !5887)
!5896 = !DILocalVariable(name: "ret", scope: !5883, file: !111, line: 448, type: !137)
!5897 = !DILocation(line: 448, column: 8, scope: !5883, inlinedAt: !5887)
!5898 = !DILocalVariable(name: "flags", arg: 1, scope: !5899, file: !111, line: 318, type: !136)
!5899 = distinct !DISubprogram(name: "kmalloc_type", scope: !111, file: !111, line: 318, type: !5900, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5900 = !DISubroutineType(types: !5901)
!5901 = !{!110, !136}
!5902 = !DILocation(line: 318, column: 67, scope: !5899, inlinedAt: !5903)
!5903 = distinct !DILocation(line: 553, column: 20, scope: !5888, inlinedAt: !5891)
!5904 = !DILocalVariable(name: "size", arg: 1, scope: !5905, file: !111, line: 346, type: !293)
!5905 = distinct !DISubprogram(name: "kmalloc_index", scope: !111, file: !111, line: 346, type: !5906, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5906 = !DISubroutineType(types: !5907)
!5907 = !{!7, !293}
!5908 = !DILocation(line: 346, column: 58, scope: !5905, inlinedAt: !5909)
!5909 = distinct !DILocation(line: 547, column: 11, scope: !5888, inlinedAt: !5891)
!5910 = !DILocalVariable(name: "size", arg: 1, scope: !5911, file: !111, line: 472, type: !293)
!5911 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !111, file: !111, line: 472, type: !5912, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5912 = !DISubroutineType(types: !5913)
!5913 = !{!137, !293, !136, !7}
!5914 = !DILocation(line: 472, column: 28, scope: !5911, inlinedAt: !5915)
!5915 = distinct !DILocation(line: 481, column: 9, scope: !5916, inlinedAt: !5917)
!5916 = distinct !DISubprogram(name: "kmalloc_large", scope: !111, file: !111, line: 478, type: !5880, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!5917 = distinct !DILocation(line: 545, column: 11, scope: !5918, inlinedAt: !5891)
!5918 = distinct !DILexicalBlock(scope: !5888, file: !111, line: 544, column: 7)
!5919 = !DILocalVariable(name: "flags", arg: 2, scope: !5911, file: !111, line: 472, type: !136)
!5920 = !DILocation(line: 472, column: 40, scope: !5911, inlinedAt: !5915)
!5921 = !DILocalVariable(name: "order", arg: 3, scope: !5911, file: !111, line: 472, type: !7)
!5922 = !DILocation(line: 472, column: 60, scope: !5911, inlinedAt: !5915)
!5923 = !DILocalVariable(name: "size", arg: 1, scope: !5916, file: !111, line: 478, type: !293)
!5924 = !DILocation(line: 478, column: 51, scope: !5916, inlinedAt: !5917)
!5925 = !DILocalVariable(name: "flags", arg: 2, scope: !5916, file: !111, line: 478, type: !136)
!5926 = !DILocation(line: 478, column: 63, scope: !5916, inlinedAt: !5917)
!5927 = !DILocalVariable(name: "order", scope: !5916, file: !111, line: 480, type: !7)
!5928 = !DILocation(line: 480, column: 15, scope: !5916, inlinedAt: !5917)
!5929 = !DILocalVariable(name: "size", arg: 1, scope: !5890, file: !111, line: 538, type: !293)
!5930 = !DILocation(line: 538, column: 45, scope: !5890, inlinedAt: !5891)
!5931 = !DILocalVariable(name: "flags", arg: 2, scope: !5890, file: !111, line: 538, type: !136)
!5932 = !DILocation(line: 538, column: 57, scope: !5890, inlinedAt: !5891)
!5933 = !DILocalVariable(name: "index", scope: !5888, file: !111, line: 542, type: !7)
!5934 = !DILocation(line: 542, column: 16, scope: !5888, inlinedAt: !5891)
!5935 = !DILocalVariable(name: "size", arg: 1, scope: !5879, file: !111, line: 662, type: !293)
!5936 = !DILocation(line: 662, column: 36, scope: !5879)
!5937 = !DILocalVariable(name: "flags", arg: 2, scope: !5879, file: !111, line: 662, type: !136)
!5938 = !DILocation(line: 662, column: 48, scope: !5879)
!5939 = !DILocation(line: 664, column: 17, scope: !5879)
!5940 = !DILocation(line: 664, column: 23, scope: !5879)
!5941 = !DILocation(line: 664, column: 29, scope: !5879)
!5942 = !DILocation(line: 540, column: 27, scope: !5889, inlinedAt: !5891)
!5943 = !DILocation(line: 540, column: 6, scope: !5889, inlinedAt: !5891)
!5944 = !DILocation(line: 540, column: 6, scope: !5890, inlinedAt: !5891)
!5945 = !DILocation(line: 544, column: 7, scope: !5918, inlinedAt: !5891)
!5946 = !DILocation(line: 544, column: 12, scope: !5918, inlinedAt: !5891)
!5947 = !DILocation(line: 544, column: 7, scope: !5888, inlinedAt: !5891)
!5948 = !DILocation(line: 545, column: 25, scope: !5918, inlinedAt: !5891)
!5949 = !DILocation(line: 545, column: 31, scope: !5918, inlinedAt: !5891)
!5950 = !DILocation(line: 480, column: 33, scope: !5916, inlinedAt: !5917)
!5951 = !DILocation(line: 480, column: 23, scope: !5916, inlinedAt: !5917)
!5952 = !DILocation(line: 481, column: 29, scope: !5916, inlinedAt: !5917)
!5953 = !DILocation(line: 481, column: 35, scope: !5916, inlinedAt: !5917)
!5954 = !DILocation(line: 481, column: 42, scope: !5916, inlinedAt: !5917)
!5955 = !DILocation(line: 474, column: 23, scope: !5911, inlinedAt: !5915)
!5956 = !DILocation(line: 474, column: 29, scope: !5911, inlinedAt: !5915)
!5957 = !DILocation(line: 474, column: 36, scope: !5911, inlinedAt: !5915)
!5958 = !DILocation(line: 474, column: 9, scope: !5911, inlinedAt: !5915)
!5959 = !DILocation(line: 545, column: 4, scope: !5918, inlinedAt: !5891)
!5960 = !DILocation(line: 547, column: 25, scope: !5888, inlinedAt: !5891)
!5961 = !DILocation(line: 348, column: 7, scope: !5962, inlinedAt: !5909)
!5962 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 348, column: 6)
!5963 = !DILocation(line: 348, column: 6, scope: !5905, inlinedAt: !5909)
!5964 = !DILocation(line: 349, column: 3, scope: !5962, inlinedAt: !5909)
!5965 = !DILocation(line: 351, column: 6, scope: !5966, inlinedAt: !5909)
!5966 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 351, column: 6)
!5967 = !DILocation(line: 351, column: 11, scope: !5966, inlinedAt: !5909)
!5968 = !DILocation(line: 351, column: 6, scope: !5905, inlinedAt: !5909)
!5969 = !DILocation(line: 352, column: 3, scope: !5966, inlinedAt: !5909)
!5970 = !DILocation(line: 354, column: 32, scope: !5971, inlinedAt: !5909)
!5971 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 354, column: 6)
!5972 = !DILocation(line: 354, column: 37, scope: !5971, inlinedAt: !5909)
!5973 = !DILocation(line: 354, column: 42, scope: !5971, inlinedAt: !5909)
!5974 = !DILocation(line: 354, column: 45, scope: !5971, inlinedAt: !5909)
!5975 = !DILocation(line: 354, column: 50, scope: !5971, inlinedAt: !5909)
!5976 = !DILocation(line: 354, column: 6, scope: !5905, inlinedAt: !5909)
!5977 = !DILocation(line: 355, column: 3, scope: !5971, inlinedAt: !5909)
!5978 = !DILocation(line: 356, column: 32, scope: !5979, inlinedAt: !5909)
!5979 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 356, column: 6)
!5980 = !DILocation(line: 356, column: 37, scope: !5979, inlinedAt: !5909)
!5981 = !DILocation(line: 356, column: 43, scope: !5979, inlinedAt: !5909)
!5982 = !DILocation(line: 356, column: 46, scope: !5979, inlinedAt: !5909)
!5983 = !DILocation(line: 356, column: 51, scope: !5979, inlinedAt: !5909)
!5984 = !DILocation(line: 356, column: 6, scope: !5905, inlinedAt: !5909)
!5985 = !DILocation(line: 357, column: 3, scope: !5979, inlinedAt: !5909)
!5986 = !DILocation(line: 358, column: 6, scope: !5987, inlinedAt: !5909)
!5987 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 358, column: 6)
!5988 = !DILocation(line: 358, column: 11, scope: !5987, inlinedAt: !5909)
!5989 = !DILocation(line: 358, column: 6, scope: !5905, inlinedAt: !5909)
!5990 = !DILocation(line: 358, column: 26, scope: !5987, inlinedAt: !5909)
!5991 = !DILocation(line: 359, column: 6, scope: !5992, inlinedAt: !5909)
!5992 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 359, column: 6)
!5993 = !DILocation(line: 359, column: 11, scope: !5992, inlinedAt: !5909)
!5994 = !DILocation(line: 359, column: 6, scope: !5905, inlinedAt: !5909)
!5995 = !DILocation(line: 359, column: 26, scope: !5992, inlinedAt: !5909)
!5996 = !DILocation(line: 360, column: 6, scope: !5997, inlinedAt: !5909)
!5997 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 360, column: 6)
!5998 = !DILocation(line: 360, column: 11, scope: !5997, inlinedAt: !5909)
!5999 = !DILocation(line: 360, column: 6, scope: !5905, inlinedAt: !5909)
!6000 = !DILocation(line: 360, column: 26, scope: !5997, inlinedAt: !5909)
!6001 = !DILocation(line: 361, column: 6, scope: !6002, inlinedAt: !5909)
!6002 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 361, column: 6)
!6003 = !DILocation(line: 361, column: 11, scope: !6002, inlinedAt: !5909)
!6004 = !DILocation(line: 361, column: 6, scope: !5905, inlinedAt: !5909)
!6005 = !DILocation(line: 361, column: 26, scope: !6002, inlinedAt: !5909)
!6006 = !DILocation(line: 362, column: 6, scope: !6007, inlinedAt: !5909)
!6007 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 362, column: 6)
!6008 = !DILocation(line: 362, column: 11, scope: !6007, inlinedAt: !5909)
!6009 = !DILocation(line: 362, column: 6, scope: !5905, inlinedAt: !5909)
!6010 = !DILocation(line: 362, column: 26, scope: !6007, inlinedAt: !5909)
!6011 = !DILocation(line: 363, column: 6, scope: !6012, inlinedAt: !5909)
!6012 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 363, column: 6)
!6013 = !DILocation(line: 363, column: 11, scope: !6012, inlinedAt: !5909)
!6014 = !DILocation(line: 363, column: 6, scope: !5905, inlinedAt: !5909)
!6015 = !DILocation(line: 363, column: 26, scope: !6012, inlinedAt: !5909)
!6016 = !DILocation(line: 364, column: 6, scope: !6017, inlinedAt: !5909)
!6017 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 364, column: 6)
!6018 = !DILocation(line: 364, column: 11, scope: !6017, inlinedAt: !5909)
!6019 = !DILocation(line: 364, column: 6, scope: !5905, inlinedAt: !5909)
!6020 = !DILocation(line: 364, column: 26, scope: !6017, inlinedAt: !5909)
!6021 = !DILocation(line: 365, column: 6, scope: !6022, inlinedAt: !5909)
!6022 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 365, column: 6)
!6023 = !DILocation(line: 365, column: 11, scope: !6022, inlinedAt: !5909)
!6024 = !DILocation(line: 365, column: 6, scope: !5905, inlinedAt: !5909)
!6025 = !DILocation(line: 365, column: 26, scope: !6022, inlinedAt: !5909)
!6026 = !DILocation(line: 366, column: 6, scope: !6027, inlinedAt: !5909)
!6027 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 366, column: 6)
!6028 = !DILocation(line: 366, column: 11, scope: !6027, inlinedAt: !5909)
!6029 = !DILocation(line: 366, column: 6, scope: !5905, inlinedAt: !5909)
!6030 = !DILocation(line: 366, column: 26, scope: !6027, inlinedAt: !5909)
!6031 = !DILocation(line: 367, column: 6, scope: !6032, inlinedAt: !5909)
!6032 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 367, column: 6)
!6033 = !DILocation(line: 367, column: 11, scope: !6032, inlinedAt: !5909)
!6034 = !DILocation(line: 367, column: 6, scope: !5905, inlinedAt: !5909)
!6035 = !DILocation(line: 367, column: 26, scope: !6032, inlinedAt: !5909)
!6036 = !DILocation(line: 368, column: 6, scope: !6037, inlinedAt: !5909)
!6037 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 368, column: 6)
!6038 = !DILocation(line: 368, column: 11, scope: !6037, inlinedAt: !5909)
!6039 = !DILocation(line: 368, column: 6, scope: !5905, inlinedAt: !5909)
!6040 = !DILocation(line: 368, column: 26, scope: !6037, inlinedAt: !5909)
!6041 = !DILocation(line: 369, column: 6, scope: !6042, inlinedAt: !5909)
!6042 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 369, column: 6)
!6043 = !DILocation(line: 369, column: 11, scope: !6042, inlinedAt: !5909)
!6044 = !DILocation(line: 369, column: 6, scope: !5905, inlinedAt: !5909)
!6045 = !DILocation(line: 369, column: 26, scope: !6042, inlinedAt: !5909)
!6046 = !DILocation(line: 370, column: 6, scope: !6047, inlinedAt: !5909)
!6047 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 370, column: 6)
!6048 = !DILocation(line: 370, column: 11, scope: !6047, inlinedAt: !5909)
!6049 = !DILocation(line: 370, column: 6, scope: !5905, inlinedAt: !5909)
!6050 = !DILocation(line: 370, column: 26, scope: !6047, inlinedAt: !5909)
!6051 = !DILocation(line: 371, column: 6, scope: !6052, inlinedAt: !5909)
!6052 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 371, column: 6)
!6053 = !DILocation(line: 371, column: 11, scope: !6052, inlinedAt: !5909)
!6054 = !DILocation(line: 371, column: 6, scope: !5905, inlinedAt: !5909)
!6055 = !DILocation(line: 371, column: 26, scope: !6052, inlinedAt: !5909)
!6056 = !DILocation(line: 372, column: 6, scope: !6057, inlinedAt: !5909)
!6057 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 372, column: 6)
!6058 = !DILocation(line: 372, column: 11, scope: !6057, inlinedAt: !5909)
!6059 = !DILocation(line: 372, column: 6, scope: !5905, inlinedAt: !5909)
!6060 = !DILocation(line: 372, column: 26, scope: !6057, inlinedAt: !5909)
!6061 = !DILocation(line: 373, column: 6, scope: !6062, inlinedAt: !5909)
!6062 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 373, column: 6)
!6063 = !DILocation(line: 373, column: 11, scope: !6062, inlinedAt: !5909)
!6064 = !DILocation(line: 373, column: 6, scope: !5905, inlinedAt: !5909)
!6065 = !DILocation(line: 373, column: 26, scope: !6062, inlinedAt: !5909)
!6066 = !DILocation(line: 374, column: 6, scope: !6067, inlinedAt: !5909)
!6067 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 374, column: 6)
!6068 = !DILocation(line: 374, column: 11, scope: !6067, inlinedAt: !5909)
!6069 = !DILocation(line: 374, column: 6, scope: !5905, inlinedAt: !5909)
!6070 = !DILocation(line: 374, column: 26, scope: !6067, inlinedAt: !5909)
!6071 = !DILocation(line: 375, column: 6, scope: !6072, inlinedAt: !5909)
!6072 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 375, column: 6)
!6073 = !DILocation(line: 375, column: 11, scope: !6072, inlinedAt: !5909)
!6074 = !DILocation(line: 375, column: 6, scope: !5905, inlinedAt: !5909)
!6075 = !DILocation(line: 375, column: 27, scope: !6072, inlinedAt: !5909)
!6076 = !DILocation(line: 376, column: 6, scope: !6077, inlinedAt: !5909)
!6077 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 376, column: 6)
!6078 = !DILocation(line: 376, column: 11, scope: !6077, inlinedAt: !5909)
!6079 = !DILocation(line: 376, column: 6, scope: !5905, inlinedAt: !5909)
!6080 = !DILocation(line: 376, column: 32, scope: !6077, inlinedAt: !5909)
!6081 = !DILocation(line: 377, column: 6, scope: !6082, inlinedAt: !5909)
!6082 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 377, column: 6)
!6083 = !DILocation(line: 377, column: 11, scope: !6082, inlinedAt: !5909)
!6084 = !DILocation(line: 377, column: 6, scope: !5905, inlinedAt: !5909)
!6085 = !DILocation(line: 377, column: 32, scope: !6082, inlinedAt: !5909)
!6086 = !DILocation(line: 378, column: 6, scope: !6087, inlinedAt: !5909)
!6087 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 378, column: 6)
!6088 = !DILocation(line: 378, column: 11, scope: !6087, inlinedAt: !5909)
!6089 = !DILocation(line: 378, column: 6, scope: !5905, inlinedAt: !5909)
!6090 = !DILocation(line: 378, column: 32, scope: !6087, inlinedAt: !5909)
!6091 = !DILocation(line: 379, column: 6, scope: !6092, inlinedAt: !5909)
!6092 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 379, column: 6)
!6093 = !DILocation(line: 379, column: 11, scope: !6092, inlinedAt: !5909)
!6094 = !DILocation(line: 379, column: 6, scope: !5905, inlinedAt: !5909)
!6095 = !DILocation(line: 379, column: 33, scope: !6092, inlinedAt: !5909)
!6096 = !DILocation(line: 380, column: 6, scope: !6097, inlinedAt: !5909)
!6097 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 380, column: 6)
!6098 = !DILocation(line: 380, column: 11, scope: !6097, inlinedAt: !5909)
!6099 = !DILocation(line: 380, column: 6, scope: !5905, inlinedAt: !5909)
!6100 = !DILocation(line: 380, column: 33, scope: !6097, inlinedAt: !5909)
!6101 = !DILocation(line: 381, column: 6, scope: !6102, inlinedAt: !5909)
!6102 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 381, column: 6)
!6103 = !DILocation(line: 381, column: 11, scope: !6102, inlinedAt: !5909)
!6104 = !DILocation(line: 381, column: 6, scope: !5905, inlinedAt: !5909)
!6105 = !DILocation(line: 381, column: 33, scope: !6102, inlinedAt: !5909)
!6106 = !DILocation(line: 382, column: 2, scope: !6107, inlinedAt: !5909)
!6107 = distinct !DILexicalBlock(scope: !6108, file: !111, line: 382, column: 2)
!6108 = distinct !DILexicalBlock(scope: !5905, file: !111, line: 382, column: 2)
!6109 = !{i32 -2142038132, i32 -2142038103, i32 -2142038057, i32 -2142037999, i32 -2142037945, i32 -2142037891, i32 -2142037836, i32 -2142037805}
!6110 = !DILocation(line: 382, column: 2, scope: !6111, inlinedAt: !5909)
!6111 = distinct !DILexicalBlock(scope: !6112, file: !111, line: 382, column: 2)
!6112 = distinct !DILexicalBlock(scope: !6108, file: !111, line: 382, column: 2)
!6113 = !{i32 -2142037362, i32 -2142037355, i32 -2142037301, i32 -2142037270, i32 -2142037240}
!6114 = !DILocation(line: 382, column: 2, scope: !6112, inlinedAt: !5909)
!6115 = !DILocation(line: 386, column: 1, scope: !5905, inlinedAt: !5909)
!6116 = !DILocation(line: 547, column: 9, scope: !5888, inlinedAt: !5891)
!6117 = !DILocation(line: 549, column: 8, scope: !6118, inlinedAt: !5891)
!6118 = distinct !DILexicalBlock(scope: !5888, file: !111, line: 549, column: 7)
!6119 = !DILocation(line: 549, column: 7, scope: !5888, inlinedAt: !5891)
!6120 = !DILocation(line: 550, column: 4, scope: !6118, inlinedAt: !5891)
!6121 = !DILocation(line: 553, column: 33, scope: !5888, inlinedAt: !5891)
!6122 = !DILocation(line: 325, column: 6, scope: !6123, inlinedAt: !5903)
!6123 = distinct !DILexicalBlock(scope: !5899, file: !111, line: 325, column: 6)
!6124 = !DILocation(line: 325, column: 6, scope: !5899, inlinedAt: !5903)
!6125 = !DILocation(line: 326, column: 3, scope: !6123, inlinedAt: !5903)
!6126 = !DILocation(line: 332, column: 9, scope: !5899, inlinedAt: !5903)
!6127 = !DILocation(line: 332, column: 15, scope: !5899, inlinedAt: !5903)
!6128 = !DILocation(line: 332, column: 2, scope: !5899, inlinedAt: !5903)
!6129 = !DILocation(line: 336, column: 1, scope: !5899, inlinedAt: !5903)
!6130 = !DILocation(line: 553, column: 5, scope: !5888, inlinedAt: !5891)
!6131 = !DILocation(line: 553, column: 41, scope: !5888, inlinedAt: !5891)
!6132 = !DILocation(line: 554, column: 5, scope: !5888, inlinedAt: !5891)
!6133 = !DILocation(line: 554, column: 12, scope: !5888, inlinedAt: !5891)
!6134 = !DILocation(line: 448, column: 31, scope: !5883, inlinedAt: !5887)
!6135 = !DILocation(line: 448, column: 34, scope: !5883, inlinedAt: !5887)
!6136 = !DILocation(line: 448, column: 14, scope: !5883, inlinedAt: !5887)
!6137 = !DILocation(line: 450, column: 22, scope: !5883, inlinedAt: !5887)
!6138 = !DILocation(line: 450, column: 25, scope: !5883, inlinedAt: !5887)
!6139 = !DILocation(line: 450, column: 30, scope: !5883, inlinedAt: !5887)
!6140 = !DILocation(line: 450, column: 36, scope: !5883, inlinedAt: !5887)
!6141 = !DILocation(line: 450, column: 8, scope: !5883, inlinedAt: !5887)
!6142 = !DILocation(line: 450, column: 6, scope: !5883, inlinedAt: !5887)
!6143 = !DILocation(line: 451, column: 9, scope: !5883, inlinedAt: !5887)
!6144 = !DILocation(line: 552, column: 3, scope: !5888, inlinedAt: !5891)
!6145 = !DILocation(line: 557, column: 19, scope: !5890, inlinedAt: !5891)
!6146 = !DILocation(line: 557, column: 25, scope: !5890, inlinedAt: !5891)
!6147 = !DILocation(line: 557, column: 9, scope: !5890, inlinedAt: !5891)
!6148 = !DILocation(line: 557, column: 2, scope: !5890, inlinedAt: !5891)
!6149 = !DILocation(line: 558, column: 1, scope: !5890, inlinedAt: !5891)
!6150 = !DILocation(line: 664, column: 2, scope: !5879)
!6151 = distinct !DISubprogram(name: "get_order", scope: !6152, file: !6152, line: 29, type: !6153, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6152 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6153 = !DISubroutineType(types: !6154)
!6154 = !{!131, !138}
!6155 = !DILocalVariable(name: "x", arg: 1, scope: !6156, file: !6157, line: 366, type: !128)
!6156 = distinct !DISubprogram(name: "fls64", scope: !6157, file: !6157, line: 366, type: !6158, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6157 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6158 = !DISubroutineType(types: !6159)
!6159 = !{!131, !128}
!6160 = !DILocation(line: 366, column: 40, scope: !6156, inlinedAt: !6161)
!6161 = distinct !DILocation(line: 46, column: 9, scope: !6151)
!6162 = !DILocalVariable(name: "bitpos", scope: !6156, file: !6157, line: 368, type: !131)
!6163 = !DILocation(line: 368, column: 6, scope: !6156, inlinedAt: !6161)
!6164 = !DILocalVariable(name: "size", arg: 1, scope: !6151, file: !6152, line: 29, type: !138)
!6165 = !DILocation(line: 29, column: 63, scope: !6151)
!6166 = !DILocation(line: 31, column: 27, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6151, file: !6152, line: 31, column: 6)
!6168 = !DILocation(line: 31, column: 6, scope: !6167)
!6169 = !DILocation(line: 31, column: 6, scope: !6151)
!6170 = !DILocation(line: 32, column: 8, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6172, file: !6152, line: 32, column: 7)
!6172 = distinct !DILexicalBlock(scope: !6167, file: !6152, line: 31, column: 34)
!6173 = !DILocation(line: 32, column: 7, scope: !6172)
!6174 = !DILocation(line: 33, column: 4, scope: !6171)
!6175 = !DILocation(line: 35, column: 7, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6172, file: !6152, line: 35, column: 7)
!6177 = !DILocation(line: 35, column: 12, scope: !6176)
!6178 = !DILocation(line: 35, column: 7, scope: !6172)
!6179 = !DILocation(line: 36, column: 4, scope: !6176)
!6180 = !DILocation(line: 38, column: 10, scope: !6172)
!6181 = !DILocation(line: 38, column: 28, scope: !6172)
!6182 = !DILocation(line: 38, column: 41, scope: !6172)
!6183 = !DILocation(line: 38, column: 3, scope: !6172)
!6184 = !DILocation(line: 41, column: 6, scope: !6151)
!6185 = !DILocation(line: 42, column: 7, scope: !6151)
!6186 = !DILocation(line: 46, column: 15, scope: !6151)
!6187 = !DILocation(line: 374, column: 2, scope: !6156, inlinedAt: !6161)
!6188 = !DILocation(line: 376, column: 14, scope: !6156, inlinedAt: !6161)
!6189 = !{i32 678560}
!6190 = !DILocation(line: 377, column: 9, scope: !6156, inlinedAt: !6161)
!6191 = !DILocation(line: 377, column: 16, scope: !6156, inlinedAt: !6161)
!6192 = !DILocation(line: 46, column: 2, scope: !6151)
!6193 = !DILocation(line: 48, column: 1, scope: !6151)
!6194 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6195, file: !6195, line: 30, type: !6196, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6195 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6196 = !DISubroutineType(types: !6197)
!6197 = !{!131, !126}
!6198 = !DILocation(line: 366, column: 40, scope: !6156, inlinedAt: !6199)
!6199 = distinct !DILocation(line: 32, column: 9, scope: !6194)
!6200 = !DILocation(line: 368, column: 6, scope: !6156, inlinedAt: !6199)
!6201 = !DILocalVariable(name: "n", arg: 1, scope: !6194, file: !6195, line: 30, type: !126)
!6202 = !DILocation(line: 30, column: 21, scope: !6194)
!6203 = !DILocation(line: 32, column: 15, scope: !6194)
!6204 = !DILocation(line: 374, column: 2, scope: !6156, inlinedAt: !6199)
!6205 = !DILocation(line: 376, column: 14, scope: !6156, inlinedAt: !6199)
!6206 = !DILocation(line: 377, column: 9, scope: !6156, inlinedAt: !6199)
!6207 = !DILocation(line: 377, column: 16, scope: !6156, inlinedAt: !6199)
!6208 = !DILocation(line: 32, column: 18, scope: !6194)
!6209 = !DILocation(line: 32, column: 2, scope: !6194)
!6210 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6211, file: !6211, line: 137, type: !6212, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6211 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6212 = !DISubroutineType(types: !6213)
!6213 = !{!137, !940, !2126, !293, !136}
!6214 = !DILocalVariable(name: "s", arg: 1, scope: !6210, file: !6211, line: 137, type: !940)
!6215 = !DILocation(line: 137, column: 54, scope: !6210)
!6216 = !DILocalVariable(name: "object", arg: 2, scope: !6210, file: !6211, line: 137, type: !2126)
!6217 = !DILocation(line: 137, column: 69, scope: !6210)
!6218 = !DILocalVariable(name: "size", arg: 3, scope: !6210, file: !6211, line: 138, type: !293)
!6219 = !DILocation(line: 138, column: 12, scope: !6210)
!6220 = !DILocalVariable(name: "flags", arg: 4, scope: !6210, file: !6211, line: 138, type: !136)
!6221 = !DILocation(line: 138, column: 24, scope: !6210)
!6222 = !DILocation(line: 140, column: 17, scope: !6210)
!6223 = !DILocation(line: 140, column: 2, scope: !6210)
!6224 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5632, file: !5632, line: 646, type: !5633, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6225 = !DILocalVariable(name: "__ret", scope: !6226, file: !5632, line: 648, type: !138)
!6226 = distinct !DILexicalBlock(scope: !6224, file: !5632, line: 648, column: 9)
!6227 = !DILocation(line: 648, column: 9, scope: !6226)
!6228 = !DILocalVariable(name: "__edi", scope: !6226, file: !5632, line: 648, type: !138)
!6229 = !DILocalVariable(name: "__esi", scope: !6226, file: !5632, line: 648, type: !138)
!6230 = !DILocalVariable(name: "__edx", scope: !6226, file: !5632, line: 648, type: !138)
!6231 = !DILocalVariable(name: "__ecx", scope: !6226, file: !5632, line: 648, type: !138)
!6232 = !DILocalVariable(name: "__eax", scope: !6226, file: !5632, line: 648, type: !138)
!6233 = !DILocation(line: 648, column: 9, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6235, file: !5632, line: 648, column: 9)
!6235 = distinct !DILexicalBlock(scope: !6226, file: !5632, line: 648, column: 9)
!6236 = !{i32 -2145727400, i32 -2145725085, i32 -2145724851, i32 -2145724800, i32 -2145724772, i32 -2145724747, i32 -2145725063, i32 -2145725050, i32 -2145724612, i32 -2145724493, i32 -2145724958, i32 -2145724931, i32 -2145724903, i32 -2145724873}
!6237 = !DILocalVariable(name: "__mask", scope: !6238, file: !5632, line: 648, type: !138)
!6238 = distinct !DILexicalBlock(scope: !6234, file: !5632, line: 648, column: 9)
!6239 = !DILocation(line: 648, column: 9, scope: !6238)
!6240 = !DILocation(line: 648, column: 9, scope: !6235)
!6241 = !DILocation(line: 648, column: 2, scope: !6224)
!6242 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5632, file: !5632, line: 656, type: !1877, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6243 = !DILocalVariable(name: "__edi", scope: !6244, file: !5632, line: 658, type: !138)
!6244 = distinct !DILexicalBlock(scope: !6242, file: !5632, line: 658, column: 2)
!6245 = !DILocation(line: 658, column: 2, scope: !6244)
!6246 = !DILocalVariable(name: "__esi", scope: !6244, file: !5632, line: 658, type: !138)
!6247 = !DILocalVariable(name: "__edx", scope: !6244, file: !5632, line: 658, type: !138)
!6248 = !DILocalVariable(name: "__ecx", scope: !6244, file: !5632, line: 658, type: !138)
!6249 = !DILocalVariable(name: "__eax", scope: !6244, file: !5632, line: 658, type: !138)
!6250 = !{i32 -2145720306, i32 -2145719574, i32 -2145719340, i32 -2145719289, i32 -2145719261, i32 -2145719236, i32 -2145719552, i32 -2145719539, i32 -2145719101, i32 -2145718982, i32 -2145719447, i32 -2145719420, i32 -2145719392, i32 -2145719362}
!6251 = !DILocation(line: 659, column: 1, scope: !6242)
!6252 = distinct !DISubprogram(name: "dw_write_io_reg", scope: !118, file: !118, line: 215, type: !4255, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6253 = !DILocalVariable(name: "dws", arg: 1, scope: !6252, file: !118, line: 215, type: !4161)
!6254 = !DILocation(line: 215, column: 51, scope: !6252)
!6255 = !DILocalVariable(name: "offset", arg: 2, scope: !6252, file: !118, line: 215, type: !134)
!6256 = !DILocation(line: 215, column: 60, scope: !6252)
!6257 = !DILocalVariable(name: "val", arg: 3, scope: !6252, file: !118, line: 215, type: !134)
!6258 = !DILocation(line: 215, column: 72, scope: !6252)
!6259 = !DILocation(line: 217, column: 10, scope: !6252)
!6260 = !DILocation(line: 217, column: 15, scope: !6252)
!6261 = !DILocation(line: 217, column: 2, scope: !6252)
!6262 = !DILocation(line: 219, column: 3, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6252, file: !118, line: 217, column: 29)
!6264 = !DILocation(line: 220, column: 3, scope: !6263)
!6265 = !DILocation(line: 223, column: 3, scope: !6263)
!6266 = !DILocation(line: 224, column: 3, scope: !6263)
!6267 = !DILocation(line: 226, column: 1, scope: !6252)
!6268 = distinct !DISubprogram(name: "dw_read_io_reg", scope: !118, file: !118, line: 204, type: !4336, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6269 = !DILocalVariable(name: "dws", arg: 1, scope: !6268, file: !118, line: 204, type: !4161)
!6270 = !DILocation(line: 204, column: 49, scope: !6268)
!6271 = !DILocalVariable(name: "offset", arg: 2, scope: !6268, file: !118, line: 204, type: !134)
!6272 = !DILocation(line: 204, column: 58, scope: !6268)
!6273 = !DILocation(line: 206, column: 10, scope: !6268)
!6274 = !DILocation(line: 206, column: 15, scope: !6268)
!6275 = !DILocation(line: 206, column: 2, scope: !6268)
!6276 = !DILocation(line: 208, column: 10, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6268, file: !118, line: 206, column: 29)
!6278 = !DILocation(line: 208, column: 3, scope: !6277)
!6279 = !DILocation(line: 211, column: 10, scope: !6277)
!6280 = !DILocation(line: 211, column: 3, scope: !6277)
!6281 = !DILocation(line: 213, column: 1, scope: !6268)
!6282 = distinct !DISubprogram(name: "__writew", scope: !5232, file: !5232, line: 70, type: !6283, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6283 = !DISubroutineType(types: !6284)
!6284 = !{null, !141, !5235}
!6285 = !DILocalVariable(name: "val", arg: 1, scope: !6282, file: !5232, line: 70, type: !141)
!6286 = !DILocation(line: 70, column: 1, scope: !6282)
!6287 = !DILocalVariable(name: "addr", arg: 2, scope: !6282, file: !5232, line: 70, type: !5235)
!6288 = !{i32 -2142375149}
!6289 = distinct !DISubprogram(name: "__readw", scope: !5232, file: !5232, line: 62, type: !6290, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6290 = !DISubroutineType(types: !6291)
!6291 = !{!141, !5244}
!6292 = !DILocalVariable(name: "addr", arg: 1, scope: !6289, file: !5232, line: 62, type: !5244)
!6293 = !DILocation(line: 62, column: 1, scope: !6289)
!6294 = !DILocalVariable(name: "ret", scope: !6289, file: !5232, line: 62, type: !141)
!6295 = !{i32 -2142377483}
!6296 = distinct !DISubprogram(name: "dw_spi_ctlr_busy", scope: !3, file: !3, line: 600, type: !6297, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6297 = !DISubroutineType(types: !6298)
!6298 = !{!453, !4161}
!6299 = !DILocalVariable(name: "dws", arg: 1, scope: !6296, file: !3, line: 600, type: !4161)
!6300 = !DILocation(line: 600, column: 52, scope: !6296)
!6301 = !DILocation(line: 602, column: 18, scope: !6296)
!6302 = !DILocation(line: 602, column: 9, scope: !6296)
!6303 = !DILocation(line: 602, column: 34, scope: !6296)
!6304 = !DILocation(line: 602, column: 2, scope: !6296)
!6305 = distinct !DISubprogram(name: "spi_set_ctldata", scope: !181, file: !181, line: 233, type: !6306, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6306 = !DISubroutineType(types: !6307)
!6307 = !{null, !179, !137}
!6308 = !DILocalVariable(name: "spi", arg: 1, scope: !6305, file: !181, line: 233, type: !179)
!6309 = !DILocation(line: 233, column: 55, scope: !6305)
!6310 = !DILocalVariable(name: "state", arg: 2, scope: !6305, file: !181, line: 233, type: !137)
!6311 = !DILocation(line: 233, column: 66, scope: !6305)
!6312 = !DILocation(line: 235, column: 26, scope: !6305)
!6313 = !DILocation(line: 235, column: 2, scope: !6305)
!6314 = !DILocation(line: 235, column: 7, scope: !6305)
!6315 = !DILocation(line: 235, column: 24, scope: !6305)
!6316 = !DILocation(line: 236, column: 1, scope: !6305)
!6317 = distinct !DISubprogram(name: "dw_spi_prepare_cr0", scope: !3, file: !3, line: 266, type: !6318, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6318 = !DISubroutineType(types: !6319)
!6319 = !{!134, !4161, !179}
!6320 = !DILocalVariable(name: "dws", arg: 1, scope: !6317, file: !3, line: 266, type: !4161)
!6321 = !DILocation(line: 266, column: 46, scope: !6317)
!6322 = !DILocalVariable(name: "spi", arg: 2, scope: !6317, file: !3, line: 266, type: !179)
!6323 = !DILocation(line: 266, column: 70, scope: !6317)
!6324 = !DILocalVariable(name: "cr0", scope: !6317, file: !3, line: 268, type: !134)
!6325 = !DILocation(line: 268, column: 6, scope: !6317)
!6326 = !DILocation(line: 270, column: 8, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6317, file: !3, line: 270, column: 6)
!6328 = !DILocation(line: 270, column: 13, scope: !6327)
!6329 = !DILocation(line: 270, column: 18, scope: !6327)
!6330 = !DILocation(line: 270, column: 6, scope: !6317)
!6331 = !DILocation(line: 272, column: 7, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 270, column: 41)
!6333 = !DILocation(line: 279, column: 12, scope: !6332)
!6334 = !DILocation(line: 279, column: 17, scope: !6332)
!6335 = !DILocation(line: 279, column: 22, scope: !6332)
!6336 = !DILocation(line: 279, column: 11, scope: !6332)
!6337 = !DILocation(line: 279, column: 43, scope: !6332)
!6338 = !DILocation(line: 279, column: 7, scope: !6332)
!6339 = !DILocation(line: 280, column: 12, scope: !6332)
!6340 = !DILocation(line: 280, column: 17, scope: !6332)
!6341 = !DILocation(line: 280, column: 22, scope: !6332)
!6342 = !DILocation(line: 280, column: 11, scope: !6332)
!6343 = !DILocation(line: 280, column: 43, scope: !6332)
!6344 = !DILocation(line: 280, column: 7, scope: !6332)
!6345 = !DILocation(line: 283, column: 12, scope: !6332)
!6346 = !DILocation(line: 283, column: 17, scope: !6332)
!6347 = !DILocation(line: 283, column: 22, scope: !6332)
!6348 = !DILocation(line: 283, column: 11, scope: !6332)
!6349 = !DILocation(line: 283, column: 43, scope: !6332)
!6350 = !DILocation(line: 283, column: 7, scope: !6332)
!6351 = !DILocation(line: 284, column: 2, scope: !6332)
!6352 = !DILocation(line: 286, column: 7, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 284, column: 9)
!6354 = !DILocation(line: 293, column: 12, scope: !6353)
!6355 = !DILocation(line: 293, column: 17, scope: !6353)
!6356 = !DILocation(line: 293, column: 22, scope: !6353)
!6357 = !DILocation(line: 293, column: 11, scope: !6353)
!6358 = !DILocation(line: 293, column: 43, scope: !6353)
!6359 = !DILocation(line: 293, column: 7, scope: !6353)
!6360 = !DILocation(line: 294, column: 12, scope: !6353)
!6361 = !DILocation(line: 294, column: 17, scope: !6353)
!6362 = !DILocation(line: 294, column: 22, scope: !6353)
!6363 = !DILocation(line: 294, column: 11, scope: !6353)
!6364 = !DILocation(line: 294, column: 43, scope: !6353)
!6365 = !DILocation(line: 294, column: 7, scope: !6353)
!6366 = !DILocation(line: 297, column: 12, scope: !6353)
!6367 = !DILocation(line: 297, column: 17, scope: !6353)
!6368 = !DILocation(line: 297, column: 22, scope: !6353)
!6369 = !DILocation(line: 297, column: 11, scope: !6353)
!6370 = !DILocation(line: 297, column: 43, scope: !6353)
!6371 = !DILocation(line: 297, column: 7, scope: !6353)
!6372 = !DILocation(line: 299, column: 7, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 299, column: 7)
!6374 = !DILocation(line: 299, column: 12, scope: !6373)
!6375 = !DILocation(line: 299, column: 17, scope: !6373)
!6376 = !DILocation(line: 299, column: 7, scope: !6353)
!6377 = !DILocation(line: 300, column: 8, scope: !6373)
!6378 = !DILocation(line: 300, column: 4, scope: !6373)
!6379 = !DILocation(line: 303, column: 9, scope: !6317)
!6380 = !DILocation(line: 303, column: 2, scope: !6317)
!6381 = distinct !DISubprogram(name: "dw_spi_poll_transfer", scope: !3, file: !3, line: 377, type: !4217, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6382 = !DILocalVariable(name: "dws", arg: 1, scope: !6381, file: !3, line: 377, type: !4161)
!6383 = !DILocation(line: 377, column: 48, scope: !6381)
!6384 = !DILocalVariable(name: "transfer", arg: 2, scope: !6381, file: !3, line: 378, type: !3899)
!6385 = !DILocation(line: 378, column: 26, scope: !6381)
!6386 = !DILocalVariable(name: "delay", scope: !6381, file: !3, line: 380, type: !3869)
!6387 = !DILocation(line: 380, column: 19, scope: !6381)
!6388 = !DILocalVariable(name: "nbits", scope: !6381, file: !3, line: 381, type: !147)
!6389 = !DILocation(line: 381, column: 6, scope: !6381)
!6390 = !DILocalVariable(name: "ret", scope: !6381, file: !3, line: 382, type: !131)
!6391 = !DILocation(line: 382, column: 6, scope: !6381)
!6392 = !DILocation(line: 384, column: 8, scope: !6381)
!6393 = !DILocation(line: 384, column: 13, scope: !6381)
!6394 = !DILocation(line: 385, column: 10, scope: !6381)
!6395 = !DILocation(line: 385, column: 15, scope: !6381)
!6396 = !DILocation(line: 385, column: 23, scope: !6381)
!6397 = !DILocation(line: 385, column: 8, scope: !6381)
!6398 = !DILocation(line: 387, column: 2, scope: !6381)
!6399 = !DILocation(line: 388, column: 13, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 387, column: 5)
!6401 = !DILocation(line: 388, column: 3, scope: !6400)
!6402 = !DILocation(line: 390, column: 17, scope: !6400)
!6403 = !DILocation(line: 390, column: 26, scope: !6400)
!6404 = !DILocation(line: 390, column: 31, scope: !6400)
!6405 = !DILocation(line: 390, column: 40, scope: !6400)
!6406 = !DILocation(line: 390, column: 45, scope: !6400)
!6407 = !DILocation(line: 390, column: 38, scope: !6400)
!6408 = !DILocation(line: 390, column: 23, scope: !6400)
!6409 = !DILocation(line: 390, column: 9, scope: !6400)
!6410 = !DILocation(line: 390, column: 15, scope: !6400)
!6411 = !DILocation(line: 391, column: 26, scope: !6400)
!6412 = !DILocation(line: 391, column: 3, scope: !6400)
!6413 = !DILocation(line: 393, column: 13, scope: !6400)
!6414 = !DILocation(line: 393, column: 3, scope: !6400)
!6415 = !DILocation(line: 395, column: 29, scope: !6400)
!6416 = !DILocation(line: 395, column: 9, scope: !6400)
!6417 = !DILocation(line: 395, column: 7, scope: !6400)
!6418 = !DILocation(line: 396, column: 7, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6400, file: !3, line: 396, column: 7)
!6420 = !DILocation(line: 396, column: 7, scope: !6400)
!6421 = !DILocation(line: 397, column: 11, scope: !6419)
!6422 = !DILocation(line: 397, column: 4, scope: !6419)
!6423 = !DILocation(line: 398, column: 2, scope: !6400)
!6424 = !DILocation(line: 398, column: 11, scope: !6381)
!6425 = !DILocation(line: 398, column: 16, scope: !6381)
!6426 = distinct !{!6426, !6398, !6427}
!6427 = !DILocation(line: 398, column: 22, scope: !6381)
!6428 = !DILocation(line: 400, column: 2, scope: !6381)
!6429 = !DILocation(line: 401, column: 1, scope: !6381)
!6430 = distinct !DISubprogram(name: "dw_spi_irq_setup", scope: !3, file: !3, line: 346, type: !4213, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6431 = !DILocalVariable(name: "dws", arg: 1, scope: !6430, file: !3, line: 346, type: !4161)
!6432 = !DILocation(line: 346, column: 45, scope: !6430)
!6433 = !DILocalVariable(name: "level", scope: !6430, file: !3, line: 348, type: !147)
!6434 = !DILocation(line: 348, column: 6, scope: !6430)
!6435 = !DILocalVariable(name: "imask", scope: !6430, file: !3, line: 349, type: !143)
!6436 = !DILocation(line: 349, column: 5, scope: !6430)
!6437 = !DILocalVariable(name: "__UNIQUE_ID___x251", scope: !6438, file: !3, line: 356, type: !147)
!6438 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 356, column: 10)
!6439 = !DILocation(line: 356, column: 10, scope: !6438)
!6440 = !DILocalVariable(name: "__UNIQUE_ID___y252", scope: !6438, file: !3, line: 356, type: !147)
!6441 = !DILocation(line: 356, column: 10, scope: !6430)
!6442 = !DILocation(line: 356, column: 8, scope: !6430)
!6443 = !DILocation(line: 357, column: 12, scope: !6430)
!6444 = !DILocation(line: 357, column: 32, scope: !6430)
!6445 = !DILocation(line: 357, column: 2, scope: !6430)
!6446 = !DILocation(line: 358, column: 12, scope: !6430)
!6447 = !DILocation(line: 358, column: 32, scope: !6430)
!6448 = !DILocation(line: 358, column: 38, scope: !6430)
!6449 = !DILocation(line: 358, column: 2, scope: !6430)
!6450 = !DILocation(line: 360, column: 2, scope: !6430)
!6451 = !DILocation(line: 360, column: 7, scope: !6430)
!6452 = !DILocation(line: 360, column: 24, scope: !6430)
!6453 = !DILocation(line: 362, column: 8, scope: !6430)
!6454 = !DILocation(line: 364, column: 17, scope: !6430)
!6455 = !DILocation(line: 364, column: 22, scope: !6430)
!6456 = !DILocation(line: 364, column: 2, scope: !6430)
!6457 = !DILocation(line: 365, column: 1, scope: !6430)
!6458 = distinct !DISubprogram(name: "dw_writer", scope: !3, file: !3, line: 137, type: !4213, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6459 = !DILocalVariable(name: "dws", arg: 1, scope: !6458, file: !3, line: 137, type: !4161)
!6460 = !DILocation(line: 137, column: 38, scope: !6458)
!6461 = !DILocalVariable(name: "max", scope: !6458, file: !3, line: 139, type: !134)
!6462 = !DILocation(line: 139, column: 6, scope: !6458)
!6463 = !DILocation(line: 139, column: 19, scope: !6458)
!6464 = !DILocation(line: 139, column: 12, scope: !6458)
!6465 = !DILocalVariable(name: "txw", scope: !6458, file: !3, line: 140, type: !147)
!6466 = !DILocation(line: 140, column: 6, scope: !6458)
!6467 = !DILocation(line: 142, column: 2, scope: !6458)
!6468 = !DILocation(line: 142, column: 12, scope: !6458)
!6469 = !DILocation(line: 143, column: 7, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 143, column: 7)
!6471 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 142, column: 16)
!6472 = !DILocation(line: 143, column: 12, scope: !6470)
!6473 = !DILocation(line: 143, column: 7, scope: !6471)
!6474 = !DILocation(line: 144, column: 8, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 144, column: 8)
!6476 = distinct !DILexicalBlock(scope: !6470, file: !3, line: 143, column: 16)
!6477 = !DILocation(line: 144, column: 13, scope: !6475)
!6478 = !DILocation(line: 144, column: 21, scope: !6475)
!6479 = !DILocation(line: 144, column: 8, scope: !6476)
!6480 = !DILocation(line: 145, column: 19, scope: !6475)
!6481 = !DILocation(line: 145, column: 24, scope: !6475)
!6482 = !DILocation(line: 145, column: 11, scope: !6475)
!6483 = !DILocation(line: 145, column: 9, scope: !6475)
!6484 = !DILocation(line: 145, column: 5, scope: !6475)
!6485 = !DILocation(line: 147, column: 20, scope: !6475)
!6486 = !DILocation(line: 147, column: 25, scope: !6475)
!6487 = !DILocation(line: 147, column: 12, scope: !6475)
!6488 = !DILocation(line: 147, column: 11, scope: !6475)
!6489 = !DILocation(line: 147, column: 9, scope: !6475)
!6490 = !DILocation(line: 149, column: 15, scope: !6476)
!6491 = !DILocation(line: 149, column: 20, scope: !6476)
!6492 = !DILocation(line: 149, column: 4, scope: !6476)
!6493 = !DILocation(line: 149, column: 9, scope: !6476)
!6494 = !DILocation(line: 149, column: 12, scope: !6476)
!6495 = !DILocation(line: 150, column: 3, scope: !6476)
!6496 = !DILocation(line: 151, column: 19, scope: !6471)
!6497 = !DILocation(line: 151, column: 35, scope: !6471)
!6498 = !DILocation(line: 151, column: 3, scope: !6471)
!6499 = !DILocation(line: 152, column: 5, scope: !6471)
!6500 = !DILocation(line: 152, column: 10, scope: !6471)
!6501 = !DILocation(line: 152, column: 3, scope: !6471)
!6502 = distinct !{!6502, !6467, !6503}
!6503 = !DILocation(line: 153, column: 2, scope: !6458)
!6504 = !DILocation(line: 154, column: 1, scope: !6458)
!6505 = distinct !DISubprogram(name: "dw_reader", scope: !3, file: !3, line: 156, type: !4213, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6506 = !DILocalVariable(name: "dws", arg: 1, scope: !6505, file: !3, line: 156, type: !4161)
!6507 = !DILocation(line: 156, column: 38, scope: !6505)
!6508 = !DILocalVariable(name: "max", scope: !6505, file: !3, line: 158, type: !134)
!6509 = !DILocation(line: 158, column: 6, scope: !6505)
!6510 = !DILocation(line: 158, column: 19, scope: !6505)
!6511 = !DILocation(line: 158, column: 12, scope: !6505)
!6512 = !DILocalVariable(name: "rxw", scope: !6505, file: !3, line: 159, type: !147)
!6513 = !DILocation(line: 159, column: 6, scope: !6505)
!6514 = !DILocation(line: 161, column: 2, scope: !6505)
!6515 = !DILocation(line: 161, column: 12, scope: !6505)
!6516 = !DILocation(line: 162, column: 24, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6505, file: !3, line: 161, column: 16)
!6518 = !DILocation(line: 162, column: 9, scope: !6517)
!6519 = !DILocation(line: 162, column: 7, scope: !6517)
!6520 = !DILocation(line: 163, column: 7, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6517, file: !3, line: 163, column: 7)
!6522 = !DILocation(line: 163, column: 12, scope: !6521)
!6523 = !DILocation(line: 163, column: 7, scope: !6517)
!6524 = !DILocation(line: 164, column: 8, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6526, file: !3, line: 164, column: 8)
!6526 = distinct !DILexicalBlock(scope: !6521, file: !3, line: 163, column: 16)
!6527 = !DILocation(line: 164, column: 13, scope: !6525)
!6528 = !DILocation(line: 164, column: 21, scope: !6525)
!6529 = !DILocation(line: 164, column: 8, scope: !6526)
!6530 = !DILocation(line: 165, column: 24, scope: !6525)
!6531 = !DILocation(line: 165, column: 13, scope: !6525)
!6532 = !DILocation(line: 165, column: 18, scope: !6525)
!6533 = !DILocation(line: 165, column: 22, scope: !6525)
!6534 = !DILocation(line: 165, column: 5, scope: !6525)
!6535 = !DILocation(line: 167, column: 25, scope: !6525)
!6536 = !DILocation(line: 167, column: 14, scope: !6525)
!6537 = !DILocation(line: 167, column: 19, scope: !6525)
!6538 = !DILocation(line: 167, column: 6, scope: !6525)
!6539 = !DILocation(line: 167, column: 23, scope: !6525)
!6540 = !DILocation(line: 169, column: 15, scope: !6526)
!6541 = !DILocation(line: 169, column: 20, scope: !6526)
!6542 = !DILocation(line: 169, column: 4, scope: !6526)
!6543 = !DILocation(line: 169, column: 9, scope: !6526)
!6544 = !DILocation(line: 169, column: 12, scope: !6526)
!6545 = !DILocation(line: 170, column: 3, scope: !6526)
!6546 = !DILocation(line: 171, column: 5, scope: !6517)
!6547 = !DILocation(line: 171, column: 10, scope: !6517)
!6548 = !DILocation(line: 171, column: 3, scope: !6517)
!6549 = distinct !{!6549, !6514, !6550}
!6550 = !DILocation(line: 172, column: 2, scope: !6505)
!6551 = !DILocation(line: 173, column: 1, scope: !6505)
!6552 = distinct !DISubprogram(name: "tx_max", scope: !3, file: !3, line: 112, type: !6553, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6553 = !DISubroutineType(types: !6554)
!6554 = !{!134, !4161}
!6555 = !DILocalVariable(name: "dws", arg: 1, scope: !6552, file: !3, line: 112, type: !4161)
!6556 = !DILocation(line: 112, column: 41, scope: !6552)
!6557 = !DILocalVariable(name: "tx_room", scope: !6552, file: !3, line: 114, type: !134)
!6558 = !DILocation(line: 114, column: 6, scope: !6552)
!6559 = !DILocalVariable(name: "rxtx_gap", scope: !6552, file: !3, line: 114, type: !134)
!6560 = !DILocation(line: 114, column: 15, scope: !6552)
!6561 = !DILocation(line: 116, column: 12, scope: !6552)
!6562 = !DILocation(line: 116, column: 17, scope: !6552)
!6563 = !DILocation(line: 116, column: 37, scope: !6552)
!6564 = !DILocation(line: 116, column: 28, scope: !6552)
!6565 = !DILocation(line: 116, column: 26, scope: !6552)
!6566 = !DILocation(line: 116, column: 10, scope: !6552)
!6567 = !DILocation(line: 126, column: 13, scope: !6552)
!6568 = !DILocation(line: 126, column: 18, scope: !6552)
!6569 = !DILocation(line: 126, column: 30, scope: !6552)
!6570 = !DILocation(line: 126, column: 35, scope: !6552)
!6571 = !DILocation(line: 126, column: 44, scope: !6552)
!6572 = !DILocation(line: 126, column: 49, scope: !6552)
!6573 = !DILocation(line: 126, column: 42, scope: !6552)
!6574 = !DILocation(line: 126, column: 27, scope: !6552)
!6575 = !DILocation(line: 126, column: 11, scope: !6552)
!6576 = !DILocalVariable(name: "__UNIQUE_ID___x247", scope: !6577, file: !3, line: 128, type: !134)
!6577 = distinct !DILexicalBlock(scope: !6552, file: !3, line: 128, column: 9)
!6578 = !DILocation(line: 128, column: 9, scope: !6577)
!6579 = !DILocalVariable(name: "__UNIQUE_ID___x245", scope: !6580, file: !3, line: 128, type: !134)
!6580 = distinct !DILexicalBlock(scope: !6577, file: !3, line: 128, column: 9)
!6581 = !DILocation(line: 128, column: 9, scope: !6580)
!6582 = !DILocalVariable(name: "__UNIQUE_ID___y246", scope: !6580, file: !3, line: 128, type: !134)
!6583 = !DILocalVariable(name: "__UNIQUE_ID___y248", scope: !6577, file: !3, line: 128, type: !134)
!6584 = !DILocation(line: 128, column: 2, scope: !6552)
!6585 = distinct !DISubprogram(name: "rx_max", scope: !3, file: !3, line: 132, type: !6553, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6586 = !DILocalVariable(name: "dws", arg: 1, scope: !6585, file: !3, line: 132, type: !4161)
!6587 = !DILocation(line: 132, column: 41, scope: !6585)
!6588 = !DILocalVariable(name: "__UNIQUE_ID___x249", scope: !6589, file: !3, line: 134, type: !134)
!6589 = distinct !DILexicalBlock(scope: !6585, file: !3, line: 134, column: 9)
!6590 = !DILocation(line: 134, column: 9, scope: !6589)
!6591 = !DILocalVariable(name: "__UNIQUE_ID___y250", scope: !6589, file: !3, line: 134, type: !134)
!6592 = !DILocation(line: 134, column: 2, scope: !6585)
!6593 = distinct !DISubprogram(name: "dw_spi_transfer_handler", scope: !3, file: !3, line: 211, type: !4188, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6594 = !DILocalVariable(name: "dws", arg: 1, scope: !6593, file: !3, line: 211, type: !4161)
!6595 = !DILocation(line: 211, column: 59, scope: !6593)
!6596 = !DILocalVariable(name: "irq_status", scope: !6593, file: !3, line: 213, type: !147)
!6597 = !DILocation(line: 213, column: 6, scope: !6593)
!6598 = !DILocation(line: 213, column: 28, scope: !6593)
!6599 = !DILocation(line: 213, column: 19, scope: !6593)
!6600 = !DILocation(line: 215, column: 26, scope: !6601)
!6601 = distinct !DILexicalBlock(scope: !6593, file: !3, line: 215, column: 6)
!6602 = !DILocation(line: 215, column: 6, scope: !6601)
!6603 = !DILocation(line: 215, column: 6, scope: !6593)
!6604 = !DILocation(line: 216, column: 33, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6601, file: !3, line: 215, column: 39)
!6606 = !DILocation(line: 216, column: 38, scope: !6605)
!6607 = !DILocation(line: 216, column: 3, scope: !6605)
!6608 = !DILocation(line: 217, column: 3, scope: !6605)
!6609 = !DILocation(line: 227, column: 12, scope: !6593)
!6610 = !DILocation(line: 227, column: 2, scope: !6593)
!6611 = !DILocation(line: 228, column: 7, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6593, file: !3, line: 228, column: 6)
!6613 = !DILocation(line: 228, column: 12, scope: !6612)
!6614 = !DILocation(line: 228, column: 6, scope: !6593)
!6615 = !DILocation(line: 229, column: 17, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 228, column: 20)
!6617 = !DILocation(line: 229, column: 3, scope: !6616)
!6618 = !DILocation(line: 230, column: 33, scope: !6616)
!6619 = !DILocation(line: 230, column: 38, scope: !6616)
!6620 = !DILocation(line: 230, column: 3, scope: !6616)
!6621 = !DILocation(line: 231, column: 2, scope: !6616)
!6622 = !DILocation(line: 231, column: 13, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 231, column: 13)
!6624 = !DILocation(line: 231, column: 18, scope: !6623)
!6625 = !DILocation(line: 231, column: 37, scope: !6623)
!6626 = !DILocation(line: 231, column: 28, scope: !6623)
!6627 = !DILocation(line: 231, column: 25, scope: !6623)
!6628 = !DILocation(line: 231, column: 13, scope: !6612)
!6629 = !DILocation(line: 232, column: 13, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6623, file: !3, line: 231, column: 58)
!6631 = !DILocation(line: 232, column: 33, scope: !6630)
!6632 = !DILocation(line: 232, column: 38, scope: !6630)
!6633 = !DILocation(line: 232, column: 45, scope: !6630)
!6634 = !DILocation(line: 232, column: 3, scope: !6630)
!6635 = !DILocation(line: 233, column: 2, scope: !6630)
!6636 = !DILocation(line: 240, column: 6, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6593, file: !3, line: 240, column: 6)
!6638 = !DILocation(line: 240, column: 17, scope: !6637)
!6639 = !DILocation(line: 240, column: 6, scope: !6593)
!6640 = !DILocation(line: 241, column: 13, scope: !6641)
!6641 = distinct !DILexicalBlock(scope: !6637, file: !3, line: 240, column: 33)
!6642 = !DILocation(line: 241, column: 3, scope: !6641)
!6643 = !DILocation(line: 242, column: 8, scope: !6644)
!6644 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 242, column: 7)
!6645 = !DILocation(line: 242, column: 13, scope: !6644)
!6646 = !DILocation(line: 242, column: 7, scope: !6641)
!6647 = !DILocation(line: 243, column: 18, scope: !6644)
!6648 = !DILocation(line: 243, column: 4, scope: !6644)
!6649 = !DILocation(line: 244, column: 2, scope: !6641)
!6650 = !DILocation(line: 246, column: 2, scope: !6593)
!6651 = !DILocation(line: 247, column: 1, scope: !6593)
!6652 = distinct !DISubprogram(name: "spi_umask_intr", scope: !118, file: !118, line: 248, type: !5251, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !220)
!6653 = !DILocalVariable(name: "dws", arg: 1, scope: !6652, file: !118, line: 248, type: !4161)
!6654 = !DILocation(line: 248, column: 50, scope: !6652)
!6655 = !DILocalVariable(name: "mask", arg: 2, scope: !6652, file: !118, line: 248, type: !134)
!6656 = !DILocation(line: 248, column: 59, scope: !6652)
!6657 = !DILocalVariable(name: "new_mask", scope: !6652, file: !118, line: 250, type: !134)
!6658 = !DILocation(line: 250, column: 6, scope: !6652)
!6659 = !DILocation(line: 252, column: 22, scope: !6652)
!6660 = !DILocation(line: 252, column: 13, scope: !6652)
!6661 = !DILocation(line: 252, column: 41, scope: !6652)
!6662 = !DILocation(line: 252, column: 39, scope: !6652)
!6663 = !DILocation(line: 252, column: 11, scope: !6652)
!6664 = !DILocation(line: 253, column: 12, scope: !6652)
!6665 = !DILocation(line: 253, column: 29, scope: !6652)
!6666 = !DILocation(line: 253, column: 2, scope: !6652)
!6667 = !DILocation(line: 254, column: 1, scope: !6652)
