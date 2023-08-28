; ModuleID = '../bcout/drivers/hv/ring_buffer.llvm.bc'
source_filename = "drivers/hv/ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.lock_class_key = type {}
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.51, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.54 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { i64, i64 }
%union.anon.54 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.50, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.20, [0 x i64] }
%struct.anon.20 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.21, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.21 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.4, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
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
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.58, i32 }
%union.anon.58 = type { %struct.kuid_t }
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
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.60 = type { %struct.callback_head }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.6 }
%union.anon.6 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i32, i64, i64, %union.anon.7, %union.anon.8 }
%union.anon.7 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.8 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.62 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.62 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.57 = type { %struct.atomic_t }
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
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.27, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.28, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.29, %union.anon.33, %struct.key_restriction* }
%union.anon.27 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.28 = type { i64 }
%union.anon.29 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.30, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.30 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.33 = type { %union.key_payload }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.36, %union.anon.37, i32 }
%struct.request_queue = type opaque
%union.anon.36 = type { %struct.list_head }
%union.anon.37 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.42 }
%struct.anon.42 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.49, i32, [12 x i8] }
%union.anon.49 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.50 = type { %struct.callback_head }
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
%struct.hv_ring_buffer_info = type { %struct.hv_ring_buffer*, i32, %struct.reciprocal_value, %struct.spinlock, i32, i32, %struct.mutex }
%struct.hv_ring_buffer = type { i32, i32, i32, i32, [12 x i32], %union.anon, [4028 x i8], [0 x i8] }
%union.anon = type { i32 }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.hv_ring_buffer_debug_info = type { i32, i32, i32, i32, i32 }
%struct.vmbus_channel = type { %struct.list_head, %struct.hv_device*, i32, %struct.vmbus_channel_offer_channel, i8, i8, i8, %struct.completion, i32, %struct.page*, i32, i32, %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info, %struct.vmbus_close_msg, i64, i64, i64, i8, %struct.tasklet_struct, void (i8*)*, i8*, void (%struct.vmbus_channel*, i32, i32)*, %struct.spinlock, i32, i8, i64, i32, {}*, {}*, %struct.list_head, %struct.vmbus_channel*, i8*, %struct.callback_head, %struct.kobject, i8, i8, i16, %struct.work_struct, i64, i64, i64, i8, i32, i32 }
%struct.hv_device = type { %struct.guid_t, %struct.guid_t, i16, i16, %struct.device, i8*, %struct.vmbus_channel*, %struct.kset*, %struct.dentry* }
%struct.guid_t = type { [16 x i8] }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
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
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.vmbus_channel_offer_channel = type <{ %struct.vmbus_channel_message_header, %struct.vmbus_channel_offer, i32, i8, [3 x i8], i32 }>
%struct.vmbus_channel_message_header = type { i32, i32 }
%struct.vmbus_channel_offer = type { %struct.guid_t, %struct.guid_t, i64, i64, i16, i16, %union.anon.70, i16, i16 }
%union.anon.70 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, [116 x i8] }
%struct.vmbus_close_msg = type { %struct.vmbus_channel_msginfo, %struct.vmbus_channel_close_channel }
%struct.vmbus_channel_msginfo = type { %struct.list_head, %struct.list_head, %struct.completion, %struct.vmbus_channel*, %union.anon.73, i32, [0 x i8] }
%union.anon.73 = type { %struct.vmbus_channel_open_result }
%struct.vmbus_channel_open_result = type { %struct.vmbus_channel_message_header, i32, i32, i32 }
%struct.vmbus_channel_close_channel = type { %struct.vmbus_channel_message_header, i32 }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.74, i64 }
%union.anon.74 = type { void (i64)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.69, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.69 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.kvec = type { i8*, i64 }
%struct.vmpacket_descriptor = type { i16, i16, i16, i16, i64 }
%struct.anon = type { i8, [3 x i8] }

@hv_ringbuffer_pre_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [36 x i8] c"&channel->inbound.ring_buffer_mutex\00", align 1
@hv_ringbuffer_pre_init.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4018
@.str.2 = private unnamed_addr constant [37 x i8] c"&channel->outbound.ring_buffer_mutex\00", align 1
@__default_kernel_pte_mask = external dso_local global i64, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hv_ringbuffer_get_debuginfo(%struct.hv_ring_buffer_info* %ring_info, %struct.hv_ring_buffer_debug_info* %debug_info) #0 !dbg !4026 {
entry:
  %retval = alloca i32, align 4
  %ring_info.addr = alloca %struct.hv_ring_buffer_info*, align 8
  %debug_info.addr = alloca %struct.hv_ring_buffer_debug_info*, align 8
  %bytes_avail_towrite = alloca i32, align 4
  %bytes_avail_toread = alloca i32, align 4
  store %struct.hv_ring_buffer_info* %ring_info, %struct.hv_ring_buffer_info** %ring_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %ring_info.addr, metadata !4038, metadata !DIExpression()), !dbg !4039
  store %struct.hv_ring_buffer_debug_info* %debug_info, %struct.hv_ring_buffer_debug_info** %debug_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_debug_info** %debug_info.addr, metadata !4040, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.declare(metadata i32* %bytes_avail_towrite, metadata !4042, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.declare(metadata i32* %bytes_avail_toread, metadata !4044, metadata !DIExpression()), !dbg !4045
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4046
  %ring_buffer_mutex = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %0, i32 0, i32 6, !dbg !4047
  call void @mutex_lock(%struct.mutex* %ring_buffer_mutex) #10, !dbg !4048
  %1 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4049
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %1, i32 0, i32 0, !dbg !4051
  %2 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !4051
  %tobool = icmp ne %struct.hv_ring_buffer* %2, null, !dbg !4049
  br i1 %tobool, label %if.end, label %if.then, !dbg !4052

if.then:                                          ; preds = %entry
  %3 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4053
  %ring_buffer_mutex1 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %3, i32 0, i32 6, !dbg !4055
  call void @mutex_unlock(%struct.mutex* %ring_buffer_mutex1) #10, !dbg !4056
  store i32 -22, i32* %retval, align 4, !dbg !4057
  br label %return, !dbg !4057

if.end:                                           ; preds = %entry
  %4 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4058
  call void @hv_get_ringbuffer_availbytes(%struct.hv_ring_buffer_info* %4, i32* %bytes_avail_toread, i32* %bytes_avail_towrite) #10, !dbg !4059
  %5 = load i32, i32* %bytes_avail_toread, align 4, !dbg !4060
  %6 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %debug_info.addr, align 8, !dbg !4061
  %bytes_avail_toread2 = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %6, i32 0, i32 3, !dbg !4062
  store i32 %5, i32* %bytes_avail_toread2, align 4, !dbg !4063
  %7 = load i32, i32* %bytes_avail_towrite, align 4, !dbg !4064
  %8 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %debug_info.addr, align 8, !dbg !4065
  %bytes_avail_towrite3 = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %8, i32 0, i32 4, !dbg !4066
  store i32 %7, i32* %bytes_avail_towrite3, align 4, !dbg !4067
  %9 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4068
  %ring_buffer4 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %9, i32 0, i32 0, !dbg !4069
  %10 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer4, align 8, !dbg !4069
  %read_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %10, i32 0, i32 1, !dbg !4070
  %11 = load i32, i32* %read_index, align 1, !dbg !4070
  %12 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %debug_info.addr, align 8, !dbg !4071
  %current_read_index = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %12, i32 0, i32 1, !dbg !4072
  store i32 %11, i32* %current_read_index, align 4, !dbg !4073
  %13 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4074
  %ring_buffer5 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %13, i32 0, i32 0, !dbg !4075
  %14 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer5, align 8, !dbg !4075
  %write_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %14, i32 0, i32 0, !dbg !4076
  %15 = load i32, i32* %write_index, align 1, !dbg !4076
  %16 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %debug_info.addr, align 8, !dbg !4077
  %current_write_index = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %16, i32 0, i32 2, !dbg !4078
  store i32 %15, i32* %current_write_index, align 4, !dbg !4079
  %17 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4080
  %ring_buffer6 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %17, i32 0, i32 0, !dbg !4081
  %18 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer6, align 8, !dbg !4081
  %interrupt_mask = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %18, i32 0, i32 2, !dbg !4082
  %19 = load i32, i32* %interrupt_mask, align 1, !dbg !4082
  %20 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %debug_info.addr, align 8, !dbg !4083
  %current_interrupt_mask = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %20, i32 0, i32 0, !dbg !4084
  store i32 %19, i32* %current_interrupt_mask, align 4, !dbg !4085
  %21 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4086
  %ring_buffer_mutex7 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %21, i32 0, i32 6, !dbg !4087
  call void @mutex_unlock(%struct.mutex* %ring_buffer_mutex7) #10, !dbg !4088
  store i32 0, i32* %retval, align 4, !dbg !4089
  br label %return, !dbg !4089

return:                                           ; preds = %if.end, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !4090
  ret i32 %22, !dbg !4090
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hv_get_ringbuffer_availbytes(%struct.hv_ring_buffer_info* %rbi, i32* %read, i32* %write) #0 !dbg !4091 {
entry:
  %rbi.addr = alloca %struct.hv_ring_buffer_info*, align 8
  %read.addr = alloca i32*, align 8
  %write.addr = alloca i32*, align 8
  %read_loc = alloca i32, align 4
  %write_loc = alloca i32, align 4
  %dsize = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store %struct.hv_ring_buffer_info* %rbi, %struct.hv_ring_buffer_info** %rbi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %rbi.addr, metadata !4096, metadata !DIExpression()), !dbg !4097
  store i32* %read, i32** %read.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %read.addr, metadata !4098, metadata !DIExpression()), !dbg !4099
  store i32* %write, i32** %write.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %write.addr, metadata !4100, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.declare(metadata i32* %read_loc, metadata !4102, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.declare(metadata i32* %write_loc, metadata !4104, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.declare(metadata i32* %dsize, metadata !4106, metadata !DIExpression()), !dbg !4107
  br label %do.body, !dbg !4108

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4110

do.end:                                           ; preds = %do.body
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !4108
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %0, i32 0, i32 0, !dbg !4108
  %1 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !4108
  %read_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %1, i32 0, i32 1, !dbg !4108
  %2 = load volatile i32, i32* %read_index, align 1, !dbg !4108
  store i32 %2, i32* %tmp, align 4, !dbg !4110
  %3 = load i32, i32* %tmp, align 4, !dbg !4108
  store i32 %3, i32* %read_loc, align 4, !dbg !4112
  br label %do.body1, !dbg !4113

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4115

do.end2:                                          ; preds = %do.body1
  %4 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !4113
  %ring_buffer4 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %4, i32 0, i32 0, !dbg !4113
  %5 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer4, align 8, !dbg !4113
  %write_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %5, i32 0, i32 0, !dbg !4113
  %6 = load volatile i32, i32* %write_index, align 1, !dbg !4113
  store i32 %6, i32* %tmp3, align 4, !dbg !4115
  %7 = load i32, i32* %tmp3, align 4, !dbg !4113
  store i32 %7, i32* %write_loc, align 4, !dbg !4117
  %8 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !4118
  %ring_datasize = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %8, i32 0, i32 4, !dbg !4119
  %9 = load i32, i32* %ring_datasize, align 4, !dbg !4119
  store i32 %9, i32* %dsize, align 4, !dbg !4120
  %10 = load i32, i32* %write_loc, align 4, !dbg !4121
  %11 = load i32, i32* %read_loc, align 4, !dbg !4122
  %cmp = icmp uge i32 %10, %11, !dbg !4123
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4121

cond.true:                                        ; preds = %do.end2
  %12 = load i32, i32* %dsize, align 4, !dbg !4124
  %13 = load i32, i32* %write_loc, align 4, !dbg !4125
  %14 = load i32, i32* %read_loc, align 4, !dbg !4126
  %sub = sub i32 %13, %14, !dbg !4127
  %sub5 = sub i32 %12, %sub, !dbg !4128
  br label %cond.end, !dbg !4121

cond.false:                                       ; preds = %do.end2
  %15 = load i32, i32* %read_loc, align 4, !dbg !4129
  %16 = load i32, i32* %write_loc, align 4, !dbg !4130
  %sub6 = sub i32 %15, %16, !dbg !4131
  br label %cond.end, !dbg !4121

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub5, %cond.true ], [ %sub6, %cond.false ], !dbg !4121
  %17 = load i32*, i32** %write.addr, align 8, !dbg !4132
  store i32 %cond, i32* %17, align 4, !dbg !4133
  %18 = load i32, i32* %dsize, align 4, !dbg !4134
  %19 = load i32*, i32** %write.addr, align 8, !dbg !4135
  %20 = load i32, i32* %19, align 4, !dbg !4136
  %sub7 = sub i32 %18, %20, !dbg !4137
  %21 = load i32*, i32** %read.addr, align 8, !dbg !4138
  store i32 %sub7, i32* %21, align 4, !dbg !4139
  ret void, !dbg !4140
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hv_ringbuffer_pre_init(%struct.vmbus_channel* %channel) #0 !dbg !2 {
entry:
  %channel.addr = alloca %struct.vmbus_channel*, align 8
  store %struct.vmbus_channel* %channel, %struct.vmbus_channel** %channel.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel.addr, metadata !4141, metadata !DIExpression()), !dbg !4142
  br label %do.body, !dbg !4143

do.body:                                          ; preds = %entry
  %0 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4144
  %inbound = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %0, i32 0, i32 13, !dbg !4144
  %ring_buffer_mutex = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %inbound, i32 0, i32 6, !dbg !4144
  call void @__mutex_init(%struct.mutex* %ring_buffer_mutex, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @hv_ringbuffer_pre_init.__key) #10, !dbg !4144
  br label %do.end, !dbg !4144

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4146

do.body1:                                         ; preds = %do.end
  %1 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4147
  %outbound = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %1, i32 0, i32 12, !dbg !4147
  %ring_buffer_mutex2 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %outbound, i32 0, i32 6, !dbg !4147
  call void @__mutex_init(%struct.mutex* %ring_buffer_mutex2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @hv_ringbuffer_pre_init.__key.1) #10, !dbg !4147
  br label %do.end3, !dbg !4147

do.end3:                                          ; preds = %do.body1
  ret void, !dbg !4149
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hv_ringbuffer_init(%struct.hv_ring_buffer_info* %ring_info, %struct.page* %pages, i32 %page_cnt) #0 !dbg !4150 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4153, metadata !DIExpression()), !dbg !4159
  %retval = alloca i32, align 4
  %ring_info.addr = alloca %struct.hv_ring_buffer_info*, align 8
  %pages.addr = alloca %struct.page*, align 8
  %page_cnt.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pages_wraparound = alloca %struct.page**, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  %tmp = alloca %struct.reciprocal_value, align 4
  %.compoundliteral28 = alloca %struct.spinlock, align 1
  store %struct.hv_ring_buffer_info* %ring_info, %struct.hv_ring_buffer_info** %ring_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %ring_info.addr, metadata !4162, metadata !DIExpression()), !dbg !4163
  store %struct.page* %pages, %struct.page** %pages.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %pages.addr, metadata !4164, metadata !DIExpression()), !dbg !4165
  store i32 %page_cnt, i32* %page_cnt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %page_cnt.addr, metadata !4166, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4168, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.declare(metadata %struct.page*** %pages_wraparound, metadata !4170, metadata !DIExpression()), !dbg !4171
  br label %do.body, !dbg !4172

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4173

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %page_cnt.addr, align 4, !dbg !4175
  %mul = mul i32 %0, 2, !dbg !4176
  %sub = sub i32 %mul, 1, !dbg !4177
  %conv = zext i32 %sub to i64, !dbg !4175
  %call = call i8* @kcalloc(i64 %conv, i64 8, i32 3264) #10, !dbg !4178
  %1 = bitcast i8* %call to %struct.page**, !dbg !4178
  store %struct.page** %1, %struct.page*** %pages_wraparound, align 8, !dbg !4179
  %2 = load %struct.page**, %struct.page*** %pages_wraparound, align 8, !dbg !4180
  %tobool = icmp ne %struct.page** %2, null, !dbg !4180
  br i1 %tobool, label %if.end, label %if.then, !dbg !4182

if.then:                                          ; preds = %do.end
  store i32 -12, i32* %retval, align 4, !dbg !4183
  br label %return, !dbg !4183

if.end:                                           ; preds = %do.end
  %3 = load %struct.page*, %struct.page** %pages.addr, align 8, !dbg !4184
  %4 = load %struct.page**, %struct.page*** %pages_wraparound, align 8, !dbg !4185
  %arrayidx = getelementptr %struct.page*, %struct.page** %4, i64 0, !dbg !4185
  store %struct.page* %3, %struct.page** %arrayidx, align 8, !dbg !4186
  store i32 0, i32* %i, align 4, !dbg !4187
  br label %for.cond, !dbg !4189

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !4190
  %6 = load i32, i32* %page_cnt.addr, align 4, !dbg !4192
  %sub1 = sub i32 %6, 1, !dbg !4193
  %mul2 = mul i32 2, %sub1, !dbg !4194
  %cmp = icmp ult i32 %5, %mul2, !dbg !4195
  br i1 %cmp, label %for.body, label %for.end, !dbg !4196

for.body:                                         ; preds = %for.cond
  %7 = load %struct.page*, %struct.page** %pages.addr, align 8, !dbg !4197
  %8 = load i32, i32* %i, align 4, !dbg !4198
  %9 = load i32, i32* %page_cnt.addr, align 4, !dbg !4199
  %sub4 = sub i32 %9, 1, !dbg !4200
  %rem = urem i32 %8, %sub4, !dbg !4201
  %add = add i32 %rem, 1, !dbg !4202
  %idxprom = zext i32 %add to i64, !dbg !4197
  %arrayidx5 = getelementptr %struct.page, %struct.page* %7, i64 %idxprom, !dbg !4197
  %10 = load %struct.page**, %struct.page*** %pages_wraparound, align 8, !dbg !4203
  %11 = load i32, i32* %i, align 4, !dbg !4204
  %add6 = add i32 %11, 1, !dbg !4205
  %idxprom7 = sext i32 %add6 to i64, !dbg !4203
  %arrayidx8 = getelementptr %struct.page*, %struct.page** %10, i64 %idxprom7, !dbg !4203
  store %struct.page* %arrayidx5, %struct.page** %arrayidx8, align 8, !dbg !4206
  br label %for.inc, !dbg !4203

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !4207
  %inc = add i32 %12, 1, !dbg !4207
  store i32 %inc, i32* %i, align 4, !dbg !4207
  br label %for.cond, !dbg !4208, !llvm.loop !4209

for.end:                                          ; preds = %for.cond
  %13 = load %struct.page**, %struct.page*** %pages_wraparound, align 8, !dbg !4211
  %14 = load i32, i32* %page_cnt.addr, align 4, !dbg !4212
  %mul9 = mul i32 %14, 2, !dbg !4213
  %sub10 = sub i32 %mul9, 1, !dbg !4214
  %pgprot = getelementptr inbounds %struct.pgprot, %struct.pgprot* %.compoundliteral, i32 0, i32 0, !dbg !4215
  %15 = load i64, i64* @__default_kernel_pte_mask, align 8, !dbg !4215
  %and = and i64 -9223372036854775453, %15, !dbg !4215
  store i64 %and, i64* %pgprot, align 8, !dbg !4215
  %coerce.dive = getelementptr inbounds %struct.pgprot, %struct.pgprot* %.compoundliteral, i32 0, i32 0, !dbg !4216
  %16 = load i64, i64* %coerce.dive, align 8, !dbg !4216
  %call11 = call i8* @vmap(%struct.page** %13, i32 %sub10, i64 4, i64 %16) #10, !dbg !4216
  %17 = bitcast i8* %call11 to %struct.hv_ring_buffer*, !dbg !4217
  %18 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4218
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %18, i32 0, i32 0, !dbg !4219
  store %struct.hv_ring_buffer* %17, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !4220
  %19 = load %struct.page**, %struct.page*** %pages_wraparound, align 8, !dbg !4221
  %20 = bitcast %struct.page** %19 to i8*, !dbg !4221
  call void @kfree(i8* %20) #10, !dbg !4222
  %21 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4223
  %ring_buffer12 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %21, i32 0, i32 0, !dbg !4225
  %22 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer12, align 8, !dbg !4225
  %tobool13 = icmp ne %struct.hv_ring_buffer* %22, null, !dbg !4223
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4226

if.then14:                                        ; preds = %for.end
  store i32 -12, i32* %retval, align 4, !dbg !4227
  br label %return, !dbg !4227

if.end15:                                         ; preds = %for.end
  %23 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4228
  %ring_buffer16 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %23, i32 0, i32 0, !dbg !4229
  %24 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer16, align 8, !dbg !4229
  %write_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %24, i32 0, i32 0, !dbg !4230
  store i32 0, i32* %write_index, align 1, !dbg !4231
  %25 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4232
  %ring_buffer17 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %25, i32 0, i32 0, !dbg !4233
  %26 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer17, align 8, !dbg !4233
  %read_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %26, i32 0, i32 1, !dbg !4234
  store i32 0, i32* %read_index, align 1, !dbg !4235
  %27 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4236
  %ring_buffer18 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %27, i32 0, i32 0, !dbg !4237
  %28 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer18, align 8, !dbg !4237
  %feature_bits = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %28, i32 0, i32 5, !dbg !4238
  %value = bitcast %union.anon* %feature_bits to i32*, !dbg !4239
  store i32 1, i32* %value, align 1, !dbg !4240
  %29 = load i32, i32* %page_cnt.addr, align 4, !dbg !4241
  %shl = shl i32 %29, 12, !dbg !4242
  %30 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4243
  %ring_size = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %30, i32 0, i32 1, !dbg !4244
  store i32 %shl, i32* %ring_size, align 8, !dbg !4245
  %31 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4246
  %ring_size_div10_reciprocal = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %31, i32 0, i32 2, !dbg !4247
  %32 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4248
  %ring_size19 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %32, i32 0, i32 1, !dbg !4249
  %33 = load i32, i32* %ring_size19, align 8, !dbg !4249
  %div = udiv i32 %33, 10, !dbg !4250
  %call20 = call i64 @reciprocal_value(i32 %div) #10, !dbg !4251
  %34 = bitcast %struct.reciprocal_value* %tmp to i64*, !dbg !4251
  store i64 %call20, i64* %34, align 4, !dbg !4251
  %35 = bitcast %struct.reciprocal_value* %ring_size_div10_reciprocal to i8*, !dbg !4251
  %36 = bitcast %struct.reciprocal_value* %tmp to i8*, !dbg !4251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 8, i1 false), !dbg !4251
  %37 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4252
  %ring_size21 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %37, i32 0, i32 1, !dbg !4253
  %38 = load i32, i32* %ring_size21, align 8, !dbg !4253
  %conv22 = zext i32 %38 to i64, !dbg !4252
  %sub23 = sub i64 %conv22, 4096, !dbg !4254
  %conv24 = trunc i64 %sub23 to i32, !dbg !4252
  %39 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4255
  %ring_datasize = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %39, i32 0, i32 4, !dbg !4256
  store i32 %conv24, i32* %ring_datasize, align 4, !dbg !4257
  %40 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4258
  %priv_read_index = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %40, i32 0, i32 5, !dbg !4259
  store i32 0, i32* %priv_read_index, align 8, !dbg !4260
  br label %do.body25, !dbg !4261

do.body25:                                        ; preds = %if.end15
  %41 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4262
  %ring_lock = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %41, i32 0, i32 3, !dbg !4262
  store %struct.spinlock* %ring_lock, %struct.spinlock** %lock.addr.i, align 8
  %42 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4263
  %43 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %42, i32 0, i32 0, !dbg !4264
  %rlock.i = bitcast %union.anon.0* %43 to %struct.raw_spinlock*, !dbg !4264
  %44 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4262
  %ring_lock27 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %44, i32 0, i32 3, !dbg !4262
  %45 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral28, i32 0, i32 0, !dbg !4262
  %rlock = bitcast %union.anon.0* %45 to %struct.raw_spinlock*, !dbg !4262
  %46 = bitcast %struct.spinlock* %ring_lock27 to i8*, !dbg !4262
  %47 = bitcast %struct.spinlock* %.compoundliteral28 to i8*, !dbg !4262
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 1 %47, i64 0, i1 false), !dbg !4262
  br label %do.end29, !dbg !4262

do.end29:                                         ; preds = %do.body25
  store i32 0, i32* %retval, align 4, !dbg !4265
  br label %return, !dbg !4265

return:                                           ; preds = %do.end29, %if.then14, %if.then
  %48 = load i32, i32* %retval, align 4, !dbg !4266
  ret i32 %48, !dbg !4266
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !4267 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4270, metadata !DIExpression()), !dbg !4271
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4272, metadata !DIExpression()), !dbg !4273
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4274, metadata !DIExpression()), !dbg !4275
  %0 = load i64, i64* %n.addr, align 8, !dbg !4276
  %1 = load i64, i64* %size.addr, align 8, !dbg !4277
  %2 = load i32, i32* %flags.addr, align 4, !dbg !4278
  %or = or i32 %2, 256, !dbg !4279
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #10, !dbg !4280
  ret i8* %call, !dbg !4281
}

; Function Attrs: noredzone
declare dso_local i8* @vmap(%struct.page**, i32, i64, i64) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local i64 @reciprocal_value(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hv_ringbuffer_cleanup(%struct.hv_ring_buffer_info* %ring_info) #0 !dbg !4282 {
entry:
  %ring_info.addr = alloca %struct.hv_ring_buffer_info*, align 8
  store %struct.hv_ring_buffer_info* %ring_info, %struct.hv_ring_buffer_info** %ring_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %ring_info.addr, metadata !4285, metadata !DIExpression()), !dbg !4286
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4287
  %ring_buffer_mutex = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %0, i32 0, i32 6, !dbg !4288
  call void @mutex_lock(%struct.mutex* %ring_buffer_mutex) #10, !dbg !4289
  %1 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4290
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %1, i32 0, i32 0, !dbg !4291
  %2 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !4291
  %3 = bitcast %struct.hv_ring_buffer* %2 to i8*, !dbg !4290
  call void @vunmap(i8* %3) #10, !dbg !4292
  %4 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4293
  %ring_buffer1 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %4, i32 0, i32 0, !dbg !4294
  store %struct.hv_ring_buffer* null, %struct.hv_ring_buffer** %ring_buffer1, align 8, !dbg !4295
  %5 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4296
  %ring_buffer_mutex2 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %5, i32 0, i32 6, !dbg !4297
  call void @mutex_unlock(%struct.mutex* %ring_buffer_mutex2) #10, !dbg !4298
  ret void, !dbg !4299
}

; Function Attrs: noredzone
declare dso_local void @vunmap(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hv_ringbuffer_write(%struct.vmbus_channel* %channel, %struct.kvec* %kv_list, i32 %kv_count) #0 !dbg !4300 {
entry:
  %lock.addr.i59 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i59, metadata !4303, metadata !DIExpression()), !dbg !4307
  %flags.addr.i60 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i60, metadata !4309, metadata !DIExpression()), !dbg !4310
  %tmp.i61 = alloca i32, align 4
  %tmp8.i62 = alloca i32, align 4
  %lock.addr.i57 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i57, metadata !4303, metadata !DIExpression()), !dbg !4311
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4309, metadata !DIExpression()), !dbg !4315
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4153, metadata !DIExpression()), !dbg !4316
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct.vmbus_channel*, align 8
  %kv_list.addr = alloca %struct.kvec*, align 8
  %kv_count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %bytes_avail_towrite = alloca i32, align 4
  %totalbytes_towrite = alloca i32, align 4
  %next_write_location = alloca i32, align 4
  %old_write = alloca i32, align 4
  %prev_indices = alloca i64, align 8
  %flags = alloca i64, align 8
  %outring_info = alloca %struct.hv_ring_buffer_info*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  store %struct.vmbus_channel* %channel, %struct.vmbus_channel** %channel.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel.addr, metadata !4323, metadata !DIExpression()), !dbg !4324
  store %struct.kvec* %kv_list, %struct.kvec** %kv_list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kvec** %kv_list.addr, metadata !4325, metadata !DIExpression()), !dbg !4326
  store i32 %kv_count, i32* %kv_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %kv_count.addr, metadata !4327, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4329, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.declare(metadata i32* %bytes_avail_towrite, metadata !4331, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.declare(metadata i32* %totalbytes_towrite, metadata !4333, metadata !DIExpression()), !dbg !4334
  store i32 8, i32* %totalbytes_towrite, align 4, !dbg !4334
  call void @llvm.dbg.declare(metadata i32* %next_write_location, metadata !4335, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.declare(metadata i32* %old_write, metadata !4337, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.declare(metadata i64* %prev_indices, metadata !4339, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4341, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %outring_info, metadata !4343, metadata !DIExpression()), !dbg !4344
  %0 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4345
  %outbound = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %0, i32 0, i32 12, !dbg !4346
  store %struct.hv_ring_buffer_info* %outbound, %struct.hv_ring_buffer_info** %outring_info, align 8, !dbg !4344
  %1 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4347
  %rescind = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %1, i32 0, i32 6, !dbg !4349
  %2 = load i8, i8* %rescind, align 2, !dbg !4349
  %tobool = trunc i8 %2 to i1, !dbg !4349
  br i1 %tobool, label %if.then, label %if.end, !dbg !4350

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4351
  br label %return, !dbg !4351

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4352
  br label %for.cond, !dbg !4354

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !4355
  %4 = load i32, i32* %kv_count.addr, align 4, !dbg !4357
  %cmp = icmp ult i32 %3, %4, !dbg !4358
  br i1 %cmp, label %for.body, label %for.end, !dbg !4359

for.body:                                         ; preds = %for.cond
  %5 = load %struct.kvec*, %struct.kvec** %kv_list.addr, align 8, !dbg !4360
  %6 = load i32, i32* %i, align 4, !dbg !4361
  %idxprom = sext i32 %6 to i64, !dbg !4360
  %arrayidx = getelementptr %struct.kvec, %struct.kvec* %5, i64 %idxprom, !dbg !4360
  %iov_len = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx, i32 0, i32 1, !dbg !4362
  %7 = load i64, i64* %iov_len, align 8, !dbg !4362
  %8 = load i32, i32* %totalbytes_towrite, align 4, !dbg !4363
  %conv = zext i32 %8 to i64, !dbg !4363
  %add = add i64 %conv, %7, !dbg !4363
  %conv1 = trunc i64 %add to i32, !dbg !4363
  store i32 %conv1, i32* %totalbytes_towrite, align 4, !dbg !4363
  br label %for.inc, !dbg !4364

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !4365
  %inc = add i32 %9, 1, !dbg !4365
  store i32 %inc, i32* %i, align 4, !dbg !4365
  br label %for.cond, !dbg !4366, !llvm.loop !4367

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !4369

do.body:                                          ; preds = %for.end
  br label %do.body2, !dbg !4370

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4371, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4374, metadata !DIExpression()), !dbg !4373
  %cmp3 = icmp eq i64* %__dummy, %__dummy2, !dbg !4373
  %conv4 = zext i1 %cmp3 to i32, !dbg !4373
  store i32 1, i32* %tmp, align 4, !dbg !4373
  %10 = load i32, i32* %tmp, align 4, !dbg !4373
  br label %do.body5, !dbg !4375

do.body5:                                         ; preds = %do.body2
  br label %do.body6, !dbg !4376

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !4377

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !4379, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !4383, metadata !DIExpression()), !dbg !4382
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !4382
  %conv11 = zext i1 %cmp10 to i32, !dbg !4382
  store i32 1, i32* %tmp12, align 4, !dbg !4382
  %11 = load i32, i32* %tmp12, align 4, !dbg !4382
  %call = call i64 @arch_local_irq_save() #10, !dbg !4384
  store i64 %call, i64* %flags, align 8, !dbg !4384
  br label %do.end, !dbg !4384

do.end:                                           ; preds = %do.body7
  br label %do.end13, !dbg !4377

do.end13:                                         ; preds = %do.end
  br label %do.body14, !dbg !4376

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4385, !srcloc !4386
  br label %do.body15, !dbg !4385

do.body15:                                        ; preds = %do.body14
  %12 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %outring_info, align 8, !dbg !4387
  %ring_lock = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %12, i32 0, i32 3, !dbg !4387
  store %struct.spinlock* %ring_lock, %struct.spinlock** %lock.addr.i, align 8
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4388
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !4389
  %rlock.i = bitcast %union.anon.0* %14 to %struct.raw_spinlock*, !dbg !4389
  br label %do.end17, !dbg !4387

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !4385

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !4376

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !4375

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !4370

do.end21:                                         ; preds = %do.end20
  %15 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %outring_info, align 8, !dbg !4390
  %call22 = call i32 @hv_get_bytes_to_write(%struct.hv_ring_buffer_info* %15) #10, !dbg !4391
  store i32 %call22, i32* %bytes_avail_towrite, align 4, !dbg !4392
  %16 = load i32, i32* %bytes_avail_towrite, align 4, !dbg !4393
  %17 = load i32, i32* %totalbytes_towrite, align 4, !dbg !4394
  %cmp23 = icmp ule i32 %16, %17, !dbg !4395
  br i1 %cmp23, label %if.then25, label %if.end33, !dbg !4396

if.then25:                                        ; preds = %do.end21
  %18 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4397
  %out_full_total = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %18, i32 0, i32 40, !dbg !4398
  %19 = load i64, i64* %out_full_total, align 8, !dbg !4399
  %inc26 = add i64 %19, 1, !dbg !4399
  store i64 %inc26, i64* %out_full_total, align 8, !dbg !4399
  %20 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4400
  %out_full_flag = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %20, i32 0, i32 18, !dbg !4402
  %21 = load i8, i8* %out_full_flag, align 8, !dbg !4402
  %tobool27 = trunc i8 %21 to i1, !dbg !4402
  br i1 %tobool27, label %if.end31, label %if.then28, !dbg !4403

if.then28:                                        ; preds = %if.then25
  %22 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4404
  %out_full_first = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %22, i32 0, i32 41, !dbg !4406
  %23 = load i64, i64* %out_full_first, align 8, !dbg !4407
  %inc29 = add i64 %23, 1, !dbg !4407
  store i64 %inc29, i64* %out_full_first, align 8, !dbg !4407
  %24 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4408
  %out_full_flag30 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %24, i32 0, i32 18, !dbg !4409
  store i8 1, i8* %out_full_flag30, align 8, !dbg !4410
  br label %if.end31, !dbg !4411

if.end31:                                         ; preds = %if.then28, %if.then25
  %25 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %outring_info, align 8, !dbg !4412
  %ring_lock32 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %25, i32 0, i32 3, !dbg !4413
  %26 = load i64, i64* %flags, align 8, !dbg !4414
  store %struct.spinlock* %ring_lock32, %struct.spinlock** %lock.addr.i57, align 8
  store i64 %26, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !75, metadata !4415, metadata !DIExpression()) #9, !dbg !4418
  call void @llvm.dbg.declare(metadata !75, metadata !4419, metadata !DIExpression()) #9, !dbg !4418
  store i32 1, i32* %tmp.i, align 4, !dbg !4418
  %27 = load i32, i32* %tmp.i, align 4, !dbg !4418
  call void @llvm.dbg.declare(metadata !75, metadata !4420, metadata !DIExpression()) #9, !dbg !4425
  call void @llvm.dbg.declare(metadata !75, metadata !4426, metadata !DIExpression()) #9, !dbg !4425
  store i32 1, i32* %tmp8.i, align 4, !dbg !4425
  %28 = load i32, i32* %tmp8.i, align 4, !dbg !4425
  %29 = load i64, i64* %flags.addr.i, align 8, !dbg !4427
  call void @arch_local_irq_restore(i64 %29) #11, !dbg !4427
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4428, !srcloc !4430
  %30 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i57, align 8, !dbg !4431
  %31 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %30, i32 0, i32 0, !dbg !4431
  %rlock.i58 = bitcast %union.anon.0* %31 to %struct.raw_spinlock*, !dbg !4431
  store i32 -11, i32* %retval, align 4, !dbg !4433
  br label %return, !dbg !4433

if.end33:                                         ; preds = %do.end21
  %32 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4434
  %out_full_flag34 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %32, i32 0, i32 18, !dbg !4435
  store i8 0, i8* %out_full_flag34, align 8, !dbg !4436
  %33 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %outring_info, align 8, !dbg !4437
  %call35 = call i32 @hv_get_next_write_location(%struct.hv_ring_buffer_info* %33) #10, !dbg !4438
  store i32 %call35, i32* %next_write_location, align 4, !dbg !4439
  %34 = load i32, i32* %next_write_location, align 4, !dbg !4440
  store i32 %34, i32* %old_write, align 4, !dbg !4441
  store i32 0, i32* %i, align 4, !dbg !4442
  br label %for.cond36, !dbg !4444

for.cond36:                                       ; preds = %for.inc47, %if.end33
  %35 = load i32, i32* %i, align 4, !dbg !4445
  %36 = load i32, i32* %kv_count.addr, align 4, !dbg !4447
  %cmp37 = icmp ult i32 %35, %36, !dbg !4448
  br i1 %cmp37, label %for.body39, label %for.end49, !dbg !4449

for.body39:                                       ; preds = %for.cond36
  %37 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %outring_info, align 8, !dbg !4450
  %38 = load i32, i32* %next_write_location, align 4, !dbg !4452
  %39 = load %struct.kvec*, %struct.kvec** %kv_list.addr, align 8, !dbg !4453
  %40 = load i32, i32* %i, align 4, !dbg !4454
  %idxprom40 = sext i32 %40 to i64, !dbg !4453
  %arrayidx41 = getelementptr %struct.kvec, %struct.kvec* %39, i64 %idxprom40, !dbg !4453
  %iov_base = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx41, i32 0, i32 0, !dbg !4455
  %41 = load i8*, i8** %iov_base, align 8, !dbg !4455
  %42 = load %struct.kvec*, %struct.kvec** %kv_list.addr, align 8, !dbg !4456
  %43 = load i32, i32* %i, align 4, !dbg !4457
  %idxprom42 = sext i32 %43 to i64, !dbg !4456
  %arrayidx43 = getelementptr %struct.kvec, %struct.kvec* %42, i64 %idxprom42, !dbg !4456
  %iov_len44 = getelementptr inbounds %struct.kvec, %struct.kvec* %arrayidx43, i32 0, i32 1, !dbg !4458
  %44 = load i64, i64* %iov_len44, align 8, !dbg !4458
  %conv45 = trunc i64 %44 to i32, !dbg !4456
  %call46 = call i32 @hv_copyto_ringbuffer(%struct.hv_ring_buffer_info* %37, i32 %38, i8* %41, i32 %conv45) #10, !dbg !4459
  store i32 %call46, i32* %next_write_location, align 4, !dbg !4460
  br label %for.inc47, !dbg !4461

for.inc47:                                        ; preds = %for.body39
  %45 = load i32, i32* %i, align 4, !dbg !4462
  %inc48 = add i32 %45, 1, !dbg !4462
  store i32 %inc48, i32* %i, align 4, !dbg !4462
  br label %for.cond36, !dbg !4463, !llvm.loop !4464

for.end49:                                        ; preds = %for.cond36
  %46 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %outring_info, align 8, !dbg !4466
  %call50 = call i64 @hv_get_ring_bufferindices(%struct.hv_ring_buffer_info* %46) #10, !dbg !4467
  store i64 %call50, i64* %prev_indices, align 8, !dbg !4468
  %47 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %outring_info, align 8, !dbg !4469
  %48 = load i32, i32* %next_write_location, align 4, !dbg !4470
  %49 = bitcast i64* %prev_indices to i8*, !dbg !4471
  %call51 = call i32 @hv_copyto_ringbuffer(%struct.hv_ring_buffer_info* %47, i32 %48, i8* %49, i32 8) #10, !dbg !4472
  store i32 %call51, i32* %next_write_location, align 4, !dbg !4473
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4474, !srcloc !4475
  %50 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %outring_info, align 8, !dbg !4476
  %51 = load i32, i32* %next_write_location, align 4, !dbg !4477
  call void @hv_set_next_write_location(%struct.hv_ring_buffer_info* %50, i32 %51) #10, !dbg !4478
  %52 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %outring_info, align 8, !dbg !4479
  %ring_lock52 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %52, i32 0, i32 3, !dbg !4480
  %53 = load i64, i64* %flags, align 8, !dbg !4481
  store %struct.spinlock* %ring_lock52, %struct.spinlock** %lock.addr.i59, align 8
  store i64 %53, i64* %flags.addr.i60, align 8
  call void @llvm.dbg.declare(metadata !75, metadata !4415, metadata !DIExpression()) #9, !dbg !4482
  call void @llvm.dbg.declare(metadata !75, metadata !4419, metadata !DIExpression()) #9, !dbg !4482
  store i32 1, i32* %tmp.i61, align 4, !dbg !4482
  %54 = load i32, i32* %tmp.i61, align 4, !dbg !4482
  call void @llvm.dbg.declare(metadata !75, metadata !4420, metadata !DIExpression()) #9, !dbg !4483
  call void @llvm.dbg.declare(metadata !75, metadata !4426, metadata !DIExpression()) #9, !dbg !4483
  store i32 1, i32* %tmp8.i62, align 4, !dbg !4483
  %55 = load i32, i32* %tmp8.i62, align 4, !dbg !4483
  %56 = load i64, i64* %flags.addr.i60, align 8, !dbg !4484
  call void @arch_local_irq_restore(i64 %56) #11, !dbg !4484
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4485, !srcloc !4430
  %57 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i59, align 8, !dbg !4486
  %58 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %57, i32 0, i32 0, !dbg !4486
  %rlock.i63 = bitcast %union.anon.0* %58 to %struct.raw_spinlock*, !dbg !4486
  %59 = load i32, i32* %old_write, align 4, !dbg !4487
  %60 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4488
  call void @hv_signal_on_write(i32 %59, %struct.vmbus_channel* %60) #10, !dbg !4489
  %61 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4490
  %rescind53 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %61, i32 0, i32 6, !dbg !4492
  %62 = load i8, i8* %rescind53, align 2, !dbg !4492
  %tobool54 = trunc i8 %62 to i1, !dbg !4492
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !4493

if.then55:                                        ; preds = %for.end49
  store i32 -19, i32* %retval, align 4, !dbg !4494
  br label %return, !dbg !4494

if.end56:                                         ; preds = %for.end49
  store i32 0, i32* %retval, align 4, !dbg !4495
  br label %return, !dbg !4495

return:                                           ; preds = %if.end56, %if.then55, %if.end31, %if.then
  %63 = load i32, i32* %retval, align 4, !dbg !4496
  ret i32 %63, !dbg !4496
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4497 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4501, metadata !DIExpression()), !dbg !4502
  %call = call i64 @arch_local_save_flags() #10, !dbg !4503
  store i64 %call, i64* %f, align 8, !dbg !4504
  call void @arch_local_irq_disable() #10, !dbg !4505
  %0 = load i64, i64* %f, align 8, !dbg !4506
  ret i64 %0, !dbg !4507
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_get_bytes_to_write(%struct.hv_ring_buffer_info* %rbi) #0 !dbg !4508 {
entry:
  %rbi.addr = alloca %struct.hv_ring_buffer_info*, align 8
  %read_loc = alloca i32, align 4
  %write_loc = alloca i32, align 4
  %dsize = alloca i32, align 4
  %write = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.hv_ring_buffer_info* %rbi, %struct.hv_ring_buffer_info** %rbi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %rbi.addr, metadata !4511, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.declare(metadata i32* %read_loc, metadata !4513, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.declare(metadata i32* %write_loc, metadata !4515, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.declare(metadata i32* %dsize, metadata !4517, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.declare(metadata i32* %write, metadata !4519, metadata !DIExpression()), !dbg !4520
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !4521
  %ring_datasize = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %0, i32 0, i32 4, !dbg !4522
  %1 = load i32, i32* %ring_datasize, align 4, !dbg !4522
  store i32 %1, i32* %dsize, align 4, !dbg !4523
  br label %do.body, !dbg !4524

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4526

do.end:                                           ; preds = %do.body
  %2 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !4524
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %2, i32 0, i32 0, !dbg !4524
  %3 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !4524
  %read_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %3, i32 0, i32 1, !dbg !4524
  %4 = load volatile i32, i32* %read_index, align 1, !dbg !4524
  store i32 %4, i32* %tmp, align 4, !dbg !4526
  %5 = load i32, i32* %tmp, align 4, !dbg !4524
  store i32 %5, i32* %read_loc, align 4, !dbg !4528
  %6 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !4529
  %ring_buffer1 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %6, i32 0, i32 0, !dbg !4530
  %7 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer1, align 8, !dbg !4530
  %write_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %7, i32 0, i32 0, !dbg !4531
  %8 = load i32, i32* %write_index, align 1, !dbg !4531
  store i32 %8, i32* %write_loc, align 4, !dbg !4532
  %9 = load i32, i32* %write_loc, align 4, !dbg !4533
  %10 = load i32, i32* %read_loc, align 4, !dbg !4534
  %cmp = icmp uge i32 %9, %10, !dbg !4535
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4533

cond.true:                                        ; preds = %do.end
  %11 = load i32, i32* %dsize, align 4, !dbg !4536
  %12 = load i32, i32* %write_loc, align 4, !dbg !4537
  %13 = load i32, i32* %read_loc, align 4, !dbg !4538
  %sub = sub i32 %12, %13, !dbg !4539
  %sub2 = sub i32 %11, %sub, !dbg !4540
  br label %cond.end, !dbg !4533

cond.false:                                       ; preds = %do.end
  %14 = load i32, i32* %read_loc, align 4, !dbg !4541
  %15 = load i32, i32* %write_loc, align 4, !dbg !4542
  %sub3 = sub i32 %14, %15, !dbg !4543
  br label %cond.end, !dbg !4533

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub2, %cond.true ], [ %sub3, %cond.false ], !dbg !4533
  store i32 %cond, i32* %write, align 4, !dbg !4544
  %16 = load i32, i32* %write, align 4, !dbg !4545
  ret i32 %16, !dbg !4546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_get_next_write_location(%struct.hv_ring_buffer_info* %ring_info) #0 !dbg !4547 {
entry:
  %ring_info.addr = alloca %struct.hv_ring_buffer_info*, align 8
  %next = alloca i32, align 4
  store %struct.hv_ring_buffer_info* %ring_info, %struct.hv_ring_buffer_info** %ring_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %ring_info.addr, metadata !4550, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.declare(metadata i32* %next, metadata !4552, metadata !DIExpression()), !dbg !4553
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4554
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %0, i32 0, i32 0, !dbg !4555
  %1 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !4555
  %write_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %1, i32 0, i32 0, !dbg !4556
  %2 = load i32, i32* %write_index, align 1, !dbg !4556
  store i32 %2, i32* %next, align 4, !dbg !4553
  %3 = load i32, i32* %next, align 4, !dbg !4557
  ret i32 %3, !dbg !4558
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_copyto_ringbuffer(%struct.hv_ring_buffer_info* %ring_info, i32 %start_write_offset, i8* %src, i32 %srclen) #0 !dbg !4559 {
entry:
  %ring_info.addr = alloca %struct.hv_ring_buffer_info*, align 8
  %start_write_offset.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %srclen.addr = alloca i32, align 4
  %ring_buffer = alloca i8*, align 8
  %ring_buffer_size = alloca i32, align 4
  store %struct.hv_ring_buffer_info* %ring_info, %struct.hv_ring_buffer_info** %ring_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %ring_info.addr, metadata !4562, metadata !DIExpression()), !dbg !4563
  store i32 %start_write_offset, i32* %start_write_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start_write_offset.addr, metadata !4564, metadata !DIExpression()), !dbg !4565
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !4566, metadata !DIExpression()), !dbg !4567
  store i32 %srclen, i32* %srclen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %srclen.addr, metadata !4568, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.declare(metadata i8** %ring_buffer, metadata !4570, metadata !DIExpression()), !dbg !4571
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4572
  %call = call i8* @hv_get_ring_buffer(%struct.hv_ring_buffer_info* %0) #10, !dbg !4573
  store i8* %call, i8** %ring_buffer, align 8, !dbg !4571
  call void @llvm.dbg.declare(metadata i32* %ring_buffer_size, metadata !4574, metadata !DIExpression()), !dbg !4575
  %1 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4576
  %call1 = call i32 @hv_get_ring_buffersize(%struct.hv_ring_buffer_info* %1) #10, !dbg !4577
  store i32 %call1, i32* %ring_buffer_size, align 4, !dbg !4575
  %2 = load i8*, i8** %ring_buffer, align 8, !dbg !4578
  %3 = load i32, i32* %start_write_offset.addr, align 4, !dbg !4579
  %idx.ext = zext i32 %3 to i64, !dbg !4580
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext, !dbg !4580
  %4 = load i8*, i8** %src.addr, align 8, !dbg !4581
  %5 = load i32, i32* %srclen.addr, align 4, !dbg !4582
  %conv = zext i32 %5 to i64, !dbg !4582
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %4, i64 %conv, i1 false), !dbg !4583
  %6 = load i32, i32* %srclen.addr, align 4, !dbg !4584
  %7 = load i32, i32* %start_write_offset.addr, align 4, !dbg !4585
  %add = add i32 %7, %6, !dbg !4585
  store i32 %add, i32* %start_write_offset.addr, align 4, !dbg !4585
  %8 = load i32, i32* %start_write_offset.addr, align 4, !dbg !4586
  %9 = load i32, i32* %ring_buffer_size, align 4, !dbg !4588
  %cmp = icmp uge i32 %8, %9, !dbg !4589
  br i1 %cmp, label %if.then, label %if.end, !dbg !4590

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %ring_buffer_size, align 4, !dbg !4591
  %11 = load i32, i32* %start_write_offset.addr, align 4, !dbg !4592
  %sub = sub i32 %11, %10, !dbg !4592
  store i32 %sub, i32* %start_write_offset.addr, align 4, !dbg !4592
  br label %if.end, !dbg !4593

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %start_write_offset.addr, align 4, !dbg !4594
  ret i32 %12, !dbg !4595
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hv_get_ring_bufferindices(%struct.hv_ring_buffer_info* %ring_info) #0 !dbg !4596 {
entry:
  %ring_info.addr = alloca %struct.hv_ring_buffer_info*, align 8
  store %struct.hv_ring_buffer_info* %ring_info, %struct.hv_ring_buffer_info** %ring_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %ring_info.addr, metadata !4599, metadata !DIExpression()), !dbg !4600
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4601
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %0, i32 0, i32 0, !dbg !4602
  %1 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !4602
  %write_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %1, i32 0, i32 0, !dbg !4603
  %2 = load i32, i32* %write_index, align 1, !dbg !4603
  %conv = zext i32 %2 to i64, !dbg !4604
  %shl = shl i64 %conv, 32, !dbg !4605
  ret i64 %shl, !dbg !4606
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hv_set_next_write_location(%struct.hv_ring_buffer_info* %ring_info, i32 %next_write_location) #0 !dbg !4607 {
entry:
  %ring_info.addr = alloca %struct.hv_ring_buffer_info*, align 8
  %next_write_location.addr = alloca i32, align 4
  store %struct.hv_ring_buffer_info* %ring_info, %struct.hv_ring_buffer_info** %ring_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %ring_info.addr, metadata !4610, metadata !DIExpression()), !dbg !4611
  store i32 %next_write_location, i32* %next_write_location.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %next_write_location.addr, metadata !4612, metadata !DIExpression()), !dbg !4613
  %0 = load i32, i32* %next_write_location.addr, align 4, !dbg !4614
  %1 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4615
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %1, i32 0, i32 0, !dbg !4616
  %2 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !4616
  %write_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %2, i32 0, i32 0, !dbg !4617
  store i32 %0, i32* %write_index, align 1, !dbg !4618
  ret void, !dbg !4619
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hv_signal_on_write(i32 %old_write, %struct.vmbus_channel* %channel) #0 !dbg !4620 {
entry:
  %old_write.addr = alloca i32, align 4
  %channel.addr = alloca %struct.vmbus_channel*, align 8
  %rbi = alloca %struct.hv_ring_buffer_info*, align 8
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store i32 %old_write, i32* %old_write.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %old_write.addr, metadata !4623, metadata !DIExpression()), !dbg !4624
  store %struct.vmbus_channel* %channel, %struct.vmbus_channel** %channel.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel.addr, metadata !4625, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %rbi, metadata !4627, metadata !DIExpression()), !dbg !4628
  %0 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4629
  %outbound = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %0, i32 0, i32 12, !dbg !4630
  store %struct.hv_ring_buffer_info* %outbound, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4628
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4631, !srcloc !4632
  br label %do.body, !dbg !4633

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4636

do.end:                                           ; preds = %do.body
  %1 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4633
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %1, i32 0, i32 0, !dbg !4633
  %2 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !4633
  %interrupt_mask = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %2, i32 0, i32 2, !dbg !4633
  %3 = load volatile i32, i32* %interrupt_mask, align 1, !dbg !4633
  store i32 %3, i32* %tmp, align 4, !dbg !4636
  %4 = load i32, i32* %tmp, align 4, !dbg !4633
  %tobool = icmp ne i32 %4, 0, !dbg !4638
  br i1 %tobool, label %if.then, label %if.end, !dbg !4639

if.then:                                          ; preds = %do.end
  br label %if.end6, !dbg !4640

if.end:                                           ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4641, !srcloc !4642
  %5 = load i32, i32* %old_write.addr, align 4, !dbg !4643
  br label %do.body1, !dbg !4645

do.body1:                                         ; preds = %if.end
  br label %do.end2, !dbg !4647

do.end2:                                          ; preds = %do.body1
  %6 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4645
  %ring_buffer4 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %6, i32 0, i32 0, !dbg !4645
  %7 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer4, align 8, !dbg !4645
  %read_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %7, i32 0, i32 1, !dbg !4645
  %8 = load volatile i32, i32* %read_index, align 1, !dbg !4645
  store i32 %8, i32* %tmp3, align 4, !dbg !4647
  %9 = load i32, i32* %tmp3, align 4, !dbg !4645
  %cmp = icmp eq i32 %5, %9, !dbg !4649
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !4650

if.then5:                                         ; preds = %do.end2
  %10 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4651
  %intr_out_empty = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %10, i32 0, i32 17, !dbg !4653
  %11 = load i64, i64* %intr_out_empty, align 8, !dbg !4654
  %inc = add i64 %11, 1, !dbg !4654
  store i64 %inc, i64* %intr_out_empty, align 8, !dbg !4654
  %12 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4655
  call void @vmbus_setevent(%struct.vmbus_channel* %12) #10, !dbg !4656
  br label %if.end6, !dbg !4657

if.end6:                                          ; preds = %if.then, %if.then5, %do.end2
  ret void, !dbg !4658
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hv_ringbuffer_read(%struct.vmbus_channel* %channel, i8* %buffer, i32 %buflen, i32* %buffer_actual_len, i64* %requestid, i1 zeroext %raw) #0 !dbg !4659 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct.vmbus_channel*, align 8
  %buffer.addr = alloca i8*, align 8
  %buflen.addr = alloca i32, align 4
  %buffer_actual_len.addr = alloca i32*, align 8
  %requestid.addr = alloca i64*, align 8
  %raw.addr = alloca i8, align 1
  %desc = alloca %struct.vmpacket_descriptor*, align 8
  %packetlen = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.vmbus_channel* %channel, %struct.vmbus_channel** %channel.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel.addr, metadata !4662, metadata !DIExpression()), !dbg !4663
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4664, metadata !DIExpression()), !dbg !4665
  store i32 %buflen, i32* %buflen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buflen.addr, metadata !4666, metadata !DIExpression()), !dbg !4667
  store i32* %buffer_actual_len, i32** %buffer_actual_len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %buffer_actual_len.addr, metadata !4668, metadata !DIExpression()), !dbg !4669
  store i64* %requestid, i64** %requestid.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %requestid.addr, metadata !4670, metadata !DIExpression()), !dbg !4671
  %frombool = zext i1 %raw to i8
  store i8 %frombool, i8* %raw.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %raw.addr, metadata !4672, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.declare(metadata %struct.vmpacket_descriptor** %desc, metadata !4674, metadata !DIExpression()), !dbg !4683
  call void @llvm.dbg.declare(metadata i32* %packetlen, metadata !4684, metadata !DIExpression()), !dbg !4685
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !4686, metadata !DIExpression()), !dbg !4687
  %0 = load i32, i32* %buflen.addr, align 4, !dbg !4688
  %cmp = icmp eq i32 %0, 0, !dbg !4688
  %lnot = xor i1 %cmp, true, !dbg !4688
  %lnot1 = xor i1 %lnot, true, !dbg !4688
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4688
  %conv = sext i32 %lnot.ext to i64, !dbg !4688
  %tobool = icmp ne i64 %conv, 0, !dbg !4688
  br i1 %tobool, label %if.then, label %if.end, !dbg !4690

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4691
  br label %return, !dbg !4691

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %buffer_actual_len.addr, align 8, !dbg !4692
  store i32 0, i32* %1, align 4, !dbg !4693
  %2 = load i64*, i64** %requestid.addr, align 8, !dbg !4694
  store i64 0, i64* %2, align 8, !dbg !4695
  %3 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4696
  %call = call %struct.vmpacket_descriptor* @hv_pkt_iter_first(%struct.vmbus_channel* %3) #10, !dbg !4697
  store %struct.vmpacket_descriptor* %call, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4698
  %4 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4699
  %cmp2 = icmp eq %struct.vmpacket_descriptor* %4, null, !dbg !4701
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !4702

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4703
  br label %return, !dbg !4703

if.end5:                                          ; preds = %if.end
  %5 = load i8, i8* %raw.addr, align 1, !dbg !4705
  %tobool6 = trunc i8 %5 to i1, !dbg !4705
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !4705

cond.true:                                        ; preds = %if.end5
  br label %cond.end, !dbg !4705

cond.false:                                       ; preds = %if.end5
  %6 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4706
  %offset8 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %6, i32 0, i32 1, !dbg !4707
  %7 = load i16, i16* %offset8, align 1, !dbg !4707
  %conv8 = zext i16 %7 to i32, !dbg !4706
  %shl = shl i32 %conv8, 3, !dbg !4708
  br label %cond.end, !dbg !4705

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shl, %cond.false ], !dbg !4705
  store i32 %cond, i32* %offset, align 4, !dbg !4709
  %8 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4710
  %len8 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %8, i32 0, i32 2, !dbg !4711
  %9 = load i16, i16* %len8, align 1, !dbg !4711
  %conv9 = zext i16 %9 to i32, !dbg !4710
  %shl10 = shl i32 %conv9, 3, !dbg !4712
  %10 = load i32, i32* %offset, align 4, !dbg !4713
  %sub = sub i32 %shl10, %10, !dbg !4714
  store i32 %sub, i32* %packetlen, align 4, !dbg !4715
  %11 = load i32, i32* %packetlen, align 4, !dbg !4716
  %12 = load i32*, i32** %buffer_actual_len.addr, align 8, !dbg !4717
  store i32 %11, i32* %12, align 4, !dbg !4718
  %13 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4719
  %trans_id = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %13, i32 0, i32 4, !dbg !4720
  %14 = load i64, i64* %trans_id, align 1, !dbg !4720
  %15 = load i64*, i64** %requestid.addr, align 8, !dbg !4721
  store i64 %14, i64* %15, align 8, !dbg !4722
  %16 = load i32, i32* %packetlen, align 4, !dbg !4723
  %17 = load i32, i32* %buflen.addr, align 4, !dbg !4723
  %cmp11 = icmp ugt i32 %16, %17, !dbg !4723
  %lnot13 = xor i1 %cmp11, true, !dbg !4723
  %lnot15 = xor i1 %lnot13, true, !dbg !4723
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !4723
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !4723
  %tobool18 = icmp ne i64 %conv17, 0, !dbg !4723
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4725

if.then19:                                        ; preds = %cond.end
  store i32 -105, i32* %retval, align 4, !dbg !4726
  br label %return, !dbg !4726

if.end20:                                         ; preds = %cond.end
  %18 = load i8*, i8** %buffer.addr, align 8, !dbg !4727
  %19 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4728
  %20 = bitcast %struct.vmpacket_descriptor* %19 to i8*, !dbg !4729
  %21 = load i32, i32* %offset, align 4, !dbg !4730
  %idx.ext = zext i32 %21 to i64, !dbg !4731
  %add.ptr = getelementptr i8, i8* %20, i64 %idx.ext, !dbg !4731
  %22 = load i32, i32* %packetlen, align 4, !dbg !4732
  %conv21 = zext i32 %22 to i64, !dbg !4732
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %add.ptr, i64 %conv21, i1 false), !dbg !4733
  %23 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4734
  %24 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4735
  %call22 = call %struct.vmpacket_descriptor* @__hv_pkt_iter_next(%struct.vmbus_channel* %23, %struct.vmpacket_descriptor* %24) #10, !dbg !4736
  %25 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4737
  call void @hv_pkt_iter_close(%struct.vmbus_channel* %25) #10, !dbg !4738
  store i32 0, i32* %retval, align 4, !dbg !4739
  br label %return, !dbg !4739

return:                                           ; preds = %if.end20, %if.then19, %if.then4, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !4740
  ret i32 %26, !dbg !4740
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.vmpacket_descriptor* @hv_pkt_iter_first(%struct.vmbus_channel* %channel) #0 !dbg !4741 {
entry:
  %retval = alloca %struct.vmpacket_descriptor*, align 8
  %channel.addr = alloca %struct.vmbus_channel*, align 8
  %rbi = alloca %struct.hv_ring_buffer_info*, align 8
  %desc = alloca %struct.vmpacket_descriptor*, align 8
  store %struct.vmbus_channel* %channel, %struct.vmbus_channel** %channel.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %rbi, metadata !4746, metadata !DIExpression()), !dbg !4747
  %0 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4748
  %inbound = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %0, i32 0, i32 13, !dbg !4749
  store %struct.hv_ring_buffer_info* %inbound, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4747
  call void @llvm.dbg.declare(metadata %struct.vmpacket_descriptor** %desc, metadata !4750, metadata !DIExpression()), !dbg !4751
  %1 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4752
  call void @hv_debug_delay_test(%struct.vmbus_channel* %1, i32 1) #10, !dbg !4753
  %2 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4754
  %call = call i32 @hv_pkt_iter_avail(%struct.hv_ring_buffer_info* %2) #10, !dbg !4756
  %conv = zext i32 %call to i64, !dbg !4756
  %cmp = icmp ult i64 %conv, 16, !dbg !4757
  br i1 %cmp, label %if.then, label %if.end, !dbg !4758

if.then:                                          ; preds = %entry
  store %struct.vmpacket_descriptor* null, %struct.vmpacket_descriptor** %retval, align 8, !dbg !4759
  br label %return, !dbg !4759

if.end:                                           ; preds = %entry
  %3 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4760
  %call2 = call i8* @hv_get_ring_buffer(%struct.hv_ring_buffer_info* %3) #10, !dbg !4761
  %4 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4762
  %priv_read_index = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %4, i32 0, i32 5, !dbg !4763
  %5 = load i32, i32* %priv_read_index, align 8, !dbg !4763
  %idx.ext = zext i32 %5 to i64, !dbg !4764
  %add.ptr = getelementptr i8, i8* %call2, i64 %idx.ext, !dbg !4764
  %6 = bitcast i8* %add.ptr to %struct.vmpacket_descriptor*, !dbg !4761
  store %struct.vmpacket_descriptor* %6, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4765
  %7 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4766
  %tobool = icmp ne %struct.vmpacket_descriptor* %7, null, !dbg !4766
  br i1 %tobool, label %if.then3, label %if.end7, !dbg !4768

if.then3:                                         ; preds = %if.end
  %8 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4769
  %9 = bitcast %struct.vmpacket_descriptor* %8 to i8*, !dbg !4769
  %10 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4769
  %len8 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %10, i32 0, i32 2, !dbg !4769
  %11 = load i16, i16* %len8, align 1, !dbg !4769
  %conv4 = zext i16 %11 to i32, !dbg !4769
  %shl = shl i32 %conv4, 3, !dbg !4769
  %idx.ext5 = sext i32 %shl to i64, !dbg !4769
  %add.ptr6 = getelementptr i8, i8* %9, i64 %idx.ext5, !dbg !4769
  call void @llvm.prefetch.p0i8(i8* %add.ptr6, i32 0, i32 3, i32 1), !dbg !4769
  br label %if.end7, !dbg !4769

if.end7:                                          ; preds = %if.then3, %if.end
  %12 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4770
  store %struct.vmpacket_descriptor* %12, %struct.vmpacket_descriptor** %retval, align 8, !dbg !4771
  br label %return, !dbg !4771

return:                                           ; preds = %if.end7, %if.then
  %13 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %retval, align 8, !dbg !4772
  ret %struct.vmpacket_descriptor* %13, !dbg !4772
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.vmpacket_descriptor* @__hv_pkt_iter_next(%struct.vmbus_channel* %channel, %struct.vmpacket_descriptor* %desc) #0 !dbg !4773 {
entry:
  %channel.addr = alloca %struct.vmbus_channel*, align 8
  %desc.addr = alloca %struct.vmpacket_descriptor*, align 8
  %rbi = alloca %struct.hv_ring_buffer_info*, align 8
  %packetlen = alloca i32, align 4
  %dsize = alloca i32, align 4
  store %struct.vmbus_channel* %channel, %struct.vmbus_channel** %channel.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel.addr, metadata !4778, metadata !DIExpression()), !dbg !4779
  store %struct.vmpacket_descriptor* %desc, %struct.vmpacket_descriptor** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmpacket_descriptor** %desc.addr, metadata !4780, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %rbi, metadata !4782, metadata !DIExpression()), !dbg !4783
  %0 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4784
  %inbound = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %0, i32 0, i32 13, !dbg !4785
  store %struct.hv_ring_buffer_info* %inbound, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4783
  call void @llvm.dbg.declare(metadata i32* %packetlen, metadata !4786, metadata !DIExpression()), !dbg !4787
  %1 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc.addr, align 8, !dbg !4788
  %len8 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %1, i32 0, i32 2, !dbg !4789
  %2 = load i16, i16* %len8, align 1, !dbg !4789
  %conv = zext i16 %2 to i32, !dbg !4788
  %shl = shl i32 %conv, 3, !dbg !4790
  store i32 %shl, i32* %packetlen, align 4, !dbg !4787
  call void @llvm.dbg.declare(metadata i32* %dsize, metadata !4791, metadata !DIExpression()), !dbg !4792
  %3 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4793
  %ring_datasize = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %3, i32 0, i32 4, !dbg !4794
  %4 = load i32, i32* %ring_datasize, align 4, !dbg !4794
  store i32 %4, i32* %dsize, align 4, !dbg !4792
  %5 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4795
  call void @hv_debug_delay_test(%struct.vmbus_channel* %5, i32 1) #10, !dbg !4796
  %6 = load i32, i32* %packetlen, align 4, !dbg !4797
  %add = add i32 %6, 8, !dbg !4798
  %7 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4799
  %priv_read_index = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %7, i32 0, i32 5, !dbg !4800
  %8 = load i32, i32* %priv_read_index, align 8, !dbg !4801
  %add1 = add i32 %8, %add, !dbg !4801
  store i32 %add1, i32* %priv_read_index, align 8, !dbg !4801
  %9 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4802
  %priv_read_index2 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %9, i32 0, i32 5, !dbg !4804
  %10 = load i32, i32* %priv_read_index2, align 8, !dbg !4804
  %11 = load i32, i32* %dsize, align 4, !dbg !4805
  %cmp = icmp uge i32 %10, %11, !dbg !4806
  br i1 %cmp, label %if.then, label %if.end, !dbg !4807

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %dsize, align 4, !dbg !4808
  %13 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4809
  %priv_read_index4 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %13, i32 0, i32 5, !dbg !4810
  %14 = load i32, i32* %priv_read_index4, align 8, !dbg !4811
  %sub = sub i32 %14, %12, !dbg !4811
  store i32 %sub, i32* %priv_read_index4, align 8, !dbg !4811
  br label %if.end, !dbg !4809

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4812
  %call = call %struct.vmpacket_descriptor* @hv_pkt_iter_first(%struct.vmbus_channel* %15) #10, !dbg !4813
  ret %struct.vmpacket_descriptor* %call, !dbg !4814
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hv_pkt_iter_close(%struct.vmbus_channel* %channel) #0 !dbg !4815 {
entry:
  %channel.addr = alloca %struct.vmbus_channel*, align 8
  %rbi = alloca %struct.hv_ring_buffer_info*, align 8
  %curr_write_sz = alloca i32, align 4
  %pending_sz = alloca i32, align 4
  %bytes_read = alloca i32, align 4
  %start_read_index = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.vmbus_channel* %channel, %struct.vmbus_channel** %channel.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel.addr, metadata !4816, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %rbi, metadata !4818, metadata !DIExpression()), !dbg !4819
  %0 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4820
  %inbound = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %0, i32 0, i32 13, !dbg !4821
  store %struct.hv_ring_buffer_info* %inbound, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4819
  call void @llvm.dbg.declare(metadata i32* %curr_write_sz, metadata !4822, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.declare(metadata i32* %pending_sz, metadata !4824, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.declare(metadata i32* %bytes_read, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.declare(metadata i32* %start_read_index, metadata !4828, metadata !DIExpression()), !dbg !4829
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4830, !srcloc !4831
  %1 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4832
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %1, i32 0, i32 0, !dbg !4833
  %2 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !4833
  %read_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %2, i32 0, i32 1, !dbg !4834
  %3 = load i32, i32* %read_index, align 1, !dbg !4834
  store i32 %3, i32* %start_read_index, align 4, !dbg !4835
  %4 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4836
  %priv_read_index = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %4, i32 0, i32 5, !dbg !4837
  %5 = load i32, i32* %priv_read_index, align 8, !dbg !4837
  %6 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4838
  %ring_buffer1 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %6, i32 0, i32 0, !dbg !4839
  %7 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer1, align 8, !dbg !4839
  %read_index2 = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %7, i32 0, i32 1, !dbg !4840
  store i32 %5, i32* %read_index2, align 1, !dbg !4841
  %8 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4842
  %ring_buffer3 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %8, i32 0, i32 0, !dbg !4844
  %9 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer3, align 8, !dbg !4844
  %feature_bits = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %9, i32 0, i32 5, !dbg !4845
  %10 = bitcast %union.anon* %feature_bits to %struct.anon*, !dbg !4846
  %11 = bitcast %struct.anon* %10 to i8*, !dbg !4846
  %bf.load = load i8, i8* %11, align 1, !dbg !4846
  %bf.clear = and i8 %bf.load, 1, !dbg !4846
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4846
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4842
  br i1 %tobool, label %if.end, label %if.then, !dbg !4847

if.then:                                          ; preds = %entry
  br label %return, !dbg !4848

if.end:                                           ; preds = %entry
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4849, !srcloc !4850
  br label %do.body, !dbg !4851

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4853

do.end:                                           ; preds = %do.body
  %12 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4851
  %ring_buffer4 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %12, i32 0, i32 0, !dbg !4851
  %13 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer4, align 8, !dbg !4851
  %pending_send_sz = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %13, i32 0, i32 3, !dbg !4851
  %14 = load volatile i32, i32* %pending_send_sz, align 1, !dbg !4851
  store i32 %14, i32* %tmp, align 4, !dbg !4853
  %15 = load i32, i32* %tmp, align 4, !dbg !4851
  store i32 %15, i32* %pending_sz, align 4, !dbg !4855
  %16 = load i32, i32* %pending_sz, align 4, !dbg !4856
  %tobool5 = icmp ne i32 %16, 0, !dbg !4856
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4858

if.then6:                                         ; preds = %do.end
  br label %return, !dbg !4859

if.end7:                                          ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4860, !srcloc !4861
  %17 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4862
  %call = call i32 @hv_get_bytes_to_write(%struct.hv_ring_buffer_info* %17) #10, !dbg !4863
  store i32 %call, i32* %curr_write_sz, align 4, !dbg !4864
  %18 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi, align 8, !dbg !4865
  %19 = load i32, i32* %start_read_index, align 4, !dbg !4866
  %call8 = call i32 @hv_pkt_iter_bytes_read(%struct.hv_ring_buffer_info* %18, i32 %19) #10, !dbg !4867
  store i32 %call8, i32* %bytes_read, align 4, !dbg !4868
  %20 = load i32, i32* %curr_write_sz, align 4, !dbg !4869
  %21 = load i32, i32* %bytes_read, align 4, !dbg !4871
  %sub = sub i32 %20, %21, !dbg !4872
  %22 = load i32, i32* %pending_sz, align 4, !dbg !4873
  %cmp = icmp ugt i32 %sub, %22, !dbg !4874
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !4875

if.then9:                                         ; preds = %if.end7
  br label %return, !dbg !4876

if.end10:                                         ; preds = %if.end7
  %23 = load i32, i32* %curr_write_sz, align 4, !dbg !4877
  %24 = load i32, i32* %pending_sz, align 4, !dbg !4879
  %cmp11 = icmp ule i32 %23, %24, !dbg !4880
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !4881

if.then12:                                        ; preds = %if.end10
  br label %return, !dbg !4882

if.end13:                                         ; preds = %if.end10
  %25 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4883
  %intr_in_full = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %25, i32 0, i32 39, !dbg !4884
  %26 = load i64, i64* %intr_in_full, align 8, !dbg !4885
  %inc = add i64 %26, 1, !dbg !4885
  store i64 %inc, i64* %intr_in_full, align 8, !dbg !4885
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !4886
  call void @vmbus_setevent(%struct.vmbus_channel* %27) #10, !dbg !4887
  br label %return, !dbg !4888

return:                                           ; preds = %if.end13, %if.then12, %if.then9, %if.then6, %if.then
  ret void, !dbg !4888
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hv_debug_delay_test(%struct.vmbus_channel* %channel, i32 %delay_type) #0 !dbg !4889 {
entry:
  %channel.addr = alloca %struct.vmbus_channel*, align 8
  %delay_type.addr = alloca i32, align 4
  store %struct.vmbus_channel* %channel, %struct.vmbus_channel** %channel.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  store i32 %delay_type, i32* %delay_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %delay_type.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  ret void, !dbg !4896
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_pkt_iter_avail(%struct.hv_ring_buffer_info* %rbi) #0 !dbg !4897 {
entry:
  %retval = alloca i32, align 4
  %rbi.addr = alloca %struct.hv_ring_buffer_info*, align 8
  %priv_read_loc = alloca i32, align 4
  %write_loc = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.hv_ring_buffer_info* %rbi, %struct.hv_ring_buffer_info** %rbi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %rbi.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.declare(metadata i32* %priv_read_loc, metadata !4900, metadata !DIExpression()), !dbg !4901
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !4902
  %priv_read_index = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %0, i32 0, i32 5, !dbg !4903
  %1 = load i32, i32* %priv_read_index, align 8, !dbg !4903
  store i32 %1, i32* %priv_read_loc, align 4, !dbg !4901
  call void @llvm.dbg.declare(metadata i32* %write_loc, metadata !4904, metadata !DIExpression()), !dbg !4905
  br label %do.body, !dbg !4906

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4908

do.end:                                           ; preds = %do.body
  %2 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !4906
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %2, i32 0, i32 0, !dbg !4906
  %3 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !4906
  %write_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %3, i32 0, i32 0, !dbg !4906
  %4 = load volatile i32, i32* %write_index, align 1, !dbg !4906
  store i32 %4, i32* %tmp, align 4, !dbg !4908
  %5 = load i32, i32* %tmp, align 4, !dbg !4906
  store i32 %5, i32* %write_loc, align 4, !dbg !4905
  %6 = load i32, i32* %write_loc, align 4, !dbg !4910
  %7 = load i32, i32* %priv_read_loc, align 4, !dbg !4912
  %cmp = icmp uge i32 %6, %7, !dbg !4913
  br i1 %cmp, label %if.then, label %if.else, !dbg !4914

if.then:                                          ; preds = %do.end
  %8 = load i32, i32* %write_loc, align 4, !dbg !4915
  %9 = load i32, i32* %priv_read_loc, align 4, !dbg !4916
  %sub = sub i32 %8, %9, !dbg !4917
  store i32 %sub, i32* %retval, align 4, !dbg !4918
  br label %return, !dbg !4918

if.else:                                          ; preds = %do.end
  %10 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !4919
  %ring_datasize = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %10, i32 0, i32 4, !dbg !4920
  %11 = load i32, i32* %ring_datasize, align 4, !dbg !4920
  %12 = load i32, i32* %priv_read_loc, align 4, !dbg !4921
  %sub1 = sub i32 %11, %12, !dbg !4922
  %13 = load i32, i32* %write_loc, align 4, !dbg !4923
  %add = add i32 %sub1, %13, !dbg !4924
  store i32 %add, i32* %retval, align 4, !dbg !4925
  br label %return, !dbg !4925

return:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !4926
  ret i32 %14, !dbg !4926
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hv_get_ring_buffer(%struct.hv_ring_buffer_info* %ring_info) #0 !dbg !4927 {
entry:
  %ring_info.addr = alloca %struct.hv_ring_buffer_info*, align 8
  store %struct.hv_ring_buffer_info* %ring_info, %struct.hv_ring_buffer_info** %ring_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %ring_info.addr, metadata !4930, metadata !DIExpression()), !dbg !4931
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !4932
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %0, i32 0, i32 0, !dbg !4933
  %1 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !4933
  %buffer = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %1, i32 0, i32 7, !dbg !4934
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %buffer, i64 0, i64 0, !dbg !4932
  ret i8* %arraydecay, !dbg !4935
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_pkt_iter_bytes_read(%struct.hv_ring_buffer_info* %rbi, i32 %start_read_index) #0 !dbg !4936 {
entry:
  %retval = alloca i32, align 4
  %rbi.addr = alloca %struct.hv_ring_buffer_info*, align 8
  %start_read_index.addr = alloca i32, align 4
  store %struct.hv_ring_buffer_info* %rbi, %struct.hv_ring_buffer_info** %rbi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %rbi.addr, metadata !4939, metadata !DIExpression()), !dbg !4940
  store i32 %start_read_index, i32* %start_read_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start_read_index.addr, metadata !4941, metadata !DIExpression()), !dbg !4942
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !4943
  %priv_read_index = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %0, i32 0, i32 5, !dbg !4945
  %1 = load i32, i32* %priv_read_index, align 8, !dbg !4945
  %2 = load i32, i32* %start_read_index.addr, align 4, !dbg !4946
  %cmp = icmp uge i32 %1, %2, !dbg !4947
  br i1 %cmp, label %if.then, label %if.else, !dbg !4948

if.then:                                          ; preds = %entry
  %3 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !4949
  %priv_read_index1 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %3, i32 0, i32 5, !dbg !4950
  %4 = load i32, i32* %priv_read_index1, align 8, !dbg !4950
  %5 = load i32, i32* %start_read_index.addr, align 4, !dbg !4951
  %sub = sub i32 %4, %5, !dbg !4952
  store i32 %sub, i32* %retval, align 4, !dbg !4953
  br label %return, !dbg !4953

if.else:                                          ; preds = %entry
  %6 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !4954
  %ring_datasize = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %6, i32 0, i32 4, !dbg !4955
  %7 = load i32, i32* %ring_datasize, align 4, !dbg !4955
  %8 = load i32, i32* %start_read_index.addr, align 4, !dbg !4956
  %sub2 = sub i32 %7, %8, !dbg !4957
  %9 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !4958
  %priv_read_index3 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %9, i32 0, i32 5, !dbg !4959
  %10 = load i32, i32* %priv_read_index3, align 8, !dbg !4959
  %add = add i32 %sub2, %10, !dbg !4960
  store i32 %add, i32* %retval, align 4, !dbg !4961
  br label %return, !dbg !4961

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4962
  ret i32 %11, !dbg !4962
}

; Function Attrs: noredzone
declare dso_local void @vmbus_setevent(%struct.vmbus_channel*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !4963 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4964, metadata !DIExpression()), !dbg !4968
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4977, metadata !DIExpression()), !dbg !4978
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4979, metadata !DIExpression()), !dbg !4980
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4981, metadata !DIExpression()), !dbg !4982
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4983, metadata !DIExpression()), !dbg !4987
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4989, metadata !DIExpression()), !dbg !4993
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4995, metadata !DIExpression()), !dbg !4999
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5004, metadata !DIExpression()), !dbg !5005
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5006, metadata !DIExpression()), !dbg !5007
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5008, metadata !DIExpression()), !dbg !5009
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5010, metadata !DIExpression()), !dbg !5011
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5012, metadata !DIExpression()), !dbg !5013
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5014, metadata !DIExpression()), !dbg !5015
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5016, metadata !DIExpression()), !dbg !5017
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5018, metadata !DIExpression()), !dbg !5019
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5024, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !5026, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !5028, metadata !DIExpression()), !dbg !5031
  %0 = load i64, i64* %n.addr, align 8, !dbg !5031
  store i64 %0, i64* %__a, align 8, !dbg !5031
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !5032, metadata !DIExpression()), !dbg !5031
  %1 = load i64, i64* %size.addr, align 8, !dbg !5031
  store i64 %1, i64* %__b, align 8, !dbg !5031
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !5033, metadata !DIExpression()), !dbg !5031
  store i64* %bytes, i64** %__d, align 8, !dbg !5031
  %cmp = icmp eq i64* %__a, %__b, !dbg !5031
  %conv = zext i1 %cmp to i32, !dbg !5031
  %2 = load i64*, i64** %__d, align 8, !dbg !5031
  %cmp1 = icmp eq i64* %__a, %2, !dbg !5031
  %conv2 = zext i1 %cmp1 to i32, !dbg !5031
  %3 = load i64, i64* %__a, align 8, !dbg !5031
  %4 = load i64, i64* %__b, align 8, !dbg !5031
  %5 = load i64*, i64** %__d, align 8, !dbg !5031
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !5031
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5031
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !5031
  store i64 %8, i64* %5, align 8, !dbg !5031
  %frombool = zext i1 %7 to i8, !dbg !5031
  store i8 %frombool, i8* %tmp, align 1, !dbg !5031
  %9 = load i8, i8* %tmp, align 1, !dbg !5031
  %tobool = trunc i8 %9 to i1, !dbg !5031
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #10, !dbg !5035
  %lnot = xor i1 %call, true, !dbg !5035
  %lnot3 = xor i1 %lnot, true, !dbg !5035
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5035
  %conv4 = sext i32 %lnot.ext to i64, !dbg !5035
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !5035
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5036

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !5037
  br label %return, !dbg !5037

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !5038
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5039
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !5040

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !5041
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5042
  br i1 %13, label %if.then6, label %if.end8, !dbg !5043

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !5044
  %15 = load i32, i32* %flags.addr, align 4, !dbg !5045
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !5046
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !5047
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !5048

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !5049
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !5050
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5051

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !5052
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !5053
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !5054
  %call.i.i = call i32 @get_order(i64 %21) #12, !dbg !5055
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5013
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !5056
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5057
  %24 = load i32, i32* %order.i.i, align 4, !dbg !5058
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5059
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5060
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5061
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !5062
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5062
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5062
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5062
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !5062
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5063
  br label %kmalloc.exit, !dbg !5063

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !5064
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5065
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !5065
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5067

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5068
  br label %kmalloc_index.exit.i, !dbg !5068

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5069
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !5071
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5072

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5073
  br label %kmalloc_index.exit.i, !dbg !5073

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5074
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !5076
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5077

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5078
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !5079
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5080

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5081
  br label %kmalloc_index.exit.i, !dbg !5081

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5082
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !5084
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5085

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5086
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !5087
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5088

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5089
  br label %kmalloc_index.exit.i, !dbg !5089

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5090
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !5092
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5093

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5094
  br label %kmalloc_index.exit.i, !dbg !5094

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5095
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !5097
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5098

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5099
  br label %kmalloc_index.exit.i, !dbg !5099

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5100
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !5102
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5103

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5104
  br label %kmalloc_index.exit.i, !dbg !5104

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5105
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !5107
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5108

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5109
  br label %kmalloc_index.exit.i, !dbg !5109

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5110
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !5112
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5113

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5114
  br label %kmalloc_index.exit.i, !dbg !5114

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5115
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !5117
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5118

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5119
  br label %kmalloc_index.exit.i, !dbg !5119

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5120
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !5122
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5123

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5124
  br label %kmalloc_index.exit.i, !dbg !5124

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5125
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !5127
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5128

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5129
  br label %kmalloc_index.exit.i, !dbg !5129

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5130
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !5132
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5133

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5134
  br label %kmalloc_index.exit.i, !dbg !5134

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5135
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !5137
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5138

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5139
  br label %kmalloc_index.exit.i, !dbg !5139

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5140
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !5142
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5143

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5144
  br label %kmalloc_index.exit.i, !dbg !5144

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5145
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !5147
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5148

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5149
  br label %kmalloc_index.exit.i, !dbg !5149

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5150
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !5152
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5153

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5154
  br label %kmalloc_index.exit.i, !dbg !5154

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5155
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !5157
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5158

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5159
  br label %kmalloc_index.exit.i, !dbg !5159

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5160
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !5162
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5163

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5164
  br label %kmalloc_index.exit.i, !dbg !5164

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5165
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !5167
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5168

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5169
  br label %kmalloc_index.exit.i, !dbg !5169

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5170
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !5172
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5173

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5174
  br label %kmalloc_index.exit.i, !dbg !5174

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5175
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !5177
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5178

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5179
  br label %kmalloc_index.exit.i, !dbg !5179

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5180
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !5182
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5183

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5184
  br label %kmalloc_index.exit.i, !dbg !5184

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5185
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !5187
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5188

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5189
  br label %kmalloc_index.exit.i, !dbg !5189

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5190
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !5192
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5193

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5194
  br label %kmalloc_index.exit.i, !dbg !5194

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5195
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !5197
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5198

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5199
  br label %kmalloc_index.exit.i, !dbg !5199

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5200
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !5202
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5203

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5204
  br label %kmalloc_index.exit.i, !dbg !5204

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5205
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !5207
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5208

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5209
  br label %kmalloc_index.exit.i, !dbg !5209

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !5210, !srcloc !5213
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 229) #9, !dbg !5214, !srcloc !5217
  unreachable, !dbg !5218

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !5219
  store i32 %59, i32* %index.i, align 4, !dbg !5220
  %60 = load i32, i32* %index.i, align 4, !dbg !5221
  %tobool.i = icmp ne i32 %60, 0, !dbg !5221
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5223

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5224
  br label %kmalloc.exit, !dbg !5224

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !5225
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5226
  %and.i.i = and i32 %62, 17, !dbg !5226
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5226
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5226
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5226
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5226
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5228

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5229
  br label %kmalloc_type.exit.i, !dbg !5229

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5230
  %and2.i.i = and i32 %63, 1, !dbg !5231
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5230
  %64 = zext i1 %tobool3.i.i to i64, !dbg !5230
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5230
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5232
  br label %kmalloc_type.exit.i, !dbg !5232

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !5233
  %idxprom.i = zext i32 %65 to i64, !dbg !5234
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5234
  %66 = load i32, i32* %index.i, align 4, !dbg !5235
  %idxprom6.i = zext i32 %66 to i64, !dbg !5234
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5234
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5234
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !5236
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !5237
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5238
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5239
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !5240
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5240
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5240
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5240
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !5240
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4982
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5241
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !5242
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5243
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5244
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !5245
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5246
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !5247
  store i8* %76, i8** %retval.i, align 8, !dbg !5248
  br label %kmalloc.exit, !dbg !5248

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !5249
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !5250
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !5251
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5251
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5251
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5251
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !5251
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5252
  br label %kmalloc.exit, !dbg !5252

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !5253
  store i8* %79, i8** %retval, align 8, !dbg !5254
  br label %return, !dbg !5254

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !5255
  %81 = load i32, i32* %flags.addr, align 4, !dbg !5256
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #10, !dbg !5257
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !5257
  %maskedptr = and i64 %ptrint, 7, !dbg !5257
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !5257
  call void @llvm.assume(i1 %maskcond), !dbg !5257
  store i8* %call9, i8** %retval, align 8, !dbg !5258
  br label %return, !dbg !5258

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !5259
  ret i8* %82, !dbg !5259
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !5260 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5266
  %tobool = trunc i8 %0 to i1, !dbg !5266
  %lnot = xor i1 %tobool, true, !dbg !5266
  %lnot1 = xor i1 %lnot, true, !dbg !5266
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5266
  %conv = sext i32 %lnot.ext to i64, !dbg !5266
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5266
  ret i1 %tobool2, !dbg !5267
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5268 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5272, metadata !DIExpression()), !dbg !5277
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5279, metadata !DIExpression()), !dbg !5280
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5281, metadata !DIExpression()), !dbg !5282
  %0 = load i64, i64* %size.addr, align 8, !dbg !5283
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5285
  br i1 %1, label %if.then, label %if.end447, !dbg !5286

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5287
  %tobool = icmp ne i64 %2, 0, !dbg !5287
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5290

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5291
  br label %return, !dbg !5291

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5292
  %cmp = icmp ult i64 %3, 4096, !dbg !5294
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5295

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5296
  br label %return, !dbg !5296

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub = sub i64 %4, 1, !dbg !5297
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5297
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5297

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub4 = sub i64 %6, 1, !dbg !5297
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5297
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5297

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub6 = sub i64 %8, 1, !dbg !5297
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5297
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5297

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5297

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub9 = sub i64 %9, 1, !dbg !5297
  %and = and i64 %sub9, -9223372036854775808, !dbg !5297
  %tobool10 = icmp ne i64 %and, 0, !dbg !5297
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5297

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5297

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub13 = sub i64 %10, 1, !dbg !5297
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5297
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5297
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5297

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5297

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub18 = sub i64 %11, 1, !dbg !5297
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5297
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5297
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5297

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5297

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub23 = sub i64 %12, 1, !dbg !5297
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5297
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5297
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5297

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5297

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub28 = sub i64 %13, 1, !dbg !5297
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5297
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5297
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5297

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5297

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub33 = sub i64 %14, 1, !dbg !5297
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5297
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5297
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5297

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5297

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub38 = sub i64 %15, 1, !dbg !5297
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5297
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5297
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5297

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5297

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub43 = sub i64 %16, 1, !dbg !5297
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5297
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5297
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5297

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5297

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub48 = sub i64 %17, 1, !dbg !5297
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5297
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5297
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5297

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5297

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub53 = sub i64 %18, 1, !dbg !5297
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5297
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5297
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5297

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5297

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub58 = sub i64 %19, 1, !dbg !5297
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5297
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5297
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5297

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5297

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub63 = sub i64 %20, 1, !dbg !5297
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5297
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5297
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5297

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5297

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub68 = sub i64 %21, 1, !dbg !5297
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5297
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5297
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5297

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5297

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub73 = sub i64 %22, 1, !dbg !5297
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5297
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5297
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5297

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5297

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub78 = sub i64 %23, 1, !dbg !5297
  %and79 = and i64 %sub78, 562949953421312, !dbg !5297
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5297
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5297

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5297

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub83 = sub i64 %24, 1, !dbg !5297
  %and84 = and i64 %sub83, 281474976710656, !dbg !5297
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5297
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5297

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5297

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub88 = sub i64 %25, 1, !dbg !5297
  %and89 = and i64 %sub88, 140737488355328, !dbg !5297
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5297
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5297

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5297

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub93 = sub i64 %26, 1, !dbg !5297
  %and94 = and i64 %sub93, 70368744177664, !dbg !5297
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5297
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5297

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5297

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub98 = sub i64 %27, 1, !dbg !5297
  %and99 = and i64 %sub98, 35184372088832, !dbg !5297
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5297
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5297

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5297

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub103 = sub i64 %28, 1, !dbg !5297
  %and104 = and i64 %sub103, 17592186044416, !dbg !5297
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5297
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5297

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5297

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub108 = sub i64 %29, 1, !dbg !5297
  %and109 = and i64 %sub108, 8796093022208, !dbg !5297
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5297
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5297

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5297

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub113 = sub i64 %30, 1, !dbg !5297
  %and114 = and i64 %sub113, 4398046511104, !dbg !5297
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5297
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5297

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5297

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub118 = sub i64 %31, 1, !dbg !5297
  %and119 = and i64 %sub118, 2199023255552, !dbg !5297
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5297
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5297

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5297

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub123 = sub i64 %32, 1, !dbg !5297
  %and124 = and i64 %sub123, 1099511627776, !dbg !5297
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5297
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5297

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5297

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub128 = sub i64 %33, 1, !dbg !5297
  %and129 = and i64 %sub128, 549755813888, !dbg !5297
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5297
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5297

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5297

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub133 = sub i64 %34, 1, !dbg !5297
  %and134 = and i64 %sub133, 274877906944, !dbg !5297
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5297
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5297

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5297

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub138 = sub i64 %35, 1, !dbg !5297
  %and139 = and i64 %sub138, 137438953472, !dbg !5297
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5297
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5297

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5297

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub143 = sub i64 %36, 1, !dbg !5297
  %and144 = and i64 %sub143, 68719476736, !dbg !5297
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5297
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5297

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5297

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub148 = sub i64 %37, 1, !dbg !5297
  %and149 = and i64 %sub148, 34359738368, !dbg !5297
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5297
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5297

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5297

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub153 = sub i64 %38, 1, !dbg !5297
  %and154 = and i64 %sub153, 17179869184, !dbg !5297
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5297
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5297

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5297

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub158 = sub i64 %39, 1, !dbg !5297
  %and159 = and i64 %sub158, 8589934592, !dbg !5297
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5297
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5297

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5297

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub163 = sub i64 %40, 1, !dbg !5297
  %and164 = and i64 %sub163, 4294967296, !dbg !5297
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5297
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5297

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5297

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub168 = sub i64 %41, 1, !dbg !5297
  %and169 = and i64 %sub168, 2147483648, !dbg !5297
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5297
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5297

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5297

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub173 = sub i64 %42, 1, !dbg !5297
  %and174 = and i64 %sub173, 1073741824, !dbg !5297
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5297
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5297

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5297

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub178 = sub i64 %43, 1, !dbg !5297
  %and179 = and i64 %sub178, 536870912, !dbg !5297
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5297
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5297

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5297

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub183 = sub i64 %44, 1, !dbg !5297
  %and184 = and i64 %sub183, 268435456, !dbg !5297
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5297
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5297

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5297

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub188 = sub i64 %45, 1, !dbg !5297
  %and189 = and i64 %sub188, 134217728, !dbg !5297
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5297
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5297

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5297

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub193 = sub i64 %46, 1, !dbg !5297
  %and194 = and i64 %sub193, 67108864, !dbg !5297
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5297
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5297

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5297

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub198 = sub i64 %47, 1, !dbg !5297
  %and199 = and i64 %sub198, 33554432, !dbg !5297
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5297
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5297

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5297

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub203 = sub i64 %48, 1, !dbg !5297
  %and204 = and i64 %sub203, 16777216, !dbg !5297
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5297
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5297

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5297

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub208 = sub i64 %49, 1, !dbg !5297
  %and209 = and i64 %sub208, 8388608, !dbg !5297
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5297
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5297

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5297

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub213 = sub i64 %50, 1, !dbg !5297
  %and214 = and i64 %sub213, 4194304, !dbg !5297
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5297
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5297

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5297

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub218 = sub i64 %51, 1, !dbg !5297
  %and219 = and i64 %sub218, 2097152, !dbg !5297
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5297
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5297

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5297

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub223 = sub i64 %52, 1, !dbg !5297
  %and224 = and i64 %sub223, 1048576, !dbg !5297
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5297
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5297

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5297

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub228 = sub i64 %53, 1, !dbg !5297
  %and229 = and i64 %sub228, 524288, !dbg !5297
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5297
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5297

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5297

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub233 = sub i64 %54, 1, !dbg !5297
  %and234 = and i64 %sub233, 262144, !dbg !5297
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5297
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5297

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5297

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub238 = sub i64 %55, 1, !dbg !5297
  %and239 = and i64 %sub238, 131072, !dbg !5297
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5297
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5297

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5297

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub243 = sub i64 %56, 1, !dbg !5297
  %and244 = and i64 %sub243, 65536, !dbg !5297
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5297
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5297

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5297

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub248 = sub i64 %57, 1, !dbg !5297
  %and249 = and i64 %sub248, 32768, !dbg !5297
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5297
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5297

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5297

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub253 = sub i64 %58, 1, !dbg !5297
  %and254 = and i64 %sub253, 16384, !dbg !5297
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5297
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5297

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5297

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub258 = sub i64 %59, 1, !dbg !5297
  %and259 = and i64 %sub258, 8192, !dbg !5297
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5297
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5297

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5297

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub263 = sub i64 %60, 1, !dbg !5297
  %and264 = and i64 %sub263, 4096, !dbg !5297
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5297
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5297

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5297

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub268 = sub i64 %61, 1, !dbg !5297
  %and269 = and i64 %sub268, 2048, !dbg !5297
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5297
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5297

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5297

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub273 = sub i64 %62, 1, !dbg !5297
  %and274 = and i64 %sub273, 1024, !dbg !5297
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5297
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5297

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5297

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub278 = sub i64 %63, 1, !dbg !5297
  %and279 = and i64 %sub278, 512, !dbg !5297
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5297
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5297

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5297

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub283 = sub i64 %64, 1, !dbg !5297
  %and284 = and i64 %sub283, 256, !dbg !5297
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5297
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5297

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5297

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub288 = sub i64 %65, 1, !dbg !5297
  %and289 = and i64 %sub288, 128, !dbg !5297
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5297
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5297

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5297

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub293 = sub i64 %66, 1, !dbg !5297
  %and294 = and i64 %sub293, 64, !dbg !5297
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5297
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5297

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5297

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub298 = sub i64 %67, 1, !dbg !5297
  %and299 = and i64 %sub298, 32, !dbg !5297
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5297
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5297

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5297

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub303 = sub i64 %68, 1, !dbg !5297
  %and304 = and i64 %sub303, 16, !dbg !5297
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5297
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5297

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5297

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub308 = sub i64 %69, 1, !dbg !5297
  %and309 = and i64 %sub308, 8, !dbg !5297
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5297
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5297

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5297

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub313 = sub i64 %70, 1, !dbg !5297
  %and314 = and i64 %sub313, 4, !dbg !5297
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5297
  %71 = zext i1 %tobool315 to i64, !dbg !5297
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5297
  br label %cond.end, !dbg !5297

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5297
  br label %cond.end317, !dbg !5297

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5297
  br label %cond.end319, !dbg !5297

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5297
  br label %cond.end321, !dbg !5297

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5297
  br label %cond.end323, !dbg !5297

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5297
  br label %cond.end325, !dbg !5297

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5297
  br label %cond.end327, !dbg !5297

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5297
  br label %cond.end329, !dbg !5297

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5297
  br label %cond.end331, !dbg !5297

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5297
  br label %cond.end333, !dbg !5297

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5297
  br label %cond.end335, !dbg !5297

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5297
  br label %cond.end337, !dbg !5297

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5297
  br label %cond.end339, !dbg !5297

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5297
  br label %cond.end341, !dbg !5297

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5297
  br label %cond.end343, !dbg !5297

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5297
  br label %cond.end345, !dbg !5297

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5297
  br label %cond.end347, !dbg !5297

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5297
  br label %cond.end349, !dbg !5297

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5297
  br label %cond.end351, !dbg !5297

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5297
  br label %cond.end353, !dbg !5297

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5297
  br label %cond.end355, !dbg !5297

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5297
  br label %cond.end357, !dbg !5297

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5297
  br label %cond.end359, !dbg !5297

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5297
  br label %cond.end361, !dbg !5297

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5297
  br label %cond.end363, !dbg !5297

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5297
  br label %cond.end365, !dbg !5297

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5297
  br label %cond.end367, !dbg !5297

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5297
  br label %cond.end369, !dbg !5297

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5297
  br label %cond.end371, !dbg !5297

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5297
  br label %cond.end373, !dbg !5297

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5297
  br label %cond.end375, !dbg !5297

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5297
  br label %cond.end377, !dbg !5297

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5297
  br label %cond.end379, !dbg !5297

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5297
  br label %cond.end381, !dbg !5297

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5297
  br label %cond.end383, !dbg !5297

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5297
  br label %cond.end385, !dbg !5297

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5297
  br label %cond.end387, !dbg !5297

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5297
  br label %cond.end389, !dbg !5297

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5297
  br label %cond.end391, !dbg !5297

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5297
  br label %cond.end393, !dbg !5297

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5297
  br label %cond.end395, !dbg !5297

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5297
  br label %cond.end397, !dbg !5297

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5297
  br label %cond.end399, !dbg !5297

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5297
  br label %cond.end401, !dbg !5297

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5297
  br label %cond.end403, !dbg !5297

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5297
  br label %cond.end405, !dbg !5297

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5297
  br label %cond.end407, !dbg !5297

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5297
  br label %cond.end409, !dbg !5297

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5297
  br label %cond.end411, !dbg !5297

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5297
  br label %cond.end413, !dbg !5297

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5297
  br label %cond.end415, !dbg !5297

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5297
  br label %cond.end417, !dbg !5297

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5297
  br label %cond.end419, !dbg !5297

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5297
  br label %cond.end421, !dbg !5297

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5297
  br label %cond.end423, !dbg !5297

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5297
  br label %cond.end425, !dbg !5297

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5297
  br label %cond.end427, !dbg !5297

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5297
  br label %cond.end429, !dbg !5297

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5297
  br label %cond.end431, !dbg !5297

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5297
  br label %cond.end433, !dbg !5297

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5297
  br label %cond.end435, !dbg !5297

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5297
  br label %cond.end437, !dbg !5297

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5297
  br label %cond.end440, !dbg !5297

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5297

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5297
  br label %cond.end444, !dbg !5297

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5297
  %sub443 = sub i64 %72, 1, !dbg !5297
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5297
  br label %cond.end444, !dbg !5297

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5297
  %sub446 = sub i32 %cond445, 12, !dbg !5298
  %add = add i32 %sub446, 1, !dbg !5299
  store i32 %add, i32* %retval, align 4, !dbg !5300
  br label %return, !dbg !5300

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5301
  %dec = add i64 %73, -1, !dbg !5301
  store i64 %dec, i64* %size.addr, align 8, !dbg !5301
  %74 = load i64, i64* %size.addr, align 8, !dbg !5302
  %shr = lshr i64 %74, 12, !dbg !5302
  store i64 %shr, i64* %size.addr, align 8, !dbg !5302
  %75 = load i64, i64* %size.addr, align 8, !dbg !5303
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5280
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5304
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5305
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !5304, !srcloc !5306
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5304
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5307
  %add.i = add i32 %79, 1, !dbg !5308
  store i32 %add.i, i32* %retval, align 4, !dbg !5309
  br label %return, !dbg !5309

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5310
  ret i32 %80, !dbg !5310
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5311 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5272, metadata !DIExpression()), !dbg !5315
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5279, metadata !DIExpression()), !dbg !5317
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5318, metadata !DIExpression()), !dbg !5319
  %0 = load i64, i64* %n.addr, align 8, !dbg !5320
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5317
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5321
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5322
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !5321, !srcloc !5306
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5321
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5323
  %add.i = add i32 %4, 1, !dbg !5324
  %sub = sub i32 %add.i, 1, !dbg !5325
  ret i32 %sub, !dbg !5326
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5327 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5331, metadata !DIExpression()), !dbg !5332
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5333, metadata !DIExpression()), !dbg !5334
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5335, metadata !DIExpression()), !dbg !5336
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5339
  ret i8* %0, !dbg !5340
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5341 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5342, metadata !DIExpression()), !dbg !5344
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5345, metadata !DIExpression()), !dbg !5344
  %0 = load i64, i64* %__edi, align 8, !dbg !5344
  store i64 %0, i64* %__edi, align 8, !dbg !5344
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5346, metadata !DIExpression()), !dbg !5344
  %1 = load i64, i64* %__esi, align 8, !dbg !5344
  store i64 %1, i64* %__esi, align 8, !dbg !5344
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5347, metadata !DIExpression()), !dbg !5344
  %2 = load i64, i64* %__edx, align 8, !dbg !5344
  store i64 %2, i64* %__edx, align 8, !dbg !5344
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5348, metadata !DIExpression()), !dbg !5344
  %3 = load i64, i64* %__ecx, align 8, !dbg !5344
  store i64 %3, i64* %__ecx, align 8, !dbg !5344
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5349, metadata !DIExpression()), !dbg !5344
  %4 = load i64, i64* %__eax, align 8, !dbg !5344
  store i64 %4, i64* %__eax, align 8, !dbg !5344
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5344
  %6 = call i64 @llvm.read_register.i64(metadata !4020), !dbg !5350
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #9, !dbg !5350, !srcloc !5353
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5350
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5350
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5350
  call void @llvm.write_register.i64(metadata !4020, i64 %asmresult1), !dbg !5350
  %8 = load i64, i64* %__eax, align 8, !dbg !5350
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5354, metadata !DIExpression()), !dbg !5356
  store i64 -1, i64* %__mask, align 8, !dbg !5356
  %9 = load i64, i64* %__mask, align 8, !dbg !5356
  store i64 %9, i64* %tmp, align 8, !dbg !5356
  %10 = load i64, i64* %tmp, align 8, !dbg !5356
  %and = and i64 %8, %10, !dbg !5350
  store i64 %and, i64* %__ret, align 8, !dbg !5350
  %11 = load i64, i64* %__ret, align 8, !dbg !5344
  store i64 %11, i64* %tmp2, align 8, !dbg !5357
  %12 = load i64, i64* %tmp2, align 8, !dbg !5344
  ret i64 %12, !dbg !5358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5359 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5360, metadata !DIExpression()), !dbg !5362
  %0 = load i64, i64* %__edi, align 8, !dbg !5362
  store i64 %0, i64* %__edi, align 8, !dbg !5362
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5363, metadata !DIExpression()), !dbg !5362
  %1 = load i64, i64* %__esi, align 8, !dbg !5362
  store i64 %1, i64* %__esi, align 8, !dbg !5362
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5364, metadata !DIExpression()), !dbg !5362
  %2 = load i64, i64* %__edx, align 8, !dbg !5362
  store i64 %2, i64* %__edx, align 8, !dbg !5362
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5365, metadata !DIExpression()), !dbg !5362
  %3 = load i64, i64* %__ecx, align 8, !dbg !5362
  store i64 %3, i64* %__ecx, align 8, !dbg !5362
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5366, metadata !DIExpression()), !dbg !5362
  %4 = load i64, i64* %__eax, align 8, !dbg !5362
  store i64 %4, i64* %__eax, align 8, !dbg !5362
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5362
  %6 = call i64 @llvm.read_register.i64(metadata !4020), !dbg !5362
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #9, !dbg !5362, !srcloc !5367
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5362
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5362
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5362
  call void @llvm.write_register.i64(metadata !4020, i64 %asmresult1), !dbg !5362
  ret void, !dbg !5368
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5369 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5370, metadata !DIExpression()), !dbg !5371
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5372, metadata !DIExpression()), !dbg !5374
  %0 = load i64, i64* %__edi, align 8, !dbg !5374
  store i64 %0, i64* %__edi, align 8, !dbg !5374
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5375, metadata !DIExpression()), !dbg !5374
  %1 = load i64, i64* %__esi, align 8, !dbg !5374
  store i64 %1, i64* %__esi, align 8, !dbg !5374
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5376, metadata !DIExpression()), !dbg !5374
  %2 = load i64, i64* %__edx, align 8, !dbg !5374
  store i64 %2, i64* %__edx, align 8, !dbg !5374
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5377, metadata !DIExpression()), !dbg !5374
  %3 = load i64, i64* %__ecx, align 8, !dbg !5374
  store i64 %3, i64* %__ecx, align 8, !dbg !5374
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5378, metadata !DIExpression()), !dbg !5374
  %4 = load i64, i64* %__eax, align 8, !dbg !5374
  store i64 %4, i64* %__eax, align 8, !dbg !5374
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5374
  %6 = call i64 @llvm.read_register.i64(metadata !4020), !dbg !5374
  %7 = load i64, i64* %f.addr, align 8, !dbg !5374
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #9, !dbg !5374, !srcloc !5379
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5374
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5374
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5374
  call void @llvm.write_register.i64(metadata !4020, i64 %asmresult1), !dbg !5374
  ret void, !dbg !5380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_get_ring_buffersize(%struct.hv_ring_buffer_info* %ring_info) #0 !dbg !5381 {
entry:
  %ring_info.addr = alloca %struct.hv_ring_buffer_info*, align 8
  store %struct.hv_ring_buffer_info* %ring_info, %struct.hv_ring_buffer_info** %ring_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %ring_info.addr, metadata !5382, metadata !DIExpression()), !dbg !5383
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %ring_info.addr, align 8, !dbg !5384
  %ring_datasize = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %0, i32 0, i32 4, !dbg !5385
  %1 = load i32, i32* %ring_datasize, align 4, !dbg !5385
  ret i32 %1, !dbg !5386
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind }
attributes #12 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!3994}
!llvm.named.register.rsp = !{!4020}
!llvm.module.flags = !{!4021, !4022, !4023, !4024}
!llvm.ident = !{!4025}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 187, type: !475, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "hv_ringbuffer_pre_init", scope: !3, file: !3, line: 185, type: !4, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!3 = !DIFile(filename: "drivers/hv/ring_buffer.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel", file: !8, line: 773, size: 6592, elements: !9)
!8 = !DIFile(filename: "./include/linux/hyperv.h", directory: "/home/lizy2001/genbc/linux")
!9 = !{!10, !17, !3757, !3764, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3881, !3882, !3935, !3936, !3937, !3938, !3939, !3960, !3961, !3962, !3966, !3967, !3973, !3974, !3975, !3976, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "listentry", scope: !7, file: !8, line: 774, baseType: !11, size: 128)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !12, line: 178, size: 128, elements: !13)
!12 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !16}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !12, line: 179, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !11, file: !12, line: 179, baseType: !15, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "device_obj", scope: !7, file: !8, line: 776, baseType: !18, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_device", file: !8, line: 1219, size: 6144, elements: !20)
!20 = !{!21, !33, !34, !39, !40, !3753, !3754, !3755, !3756}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "dev_type", scope: !19, file: !8, line: 1221, baseType: !22, size: 128)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !23, line: 25, baseType: !24)
!23 = !DIFile(filename: "./include/uapi/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 23, size: 128, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !24, file: !23, line: 24, baseType: !27, size: 128)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !31)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !29, line: 21, baseType: !30)
!29 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !{!32}
!32 = !DISubrange(count: 16)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "dev_instance", scope: !19, file: !8, line: 1224, baseType: !22, size: 128, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !19, file: !8, line: 1225, baseType: !35, size: 16, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !36, line: 19, baseType: !37)
!36 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !29, line: 24, baseType: !38)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !19, file: !8, line: 1226, baseType: !35, size: 16, offset: 272)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !19, file: !8, line: 1228, baseType: !41, size: 5568, offset: 320)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !42, line: 461, size: 5568, elements: !43)
!42 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !3279, !3281, !3284, !3285, !3337, !3434, !3435, !3436, !3437, !3438, !3453, !3571, !3584, !3588, !3589, !3593, !3595, !3596, !3597, !3601, !3607, !3608, !3611, !3615, !3705, !3706, !3707, !3708, !3709, !3741, !3742, !3743, !3746, !3749, !3750, !3751, !3752}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !41, file: !42, line: 462, baseType: !45, size: 512)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !46, line: 64, size: 512, elements: !47)
!46 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !52, !53, !55, !116, !3129, !3269, !3274, !3275, !3276, !3277, !3278}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !45, file: !46, line: 65, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !45, file: !46, line: 66, baseType: !11, size: 128, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !45, file: !46, line: 67, baseType: !54, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !45, file: !46, line: 68, baseType: !56, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !46, line: 192, size: 704, elements: !58)
!58 = !{!59, !60, !76, !77}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !57, file: !46, line: 193, baseType: !11, size: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !57, file: !46, line: 194, baseType: !61, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !62, line: 83, baseType: !63)
!62 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !62, line: 71, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, scope: !63, file: !62, line: 72, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !63, file: !62, line: 72, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !66, file: !62, line: 73, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !62, line: 20, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !69, file: !62, line: 21, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !73, line: 25, baseType: !74)
!73 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 25, elements: !75)
!75 = !{}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !57, file: !46, line: 195, baseType: !45, size: 512, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !57, file: !46, line: 196, baseType: !78, size: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !46, line: 156, size: 192, elements: !81)
!81 = !{!82, !88, !93}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !80, file: !46, line: 157, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !56, !54}
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !46, line: 158, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!49, !56, !54}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !80, file: !46, line: 159, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!87, !56, !54, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !46, line: 148, size: 20736, elements: !100)
!100 = !{!101, !106, !110, !111, !115}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !99, file: !46, line: 149, baseType: !102, size: 192)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 192, elements: !104)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!104 = !{!105}
!105 = !DISubrange(count: 3)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !99, file: !46, line: 150, baseType: !107, size: 4096, offset: 192)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 4096, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !99, file: !46, line: 151, baseType: !87, size: 32, offset: 4288)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !99, file: !46, line: 152, baseType: !112, size: 16384, offset: 4320)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 16384, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 2048)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !99, file: !46, line: 153, baseType: !87, size: 32, offset: 20704)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !45, file: !46, line: 69, baseType: !117, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !46, line: 138, size: 448, elements: !119)
!119 = !{!120, !124, !153, !155, !3085, !3119, !3123}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !118, file: !46, line: 139, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !54}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !118, file: !46, line: 140, baseType: !125, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !128, line: 230, size: 128, elements: !129)
!128 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !145}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !127, file: !128, line: 231, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!134, !54, !139, !103}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !12, line: 60, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !136, line: 73, baseType: !137)
!136 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !136, line: 15, baseType: !138)
!138 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !128, line: 30, size: 128, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !128, line: 31, baseType: !49, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !140, file: !128, line: 32, baseType: !144, size: 16, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !12, line: 19, baseType: !38)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !127, file: !128, line: 232, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!134, !54, !139, !49, !149}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 55, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !136, line: 72, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !136, line: 16, baseType: !152)
!152 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !118, file: !46, line: 141, baseType: !154, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !118, file: !46, line: 142, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !128, line: 84, size: 320, elements: !160)
!160 = !{!161, !162, !166, !3082, !3083}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !159, file: !128, line: 85, baseType: !49, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !159, file: !128, line: 86, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!144, !54, !139, !87}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !159, file: !128, line: 88, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!144, !54, !170, !87}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !128, line: 168, size: 448, elements: !172)
!172 = !{!173, !174, !175, !177, !3077, !3078}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !171, file: !128, line: 169, baseType: !140, size: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !171, file: !128, line: 170, baseType: !149, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !171, file: !128, line: 171, baseType: !176, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !171, file: !128, line: 172, baseType: !178, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!134, !181, !54, !170, !103, !359, !149}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !183, line: 916, size: 1856, align: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!184 = !{!185, !203, !3027, !3028, !3029, !3030, !3039, !3040, !3041, !3042, !3043, !3044, !3060, !3061, !3070, !3071, !3072, !3073, !3074, !3075, !3076}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !182, file: !183, line: 920, baseType: !186, size: 128)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !182, file: !183, line: 917, size: 128, elements: !187)
!187 = !{!188, !194}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !186, file: !183, line: 918, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !190, line: 58, size: 64, elements: !191)
!190 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !190, line: 59, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !186, file: !183, line: 919, baseType: !195, size: 128, align: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !12, line: 216, size: 128, align: 64, elements: !196)
!196 = !{!197, !199}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !12, line: 217, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !195, file: !12, line: 218, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !198}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !182, file: !183, line: 921, baseType: !204, size: 128, offset: 128)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !205, line: 8, size: 128, elements: !206)
!205 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!206 = !{!207, !211}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !204, file: !205, line: 9, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !210, line: 18, flags: DIFlagFwdDecl)
!210 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!211 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !204, file: !205, line: 10, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !210, line: 89, size: 1536, elements: !214)
!214 = !{!215, !217, !227, !235, !236, !256, !2995, !2997, !3009, !3010, !3011, !3012, !3013, !3019, !3020, !3021}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !213, file: !210, line: 91, baseType: !216, size: 32)
!216 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !213, file: !210, line: 92, baseType: !218, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !219, line: 277, baseType: !220)
!219 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !219, line: 277, size: 32, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !220, file: !219, line: 277, baseType: !223, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !219, line: 70, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !219, line: 65, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !224, file: !219, line: 66, baseType: !216, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !213, file: !210, line: 93, baseType: !228, size: 128, offset: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !229, line: 38, size: 128, elements: !230)
!229 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !229, line: 39, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !228, file: !229, line: 39, baseType: !234, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !213, file: !210, line: 94, baseType: !212, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !213, file: !210, line: 95, baseType: !237, size: 128, offset: 256)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !210, line: 47, size: 128, elements: !238)
!238 = !{!239, !253}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !210, line: 48, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !210, line: 48, size: 64, elements: !241)
!241 = !{!242, !249}
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !240, file: !210, line: 49, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !240, file: !210, line: 49, size: 64, elements: !244)
!244 = !{!245, !248}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !243, file: !210, line: 50, baseType: !246, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !36, line: 21, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !29, line: 27, baseType: !216)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !210, line: 50, baseType: !246, size: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !240, file: !210, line: 52, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !36, line: 23, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !29, line: 31, baseType: !252)
!252 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !237, file: !210, line: 54, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !213, file: !210, line: 96, baseType: !257, size: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !183, line: 610, size: 4224, elements: !259)
!259 = !{!260, !261, !262, !270, !277, !278, !426, !2706, !2707, !2708, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2971, !2979, !2980, !2981, !2991, !2992, !2993, !2994}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !258, file: !183, line: 611, baseType: !144, size: 16)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !258, file: !183, line: 612, baseType: !38, size: 16, offset: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !258, file: !183, line: 613, baseType: !263, size: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !264, line: 23, baseType: !265)
!264 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 21, size: 32, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !265, file: !264, line: 22, baseType: !268, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !12, line: 32, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !136, line: 49, baseType: !216)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !258, file: !183, line: 614, baseType: !271, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !264, line: 28, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 26, size: 32, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !272, file: !264, line: 27, baseType: !275, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !12, line: 33, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !136, line: 50, baseType: !216)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !258, file: !183, line: 615, baseType: !216, size: 32, offset: 96)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !258, file: !183, line: 622, baseType: !279, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !183, line: 1864, size: 1536, align: 512, elements: !282)
!282 = !{!283, !287, !300, !304, !310, !314, !320, !324, !328, !332, !336, !337, !343, !347, !373, !402, !406, !412, !417, !421, !422}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !281, file: !183, line: 1865, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!212, !257, !212, !216}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !281, file: !183, line: 1866, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!49, !212, !257, !291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !293, line: 10, size: 128, elements: !294)
!293 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!294 = !{!295, !299}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !292, file: !293, line: 11, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !176}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !292, file: !293, line: 12, baseType: !176, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !281, file: !183, line: 1867, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!87, !257, !87}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !281, file: !183, line: 1868, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!308, !257, !87}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !183, line: 581, flags: DIFlagFwdDecl)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !281, file: !183, line: 1870, baseType: !311, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!87, !212, !103, !87}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !281, file: !183, line: 1872, baseType: !315, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!87, !257, !212, !144, !318}
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !12, line: 30, baseType: !319)
!319 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !281, file: !183, line: 1873, baseType: !321, size: 64, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!87, !212, !257, !212}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !281, file: !183, line: 1874, baseType: !325, size: 64, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!87, !257, !212}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !281, file: !183, line: 1875, baseType: !329, size: 64, offset: 512)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!87, !257, !212, !49}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !281, file: !183, line: 1876, baseType: !333, size: 64, offset: 576)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!87, !257, !212, !144}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !281, file: !183, line: 1877, baseType: !325, size: 64, offset: 640)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !281, file: !183, line: 1878, baseType: !338, size: 64, offset: 704)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!87, !257, !212, !144, !341}
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !12, line: 16, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !12, line: 13, baseType: !246)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !281, file: !183, line: 1879, baseType: !344, size: 64, offset: 768)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!87, !257, !212, !257, !212, !216}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !281, file: !183, line: 1881, baseType: !348, size: 64, offset: 832)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!87, !212, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !183, line: 219, size: 640, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !362, !370, !371, !372}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !352, file: !183, line: 220, baseType: !216, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !352, file: !183, line: 221, baseType: !144, size: 16, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !352, file: !183, line: 222, baseType: !263, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !352, file: !183, line: 223, baseType: !271, size: 32, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !352, file: !183, line: 224, baseType: !359, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !12, line: 46, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !136, line: 88, baseType: !361)
!361 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !352, file: !183, line: 225, baseType: !363, size: 128, offset: 192)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !364, line: 13, size: 128, elements: !365)
!364 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!365 = !{!366, !369}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !363, file: !364, line: 14, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !364, line: 8, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !29, line: 30, baseType: !361)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !363, file: !364, line: 15, baseType: !138, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !352, file: !183, line: 226, baseType: !363, size: 128, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !352, file: !183, line: 227, baseType: !363, size: 128, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !352, file: !183, line: 234, baseType: !181, size: 64, offset: 576)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !281, file: !183, line: 1882, baseType: !374, size: 64, offset: 896)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!87, !377, !379, !246, !216}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !381, line: 22, size: 1152, elements: !382)
!381 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!382 = !{!383, !384, !385, !386, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !380, file: !381, line: 23, baseType: !246, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !380, file: !381, line: 24, baseType: !144, size: 16, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !380, file: !381, line: 25, baseType: !216, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !380, file: !381, line: 26, baseType: !387, size: 32, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 104, baseType: !246)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !380, file: !381, line: 27, baseType: !250, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !380, file: !381, line: 28, baseType: !250, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !380, file: !381, line: 37, baseType: !250, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !380, file: !381, line: 38, baseType: !341, size: 32, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !380, file: !381, line: 39, baseType: !341, size: 32, offset: 352)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !380, file: !381, line: 40, baseType: !263, size: 32, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !380, file: !381, line: 41, baseType: !271, size: 32, offset: 416)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !380, file: !381, line: 42, baseType: !359, size: 64, offset: 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !380, file: !381, line: 43, baseType: !363, size: 128, offset: 512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !380, file: !381, line: 44, baseType: !363, size: 128, offset: 640)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !380, file: !381, line: 45, baseType: !363, size: 128, offset: 768)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !380, file: !381, line: 46, baseType: !363, size: 128, offset: 896)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !380, file: !381, line: 47, baseType: !250, size: 64, offset: 1024)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !380, file: !381, line: 48, baseType: !250, size: 64, offset: 1088)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !281, file: !183, line: 1883, baseType: !403, size: 64, offset: 960)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!134, !212, !103, !149}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !281, file: !183, line: 1884, baseType: !407, size: 64, offset: 1024)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!87, !257, !410, !250, !250}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !183, line: 50, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !281, file: !183, line: 1886, baseType: !413, size: 64, offset: 1088)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!87, !257, !416, !87}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !281, file: !183, line: 1887, baseType: !418, size: 64, offset: 1152)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!87, !257, !212, !181, !216, !144}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !281, file: !183, line: 1890, baseType: !333, size: 64, offset: 1216)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !281, file: !183, line: 1891, baseType: !423, size: 64, offset: 1280)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!87, !257, !308, !87}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !258, file: !183, line: 623, baseType: !427, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !183, line: 1416, size: 9472, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !435, !484, !2308, !2396, !2479, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2495, !2499, !2500, !2503, !2504, !2507, !2508, !2509, !2550, !2577, !2578, !2579, !2580, !2581, !2582, !2585, !2587, !2593, !2594, !2596, !2597, !2598, !2657, !2658, !2673, !2674, !2675, !2676, !2677, !2680, !2681, !2682, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !428, file: !183, line: 1417, baseType: !11, size: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !428, file: !183, line: 1418, baseType: !341, size: 32, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !428, file: !183, line: 1419, baseType: !30, size: 8, offset: 160)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !428, file: !183, line: 1420, baseType: !152, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !428, file: !183, line: 1421, baseType: !359, size: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !428, file: !183, line: 1422, baseType: !436, size: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !183, line: 2228, size: 576, elements: !438)
!438 = !{!439, !440, !441, !447, !451, !455, !459, !463, !464, !474, !477, !478, !479, !481, !482, !483}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !437, file: !183, line: 2229, baseType: !49, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !437, file: !183, line: 2230, baseType: !87, size: 32, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !437, file: !183, line: 2238, baseType: !442, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!87, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !183, line: 69, flags: DIFlagFwdDecl)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !437, file: !183, line: 2239, baseType: !448, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !183, line: 70, flags: DIFlagFwdDecl)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !437, file: !183, line: 2240, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!212, !436, !87, !49, !176}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !437, file: !183, line: 2242, baseType: !456, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !427}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !437, file: !183, line: 2243, baseType: !460, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !462, line: 76, flags: DIFlagFwdDecl)
!462 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !183, line: 2244, baseType: !436, size: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !437, file: !183, line: 2245, baseType: !465, size: 64, offset: 512)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !12, line: 182, size: 64, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !465, file: !12, line: 183, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !12, line: 186, size: 128, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !12, line: 187, baseType: !468, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !469, file: !12, line: 187, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !437, file: !183, line: 2247, baseType: !475, offset: 576)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !476, line: 187, elements: !75)
!476 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!477 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !437, file: !183, line: 2248, baseType: !475, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !437, file: !183, line: 2249, baseType: !475, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !437, file: !183, line: 2250, baseType: !480, offset: 576)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, elements: !104)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !437, file: !183, line: 2252, baseType: !475, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !437, file: !183, line: 2253, baseType: !475, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !437, file: !183, line: 2254, baseType: !475, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !428, file: !183, line: 1423, baseType: !485, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !183, line: 1935, size: 1472, elements: !488)
!488 = !{!489, !493, !497, !498, !502, !509, !513, !514, !515, !519, !523, !524, !525, !526, !532, !537, !538, !545, !546, !547, !548, !2292, !2307}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !487, file: !183, line: 1936, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!257, !427}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !487, file: !183, line: 1937, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !257}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !487, file: !183, line: 1938, baseType: !494, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !487, file: !183, line: 1940, baseType: !499, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !257, !87}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !487, file: !183, line: 1941, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!87, !257, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !508, line: 40, flags: DIFlagFwdDecl)
!508 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!509 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !487, file: !183, line: 1942, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!87, !257}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !487, file: !183, line: 1943, baseType: !494, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !487, file: !183, line: 1944, baseType: !456, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !487, file: !183, line: 1945, baseType: !516, size: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!87, !427, !87}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !487, file: !183, line: 1946, baseType: !520, size: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!87, !427}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !487, file: !183, line: 1947, baseType: !520, size: 64, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !487, file: !183, line: 1948, baseType: !520, size: 64, offset: 704)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !487, file: !183, line: 1949, baseType: !520, size: 64, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !487, file: !183, line: 1950, baseType: !527, size: 64, offset: 832)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!87, !212, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !183, line: 57, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !487, file: !183, line: 1951, baseType: !533, size: 64, offset: 896)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!87, !427, !536, !103}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !487, file: !183, line: 1952, baseType: !456, size: 64, offset: 960)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !487, file: !183, line: 1954, baseType: !539, size: 64, offset: 1024)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!87, !542, !212}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !544, line: 539, flags: DIFlagFwdDecl)
!544 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!545 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !487, file: !183, line: 1955, baseType: !539, size: 64, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !487, file: !183, line: 1956, baseType: !539, size: 64, offset: 1152)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !487, file: !183, line: 1957, baseType: !539, size: 64, offset: 1216)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !487, file: !183, line: 1963, baseType: !549, size: 64, offset: 1280)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!87, !427, !552, !575}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !554, line: 68, size: 512, align: 128, elements: !555)
!554 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!555 = !{!556, !557, !2284, !2291}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !553, file: !554, line: 69, baseType: !152, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, scope: !553, file: !554, line: 77, baseType: !558, size: 320, offset: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !553, file: !554, line: 77, size: 320, elements: !559)
!559 = !{!560, !793, !798, !826, !834, !840, !2208, !2283}
!560 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !554, line: 78, baseType: !561, size: 320)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !558, file: !554, line: 78, size: 320, elements: !562)
!562 = !{!563, !564, !791, !792}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !561, file: !554, line: 84, baseType: !11, size: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !561, file: !554, line: 86, baseType: !565, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !183, line: 451, size: 1216, align: 64, elements: !567)
!567 = !{!568, !569, !577, !578, !583, !598, !614, !615, !616, !617, !784, !785, !788, !789, !790}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !566, file: !183, line: 452, baseType: !257, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !566, file: !183, line: 453, baseType: !570, size: 128, offset: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !571, line: 292, size: 128, elements: !572)
!571 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!572 = !{!573, !574, !576}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !570, file: !571, line: 293, baseType: !61)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !570, file: !571, line: 295, baseType: !575, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !12, line: 148, baseType: !216)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !570, file: !571, line: 296, baseType: !176, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !566, file: !183, line: 454, baseType: !575, size: 32, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !566, file: !183, line: 455, baseType: !579, size: 32, offset: 224)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !12, line: 168, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 166, size: 32, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !580, file: !12, line: 167, baseType: !87, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !566, file: !183, line: 460, baseType: !584, size: 128, offset: 256)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !585, line: 125, size: 128, elements: !586)
!585 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!586 = !{!587, !597}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !584, file: !585, line: 126, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !585, line: 31, size: 64, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !588, file: !585, line: 32, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !585, line: 24, size: 192, align: 64, elements: !593)
!593 = !{!594, !595, !596}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !592, file: !585, line: 25, baseType: !152, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !592, file: !585, line: 26, baseType: !591, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !592, file: !585, line: 27, baseType: !591, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !584, file: !585, line: 127, baseType: !591, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !566, file: !183, line: 461, baseType: !599, size: 256, offset: 384)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !600, line: 35, size: 256, elements: !601)
!600 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!601 = !{!602, !610, !611, !613}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !599, file: !600, line: 36, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !604, line: 13, baseType: !605)
!604 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !12, line: 175, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 173, size: 64, elements: !607)
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !606, file: !12, line: 174, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !36, line: 22, baseType: !368)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !599, file: !600, line: 42, baseType: !603, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !599, file: !600, line: 46, baseType: !612, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !62, line: 29, baseType: !69)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !599, file: !600, line: 47, baseType: !11, size: 128, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !566, file: !183, line: 462, baseType: !152, size: 64, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !566, file: !183, line: 463, baseType: !152, size: 64, offset: 704)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !566, file: !183, line: 464, baseType: !152, size: 64, offset: 768)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !566, file: !183, line: 465, baseType: !618, size: 64, offset: 832)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !183, line: 367, size: 1408, elements: !621)
!621 = !{!622, !626, !630, !634, !638, !642, !648, !654, !658, !663, !667, !671, !675, !741, !752, !758, !759, !760, !764, !769, !773, !780}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !620, file: !183, line: 368, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!87, !552, !506}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !620, file: !183, line: 369, baseType: !627, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!87, !181, !552}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !620, file: !183, line: 372, baseType: !631, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!87, !565, !506}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !620, file: !183, line: 375, baseType: !635, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!87, !552}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !620, file: !183, line: 381, baseType: !639, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!87, !181, !565, !15, !216}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !620, file: !183, line: 383, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !646}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !183, line: 290, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !620, file: !183, line: 385, baseType: !649, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!87, !181, !565, !359, !216, !216, !652, !653}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !620, file: !183, line: 388, baseType: !655, size: 64, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!87, !181, !565, !359, !216, !216, !552, !176}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !620, file: !183, line: 393, baseType: !659, size: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!662, !565, !662}
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !12, line: 125, baseType: !250)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !620, file: !183, line: 394, baseType: !664, size: 64, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !552, !216, !216}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !620, file: !183, line: 395, baseType: !668, size: 64, offset: 640)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!87, !552, !575}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !620, file: !183, line: 396, baseType: !672, size: 64, offset: 704)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !552}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !620, file: !183, line: 397, baseType: !676, size: 64, offset: 768)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!134, !679, !699}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !183, line: 320, size: 384, elements: !681)
!681 = !{!682, !683, !684, !688, !689, !690, !691, !692}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !680, file: !183, line: 321, baseType: !181, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !680, file: !183, line: 326, baseType: !359, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !680, file: !183, line: 327, baseType: !685, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !679, !138, !138}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !680, file: !183, line: 328, baseType: !176, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !680, file: !183, line: 329, baseType: !87, size: 32, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !680, file: !183, line: 330, baseType: !35, size: 16, offset: 288)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !680, file: !183, line: 331, baseType: !35, size: 16, offset: 304)
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !680, file: !183, line: 332, baseType: !693, size: 64, offset: 320)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !183, line: 332, size: 64, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !693, file: !183, line: 333, baseType: !216, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !693, file: !183, line: 334, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !183, line: 334, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !701, line: 29, size: 320, elements: !702)
!701 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!702 = !{!703, !704, !705, !706, !732}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !700, file: !701, line: 35, baseType: !216, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !700, file: !701, line: 36, baseType: !149, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !700, file: !701, line: 37, baseType: !149, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !701, line: 38, baseType: !707, size: 64, offset: 192)
!707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !701, line: 38, size: 64, elements: !708)
!708 = !{!709, !717, !724, !728}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !707, file: !701, line: 39, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !713, line: 17, size: 128, elements: !714)
!713 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !712, file: !713, line: 19, baseType: !176, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !712, file: !713, line: 20, baseType: !150, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !707, file: !701, line: 40, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !701, line: 15, size: 128, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !720, file: !701, line: 16, baseType: !176, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !720, file: !701, line: 17, baseType: !149, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !707, file: !701, line: 41, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !701, line: 41, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !707, file: !701, line: 42, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !731, line: 53, flags: DIFlagFwdDecl)
!731 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!732 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !701, line: 44, baseType: !733, size: 64, offset: 256)
!733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !701, line: 44, size: 64, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !733, file: !701, line: 45, baseType: !152, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, scope: !733, file: !701, line: 46, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !733, file: !701, line: 46, size: 64, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !737, file: !701, line: 47, baseType: !216, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !737, file: !701, line: 48, baseType: !216, size: 32, offset: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !620, file: !183, line: 402, baseType: !742, size: 64, offset: 832)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!87, !565, !552, !552, !745}
!745 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !746, line: 15, baseType: !216, size: 32, elements: !747)
!746 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!747 = !{!748, !749, !750, !751}
!748 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!749 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!750 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!751 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !620, file: !183, line: 404, baseType: !753, size: 64, offset: 896)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!318, !552, !756}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !757, line: 305, baseType: !216)
!757 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!758 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !620, file: !183, line: 405, baseType: !672, size: 64, offset: 960)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !620, file: !183, line: 406, baseType: !635, size: 64, offset: 1024)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !620, file: !183, line: 407, baseType: !761, size: 64, offset: 1088)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!87, !552, !152, !152}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !620, file: !183, line: 409, baseType: !765, size: 64, offset: 1152)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !552, !768, !768}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !620, file: !183, line: 410, baseType: !770, size: 64, offset: 1216)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!87, !565, !552}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !620, file: !183, line: 413, baseType: !774, size: 64, offset: 1280)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!87, !777, !181, !779}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !183, line: 61, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !620, file: !183, line: 415, baseType: !781, size: 64, offset: 1344)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !181}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !183, line: 466, baseType: !152, size: 64, offset: 896)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !566, file: !183, line: 467, baseType: !786, size: 32, offset: 960)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !787, line: 8, baseType: !246)
!787 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !566, file: !183, line: 468, baseType: !61, offset: 992)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !566, file: !183, line: 469, baseType: !11, size: 128, offset: 1024)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !566, file: !183, line: 470, baseType: !176, size: 64, offset: 1152)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !561, file: !554, line: 87, baseType: !152, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !561, file: !554, line: 94, baseType: !152, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !554, line: 96, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !558, file: !554, line: 96, size: 64, elements: !795)
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !794, file: !554, line: 101, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !12, line: 143, baseType: !250)
!798 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !554, line: 103, baseType: !799, size: 320)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !558, file: !554, line: 103, size: 320, elements: !800)
!800 = !{!801, !811, !814, !815}
!801 = !DIDerivedType(tag: DW_TAG_member, scope: !799, file: !554, line: 104, baseType: !802, size: 128)
!802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !554, line: 104, size: 128, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !802, file: !554, line: 105, baseType: !11, size: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !554, line: 106, baseType: !806, size: 128)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !802, file: !554, line: 106, size: 128, elements: !807)
!807 = !{!808, !809, !810}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !806, file: !554, line: 107, baseType: !552, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !806, file: !554, line: 109, baseType: !87, size: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !806, file: !554, line: 110, baseType: !87, size: 32, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !799, file: !554, line: 117, baseType: !812, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !554, line: 117, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !799, file: !554, line: 119, baseType: !176, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !799, file: !554, line: 120, baseType: !816, size: 64, offset: 256)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !554, line: 120, size: 64, elements: !817)
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !816, file: !554, line: 121, baseType: !176, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !816, file: !554, line: 122, baseType: !152, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !554, line: 123, baseType: !821, size: 32)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !816, file: !554, line: 123, size: 32, elements: !822)
!822 = !{!823, !824, !825}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !821, file: !554, line: 124, baseType: !216, size: 16, flags: DIFlagBitField, extraData: i64 0)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !821, file: !554, line: 125, baseType: !216, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !821, file: !554, line: 126, baseType: !216, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !554, line: 130, baseType: !827, size: 192)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !558, file: !554, line: 130, size: 192, elements: !828)
!828 = !{!829, !830, !831, !832, !833}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !827, file: !554, line: 131, baseType: !152, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !827, file: !554, line: 134, baseType: !30, size: 8, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !827, file: !554, line: 135, baseType: !30, size: 8, offset: 72)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !827, file: !554, line: 136, baseType: !579, size: 32, offset: 96)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !827, file: !554, line: 137, baseType: !216, size: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !554, line: 139, baseType: !835, size: 256)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !558, file: !554, line: 139, size: 256, elements: !836)
!836 = !{!837, !838, !839}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !835, file: !554, line: 140, baseType: !152, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !835, file: !554, line: 141, baseType: !579, size: 32, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !835, file: !554, line: 143, baseType: !11, size: 128, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !554, line: 145, baseType: !841, size: 256)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !558, file: !554, line: 145, size: 256, elements: !842)
!842 = !{!843, !844, !846, !847, !2207}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !841, file: !554, line: 146, baseType: !152, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !841, file: !554, line: 147, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !544, line: 509, baseType: !552)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !841, file: !554, line: 148, baseType: !152, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !554, line: 149, baseType: !848, size: 64, offset: 192)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !554, line: 149, size: 64, elements: !849)
!849 = !{!850, !2206}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !848, file: !554, line: 150, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !554, line: 388, size: 7296, elements: !853)
!853 = !{!854, !2202}
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !554, line: 389, baseType: !855, size: 7296)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !852, file: !554, line: 389, size: 7296, elements: !856)
!856 = !{!857, !980, !981, !982, !986, !987, !988, !989, !990, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1031, !1039, !1042, !1072, !1073, !2186, !2187, !2190, !2191, !2192, !2195, !2196, !2197, !2200, !2201}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !855, file: !554, line: 390, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !554, line: 305, size: 1472, elements: !860)
!860 = !{!861, !862, !863, !864, !865, !866, !867, !868, !875, !876, !881, !882, !885, !974, !975, !976, !977, !978}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !859, file: !554, line: 308, baseType: !152, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !859, file: !554, line: 309, baseType: !152, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !859, file: !554, line: 313, baseType: !858, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !859, file: !554, line: 313, baseType: !858, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !859, file: !554, line: 315, baseType: !592, size: 192, align: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !859, file: !554, line: 323, baseType: !152, size: 64, offset: 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !859, file: !554, line: 327, baseType: !851, size: 64, offset: 512)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !859, file: !554, line: 333, baseType: !869, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !544, line: 284, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !544, line: 284, size: 64, elements: !871)
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !870, file: !544, line: 284, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !874, line: 19, baseType: !152)
!874 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!875 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !859, file: !554, line: 334, baseType: !152, size: 64, offset: 640)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !859, file: !554, line: 343, baseType: !877, size: 256, offset: 704)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !554, line: 340, size: 256, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !877, file: !554, line: 341, baseType: !592, size: 192, align: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !877, file: !554, line: 342, baseType: !152, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !859, file: !554, line: 351, baseType: !11, size: 128, offset: 960)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !859, file: !554, line: 353, baseType: !883, size: 64, offset: 1088)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !554, line: 353, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !859, file: !554, line: 356, baseType: !886, size: 64, offset: 1152)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !508, line: 557, size: 832, elements: !889)
!889 = !{!890, !894, !895, !899, !903, !943, !952, !956, !960, !961, !962, !966, !970}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !888, file: !508, line: 558, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !858}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !888, file: !508, line: 559, baseType: !891, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !888, file: !508, line: 560, baseType: !896, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!87, !858, !152}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !888, file: !508, line: 561, baseType: !900, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!87, !858}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !888, file: !508, line: 562, baseType: !904, size: 64, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !554, line: 682, baseType: !216)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !508, line: 508, size: 768, elements: !910)
!910 = !{!911, !912, !913, !914, !915, !916, !923, !930, !936, !937, !938, !940, !942}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !909, file: !508, line: 509, baseType: !858, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !909, file: !508, line: 510, baseType: !216, size: 32, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !909, file: !508, line: 511, baseType: !575, size: 32, offset: 96)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !909, file: !508, line: 512, baseType: !152, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !909, file: !508, line: 513, baseType: !152, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !909, file: !508, line: 514, baseType: !917, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !544, line: 385, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 385, size: 64, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !919, file: !544, line: 385, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !874, line: 15, baseType: !152)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !909, file: !508, line: 516, baseType: !924, size: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !544, line: 359, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 359, size: 64, elements: !927)
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !926, file: !544, line: 359, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !874, line: 16, baseType: !152)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !909, file: !508, line: 519, baseType: !931, size: 64, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !874, line: 21, baseType: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !874, line: 21, size: 64, elements: !933)
!933 = !{!934}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !932, file: !874, line: 21, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !874, line: 14, baseType: !152)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !909, file: !508, line: 521, baseType: !552, size: 64, offset: 448)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !909, file: !508, line: 522, baseType: !552, size: 64, offset: 512)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !909, file: !508, line: 528, baseType: !939, size: 64, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !909, file: !508, line: 532, baseType: !941, size: 64, offset: 640)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !909, file: !508, line: 536, baseType: !845, size: 64, offset: 704)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !888, file: !508, line: 563, baseType: !944, size: 64, offset: 320)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!907, !908, !947}
!947 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !508, line: 546, baseType: !216, size: 32, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!950 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!951 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !888, file: !508, line: 565, baseType: !953, size: 64, offset: 384)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !908, !152, !152}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !888, file: !508, line: 567, baseType: !957, size: 64, offset: 448)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!152, !858}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !888, file: !508, line: 571, baseType: !904, size: 64, offset: 512)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !888, file: !508, line: 574, baseType: !904, size: 64, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !888, file: !508, line: 579, baseType: !963, size: 64, offset: 640)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!87, !858, !152, !176, !87, !87}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !888, file: !508, line: 585, baseType: !967, size: 64, offset: 704)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!49, !858}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !888, file: !508, line: 615, baseType: !971, size: 64, offset: 768)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!552, !858, !152}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !859, file: !554, line: 359, baseType: !152, size: 64, offset: 1216)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !859, file: !554, line: 361, baseType: !181, size: 64, offset: 1280)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !859, file: !554, line: 362, baseType: !176, size: 64, offset: 1344)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !859, file: !554, line: 365, baseType: !603, size: 64, offset: 1408)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !859, file: !554, line: 373, baseType: !979, offset: 1472)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !554, line: 296, elements: !75)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !855, file: !554, line: 391, baseType: !588, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !855, file: !554, line: 392, baseType: !250, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !855, file: !554, line: 394, baseType: !983, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!152, !181, !152, !152, !152, !152}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !855, file: !554, line: 398, baseType: !152, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !855, file: !554, line: 399, baseType: !152, size: 64, offset: 320)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !855, file: !554, line: 405, baseType: !152, size: 64, offset: 384)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !855, file: !554, line: 406, baseType: !152, size: 64, offset: 448)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !855, file: !554, line: 407, baseType: !991, size: 64, offset: 512)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !544, line: 286, baseType: !993)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 286, size: 64, elements: !994)
!994 = !{!995}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !993, file: !544, line: 286, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !874, line: 18, baseType: !152)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !855, file: !554, line: 416, baseType: !579, size: 32, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !855, file: !554, line: 428, baseType: !579, size: 32, offset: 608)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !855, file: !554, line: 437, baseType: !579, size: 32, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !855, file: !554, line: 447, baseType: !579, size: 32, offset: 672)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !855, file: !554, line: 450, baseType: !603, size: 64, offset: 704)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !855, file: !554, line: 452, baseType: !87, size: 32, offset: 768)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !855, file: !554, line: 454, baseType: !61, offset: 800)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !855, file: !554, line: 457, baseType: !599, size: 256, offset: 832)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !855, file: !554, line: 459, baseType: !11, size: 128, offset: 1088)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !855, file: !554, line: 466, baseType: !152, size: 64, offset: 1216)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !855, file: !554, line: 467, baseType: !152, size: 64, offset: 1280)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !855, file: !554, line: 469, baseType: !152, size: 64, offset: 1344)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !855, file: !554, line: 470, baseType: !152, size: 64, offset: 1408)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !855, file: !554, line: 471, baseType: !605, size: 64, offset: 1472)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !855, file: !554, line: 472, baseType: !152, size: 64, offset: 1536)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !855, file: !554, line: 473, baseType: !152, size: 64, offset: 1600)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !855, file: !554, line: 474, baseType: !152, size: 64, offset: 1664)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !855, file: !554, line: 475, baseType: !152, size: 64, offset: 1728)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !855, file: !554, line: 477, baseType: !61, offset: 1792)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !855, file: !554, line: 478, baseType: !152, size: 64, offset: 1792)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !855, file: !554, line: 478, baseType: !152, size: 64, offset: 1856)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !855, file: !554, line: 478, baseType: !152, size: 64, offset: 1920)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !855, file: !554, line: 478, baseType: !152, size: 64, offset: 1984)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !855, file: !554, line: 479, baseType: !152, size: 64, offset: 2048)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !855, file: !554, line: 479, baseType: !152, size: 64, offset: 2112)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !855, file: !554, line: 479, baseType: !152, size: 64, offset: 2176)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !855, file: !554, line: 480, baseType: !152, size: 64, offset: 2240)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !855, file: !554, line: 480, baseType: !152, size: 64, offset: 2304)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !855, file: !554, line: 480, baseType: !152, size: 64, offset: 2368)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !855, file: !554, line: 480, baseType: !152, size: 64, offset: 2432)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !855, file: !554, line: 482, baseType: !1028, size: 2816, offset: 2496)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 2816, elements: !1029)
!1029 = !{!1030}
!1030 = !DISubrange(count: 44)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !855, file: !554, line: 488, baseType: !1032, size: 256, offset: 5312)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1033, line: 60, size: 256, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1032, file: !1033, line: 61, baseType: !1036, size: 256)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 256, elements: !1037)
!1037 = !{!1038}
!1038 = !DISubrange(count: 4)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !855, file: !554, line: 490, baseType: !1040, size: 64, offset: 5568)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !554, line: 490, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !855, file: !554, line: 493, baseType: !1043, size: 896, offset: 5632)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1044, line: 53, baseType: !1045)
!1044 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1044, line: 13, size: 896, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1053, !1054, !1061, !1062, !1066, !1067, !1068}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1045, file: !1044, line: 18, baseType: !250, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1045, file: !1044, line: 28, baseType: !605, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1045, file: !1044, line: 31, baseType: !599, size: 256, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1045, file: !1044, line: 32, baseType: !1051, size: 64, offset: 384)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1044, line: 32, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1045, file: !1044, line: 37, baseType: !38, size: 16, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1045, file: !1044, line: 40, baseType: !1055, size: 192, offset: 512)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1056, line: 53, size: 192, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1057 = !{!1058, !1059, !1060}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1055, file: !1056, line: 54, baseType: !603, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1055, file: !1056, line: 55, baseType: !61, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1055, file: !1056, line: 59, baseType: !11, size: 128, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1045, file: !1044, line: 41, baseType: !176, size: 64, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1045, file: !1044, line: 42, baseType: !1063, size: 64, offset: 768)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1065)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1044, line: 42, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1045, file: !1044, line: 44, baseType: !579, size: 32, offset: 832)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1045, file: !1044, line: 50, baseType: !35, size: 16, offset: 864)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1045, file: !1044, line: 51, baseType: !1069, size: 16, offset: 880)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !36, line: 18, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !29, line: 23, baseType: !1071)
!1071 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !855, file: !554, line: 495, baseType: !152, size: 64, offset: 6528)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !855, file: !554, line: 497, baseType: !1074, size: 64, offset: 6592)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !554, line: 381, size: 384, elements: !1076)
!1076 = !{!1077, !1078, !2185}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1075, file: !554, line: 382, baseType: !579, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1075, file: !554, line: 383, baseType: !1079, size: 128, offset: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !554, line: 376, size: 128, elements: !1080)
!1080 = !{!1081, !2183}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1079, file: !554, line: 377, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !731, line: 640, size: 48640, elements: !1084)
!1084 = !{!1085, !1091, !1093, !1094, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1111, !1129, !1140, !1229, !1230, !1231, !1242, !1243, !1245, !1246, !1247, !1248, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1333, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1372, !1374, !1375, !1376, !1388, !1389, !1390, !1391, !1392, !1393, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1417, !1422, !1606, !1607, !1608, !1609, !1611, !1614, !1617, !1620, !1623, !1626, !1727, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1773, !1774, !1775, !1776, !1777, !1782, !1783, !1784, !1787, !1788, !1791, !1794, !1797, !1800, !1843, !1846, !1847, !1926, !1927, !1930, !1931, !1934, !1935, !1936, !1940, !1941, !1942, !1955, !1956, !1957, !1967, !1972, !1973, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1083, file: !731, line: 646, baseType: !1086, size: 128)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1087, line: 56, size: 128, elements: !1088)
!1087 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1086, file: !1087, line: 57, baseType: !152, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1086, file: !1087, line: 58, baseType: !246, size: 32, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1083, file: !731, line: 649, baseType: !1092, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !138)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1083, file: !731, line: 657, baseType: !176, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1083, file: !731, line: 658, baseType: !1095, size: 32, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1096, line: 113, baseType: !1097)
!1096 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1096, line: 111, size: 32, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1097, file: !1096, line: 112, baseType: !579, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1083, file: !731, line: 660, baseType: !216, size: 32, offset: 288)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1083, file: !731, line: 661, baseType: !216, size: 32, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1083, file: !731, line: 684, baseType: !87, size: 32, offset: 352)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1083, file: !731, line: 686, baseType: !87, size: 32, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1083, file: !731, line: 687, baseType: !87, size: 32, offset: 416)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1083, file: !731, line: 688, baseType: !87, size: 32, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1083, file: !731, line: 689, baseType: !216, size: 32, offset: 480)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1083, file: !731, line: 691, baseType: !1108, size: 64, offset: 512)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1110)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !731, line: 691, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1083, file: !731, line: 692, baseType: !1112, size: 832, offset: 576)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !731, line: 451, size: 832, elements: !1113)
!1113 = !{!1114, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1112, file: !731, line: 453, baseType: !1115, size: 128)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !731, line: 325, size: 128, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1115, file: !731, line: 326, baseType: !152, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1115, file: !731, line: 327, baseType: !246, size: 32, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1112, file: !731, line: 454, baseType: !592, size: 192, align: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1112, file: !731, line: 455, baseType: !11, size: 128, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1112, file: !731, line: 456, baseType: !216, size: 32, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1112, file: !731, line: 458, baseType: !250, size: 64, offset: 512)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1112, file: !731, line: 459, baseType: !250, size: 64, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1112, file: !731, line: 460, baseType: !250, size: 64, offset: 640)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1112, file: !731, line: 461, baseType: !250, size: 64, offset: 704)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1112, file: !731, line: 463, baseType: !250, size: 64, offset: 768)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1112, file: !731, line: 465, baseType: !1128, offset: 832)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !731, line: 415, elements: !75)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1083, file: !731, line: 693, baseType: !1130, size: 384, offset: 1408)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !731, line: 489, size: 384, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1130, file: !731, line: 490, baseType: !11, size: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1130, file: !731, line: 491, baseType: !152, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1130, file: !731, line: 492, baseType: !152, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1130, file: !731, line: 493, baseType: !216, size: 32, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1130, file: !731, line: 494, baseType: !38, size: 16, offset: 288)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1130, file: !731, line: 495, baseType: !38, size: 16, offset: 304)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1130, file: !731, line: 497, baseType: !1139, size: 64, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1083, file: !731, line: 697, baseType: !1141, size: 1792, offset: 1792)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !731, line: 507, size: 1792, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1226, !1227}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1141, file: !731, line: 508, baseType: !592, size: 192, align: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1141, file: !731, line: 515, baseType: !250, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1141, file: !731, line: 516, baseType: !250, size: 64, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1141, file: !731, line: 517, baseType: !250, size: 64, offset: 320)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1141, file: !731, line: 518, baseType: !250, size: 64, offset: 384)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1141, file: !731, line: 519, baseType: !250, size: 64, offset: 448)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1141, file: !731, line: 526, baseType: !609, size: 64, offset: 512)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1141, file: !731, line: 527, baseType: !250, size: 64, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1141, file: !731, line: 528, baseType: !216, size: 32, offset: 640)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1141, file: !731, line: 554, baseType: !216, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1141, file: !731, line: 555, baseType: !216, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1141, file: !731, line: 556, baseType: !216, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1141, file: !731, line: 557, baseType: !216, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1141, file: !731, line: 563, baseType: !1157, size: 512, offset: 704)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1158, line: 118, size: 512, elements: !1159)
!1158 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!1159 = !{!1160, !1168, !1169, !1178, !1221, !1223, !1224, !1225}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1157, file: !1158, line: 119, baseType: !1161, size: 256)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1162, line: 9, size: 256, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1161, file: !1162, line: 10, baseType: !592, size: 192, align: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1161, file: !1162, line: 11, baseType: !1166, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1167, line: 29, baseType: !609)
!1167 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1157, file: !1158, line: 120, baseType: !1166, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1157, file: !1158, line: 121, baseType: !1170, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!1173, !1177}
!1173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1158, line: 65, baseType: !216, size: 32, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!1176 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1157, file: !1158, line: 122, baseType: !1179, size: 64, offset: 384)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1158, line: 159, size: 512, align: 512, elements: !1181)
!1181 = !{!1182, !1202, !1203, !1206, !1211, !1212, !1216, !1220}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1180, file: !1158, line: 160, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1158, line: 214, size: 4608, align: 512, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1184, file: !1158, line: 215, baseType: !612)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1184, file: !1158, line: 216, baseType: !216, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1184, file: !1158, line: 217, baseType: !216, size: 32, offset: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1184, file: !1158, line: 218, baseType: !216, size: 32, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1184, file: !1158, line: 219, baseType: !216, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1184, file: !1158, line: 220, baseType: !216, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1184, file: !1158, line: 221, baseType: !216, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1184, file: !1158, line: 222, baseType: !216, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1184, file: !1158, line: 233, baseType: !1166, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1184, file: !1158, line: 234, baseType: !1177, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1184, file: !1158, line: 235, baseType: !1166, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1184, file: !1158, line: 236, baseType: !1177, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1184, file: !1158, line: 237, baseType: !1199, size: 4096, offset: 512)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1180, size: 4096, elements: !1200)
!1200 = !{!1201}
!1201 = !DISubrange(count: 8)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1180, file: !1158, line: 161, baseType: !216, size: 32, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1180, file: !1158, line: 162, baseType: !1204, size: 32, offset: 96)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !12, line: 27, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !136, line: 96, baseType: !87)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1180, file: !1158, line: 163, baseType: !1207, size: 32, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !219, line: 276, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !219, line: 276, size: 32, elements: !1209)
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1208, file: !219, line: 276, baseType: !223, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1180, file: !1158, line: 164, baseType: !1177, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1180, file: !1158, line: 165, baseType: !1213, size: 128, offset: 256)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1162, line: 14, size: 128, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1213, file: !1162, line: 15, baseType: !584, size: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1180, file: !1158, line: 166, baseType: !1217, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!1166}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1180, file: !1158, line: 167, baseType: !1166, size: 64, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1157, file: !1158, line: 123, baseType: !1222, size: 8, offset: 448)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !36, line: 17, baseType: !28)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1157, file: !1158, line: 124, baseType: !1222, size: 8, offset: 456)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1157, file: !1158, line: 125, baseType: !1222, size: 8, offset: 464)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1157, file: !1158, line: 126, baseType: !1222, size: 8, offset: 472)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1141, file: !731, line: 572, baseType: !1157, size: 512, offset: 1216)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1141, file: !731, line: 580, baseType: !1228, size: 64, offset: 1728)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1083, file: !731, line: 721, baseType: !216, size: 32, offset: 3584)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1083, file: !731, line: 722, baseType: !87, size: 32, offset: 3616)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1083, file: !731, line: 723, baseType: !1232, size: 64, offset: 3648)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1235, line: 17, baseType: !1236)
!1235 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1235, line: 17, size: 64, elements: !1237)
!1237 = !{!1238}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1236, file: !1235, line: 17, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 64, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 1)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1083, file: !731, line: 724, baseType: !1234, size: 64, offset: 3712)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1083, file: !731, line: 749, baseType: !1244, offset: 3776)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !731, line: 290, elements: !75)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1083, file: !731, line: 751, baseType: !11, size: 128, offset: 3776)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1083, file: !731, line: 757, baseType: !851, size: 64, offset: 3904)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1083, file: !731, line: 758, baseType: !851, size: 64, offset: 3968)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1083, file: !731, line: 761, baseType: !1249, size: 320, offset: 4032)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1033, line: 34, size: 320, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1249, file: !1033, line: 35, baseType: !250, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1249, file: !1033, line: 36, baseType: !1253, size: 256, offset: 64)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, size: 256, elements: !1037)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1083, file: !731, line: 766, baseType: !87, size: 32, offset: 4352)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1083, file: !731, line: 767, baseType: !87, size: 32, offset: 4384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1083, file: !731, line: 768, baseType: !87, size: 32, offset: 4416)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1083, file: !731, line: 770, baseType: !87, size: 32, offset: 4448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1083, file: !731, line: 772, baseType: !152, size: 64, offset: 4480)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1083, file: !731, line: 775, baseType: !216, size: 32, offset: 4544)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1083, file: !731, line: 778, baseType: !216, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1083, file: !731, line: 779, baseType: !216, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1083, file: !731, line: 780, baseType: !216, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1083, file: !731, line: 803, baseType: !216, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1083, file: !731, line: 806, baseType: !216, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1083, file: !731, line: 807, baseType: !216, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1083, file: !731, line: 809, baseType: !216, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1083, file: !731, line: 815, baseType: !216, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1083, file: !731, line: 831, baseType: !152, size: 64, offset: 4672)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1083, file: !731, line: 833, baseType: !1270, size: 384, offset: 4736)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !1271, line: 25, size: 384, elements: !1272)
!1271 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!1272 = !{!1273, !1278}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1270, file: !1271, line: 26, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!138, !1277}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !1271, line: 27, baseType: !1279, size: 320, offset: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !1271, line: 27, size: 320, elements: !1280)
!1280 = !{!1281, !1291, !1323}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1279, file: !1271, line: 36, baseType: !1282, size: 320)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !1271, line: 29, size: 320, elements: !1283)
!1283 = !{!1284, !1286, !1287, !1288, !1289, !1290}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1282, file: !1271, line: 30, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1282, file: !1271, line: 31, baseType: !246, size: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1282, file: !1271, line: 32, baseType: !246, size: 32, offset: 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1282, file: !1271, line: 33, baseType: !246, size: 32, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1282, file: !1271, line: 34, baseType: !250, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1282, file: !1271, line: 35, baseType: !1285, size: 64, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1279, file: !1271, line: 46, baseType: !1292, size: 192)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !1271, line: 38, size: 192, elements: !1293)
!1293 = !{!1294, !1295, !1301, !1322}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1292, file: !1271, line: 39, baseType: !1204, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1292, file: !1271, line: 40, baseType: !1296, size: 32, offset: 32)
!1296 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !1271, line: 16, baseType: !216, size: 32, elements: !1297)
!1297 = !{!1298, !1299, !1300}
!1298 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!1299 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!1300 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1271, line: 41, baseType: !1302, size: 64, offset: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !1271, line: 41, size: 64, elements: !1303)
!1303 = !{!1304, !1312}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1302, file: !1271, line: 42, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1307, line: 7, size: 128, elements: !1308)
!1307 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1308 = !{!1309, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1306, file: !1307, line: 8, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !136, line: 93, baseType: !361)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1306, file: !1307, line: 9, baseType: !361, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1302, file: !1271, line: 43, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1315, line: 7, size: 64, elements: !1316)
!1315 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1316 = !{!1317, !1321}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1314, file: !1315, line: 8, baseType: !1318, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1315, line: 5, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !36, line: 20, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !29, line: 26, baseType: !87)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1314, file: !1315, line: 9, baseType: !1319, size: 32, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1292, file: !1271, line: 45, baseType: !250, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1279, file: !1271, line: 54, baseType: !1324, size: 256)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !1271, line: 48, size: 256, elements: !1325)
!1325 = !{!1326, !1329, !1330, !1331, !1332}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1324, file: !1271, line: 49, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1271, line: 14, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1324, file: !1271, line: 50, baseType: !87, size: 32, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1324, file: !1271, line: 51, baseType: !87, size: 32, offset: 96)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1324, file: !1271, line: 52, baseType: !152, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1324, file: !1271, line: 53, baseType: !152, size: 64, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1083, file: !731, line: 835, baseType: !1334, size: 32, offset: 5120)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !12, line: 22, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !136, line: 28, baseType: !87)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1083, file: !731, line: 836, baseType: !1334, size: 32, offset: 5152)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1083, file: !731, line: 840, baseType: !152, size: 64, offset: 5184)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1083, file: !731, line: 849, baseType: !1082, size: 64, offset: 5248)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1083, file: !731, line: 852, baseType: !1082, size: 64, offset: 5312)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1083, file: !731, line: 857, baseType: !11, size: 128, offset: 5376)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1083, file: !731, line: 858, baseType: !11, size: 128, offset: 5504)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1083, file: !731, line: 859, baseType: !1082, size: 64, offset: 5632)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1083, file: !731, line: 867, baseType: !11, size: 128, offset: 5696)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1083, file: !731, line: 868, baseType: !11, size: 128, offset: 5824)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1083, file: !731, line: 871, baseType: !1346, size: 64, offset: 5952)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1348, line: 59, size: 768, elements: !1349)
!1348 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!1349 = !{!1350, !1351, !1352, !1353, !1355, !1356, !1363, !1364}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1347, file: !1348, line: 61, baseType: !1095, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1347, file: !1348, line: 62, baseType: !216, size: 32, offset: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1347, file: !1348, line: 63, baseType: !61, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1347, file: !1348, line: 65, baseType: !1354, size: 256, offset: 64)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 256, elements: !1037)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1347, file: !1348, line: 66, baseType: !465, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1347, file: !1348, line: 68, baseType: !1357, size: 128, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1358, line: 40, baseType: !1359)
!1358 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1358, line: 36, size: 128, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1359, file: !1358, line: 37, baseType: !61)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1359, file: !1358, line: 38, baseType: !11, size: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1347, file: !1348, line: 69, baseType: !195, size: 128, align: 64, offset: 512)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1347, file: !1348, line: 70, baseType: !1365, size: 128, offset: 640)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1366, size: 128, elements: !1240)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1348, line: 54, size: 128, elements: !1367)
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1366, file: !1348, line: 55, baseType: !87, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1366, file: !1348, line: 56, baseType: !1370, size: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1348, line: 56, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1083, file: !731, line: 872, baseType: !1373, size: 512, offset: 6016)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 512, elements: !1037)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1083, file: !731, line: 873, baseType: !11, size: 128, offset: 6528)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1083, file: !731, line: 874, baseType: !11, size: 128, offset: 6656)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1083, file: !731, line: 876, baseType: !1377, size: 64, offset: 6784)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1379, line: 26, size: 192, elements: !1380)
!1379 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1378, file: !1379, line: 27, baseType: !216, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1378, file: !1379, line: 28, baseType: !1383, size: 128, offset: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1384, line: 43, size: 128, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1383, file: !1384, line: 44, baseType: !612)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1383, file: !1384, line: 45, baseType: !11, size: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1083, file: !731, line: 879, baseType: !536, size: 64, offset: 6848)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1083, file: !731, line: 882, baseType: !536, size: 64, offset: 6912)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1083, file: !731, line: 884, baseType: !250, size: 64, offset: 6976)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1083, file: !731, line: 885, baseType: !250, size: 64, offset: 7040)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1083, file: !731, line: 890, baseType: !250, size: 64, offset: 7104)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1083, file: !731, line: 891, baseType: !1394, size: 128, offset: 7168)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !731, line: 242, size: 128, elements: !1395)
!1395 = !{!1396, !1397, !1398}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1394, file: !731, line: 244, baseType: !250, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1394, file: !731, line: 245, baseType: !250, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1394, file: !731, line: 246, baseType: !612, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1083, file: !731, line: 900, baseType: !152, size: 64, offset: 7296)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1083, file: !731, line: 901, baseType: !152, size: 64, offset: 7360)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1083, file: !731, line: 904, baseType: !250, size: 64, offset: 7424)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1083, file: !731, line: 907, baseType: !250, size: 64, offset: 7488)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1083, file: !731, line: 910, baseType: !152, size: 64, offset: 7552)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1083, file: !731, line: 911, baseType: !152, size: 64, offset: 7616)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1083, file: !731, line: 914, baseType: !1406, size: 640, offset: 7680)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1407, line: 123, size: 640, elements: !1408)
!1407 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1408 = !{!1409, !1415, !1416}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1406, file: !1407, line: 124, baseType: !1410, size: 576)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1411, size: 576, elements: !104)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1407, line: 108, size: 192, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1411, file: !1407, line: 109, baseType: !250, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1411, file: !1407, line: 110, baseType: !1213, size: 128, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1406, file: !1407, line: 125, baseType: !216, size: 32, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1406, file: !1407, line: 126, baseType: !216, size: 32, offset: 608)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1083, file: !731, line: 917, baseType: !1418, size: 192, offset: 8320)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1407, line: 134, size: 192, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1418, file: !1407, line: 135, baseType: !195, size: 128, align: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1418, file: !1407, line: 136, baseType: !216, size: 32, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1083, file: !731, line: 923, baseType: !1423, size: 64, offset: 8512)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1426, line: 111, size: 1280, elements: !1427)
!1426 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1447, !1448, !1449, !1450, !1451, !1452, !1559, !1560, !1561, !1562, !1588, !1591, !1601}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1425, file: !1426, line: 112, baseType: !579, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1425, file: !1426, line: 120, baseType: !263, size: 32, offset: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1425, file: !1426, line: 121, baseType: !271, size: 32, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1425, file: !1426, line: 122, baseType: !263, size: 32, offset: 96)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1425, file: !1426, line: 123, baseType: !271, size: 32, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1425, file: !1426, line: 124, baseType: !263, size: 32, offset: 160)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1425, file: !1426, line: 125, baseType: !271, size: 32, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1425, file: !1426, line: 126, baseType: !263, size: 32, offset: 224)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1425, file: !1426, line: 127, baseType: !271, size: 32, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1425, file: !1426, line: 128, baseType: !216, size: 32, offset: 288)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1425, file: !1426, line: 129, baseType: !1439, size: 64, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1440, line: 26, baseType: !1441)
!1440 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1440, line: 24, size: 64, elements: !1442)
!1442 = !{!1443}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1441, file: !1440, line: 25, baseType: !1444, size: 64)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 64, elements: !1445)
!1445 = !{!1446}
!1446 = !DISubrange(count: 2)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1425, file: !1426, line: 130, baseType: !1439, size: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1425, file: !1426, line: 131, baseType: !1439, size: 64, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1425, file: !1426, line: 132, baseType: !1439, size: 64, offset: 512)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1425, file: !1426, line: 133, baseType: !1439, size: 64, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1425, file: !1426, line: 135, baseType: !30, size: 8, offset: 640)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1425, file: !1426, line: 137, baseType: !1453, size: 64, offset: 704)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1455, line: 189, size: 1664, elements: !1456)
!1455 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1456 = !{!1457, !1458, !1461, !1466, !1467, !1470, !1471, !1476, !1477, !1478, !1479, !1481, !1482, !1483, !1484, !1485, !1523, !1544}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1454, file: !1455, line: 190, baseType: !1095, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1454, file: !1455, line: 191, baseType: !1459, size: 32, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1455, line: 28, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 98, baseType: !1319)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 192, baseType: !1462, size: 192, offset: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 192, size: 192, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1462, file: !1455, line: 193, baseType: !11, size: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1462, file: !1455, line: 194, baseType: !592, size: 192, align: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1454, file: !1455, line: 199, baseType: !599, size: 256, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1454, file: !1455, line: 200, baseType: !1468, size: 64, offset: 512)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1455, line: 200, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1454, file: !1455, line: 201, baseType: !176, size: 64, offset: 576)
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 202, baseType: !1472, size: 64, offset: 640)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 202, size: 64, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1472, file: !1455, line: 203, baseType: !367, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1472, file: !1455, line: 204, baseType: !367, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1454, file: !1455, line: 206, baseType: !367, size: 64, offset: 704)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1454, file: !1455, line: 207, baseType: !263, size: 32, offset: 768)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1454, file: !1455, line: 208, baseType: !271, size: 32, offset: 800)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1454, file: !1455, line: 209, baseType: !1480, size: 32, offset: 832)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1455, line: 31, baseType: !387)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1454, file: !1455, line: 210, baseType: !38, size: 16, offset: 864)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1454, file: !1455, line: 211, baseType: !38, size: 16, offset: 880)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1454, file: !1455, line: 215, baseType: !1071, size: 16, offset: 896)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1454, file: !1455, line: 222, baseType: !152, size: 64, offset: 960)
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 239, baseType: !1486, size: 320, offset: 1024)
!1486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 239, size: 320, elements: !1487)
!1487 = !{!1488, !1515}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1486, file: !1455, line: 240, baseType: !1489, size: 320)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1455, line: 108, size: 320, elements: !1490)
!1490 = !{!1491, !1492, !1504, !1507, !1514}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1489, file: !1455, line: 110, baseType: !152, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !1455, line: 111, baseType: !1493, size: 64, offset: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1489, file: !1455, line: 111, size: 64, elements: !1494)
!1494 = !{!1495, !1503}
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1455, line: 112, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !1455, line: 112, size: 64, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1496, file: !1455, line: 114, baseType: !35, size: 16)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1496, file: !1455, line: 115, baseType: !1500, size: 48, offset: 16)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 48, elements: !1501)
!1501 = !{!1502}
!1502 = !DISubrange(count: 6)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1493, file: !1455, line: 121, baseType: !152, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1489, file: !1455, line: 123, baseType: !1505, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1455, line: 96, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1489, file: !1455, line: 124, baseType: !1508, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1455, line: 102, size: 192, elements: !1510)
!1510 = !{!1511, !1512, !1513}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1509, file: !1455, line: 103, baseType: !195, size: 128, align: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1509, file: !1455, line: 104, baseType: !1095, size: 32, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1509, file: !1455, line: 105, baseType: !318, size: 8, offset: 160)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1489, file: !1455, line: 125, baseType: !49, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !1455, line: 241, baseType: !1516, size: 320)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1486, file: !1455, line: 241, size: 320, elements: !1517)
!1517 = !{!1518, !1519, !1520, !1521, !1522}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1516, file: !1455, line: 242, baseType: !152, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1516, file: !1455, line: 243, baseType: !152, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1516, file: !1455, line: 244, baseType: !1505, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1516, file: !1455, line: 245, baseType: !1508, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1516, file: !1455, line: 246, baseType: !103, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 254, baseType: !1524, size: 256, offset: 1344)
!1524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 254, size: 256, elements: !1525)
!1525 = !{!1526, !1532}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1524, file: !1455, line: 255, baseType: !1527, size: 256)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1455, line: 128, size: 256, elements: !1528)
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1527, file: !1455, line: 129, baseType: !176, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1527, file: !1455, line: 130, baseType: !1531, size: 256)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !1037)
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !1455, line: 256, baseType: !1533, size: 256)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1524, file: !1455, line: 256, size: 256, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1533, file: !1455, line: 258, baseType: !11, size: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1533, file: !1455, line: 259, baseType: !1537, size: 128, offset: 128)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1538, line: 22, size: 128, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !{!1540, !1543}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1537, file: !1538, line: 23, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1538, line: 23, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1537, file: !1538, line: 24, baseType: !152, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1454, file: !1455, line: 274, baseType: !1545, size: 64, offset: 1600)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1455, line: 170, size: 192, elements: !1547)
!1547 = !{!1548, !1557, !1558}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1546, file: !1455, line: 171, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1455, line: 165, baseType: !1550)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!87, !1453, !1553, !1555, !1453}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1506)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1527)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1546, file: !1455, line: 172, baseType: !1453, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1546, file: !1455, line: 173, baseType: !1505, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1425, file: !1426, line: 138, baseType: !1453, size: 64, offset: 768)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1425, file: !1426, line: 139, baseType: !1453, size: 64, offset: 832)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1425, file: !1426, line: 140, baseType: !1453, size: 64, offset: 896)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1425, file: !1426, line: 145, baseType: !1563, size: 64, offset: 960)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1565, line: 13, size: 896, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1566 = !{!1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1564, file: !1565, line: 14, baseType: !1095, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1564, file: !1565, line: 15, baseType: !579, size: 32, offset: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1564, file: !1565, line: 16, baseType: !579, size: 32, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1564, file: !1565, line: 21, baseType: !603, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1564, file: !1565, line: 27, baseType: !152, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1564, file: !1565, line: 28, baseType: !152, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1564, file: !1565, line: 29, baseType: !603, size: 64, offset: 320)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1564, file: !1565, line: 32, baseType: !469, size: 128, offset: 384)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1564, file: !1565, line: 33, baseType: !263, size: 32, offset: 512)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1564, file: !1565, line: 37, baseType: !603, size: 64, offset: 576)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1564, file: !1565, line: 44, baseType: !1578, size: 256, offset: 640)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1579, line: 15, size: 256, elements: !1580)
!1579 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1578, file: !1579, line: 16, baseType: !612)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1578, file: !1579, line: 18, baseType: !87, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1578, file: !1579, line: 19, baseType: !87, size: 32, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1578, file: !1579, line: 20, baseType: !87, size: 32, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1578, file: !1579, line: 21, baseType: !87, size: 32, offset: 96)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1578, file: !1579, line: 22, baseType: !152, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1578, file: !1579, line: 23, baseType: !152, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1425, file: !1426, line: 146, baseType: !1589, size: 64, offset: 1024)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !554, line: 516, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1425, file: !1426, line: 147, baseType: !1592, size: 64, offset: 1088)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1426, line: 25, size: 64, elements: !1594)
!1594 = !{!1595, !1596, !1597}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1593, file: !1426, line: 26, baseType: !579, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1593, file: !1426, line: 27, baseType: !87, size: 32, offset: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1593, file: !1426, line: 28, baseType: !1598, offset: 64)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, elements: !1599)
!1599 = !{!1600}
!1600 = !DISubrange(count: 0)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !1426, line: 149, baseType: !1602, size: 128, offset: 1152)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1425, file: !1426, line: 149, size: 128, elements: !1603)
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1602, file: !1426, line: 150, baseType: !87, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1602, file: !1426, line: 151, baseType: !195, size: 128, align: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1083, file: !731, line: 926, baseType: !1423, size: 64, offset: 8576)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1083, file: !731, line: 929, baseType: !1423, size: 64, offset: 8640)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1083, file: !731, line: 933, baseType: !1453, size: 64, offset: 8704)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1083, file: !731, line: 943, baseType: !1610, size: 128, offset: 8768)
!1610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !31)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1083, file: !731, line: 945, baseType: !1612, size: 64, offset: 8896)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !731, line: 49, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1083, file: !731, line: 956, baseType: !1615, size: 64, offset: 8960)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !731, line: 45, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1083, file: !731, line: 959, baseType: !1618, size: 64, offset: 9024)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !731, line: 959, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1083, file: !731, line: 962, baseType: !1621, size: 64, offset: 9088)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !731, line: 66, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1083, file: !731, line: 966, baseType: !1624, size: 64, offset: 9152)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !731, line: 50, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1083, file: !731, line: 969, baseType: !1627, size: 64, offset: 9216)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1629, line: 82, size: 7296, elements: !1630)
!1629 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1666, !1675, !1676, !1678, !1679, !1680, !1683, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1713, !1714, !1721, !1722, !1723, !1724, !1725, !1726}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1628, file: !1629, line: 83, baseType: !1095, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1628, file: !1629, line: 84, baseType: !579, size: 32, offset: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1628, file: !1629, line: 85, baseType: !87, size: 32, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1628, file: !1629, line: 86, baseType: !11, size: 128, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1628, file: !1629, line: 88, baseType: !1357, size: 128, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1628, file: !1629, line: 91, baseType: !1082, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1628, file: !1629, line: 94, baseType: !1638, size: 192, offset: 448)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1639, line: 30, size: 192, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1638, file: !1639, line: 31, baseType: !11, size: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1638, file: !1639, line: 32, baseType: !1643, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1644, line: 25, baseType: !1645)
!1644 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1644, line: 23, size: 64, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1645, file: !1644, line: 24, baseType: !1239, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1628, file: !1629, line: 97, baseType: !465, size: 64, offset: 640)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1628, file: !1629, line: 100, baseType: !87, size: 32, offset: 704)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1628, file: !1629, line: 106, baseType: !87, size: 32, offset: 736)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1628, file: !1629, line: 107, baseType: !1082, size: 64, offset: 768)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1628, file: !1629, line: 110, baseType: !87, size: 32, offset: 832)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1628, file: !1629, line: 111, baseType: !216, size: 32, offset: 864)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1628, file: !1629, line: 122, baseType: !216, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1628, file: !1629, line: 123, baseType: !216, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1628, file: !1629, line: 128, baseType: !87, size: 32, offset: 928)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1628, file: !1629, line: 129, baseType: !11, size: 128, offset: 960)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1628, file: !1629, line: 132, baseType: !1157, size: 512, offset: 1088)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1628, file: !1629, line: 133, baseType: !1166, size: 64, offset: 1600)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1628, file: !1629, line: 140, baseType: !1661, size: 256, offset: 1664)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1662, size: 256, elements: !1445)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1629, line: 38, size: 128, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1662, file: !1629, line: 39, baseType: !250, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1662, file: !1629, line: 40, baseType: !250, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1628, file: !1629, line: 146, baseType: !1667, size: 192, offset: 1920)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1629, line: 66, size: 192, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1667, file: !1629, line: 67, baseType: !1670, size: 192)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1629, line: 47, size: 192, elements: !1671)
!1671 = !{!1672, !1673, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1670, file: !1629, line: 48, baseType: !605, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1670, file: !1629, line: 49, baseType: !605, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1670, file: !1629, line: 50, baseType: !605, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1628, file: !1629, line: 150, baseType: !1406, size: 640, offset: 2112)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1628, file: !1629, line: 153, baseType: !1677, size: 256, offset: 2752)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 256, elements: !1037)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1628, file: !1629, line: 159, baseType: !1346, size: 64, offset: 3008)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1628, file: !1629, line: 162, baseType: !87, size: 32, offset: 3072)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1628, file: !1629, line: 164, baseType: !1681, size: 64, offset: 3136)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1629, line: 164, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1628, file: !1629, line: 175, baseType: !1684, size: 32, offset: 3200)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !219, line: 805, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 798, size: 32, elements: !1686)
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1685, file: !219, line: 803, baseType: !218, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1685, file: !219, line: 804, baseType: !61, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1628, file: !1629, line: 176, baseType: !250, size: 64, offset: 3264)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1628, file: !1629, line: 176, baseType: !250, size: 64, offset: 3328)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1628, file: !1629, line: 176, baseType: !250, size: 64, offset: 3392)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1628, file: !1629, line: 176, baseType: !250, size: 64, offset: 3456)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1628, file: !1629, line: 177, baseType: !250, size: 64, offset: 3520)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1628, file: !1629, line: 178, baseType: !250, size: 64, offset: 3584)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1628, file: !1629, line: 179, baseType: !1394, size: 128, offset: 3648)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1628, file: !1629, line: 180, baseType: !152, size: 64, offset: 3776)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1628, file: !1629, line: 180, baseType: !152, size: 64, offset: 3840)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1628, file: !1629, line: 180, baseType: !152, size: 64, offset: 3904)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1628, file: !1629, line: 180, baseType: !152, size: 64, offset: 3968)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1628, file: !1629, line: 181, baseType: !152, size: 64, offset: 4032)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1628, file: !1629, line: 181, baseType: !152, size: 64, offset: 4096)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1628, file: !1629, line: 181, baseType: !152, size: 64, offset: 4160)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1628, file: !1629, line: 181, baseType: !152, size: 64, offset: 4224)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1628, file: !1629, line: 182, baseType: !152, size: 64, offset: 4288)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1628, file: !1629, line: 182, baseType: !152, size: 64, offset: 4352)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1628, file: !1629, line: 182, baseType: !152, size: 64, offset: 4416)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1628, file: !1629, line: 182, baseType: !152, size: 64, offset: 4480)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1628, file: !1629, line: 183, baseType: !152, size: 64, offset: 4544)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1628, file: !1629, line: 183, baseType: !152, size: 64, offset: 4608)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1628, file: !1629, line: 184, baseType: !1711, offset: 4672)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1712, line: 12, elements: !75)
!1712 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1628, file: !1629, line: 192, baseType: !252, size: 64, offset: 4672)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1628, file: !1629, line: 203, baseType: !1715, size: 2048, offset: 4736)
!1715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1716, size: 2048, elements: !31)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1717, line: 43, size: 128, elements: !1718)
!1717 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1716, file: !1717, line: 44, baseType: !151, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1716, file: !1717, line: 45, baseType: !151, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1628, file: !1629, line: 220, baseType: !318, size: 8, offset: 6784)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1628, file: !1629, line: 221, baseType: !1071, size: 16, offset: 6800)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1628, file: !1629, line: 222, baseType: !1071, size: 16, offset: 6816)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1628, file: !1629, line: 224, baseType: !851, size: 64, offset: 6848)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1628, file: !1629, line: 227, baseType: !1055, size: 192, offset: 6912)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1628, file: !1629, line: 233, baseType: !1055, size: 192, offset: 7104)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1083, file: !731, line: 970, baseType: !1728, size: 64, offset: 9280)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1629, line: 20, size: 16576, elements: !1730)
!1730 = !{!1731, !1732, !1733, !1734}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1729, file: !1629, line: 21, baseType: !61)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1729, file: !1629, line: 22, baseType: !1095, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1729, file: !1629, line: 23, baseType: !1357, size: 128, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1729, file: !1629, line: 24, baseType: !1735, size: 16384, offset: 192)
!1735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1736, size: 16384, elements: !108)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1639, line: 49, size: 256, elements: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1736, file: !1639, line: 50, baseType: !1739, size: 256)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1639, line: 35, size: 256, elements: !1740)
!1740 = !{!1741, !1748, !1749, !1755}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1739, file: !1639, line: 37, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1743, line: 19, baseType: !1744)
!1743 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1743, line: 18, baseType: !1746)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !87}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1739, file: !1639, line: 38, baseType: !152, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1739, file: !1639, line: 44, baseType: !1750, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1743, line: 22, baseType: !1751)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1743, line: 21, baseType: !1753)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1739, file: !1639, line: 46, baseType: !1643, size: 64, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1083, file: !731, line: 971, baseType: !1643, size: 64, offset: 9344)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1083, file: !731, line: 972, baseType: !1643, size: 64, offset: 9408)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1083, file: !731, line: 974, baseType: !1643, size: 64, offset: 9472)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1083, file: !731, line: 975, baseType: !1638, size: 192, offset: 9536)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1083, file: !731, line: 976, baseType: !152, size: 64, offset: 9728)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1083, file: !731, line: 977, baseType: !149, size: 64, offset: 9792)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1083, file: !731, line: 978, baseType: !216, size: 32, offset: 9856)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1083, file: !731, line: 980, baseType: !198, size: 64, offset: 9920)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1083, file: !731, line: 989, baseType: !1765, size: 128, offset: 9984)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1766, line: 35, size: 128, elements: !1767)
!1766 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1767 = !{!1768, !1769, !1770}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1765, file: !1766, line: 36, baseType: !87, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1765, file: !1766, line: 37, baseType: !579, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1765, file: !1766, line: 38, baseType: !1771, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1766, line: 23, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1083, file: !731, line: 992, baseType: !250, size: 64, offset: 10112)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1083, file: !731, line: 993, baseType: !250, size: 64, offset: 10176)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1083, file: !731, line: 996, baseType: !61, offset: 10240)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1083, file: !731, line: 999, baseType: !612, offset: 10240)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1083, file: !731, line: 1001, baseType: !1778, size: 64, offset: 10240)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !731, line: 636, size: 64, elements: !1779)
!1779 = !{!1780}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1778, file: !731, line: 637, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1083, file: !731, line: 1005, baseType: !584, size: 128, offset: 10304)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1083, file: !731, line: 1007, baseType: !1082, size: 64, offset: 10432)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1083, file: !731, line: 1009, baseType: !1785, size: 64, offset: 10496)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !731, line: 1009, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1083, file: !731, line: 1043, baseType: !176, size: 64, offset: 10560)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1083, file: !731, line: 1046, baseType: !1789, size: 64, offset: 10624)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !731, line: 41, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1083, file: !731, line: 1050, baseType: !1792, size: 64, offset: 10688)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !731, line: 42, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1083, file: !731, line: 1054, baseType: !1795, size: 64, offset: 10752)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !731, line: 55, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1083, file: !731, line: 1056, baseType: !1798, size: 64, offset: 10816)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !731, line: 40, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1083, file: !731, line: 1058, baseType: !1801, size: 64, offset: 10880)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1803, line: 99, size: 704, elements: !1804)
!1803 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1830, !1831}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1802, file: !1803, line: 100, baseType: !603, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1802, file: !1803, line: 101, baseType: !579, size: 32, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1802, file: !1803, line: 102, baseType: !579, size: 32, offset: 96)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1802, file: !1803, line: 105, baseType: !61, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1802, file: !1803, line: 107, baseType: !38, size: 16, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1802, file: !1803, line: 109, baseType: !570, size: 128, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1802, file: !1803, line: 110, baseType: !1812, size: 64, offset: 320)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1803, line: 73, size: 448, elements: !1814)
!1814 = !{!1815, !1818, !1819, !1824, !1829}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1813, file: !1803, line: 74, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1803, line: 74, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1813, file: !1803, line: 75, baseType: !1801, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1803, line: 83, baseType: !1820, size: 128, offset: 128)
!1820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1803, line: 83, size: 128, elements: !1821)
!1821 = !{!1822, !1823}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1820, file: !1803, line: 84, baseType: !11, size: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1820, file: !1803, line: 85, baseType: !812, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1803, line: 87, baseType: !1825, size: 128, offset: 256)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1803, line: 87, size: 128, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1825, file: !1803, line: 88, baseType: !469, size: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1825, file: !1803, line: 89, baseType: !195, size: 128, align: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1813, file: !1803, line: 92, baseType: !216, size: 32, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1802, file: !1803, line: 111, baseType: !465, size: 64, offset: 384)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1802, file: !1803, line: 113, baseType: !1832, size: 256, offset: 448)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1833, line: 102, size: 256, elements: !1834)
!1833 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !{!1835, !1836, !1837}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1832, file: !1833, line: 103, baseType: !603, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1832, file: !1833, line: 104, baseType: !11, size: 128, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1832, file: !1833, line: 105, baseType: !1838, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1833, line: 21, baseType: !1839)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1083, file: !731, line: 1061, baseType: !1844, size: 64, offset: 10944)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !731, line: 43, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1083, file: !731, line: 1064, baseType: !152, size: 64, offset: 11008)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1083, file: !731, line: 1065, baseType: !1848, size: 64, offset: 11072)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1639, line: 14, baseType: !1850)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1639, line: 12, size: 384, elements: !1851)
!1851 = !{!1852}
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1639, line: 13, baseType: !1853, size: 384)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1639, line: 13, size: 384, elements: !1854)
!1854 = !{!1855, !1856, !1857, !1858}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1853, file: !1639, line: 13, baseType: !87, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1853, file: !1639, line: 13, baseType: !87, size: 32, offset: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1853, file: !1639, line: 13, baseType: !87, size: 32, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1853, file: !1639, line: 13, baseType: !1859, size: 256, offset: 128)
!1859 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1860, line: 32, size: 256, elements: !1861)
!1860 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1861 = !{!1862, !1867, !1880, !1886, !1895, !1915, !1920}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1859, file: !1860, line: 37, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 34, size: 64, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1863, file: !1860, line: 35, baseType: !1335, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1863, file: !1860, line: 36, baseType: !269, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1859, file: !1860, line: 45, baseType: !1868, size: 192)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 40, size: 192, elements: !1869)
!1869 = !{!1870, !1872, !1873, !1879}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1868, file: !1860, line: 41, baseType: !1871, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !136, line: 95, baseType: !87)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1868, file: !1860, line: 42, baseType: !87, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1868, file: !1860, line: 43, baseType: !1874, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1860, line: 11, baseType: !1875)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1860, line: 8, size: 64, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1875, file: !1860, line: 9, baseType: !87, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1875, file: !1860, line: 10, baseType: !176, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1868, file: !1860, line: 44, baseType: !87, size: 32, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1859, file: !1860, line: 52, baseType: !1881, size: 128)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 48, size: 128, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1881, file: !1860, line: 49, baseType: !1335, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1881, file: !1860, line: 50, baseType: !269, size: 32, offset: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1881, file: !1860, line: 51, baseType: !1874, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1859, file: !1860, line: 61, baseType: !1887, size: 256)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 55, size: 256, elements: !1888)
!1888 = !{!1889, !1890, !1891, !1892, !1894}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1887, file: !1860, line: 56, baseType: !1335, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1887, file: !1860, line: 57, baseType: !269, size: 32, offset: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1887, file: !1860, line: 58, baseType: !87, size: 32, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1887, file: !1860, line: 59, baseType: !1893, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !136, line: 94, baseType: !137)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1887, file: !1860, line: 60, baseType: !1893, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1859, file: !1860, line: 95, baseType: !1896, size: 256)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 64, size: 256, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1896, file: !1860, line: 65, baseType: !176, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1896, file: !1860, line: 77, baseType: !1900, size: 192, offset: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1896, file: !1860, line: 77, size: 192, elements: !1901)
!1901 = !{!1902, !1903, !1910}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1900, file: !1860, line: 82, baseType: !1071, size: 16)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1900, file: !1860, line: 88, baseType: !1904, size: 192)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !1860, line: 84, size: 192, elements: !1905)
!1905 = !{!1906, !1908, !1909}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1904, file: !1860, line: 85, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !1200)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1904, file: !1860, line: 86, baseType: !176, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1904, file: !1860, line: 87, baseType: !176, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1900, file: !1860, line: 93, baseType: !1911, size: 96)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !1860, line: 90, size: 96, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1911, file: !1860, line: 91, baseType: !1907, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1911, file: !1860, line: 92, baseType: !247, size: 32, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1859, file: !1860, line: 101, baseType: !1916, size: 128)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 98, size: 128, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1916, file: !1860, line: 99, baseType: !138, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1916, file: !1860, line: 100, baseType: !87, size: 32, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1859, file: !1860, line: 108, baseType: !1921, size: 128)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 104, size: 128, elements: !1922)
!1922 = !{!1923, !1924, !1925}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1921, file: !1860, line: 105, baseType: !176, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1921, file: !1860, line: 106, baseType: !87, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1921, file: !1860, line: 107, baseType: !216, size: 32, offset: 96)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1083, file: !731, line: 1067, baseType: !1711, offset: 11136)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1083, file: !731, line: 1099, baseType: !1928, size: 64, offset: 11136)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !731, line: 56, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1083, file: !731, line: 1103, baseType: !11, size: 128, offset: 11200)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1083, file: !731, line: 1104, baseType: !1932, size: 64, offset: 11328)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !731, line: 46, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1083, file: !731, line: 1105, baseType: !1055, size: 192, offset: 11392)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1083, file: !731, line: 1106, baseType: !216, size: 32, offset: 11584)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1083, file: !731, line: 1109, baseType: !1937, size: 128, offset: 11648)
!1937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1938, size: 128, elements: !1445)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !731, line: 51, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1083, file: !731, line: 1110, baseType: !1055, size: 192, offset: 11776)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1083, file: !731, line: 1111, baseType: !11, size: 128, offset: 11968)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1083, file: !731, line: 1173, baseType: !1943, size: 64, offset: 12096)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1945, line: 62, size: 256, align: 256, elements: !1946)
!1945 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1946 = !{!1947, !1948, !1949, !1954}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1944, file: !1945, line: 75, baseType: !247, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1944, file: !1945, line: 90, baseType: !247, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1944, file: !1945, line: 124, baseType: !1950, size: 64, offset: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1944, file: !1945, line: 109, size: 64, elements: !1951)
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1950, file: !1945, line: 110, baseType: !251, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1950, file: !1945, line: 112, baseType: !251, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1944, file: !1945, line: 144, baseType: !247, size: 32, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1083, file: !731, line: 1174, baseType: !246, size: 32, offset: 12160)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1083, file: !731, line: 1179, baseType: !152, size: 64, offset: 12224)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1083, file: !731, line: 1182, baseType: !1958, size: 128, offset: 12288)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1033, line: 76, size: 128, elements: !1959)
!1959 = !{!1960, !1965, !1966}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1958, file: !1033, line: 85, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1962, line: 7, size: 64, elements: !1963)
!1962 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1963 = !{!1964}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1961, file: !1962, line: 12, baseType: !1236, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1958, file: !1033, line: 88, baseType: !318, size: 8, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1958, file: !1033, line: 95, baseType: !318, size: 8, offset: 72)
!1967 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !731, line: 1184, baseType: !1968, size: 128, offset: 12416)
!1968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1083, file: !731, line: 1184, size: 128, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1968, file: !731, line: 1185, baseType: !1095, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1968, file: !731, line: 1186, baseType: !195, size: 128, align: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1083, file: !731, line: 1190, baseType: !729, size: 64, offset: 12544)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1083, file: !731, line: 1192, baseType: !1974, size: 128, offset: 12608)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1033, line: 64, size: 128, elements: !1975)
!1975 = !{!1976, !1977, !1978}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1974, file: !1033, line: 65, baseType: !552, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1974, file: !1033, line: 67, baseType: !247, size: 32, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1974, file: !1033, line: 68, baseType: !247, size: 32, offset: 96)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1083, file: !731, line: 1206, baseType: !87, size: 32, offset: 12736)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1083, file: !731, line: 1207, baseType: !87, size: 32, offset: 12768)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1083, file: !731, line: 1209, baseType: !152, size: 64, offset: 12800)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1083, file: !731, line: 1219, baseType: !250, size: 64, offset: 12864)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1083, file: !731, line: 1220, baseType: !250, size: 64, offset: 12928)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1083, file: !731, line: 1317, baseType: !87, size: 32, offset: 12992)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1083, file: !731, line: 1319, baseType: !1082, size: 64, offset: 13056)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1083, file: !731, line: 1322, baseType: !1987, size: 64, offset: 13120)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1989, line: 56, size: 512, elements: !1990)
!1989 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1990 = !{!1991, !1992, !1993, !1994, !1995, !1996, !1997, !1999}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1988, file: !1989, line: 57, baseType: !1987, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1988, file: !1989, line: 58, baseType: !176, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1988, file: !1989, line: 59, baseType: !152, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1988, file: !1989, line: 60, baseType: !152, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1988, file: !1989, line: 61, baseType: !652, size: 64, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1988, file: !1989, line: 62, baseType: !216, size: 32, offset: 320)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1988, file: !1989, line: 63, baseType: !1998, size: 64, offset: 384)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !12, line: 153, baseType: !250)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1988, file: !1989, line: 64, baseType: !2000, size: 64, offset: 448)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1083, file: !731, line: 1326, baseType: !1095, size: 32, offset: 13184)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1083, file: !731, line: 1342, baseType: !176, size: 64, offset: 13248)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1083, file: !731, line: 1343, baseType: !251, size: 64, offset: 13312)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1083, file: !731, line: 1344, baseType: !250, size: 64, offset: 13376)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1083, file: !731, line: 1345, baseType: !251, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1083, file: !731, line: 1346, baseType: !251, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1083, file: !731, line: 1347, baseType: !251, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1083, file: !731, line: 1348, baseType: !195, size: 128, align: 64, offset: 13504)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1083, file: !731, line: 1358, baseType: !2011, size: 34816, offset: 13824)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2012, line: 485, size: 34816, elements: !2013)
!2012 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2013 = !{!2014, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2043, !2044, !2045, !2046, !2047, !2048, !2051, !2052, !2053}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2011, file: !2012, line: 487, baseType: !2015, size: 192)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 192, elements: !104)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2017, line: 16, size: 64, elements: !2018)
!2017 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2018 = !{!2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2016, file: !2017, line: 17, baseType: !35, size: 16)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2016, file: !2017, line: 18, baseType: !35, size: 16, offset: 16)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2016, file: !2017, line: 19, baseType: !35, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2016, file: !2017, line: 19, baseType: !35, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2016, file: !2017, line: 19, baseType: !35, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2016, file: !2017, line: 19, baseType: !35, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2016, file: !2017, line: 19, baseType: !35, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2016, file: !2017, line: 20, baseType: !35, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2016, file: !2017, line: 20, baseType: !35, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2016, file: !2017, line: 20, baseType: !35, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2016, file: !2017, line: 20, baseType: !35, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2016, file: !2017, line: 20, baseType: !35, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2016, file: !2017, line: 20, baseType: !35, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2011, file: !2012, line: 491, baseType: !152, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2011, file: !2012, line: 495, baseType: !38, size: 16, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2011, file: !2012, line: 496, baseType: !38, size: 16, offset: 272)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2011, file: !2012, line: 497, baseType: !38, size: 16, offset: 288)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2011, file: !2012, line: 498, baseType: !38, size: 16, offset: 304)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2011, file: !2012, line: 502, baseType: !152, size: 64, offset: 320)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2011, file: !2012, line: 503, baseType: !152, size: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2011, file: !2012, line: 514, baseType: !2040, size: 256, offset: 448)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2041, size: 256, elements: !1037)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2012, line: 483, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2011, file: !2012, line: 516, baseType: !152, size: 64, offset: 704)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2011, file: !2012, line: 518, baseType: !152, size: 64, offset: 768)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2011, file: !2012, line: 520, baseType: !152, size: 64, offset: 832)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2011, file: !2012, line: 521, baseType: !152, size: 64, offset: 896)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2011, file: !2012, line: 522, baseType: !152, size: 64, offset: 960)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2011, file: !2012, line: 528, baseType: !2049, size: 64, offset: 1024)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2012, line: 10, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2011, file: !2012, line: 535, baseType: !152, size: 64, offset: 1088)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2011, file: !2012, line: 537, baseType: !216, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2011, file: !2012, line: 540, baseType: !2054, size: 33280, offset: 1536)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2055, line: 317, size: 33280, elements: !2056)
!2055 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2056 = !{!2057, !2058, !2059}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2054, file: !2055, line: 330, baseType: !216, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2054, file: !2055, line: 337, baseType: !152, size: 64, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2054, file: !2055, line: 348, baseType: !2060, size: 32768, offset: 512)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2055, line: 304, size: 32768, elements: !2061)
!2061 = !{!2062, !2077, !2116, !2166, !2179}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2060, file: !2055, line: 305, baseType: !2063, size: 896)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2055, line: 12, size: 896, elements: !2064)
!2064 = !{!2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2076}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2063, file: !2055, line: 13, baseType: !246, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2063, file: !2055, line: 14, baseType: !246, size: 32, offset: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2063, file: !2055, line: 15, baseType: !246, size: 32, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2063, file: !2055, line: 16, baseType: !246, size: 32, offset: 96)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2063, file: !2055, line: 17, baseType: !246, size: 32, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2063, file: !2055, line: 18, baseType: !246, size: 32, offset: 160)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2063, file: !2055, line: 19, baseType: !246, size: 32, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2063, file: !2055, line: 22, baseType: !2073, size: 640, offset: 224)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 640, elements: !2074)
!2074 = !{!2075}
!2075 = !DISubrange(count: 20)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2063, file: !2055, line: 25, baseType: !246, size: 32, offset: 864)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2060, file: !2055, line: 306, baseType: !2078, size: 4096, align: 128)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2055, line: 34, size: 4096, align: 128, elements: !2079)
!2079 = !{!2080, !2081, !2082, !2083, !2084, !2099, !2100, !2101, !2105, !2107, !2111}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2078, file: !2055, line: 35, baseType: !35, size: 16)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2078, file: !2055, line: 36, baseType: !35, size: 16, offset: 16)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2078, file: !2055, line: 37, baseType: !35, size: 16, offset: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2078, file: !2055, line: 38, baseType: !35, size: 16, offset: 48)
!2084 = !DIDerivedType(tag: DW_TAG_member, scope: !2078, file: !2055, line: 39, baseType: !2085, size: 128, offset: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2078, file: !2055, line: 39, size: 128, elements: !2086)
!2086 = !{!2087, !2092}
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !2085, file: !2055, line: 40, baseType: !2088, size: 128)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2085, file: !2055, line: 40, size: 128, elements: !2089)
!2089 = !{!2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2088, file: !2055, line: 41, baseType: !250, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2088, file: !2055, line: 42, baseType: !250, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, scope: !2085, file: !2055, line: 44, baseType: !2093, size: 128)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2085, file: !2055, line: 44, size: 128, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2093, file: !2055, line: 45, baseType: !246, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2093, file: !2055, line: 46, baseType: !246, size: 32, offset: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2093, file: !2055, line: 47, baseType: !246, size: 32, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2093, file: !2055, line: 48, baseType: !246, size: 32, offset: 96)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2078, file: !2055, line: 51, baseType: !246, size: 32, offset: 192)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2078, file: !2055, line: 52, baseType: !246, size: 32, offset: 224)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2078, file: !2055, line: 55, baseType: !2102, size: 1024, offset: 256)
!2102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 1024, elements: !2103)
!2103 = !{!2104}
!2104 = !DISubrange(count: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2078, file: !2055, line: 58, baseType: !2106, size: 2048, offset: 1280)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 2048, elements: !108)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2078, file: !2055, line: 60, baseType: !2108, size: 384, offset: 3328)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 384, elements: !2109)
!2109 = !{!2110}
!2110 = !DISubrange(count: 12)
!2111 = !DIDerivedType(tag: DW_TAG_member, scope: !2078, file: !2055, line: 62, baseType: !2112, size: 384, offset: 3712)
!2112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2078, file: !2055, line: 62, size: 384, elements: !2113)
!2113 = !{!2114, !2115}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2112, file: !2055, line: 63, baseType: !2108, size: 384)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2112, file: !2055, line: 64, baseType: !2108, size: 384)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2060, file: !2055, line: 307, baseType: !2117, size: 1088)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2055, line: 79, size: 1088, elements: !2118)
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2165}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2117, file: !2055, line: 80, baseType: !246, size: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2117, file: !2055, line: 81, baseType: !246, size: 32, offset: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2117, file: !2055, line: 82, baseType: !246, size: 32, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2117, file: !2055, line: 83, baseType: !246, size: 32, offset: 96)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2117, file: !2055, line: 84, baseType: !246, size: 32, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2117, file: !2055, line: 85, baseType: !246, size: 32, offset: 160)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2117, file: !2055, line: 86, baseType: !246, size: 32, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2117, file: !2055, line: 88, baseType: !2073, size: 640, offset: 224)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2117, file: !2055, line: 89, baseType: !1222, size: 8, offset: 864)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2117, file: !2055, line: 90, baseType: !1222, size: 8, offset: 872)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2117, file: !2055, line: 91, baseType: !1222, size: 8, offset: 880)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2117, file: !2055, line: 92, baseType: !1222, size: 8, offset: 888)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2117, file: !2055, line: 93, baseType: !1222, size: 8, offset: 896)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2117, file: !2055, line: 94, baseType: !1222, size: 8, offset: 904)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2117, file: !2055, line: 95, baseType: !2134, size: 64, offset: 960)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2136, line: 11, size: 128, elements: !2137)
!2136 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2137 = !{!2138, !2139}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2135, file: !2136, line: 12, baseType: !138, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2135, file: !2136, line: 13, baseType: !2140, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2142, line: 56, size: 1344, elements: !2143)
!2142 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2143 = !{!2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2141, file: !2142, line: 61, baseType: !152, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2141, file: !2142, line: 62, baseType: !152, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2141, file: !2142, line: 63, baseType: !152, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2141, file: !2142, line: 64, baseType: !152, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2141, file: !2142, line: 65, baseType: !152, size: 64, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2141, file: !2142, line: 66, baseType: !152, size: 64, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2141, file: !2142, line: 68, baseType: !152, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2141, file: !2142, line: 69, baseType: !152, size: 64, offset: 448)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2141, file: !2142, line: 70, baseType: !152, size: 64, offset: 512)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2141, file: !2142, line: 71, baseType: !152, size: 64, offset: 576)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2141, file: !2142, line: 72, baseType: !152, size: 64, offset: 640)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2141, file: !2142, line: 73, baseType: !152, size: 64, offset: 704)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2141, file: !2142, line: 74, baseType: !152, size: 64, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2141, file: !2142, line: 75, baseType: !152, size: 64, offset: 832)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2141, file: !2142, line: 76, baseType: !152, size: 64, offset: 896)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2141, file: !2142, line: 81, baseType: !152, size: 64, offset: 960)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2141, file: !2142, line: 83, baseType: !152, size: 64, offset: 1024)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2141, file: !2142, line: 84, baseType: !152, size: 64, offset: 1088)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2141, file: !2142, line: 85, baseType: !152, size: 64, offset: 1152)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2141, file: !2142, line: 86, baseType: !152, size: 64, offset: 1216)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2141, file: !2142, line: 87, baseType: !152, size: 64, offset: 1280)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2117, file: !2055, line: 96, baseType: !246, size: 32, offset: 1024)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2060, file: !2055, line: 308, baseType: !2167, size: 4608, align: 512)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2055, line: 289, size: 4608, align: 512, elements: !2168)
!2168 = !{!2169, !2170, !2177}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2167, file: !2055, line: 290, baseType: !2078, size: 4096, align: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2167, file: !2055, line: 291, baseType: !2171, size: 512, offset: 4096)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2055, line: 268, size: 512, elements: !2172)
!2172 = !{!2173, !2174, !2175}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2171, file: !2055, line: 269, baseType: !250, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2171, file: !2055, line: 270, baseType: !250, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2171, file: !2055, line: 271, baseType: !2176, size: 384, offset: 128)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 384, elements: !1501)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2167, file: !2055, line: 292, baseType: !2178, offset: 4608)
!2178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, elements: !1599)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2060, file: !2055, line: 309, baseType: !2180, size: 32768)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, size: 32768, elements: !2181)
!2181 = !{!2182}
!2182 = !DISubrange(count: 4096)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1079, file: !554, line: 378, baseType: !2184, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1075, file: !554, line: 384, baseType: !1378, size: 192, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !855, file: !554, line: 500, baseType: !61, offset: 6656)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !855, file: !554, line: 501, baseType: !2188, size: 64, offset: 6656)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !554, line: 387, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !855, file: !554, line: 516, baseType: !1589, size: 64, offset: 6720)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !855, file: !554, line: 519, baseType: !181, size: 64, offset: 6784)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !855, file: !554, line: 521, baseType: !2193, size: 64, offset: 6848)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !554, line: 521, flags: DIFlagFwdDecl)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !855, file: !554, line: 545, baseType: !579, size: 32, offset: 6912)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !855, file: !554, line: 548, baseType: !318, size: 8, offset: 6944)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !855, file: !554, line: 550, baseType: !2198, offset: 6952)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2199, line: 142, elements: !75)
!2199 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !855, file: !554, line: 554, baseType: !1832, size: 256, offset: 6976)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !855, file: !554, line: 557, baseType: !246, size: 32, offset: 7232)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !852, file: !554, line: 565, baseType: !2203, offset: 7296)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, elements: !2204)
!2204 = !{!2205}
!2205 = !DISubrange(count: -1)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !848, file: !554, line: 151, baseType: !579, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !841, file: !554, line: 156, baseType: !61, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !554, line: 159, baseType: !2209, size: 128)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !558, file: !554, line: 159, size: 128, elements: !2210)
!2210 = !{!2211, !2282}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2209, file: !554, line: 161, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !2214, line: 110, size: 1152, elements: !2215)
!2214 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!2215 = !{!2216, !2226, !2247, !2248, !2249, !2256, !2257, !2269, !2270, !2271}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2213, file: !2214, line: 111, baseType: !2217, size: 384)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !2214, line: 19, size: 384, elements: !2218)
!2218 = !{!2219, !2221, !2222, !2223, !2224, !2225}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2217, file: !2214, line: 20, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2217, file: !2214, line: 21, baseType: !2220, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2217, file: !2214, line: 22, baseType: !2220, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2217, file: !2214, line: 23, baseType: !152, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2217, file: !2214, line: 24, baseType: !152, size: 64, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2217, file: !2214, line: 25, baseType: !152, size: 64, offset: 320)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2213, file: !2214, line: 112, baseType: !2227, size: 64, offset: 384)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2229, line: 105, size: 128, elements: !2230)
!2229 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2230 = !{!2231, !2232}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2228, file: !2229, line: 110, baseType: !152, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2228, file: !2229, line: 118, baseType: !2233, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2229, line: 95, size: 448, elements: !2235)
!2235 = !{!2236, !2237, !2242, !2243, !2244, !2245, !2246}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2234, file: !2229, line: 96, baseType: !603, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2234, file: !2229, line: 97, baseType: !2238, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2229, line: 60, baseType: !2240)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{null, !2227}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2234, file: !2229, line: 98, baseType: !2238, size: 64, offset: 128)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2234, file: !2229, line: 99, baseType: !318, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2234, file: !2229, line: 100, baseType: !318, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2234, file: !2229, line: 101, baseType: !195, size: 128, align: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2234, file: !2229, line: 102, baseType: !2227, size: 64, offset: 384)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2213, file: !2214, line: 113, baseType: !2228, size: 128, offset: 448)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2213, file: !2214, line: 114, baseType: !1378, size: 192, offset: 576)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2213, file: !2214, line: 115, baseType: !2250, size: 32, offset: 768)
!2250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !2214, line: 59, baseType: !216, size: 32, elements: !2251)
!2251 = !{!2252, !2253, !2254, !2255}
!2252 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!2253 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!2254 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!2255 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2213, file: !2214, line: 116, baseType: !216, size: 32, offset: 800)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2213, file: !2214, line: 117, baseType: !2258, size: 64, offset: 832)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2260)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !2214, line: 67, size: 256, elements: !2261)
!2261 = !{!2262, !2263, !2267, !2268}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2260, file: !2214, line: 73, baseType: !672, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2260, file: !2214, line: 78, baseType: !2264, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{null, !2212}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2260, file: !2214, line: 83, baseType: !2264, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2260, file: !2214, line: 89, baseType: !904, size: 64, offset: 192)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2213, file: !2214, line: 118, baseType: !176, size: 64, offset: 896)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2213, file: !2214, line: 119, baseType: !87, size: 32, offset: 960)
!2271 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !2214, line: 120, baseType: !2272, size: 128, offset: 1024)
!2272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2213, file: !2214, line: 120, size: 128, elements: !2273)
!2273 = !{!2274, !2280}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2272, file: !2214, line: 121, baseType: !2275, size: 128)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2276, line: 6, size: 128, elements: !2277)
!2276 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2277 = !{!2278, !2279}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2275, file: !2276, line: 7, baseType: !250, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2275, file: !2276, line: 8, baseType: !250, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2272, file: !2214, line: 122, baseType: !2281)
!2281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2275, elements: !1599)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2209, file: !554, line: 162, baseType: !176, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !558, file: !554, line: 176, baseType: !195, size: 128, align: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, scope: !553, file: !554, line: 179, baseType: !2285, size: 32, offset: 384)
!2285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !553, file: !554, line: 179, size: 32, elements: !2286)
!2286 = !{!2287, !2288, !2289, !2290}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2285, file: !554, line: 184, baseType: !579, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2285, file: !554, line: 192, baseType: !216, size: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2285, file: !554, line: 194, baseType: !216, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2285, file: !554, line: 195, baseType: !87, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !553, file: !554, line: 199, baseType: !579, size: 32, offset: 416)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !487, file: !183, line: 1964, baseType: !2293, size: 64, offset: 1344)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!138, !427, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2298, line: 12, size: 256, elements: !2299)
!2298 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2299 = !{!2300, !2301, !2302, !2303, !2304}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2297, file: !2298, line: 13, baseType: !575, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2297, file: !2298, line: 16, baseType: !87, size: 32, offset: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2297, file: !2298, line: 23, baseType: !152, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2297, file: !2298, line: 30, baseType: !152, size: 64, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2297, file: !2298, line: 33, baseType: !2305, size: 64, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !554, line: 27, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !487, file: !183, line: 1966, baseType: !2293, size: 64, offset: 1408)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !428, file: !183, line: 1424, baseType: !2309, size: 64, offset: 448)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2311)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2312, line: 322, size: 704, elements: !2313)
!2312 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!2313 = !{!2314, !2365, !2369, !2373, !2374, !2375, !2376, !2377, !2382, !2387, !2391}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2311, file: !2312, line: 323, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!87, !2318}
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2312, line: 294, size: 1600, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2350, !2351, !2352}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2319, file: !2312, line: 295, baseType: !469, size: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2319, file: !2312, line: 296, baseType: !11, size: 128, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2319, file: !2312, line: 297, baseType: !11, size: 128, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2319, file: !2312, line: 298, baseType: !11, size: 128, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2319, file: !2312, line: 299, baseType: !1055, size: 192, offset: 512)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2319, file: !2312, line: 300, baseType: !61, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2319, file: !2312, line: 301, baseType: !579, size: 32, offset: 704)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2319, file: !2312, line: 302, baseType: !427, size: 64, offset: 768)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2319, file: !2312, line: 303, baseType: !2330, size: 64, offset: 832)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2312, line: 68, size: 64, elements: !2331)
!2331 = !{!2332, !2344}
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !2330, file: !2312, line: 69, baseType: !2333, size: 32)
!2333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2330, file: !2312, line: 69, size: 32, elements: !2334)
!2334 = !{!2335, !2336, !2337}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2333, file: !2312, line: 70, baseType: !263, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2333, file: !2312, line: 71, baseType: !271, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2333, file: !2312, line: 72, baseType: !2338, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2339, line: 24, baseType: !2340)
!2339 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2339, line: 22, size: 32, elements: !2341)
!2341 = !{!2342}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2340, file: !2339, line: 23, baseType: !2343, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2339, line: 20, baseType: !269)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2330, file: !2312, line: 74, baseType: !2345, size: 32, offset: 32)
!2345 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2312, line: 54, baseType: !216, size: 32, elements: !2346)
!2346 = !{!2347, !2348, !2349}
!2347 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!2348 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!2349 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2319, file: !2312, line: 304, baseType: !359, size: 64, offset: 896)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2319, file: !2312, line: 305, baseType: !152, size: 64, offset: 960)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2319, file: !2312, line: 306, baseType: !2353, size: 576, offset: 1024)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2312, line: 205, size: 576, elements: !2354)
!2354 = !{!2355, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2353, file: !2312, line: 206, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2312, line: 66, baseType: !361)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2353, file: !2312, line: 207, baseType: !2356, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2353, file: !2312, line: 208, baseType: !2356, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2353, file: !2312, line: 209, baseType: !2356, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2353, file: !2312, line: 210, baseType: !2356, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2353, file: !2312, line: 211, baseType: !2356, size: 64, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2353, file: !2312, line: 212, baseType: !2356, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2353, file: !2312, line: 213, baseType: !367, size: 64, offset: 448)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2353, file: !2312, line: 214, baseType: !367, size: 64, offset: 512)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2311, file: !2312, line: 324, baseType: !2366, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!2318, !427, !87}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2311, file: !2312, line: 325, baseType: !2370, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null, !2318}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2311, file: !2312, line: 326, baseType: !2315, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2311, file: !2312, line: 327, baseType: !2315, size: 64, offset: 256)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2311, file: !2312, line: 328, baseType: !2315, size: 64, offset: 320)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2311, file: !2312, line: 329, baseType: !516, size: 64, offset: 384)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2311, file: !2312, line: 332, baseType: !2378, size: 64, offset: 448)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!2381, !257}
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2311, file: !2312, line: 333, baseType: !2383, size: 64, offset: 512)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!87, !257, !2386}
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2311, file: !2312, line: 335, baseType: !2388, size: 64, offset: 576)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!87, !257, !2381}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2311, file: !2312, line: 337, baseType: !2392, size: 64, offset: 640)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!87, !427, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !428, file: !183, line: 1425, baseType: !2397, size: 64, offset: 512)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2312, line: 428, size: 704, elements: !2400)
!2400 = !{!2401, !2405, !2406, !2410, !2411, !2412, !2427, !2450, !2454, !2455, !2478}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2399, file: !2312, line: 429, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!87, !427, !87, !87, !377}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2399, file: !2312, line: 430, baseType: !516, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2399, file: !2312, line: 431, baseType: !2407, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!87, !427, !216}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2399, file: !2312, line: 432, baseType: !2407, size: 64, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2399, file: !2312, line: 433, baseType: !516, size: 64, offset: 256)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2399, file: !2312, line: 434, baseType: !2413, size: 64, offset: 320)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!87, !427, !87, !2416}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2312, line: 415, size: 256, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2417, file: !2312, line: 416, baseType: !87, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2417, file: !2312, line: 417, baseType: !216, size: 32, offset: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2417, file: !2312, line: 418, baseType: !216, size: 32, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2417, file: !2312, line: 420, baseType: !216, size: 32, offset: 96)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2417, file: !2312, line: 421, baseType: !216, size: 32, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2417, file: !2312, line: 422, baseType: !216, size: 32, offset: 160)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2417, file: !2312, line: 423, baseType: !216, size: 32, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2417, file: !2312, line: 424, baseType: !216, size: 32, offset: 224)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2399, file: !2312, line: 435, baseType: !2428, size: 64, offset: 384)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!87, !427, !2330, !2431}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2312, line: 343, size: 960, elements: !2433)
!2433 = !{!2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2432, file: !2312, line: 344, baseType: !87, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2432, file: !2312, line: 345, baseType: !250, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2432, file: !2312, line: 346, baseType: !250, size: 64, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2432, file: !2312, line: 347, baseType: !250, size: 64, offset: 192)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2432, file: !2312, line: 348, baseType: !250, size: 64, offset: 256)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2432, file: !2312, line: 349, baseType: !250, size: 64, offset: 320)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2432, file: !2312, line: 350, baseType: !250, size: 64, offset: 384)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2432, file: !2312, line: 351, baseType: !609, size: 64, offset: 448)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2432, file: !2312, line: 353, baseType: !609, size: 64, offset: 512)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2432, file: !2312, line: 354, baseType: !87, size: 32, offset: 576)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2432, file: !2312, line: 355, baseType: !87, size: 32, offset: 608)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2432, file: !2312, line: 356, baseType: !250, size: 64, offset: 640)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2432, file: !2312, line: 357, baseType: !250, size: 64, offset: 704)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2432, file: !2312, line: 358, baseType: !250, size: 64, offset: 768)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2432, file: !2312, line: 359, baseType: !609, size: 64, offset: 832)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2432, file: !2312, line: 360, baseType: !87, size: 32, offset: 896)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2399, file: !2312, line: 436, baseType: !2451, size: 64, offset: 448)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!87, !427, !2395, !2431}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2399, file: !2312, line: 438, baseType: !2428, size: 64, offset: 512)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2399, file: !2312, line: 439, baseType: !2456, size: 64, offset: 576)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!87, !427, !2459}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2312, line: 409, size: 1408, elements: !2461)
!2461 = !{!2462, !2463}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2460, file: !2312, line: 410, baseType: !216, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2460, file: !2312, line: 411, baseType: !2464, size: 1344, offset: 64)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2465, size: 1344, elements: !104)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2312, line: 395, size: 448, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2477}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2465, file: !2312, line: 396, baseType: !216, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2465, file: !2312, line: 397, baseType: !216, size: 32, offset: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2465, file: !2312, line: 399, baseType: !216, size: 32, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2465, file: !2312, line: 400, baseType: !216, size: 32, offset: 96)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2465, file: !2312, line: 401, baseType: !216, size: 32, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2465, file: !2312, line: 402, baseType: !216, size: 32, offset: 160)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2465, file: !2312, line: 403, baseType: !216, size: 32, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2465, file: !2312, line: 404, baseType: !252, size: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2465, file: !2312, line: 405, baseType: !2476, size: 64, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !12, line: 126, baseType: !250)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2465, file: !2312, line: 406, baseType: !2476, size: 64, offset: 384)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2399, file: !2312, line: 440, baseType: !2407, size: 64, offset: 640)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !428, file: !183, line: 1426, baseType: !2480, size: 64, offset: 576)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2482)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !183, line: 49, flags: DIFlagFwdDecl)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !428, file: !183, line: 1427, baseType: !152, size: 64, offset: 640)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !428, file: !183, line: 1428, baseType: !152, size: 64, offset: 704)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !428, file: !183, line: 1429, baseType: !152, size: 64, offset: 768)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !428, file: !183, line: 1430, baseType: !212, size: 64, offset: 832)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !428, file: !183, line: 1431, baseType: !599, size: 256, offset: 896)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !428, file: !183, line: 1432, baseType: !87, size: 32, offset: 1152)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !428, file: !183, line: 1433, baseType: !579, size: 32, offset: 1184)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !428, file: !183, line: 1437, baseType: !2491, size: 64, offset: 1216)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2494)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !183, line: 1437, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !428, file: !183, line: 1449, baseType: !2496, size: 64, offset: 1280)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !229, line: 34, size: 64, elements: !2497)
!2497 = !{!2498}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2496, file: !229, line: 35, baseType: !232, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !428, file: !183, line: 1450, baseType: !11, size: 128, offset: 1344)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !428, file: !183, line: 1451, baseType: !2501, size: 64, offset: 1472)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !183, line: 699, flags: DIFlagFwdDecl)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !428, file: !183, line: 1452, baseType: !1798, size: 64, offset: 1536)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !428, file: !183, line: 1453, baseType: !2505, size: 64, offset: 1600)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !183, line: 1453, flags: DIFlagFwdDecl)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !428, file: !183, line: 1454, baseType: !469, size: 128, offset: 1664)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !428, file: !183, line: 1455, baseType: !216, size: 32, offset: 1792)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !428, file: !183, line: 1456, baseType: !2510, size: 2432, offset: 1856)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2312, line: 518, size: 2432, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2516, !2548}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2510, file: !2312, line: 519, baseType: !216, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2510, file: !2312, line: 520, baseType: !599, size: 256, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2510, file: !2312, line: 521, baseType: !2515, size: 192, offset: 320)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 192, elements: !104)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2510, file: !2312, line: 522, baseType: !2517, size: 1728, offset: 512)
!2517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2518, size: 1728, elements: !104)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2312, line: 222, size: 576, elements: !2519)
!2519 = !{!2520, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2518, file: !2312, line: 223, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2312, line: 443, size: 256, elements: !2523)
!2523 = !{!2524, !2525, !2538, !2539}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2522, file: !2312, line: 444, baseType: !87, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2522, file: !2312, line: 445, baseType: !2526, size: 64, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2528)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2312, line: 310, size: 512, elements: !2529)
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2528, file: !2312, line: 311, baseType: !516, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2528, file: !2312, line: 312, baseType: !516, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2528, file: !2312, line: 313, baseType: !516, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2528, file: !2312, line: 314, baseType: !516, size: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2528, file: !2312, line: 315, baseType: !2315, size: 64, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2528, file: !2312, line: 316, baseType: !2315, size: 64, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2528, file: !2312, line: 317, baseType: !2315, size: 64, offset: 384)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2528, file: !2312, line: 318, baseType: !2392, size: 64, offset: 448)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2522, file: !2312, line: 446, baseType: !460, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2522, file: !2312, line: 447, baseType: !2521, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2518, file: !2312, line: 224, baseType: !87, size: 32, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2518, file: !2312, line: 226, baseType: !11, size: 128, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2518, file: !2312, line: 227, baseType: !152, size: 64, offset: 256)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2518, file: !2312, line: 228, baseType: !216, size: 32, offset: 320)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2518, file: !2312, line: 229, baseType: !216, size: 32, offset: 352)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2518, file: !2312, line: 230, baseType: !2356, size: 64, offset: 384)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2518, file: !2312, line: 231, baseType: !2356, size: 64, offset: 448)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2518, file: !2312, line: 232, baseType: !176, size: 64, offset: 512)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2510, file: !2312, line: 523, baseType: !2549, size: 192, offset: 2240)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2526, size: 192, elements: !104)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !428, file: !183, line: 1458, baseType: !2551, size: 2112, offset: 4288)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !183, line: 1410, size: 2112, elements: !2552)
!2552 = !{!2553, !2554, !2555}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2551, file: !183, line: 1411, baseType: !87, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2551, file: !183, line: 1412, baseType: !1357, size: 128, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2551, file: !183, line: 1413, baseType: !2556, size: 1920, offset: 192)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2557, size: 1920, elements: !104)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2558, line: 12, size: 640, elements: !2559)
!2558 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2559 = !{!2560, !2568, !2570, !2575, !2576}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2557, file: !2558, line: 13, baseType: !2561, size: 320)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2562, line: 17, size: 320, elements: !2563)
!2562 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2563 = !{!2564, !2565, !2566, !2567}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2561, file: !2562, line: 18, baseType: !87, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2561, file: !2562, line: 19, baseType: !87, size: 32, offset: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2561, file: !2562, line: 20, baseType: !1357, size: 128, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2561, file: !2562, line: 22, baseType: !195, size: 128, align: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2557, file: !2558, line: 14, baseType: !2569, size: 64, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2557, file: !2558, line: 15, baseType: !2571, size: 64, offset: 384)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2572, line: 16, size: 64, elements: !2573)
!2572 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2573 = !{!2574}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2571, file: !2572, line: 17, baseType: !1082, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2557, file: !2558, line: 16, baseType: !1357, size: 128, offset: 448)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2557, file: !2558, line: 17, baseType: !579, size: 32, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !428, file: !183, line: 1465, baseType: !176, size: 64, offset: 6400)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !428, file: !183, line: 1468, baseType: !246, size: 32, offset: 6464)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !428, file: !183, line: 1470, baseType: !367, size: 64, offset: 6528)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !428, file: !183, line: 1471, baseType: !367, size: 64, offset: 6592)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !428, file: !183, line: 1473, baseType: !247, size: 32, offset: 6656)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !428, file: !183, line: 1474, baseType: !2583, size: 64, offset: 6720)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !183, line: 603, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !428, file: !183, line: 1477, baseType: !2586, size: 256, offset: 6784)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !2103)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !428, file: !183, line: 1478, baseType: !2588, size: 128, offset: 7040)
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2589, line: 18, baseType: !2590)
!2589 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2589, line: 16, size: 128, elements: !2591)
!2591 = !{!2592}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2590, file: !2589, line: 17, baseType: !27, size: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !428, file: !183, line: 1480, baseType: !216, size: 32, offset: 7168)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !428, file: !183, line: 1481, baseType: !2595, size: 32, offset: 7200)
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !12, line: 150, baseType: !216)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !428, file: !183, line: 1487, baseType: !1055, size: 192, offset: 7232)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !428, file: !183, line: 1493, baseType: !49, size: 64, offset: 7424)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !428, file: !183, line: 1495, baseType: !2599, size: 64, offset: 7488)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2601)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !210, line: 135, size: 1024, align: 512, elements: !2602)
!2602 = !{!2603, !2607, !2608, !2615, !2621, !2625, !2629, !2633, !2634, !2638, !2642, !2647, !2651}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2601, file: !210, line: 136, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!87, !212, !216}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2601, file: !210, line: 137, baseType: !2604, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2601, file: !210, line: 138, baseType: !2609, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!87, !2612, !2614}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2601, file: !210, line: 139, baseType: !2616, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!87, !2612, !216, !49, !2619}
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2601, file: !210, line: 141, baseType: !2622, size: 64, offset: 256)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!87, !2612}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2601, file: !210, line: 142, baseType: !2626, size: 64, offset: 320)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!87, !212}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2601, file: !210, line: 143, baseType: !2630, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null, !212}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2601, file: !210, line: 144, baseType: !2630, size: 64, offset: 448)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2601, file: !210, line: 145, baseType: !2635, size: 64, offset: 512)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{null, !212, !257}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2601, file: !210, line: 146, baseType: !2639, size: 64, offset: 576)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!103, !212, !103, !87}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2601, file: !210, line: 147, baseType: !2643, size: 64, offset: 640)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!208, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2601, file: !210, line: 148, baseType: !2648, size: 64, offset: 704)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!87, !377, !318}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2601, file: !210, line: 149, baseType: !2652, size: 64, offset: 768)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!212, !212, !2655}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !428, file: !183, line: 1500, baseType: !87, size: 32, offset: 7552)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !428, file: !183, line: 1502, baseType: !2659, size: 448, offset: 7616)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2298, line: 60, size: 448, elements: !2660)
!2660 = !{!2661, !2666, !2667, !2668, !2669, !2670, !2671}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2659, file: !2298, line: 61, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!152, !2665, !2296}
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2659, file: !2298, line: 63, baseType: !2662, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2659, file: !2298, line: 66, baseType: !138, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2659, file: !2298, line: 67, baseType: !87, size: 32, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2659, file: !2298, line: 68, baseType: !216, size: 32, offset: 224)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2659, file: !2298, line: 71, baseType: !11, size: 128, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2659, file: !2298, line: 77, baseType: !2672, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !428, file: !183, line: 1505, baseType: !603, size: 64, offset: 8064)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !428, file: !183, line: 1508, baseType: !603, size: 64, offset: 8128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !428, file: !183, line: 1511, baseType: !87, size: 32, offset: 8192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !428, file: !183, line: 1514, baseType: !786, size: 32, offset: 8224)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !428, file: !183, line: 1517, baseType: !2678, size: 64, offset: 8256)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1833, line: 18, flags: DIFlagFwdDecl)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !428, file: !183, line: 1518, baseType: !465, size: 64, offset: 8320)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !428, file: !183, line: 1525, baseType: !1589, size: 64, offset: 8384)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !428, file: !183, line: 1532, baseType: !2683, size: 64, offset: 8448)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2684, line: 52, size: 64, elements: !2685)
!2684 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2685 = !{!2686}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2683, file: !2684, line: 53, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2684, line: 40, size: 256, elements: !2689)
!2689 = !{!2690, !2691, !2696}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2688, file: !2684, line: 42, baseType: !61)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2688, file: !2684, line: 44, baseType: !2692, size: 192)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2684, line: 28, size: 192, elements: !2693)
!2693 = !{!2694, !2695}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2692, file: !2684, line: 29, baseType: !11, size: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2692, file: !2684, line: 31, baseType: !138, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2688, file: !2684, line: 49, baseType: !138, size: 64, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !428, file: !183, line: 1533, baseType: !2683, size: 64, offset: 8512)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !428, file: !183, line: 1534, baseType: !195, size: 128, align: 64, offset: 8576)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !428, file: !183, line: 1535, baseType: !1832, size: 256, offset: 8704)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !428, file: !183, line: 1537, baseType: !1055, size: 192, offset: 8960)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !428, file: !183, line: 1542, baseType: !87, size: 32, offset: 9152)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !428, file: !183, line: 1545, baseType: !61, offset: 9184)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !428, file: !183, line: 1546, baseType: !11, size: 128, offset: 9216)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !428, file: !183, line: 1548, baseType: !61, offset: 9344)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !428, file: !183, line: 1549, baseType: !11, size: 128, offset: 9344)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !258, file: !183, line: 624, baseType: !565, size: 64, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !258, file: !183, line: 631, baseType: !152, size: 64, offset: 320)
!2708 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !183, line: 639, baseType: !2709, size: 32, offset: 384)
!2709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !258, file: !183, line: 639, size: 32, elements: !2710)
!2710 = !{!2711, !2713}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2709, file: !183, line: 640, baseType: !2712, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2709, file: !183, line: 641, baseType: !216, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !258, file: !183, line: 643, baseType: !341, size: 32, offset: 416)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !258, file: !183, line: 644, baseType: !359, size: 64, offset: 448)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !258, file: !183, line: 645, baseType: !363, size: 128, offset: 512)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !258, file: !183, line: 646, baseType: !363, size: 128, offset: 640)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !258, file: !183, line: 647, baseType: !363, size: 128, offset: 768)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !258, file: !183, line: 648, baseType: !61, offset: 896)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !258, file: !183, line: 649, baseType: !38, size: 16, offset: 896)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !258, file: !183, line: 650, baseType: !1222, size: 8, offset: 912)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !258, file: !183, line: 651, baseType: !1222, size: 8, offset: 920)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !258, file: !183, line: 652, baseType: !2476, size: 64, offset: 960)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !258, file: !183, line: 659, baseType: !152, size: 64, offset: 1024)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !258, file: !183, line: 660, baseType: !599, size: 256, offset: 1088)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !258, file: !183, line: 662, baseType: !152, size: 64, offset: 1344)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !258, file: !183, line: 663, baseType: !152, size: 64, offset: 1408)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !258, file: !183, line: 665, baseType: !469, size: 128, offset: 1472)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !258, file: !183, line: 666, baseType: !11, size: 128, offset: 1600)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !258, file: !183, line: 675, baseType: !11, size: 128, offset: 1728)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !258, file: !183, line: 676, baseType: !11, size: 128, offset: 1856)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !258, file: !183, line: 677, baseType: !11, size: 128, offset: 1984)
!2733 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !183, line: 678, baseType: !2734, size: 128, offset: 2112)
!2734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !258, file: !183, line: 678, size: 128, elements: !2735)
!2735 = !{!2736, !2737}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2734, file: !183, line: 679, baseType: !465, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2734, file: !183, line: 680, baseType: !195, size: 128, align: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !258, file: !183, line: 682, baseType: !605, size: 64, offset: 2240)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !258, file: !183, line: 683, baseType: !605, size: 64, offset: 2304)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !258, file: !183, line: 684, baseType: !579, size: 32, offset: 2368)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !258, file: !183, line: 685, baseType: !579, size: 32, offset: 2400)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !258, file: !183, line: 686, baseType: !579, size: 32, offset: 2432)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !258, file: !183, line: 688, baseType: !579, size: 32, offset: 2464)
!2744 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !183, line: 690, baseType: !2745, size: 64, offset: 2496)
!2745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !258, file: !183, line: 690, size: 64, elements: !2746)
!2746 = !{!2747, !2970}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2745, file: !183, line: 691, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2750)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !183, line: 1822, size: 2048, elements: !2751)
!2751 = !{!2752, !2753, !2757, !2762, !2766, !2767, !2768, !2772, !2785, !2786, !2794, !2798, !2799, !2803, !2804, !2808, !2813, !2814, !2818, !2822, !2930, !2934, !2935, !2939, !2940, !2944, !2948, !2953, !2957, !2961, !2965, !2969}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2750, file: !183, line: 1823, baseType: !460, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2750, file: !183, line: 1824, baseType: !2754, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!359, !181, !359, !87}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2750, file: !183, line: 1825, baseType: !2758, size: 64, offset: 128)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!134, !181, !103, !149, !2761}
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2750, file: !183, line: 1826, baseType: !2763, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!134, !181, !49, !149, !2761}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2750, file: !183, line: 1827, baseType: !676, size: 64, offset: 256)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2750, file: !183, line: 1828, baseType: !676, size: 64, offset: 320)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2750, file: !183, line: 1829, baseType: !2769, size: 64, offset: 384)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!87, !679, !318}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2750, file: !183, line: 1830, baseType: !2773, size: 64, offset: 448)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!87, !181, !2776}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !183, line: 1776, size: 128, elements: !2778)
!2778 = !{!2779, !2784}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2777, file: !183, line: 1777, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !183, line: 1773, baseType: !2781)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!87, !2776, !49, !87, !359, !250, !216}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2777, file: !183, line: 1778, baseType: !359, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2750, file: !183, line: 1831, baseType: !2773, size: 64, offset: 512)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2750, file: !183, line: 1832, baseType: !2787, size: 64, offset: 576)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!2790, !181, !2792}
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2791, line: 52, baseType: !216)
!2791 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !183, line: 56, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2750, file: !183, line: 1833, baseType: !2795, size: 64, offset: 640)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!138, !181, !216, !152}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2750, file: !183, line: 1834, baseType: !2795, size: 64, offset: 704)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2750, file: !183, line: 1835, baseType: !2800, size: 64, offset: 768)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!87, !181, !858}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2750, file: !183, line: 1836, baseType: !152, size: 64, offset: 832)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2750, file: !183, line: 1837, baseType: !2805, size: 64, offset: 896)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!87, !257, !181}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2750, file: !183, line: 1838, baseType: !2809, size: 64, offset: 960)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!87, !181, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !183, line: 1007, baseType: !176)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2750, file: !183, line: 1839, baseType: !2805, size: 64, offset: 1024)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2750, file: !183, line: 1840, baseType: !2815, size: 64, offset: 1088)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!87, !181, !359, !359, !87}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2750, file: !183, line: 1841, baseType: !2819, size: 64, offset: 1152)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!87, !87, !181, !87}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2750, file: !183, line: 1842, baseType: !2823, size: 64, offset: 1216)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!87, !181, !87, !2826}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !183, line: 1062, size: 1664, elements: !2828)
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2860, !2861, !2862, !2875, !2906}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2827, file: !183, line: 1063, baseType: !2826, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2827, file: !183, line: 1064, baseType: !11, size: 128, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2827, file: !183, line: 1065, baseType: !469, size: 128, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2827, file: !183, line: 1066, baseType: !11, size: 128, offset: 320)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2827, file: !183, line: 1069, baseType: !11, size: 128, offset: 448)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2827, file: !183, line: 1072, baseType: !2812, size: 64, offset: 576)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2827, file: !183, line: 1073, baseType: !216, size: 32, offset: 640)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2827, file: !183, line: 1074, baseType: !30, size: 8, offset: 672)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2827, file: !183, line: 1075, baseType: !216, size: 32, offset: 704)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2827, file: !183, line: 1076, baseType: !87, size: 32, offset: 736)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2827, file: !183, line: 1077, baseType: !1357, size: 128, offset: 768)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2827, file: !183, line: 1078, baseType: !181, size: 64, offset: 896)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2827, file: !183, line: 1079, baseType: !359, size: 64, offset: 960)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2827, file: !183, line: 1080, baseType: !359, size: 64, offset: 1024)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2827, file: !183, line: 1082, baseType: !2844, size: 64, offset: 1088)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !183, line: 1314, size: 320, elements: !2846)
!2846 = !{!2847, !2855, !2856, !2857, !2858, !2859}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2845, file: !183, line: 1315, baseType: !2848)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2849, line: 20, baseType: !2850)
!2849 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2849, line: 11, elements: !2851)
!2851 = !{!2852}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2850, file: !2849, line: 12, baseType: !2853)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !73, line: 33, baseType: !2854)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 31, elements: !75)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2845, file: !183, line: 1316, baseType: !87, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2845, file: !183, line: 1317, baseType: !87, size: 32, offset: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2845, file: !183, line: 1318, baseType: !2844, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2845, file: !183, line: 1319, baseType: !181, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2845, file: !183, line: 1320, baseType: !195, size: 128, align: 64, offset: 192)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2827, file: !183, line: 1084, baseType: !152, size: 64, offset: 1152)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2827, file: !183, line: 1085, baseType: !152, size: 64, offset: 1216)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2827, file: !183, line: 1087, baseType: !2863, size: 64, offset: 1280)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2865)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !183, line: 1011, size: 128, elements: !2866)
!2866 = !{!2867, !2871}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2865, file: !183, line: 1012, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{null, !2826, !2826}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2865, file: !183, line: 1013, baseType: !2872, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{null, !2826}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2827, file: !183, line: 1088, baseType: !2876, size: 64, offset: 1344)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2878)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !183, line: 1016, size: 512, elements: !2879)
!2879 = !{!2880, !2884, !2888, !2889, !2893, !2897, !2901, !2905}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2878, file: !183, line: 1017, baseType: !2881, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!2812, !2812}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2878, file: !183, line: 1018, baseType: !2885, size: 64, offset: 64)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{null, !2812}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2878, file: !183, line: 1019, baseType: !2872, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2878, file: !183, line: 1020, baseType: !2890, size: 64, offset: 192)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!87, !2826, !87}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2878, file: !183, line: 1021, baseType: !2894, size: 64, offset: 256)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!318, !2826}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2878, file: !183, line: 1022, baseType: !2898, size: 64, offset: 320)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!87, !2826, !87, !15}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2878, file: !183, line: 1023, baseType: !2902, size: 64, offset: 384)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !2826, !653}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2878, file: !183, line: 1024, baseType: !2894, size: 64, offset: 448)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2827, file: !183, line: 1097, baseType: !2907, size: 256, offset: 1408)
!2907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2827, file: !183, line: 1089, size: 256, elements: !2908)
!2908 = !{!2909, !2918, !2924}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2907, file: !183, line: 1090, baseType: !2910, size: 256)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2911, line: 10, size: 256, elements: !2912)
!2911 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2912 = !{!2913, !2914, !2917}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2910, file: !2911, line: 11, baseType: !246, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2910, file: !2911, line: 12, baseType: !2915, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2911, line: 5, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2910, file: !2911, line: 13, baseType: !11, size: 128, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2907, file: !183, line: 1091, baseType: !2919, size: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2911, line: 17, size: 64, elements: !2920)
!2920 = !{!2921}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2919, file: !2911, line: 18, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2911, line: 16, flags: DIFlagFwdDecl)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2907, file: !183, line: 1096, baseType: !2925, size: 192)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !183, line: 1092, size: 192, elements: !2926)
!2926 = !{!2927, !2928, !2929}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2925, file: !183, line: 1093, baseType: !11, size: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2925, file: !183, line: 1094, baseType: !87, size: 32, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2925, file: !183, line: 1095, baseType: !216, size: 32, offset: 160)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2750, file: !183, line: 1843, baseType: !2931, size: 64, offset: 1280)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!134, !181, !552, !87, !149, !2761, !87}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2750, file: !183, line: 1844, baseType: !983, size: 64, offset: 1344)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2750, file: !183, line: 1845, baseType: !2936, size: 64, offset: 1408)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!87, !87}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2750, file: !183, line: 1846, baseType: !2823, size: 64, offset: 1472)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2750, file: !183, line: 1847, baseType: !2941, size: 64, offset: 1536)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!134, !729, !181, !2761, !149, !216}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2750, file: !183, line: 1848, baseType: !2945, size: 64, offset: 1600)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!134, !181, !2761, !729, !149, !216}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2750, file: !183, line: 1849, baseType: !2949, size: 64, offset: 1664)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!87, !181, !138, !2952, !653}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2750, file: !183, line: 1850, baseType: !2954, size: 64, offset: 1728)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!138, !181, !87, !359, !359}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2750, file: !183, line: 1852, baseType: !2958, size: 64, offset: 1792)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{null, !542, !181}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2750, file: !183, line: 1856, baseType: !2962, size: 64, offset: 1856)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!134, !181, !359, !181, !359, !149, !216}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2750, file: !183, line: 1858, baseType: !2966, size: 64, offset: 1920)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!359, !181, !359, !181, !359, !359, !216}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2750, file: !183, line: 1861, baseType: !2815, size: 64, offset: 1984)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2745, file: !183, line: 692, baseType: !494, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !258, file: !183, line: 694, baseType: !2972, size: 64, offset: 2560)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !183, line: 1100, size: 384, elements: !2974)
!2974 = !{!2975, !2976, !2977, !2978}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2973, file: !183, line: 1101, baseType: !61)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2973, file: !183, line: 1102, baseType: !11, size: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2973, file: !183, line: 1103, baseType: !11, size: 128, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2973, file: !183, line: 1104, baseType: !11, size: 128, offset: 256)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !258, file: !183, line: 695, baseType: !566, size: 1216, align: 64, offset: 2624)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !258, file: !183, line: 696, baseType: !11, size: 128, offset: 3840)
!2981 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !183, line: 697, baseType: !2982, size: 64, offset: 3968)
!2982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !258, file: !183, line: 697, size: 64, elements: !2983)
!2983 = !{!2984, !2985, !2986, !2989, !2990}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2982, file: !183, line: 698, baseType: !729, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2982, file: !183, line: 699, baseType: !2501, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2982, file: !183, line: 700, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !183, line: 700, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2982, file: !183, line: 701, baseType: !103, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2982, file: !183, line: 702, baseType: !216, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !258, file: !183, line: 705, baseType: !247, size: 32, offset: 4032)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !258, file: !183, line: 708, baseType: !247, size: 32, offset: 4064)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !258, file: !183, line: 709, baseType: !2583, size: 64, offset: 4096)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !258, file: !183, line: 720, baseType: !176, size: 64, offset: 4160)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !213, file: !210, line: 98, baseType: !2996, size: 256, offset: 448)
!2996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !2103)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !213, file: !210, line: 101, baseType: !2998, size: 32, offset: 704)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2999, line: 25, size: 32, elements: !3000)
!2999 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3000 = !{!3001}
!3001 = !DIDerivedType(tag: DW_TAG_member, scope: !2998, file: !2999, line: 26, baseType: !3002, size: 32)
!3002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2998, file: !2999, line: 26, size: 32, elements: !3003)
!3003 = !{!3004}
!3004 = !DIDerivedType(tag: DW_TAG_member, scope: !3002, file: !2999, line: 30, baseType: !3005, size: 32)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !2999, line: 30, size: 32, elements: !3006)
!3006 = !{!3007, !3008}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3005, file: !2999, line: 31, baseType: !61)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3005, file: !2999, line: 32, baseType: !87, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !213, file: !210, line: 102, baseType: !2599, size: 64, offset: 768)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !213, file: !210, line: 103, baseType: !427, size: 64, offset: 832)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !213, file: !210, line: 104, baseType: !152, size: 64, offset: 896)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !213, file: !210, line: 105, baseType: !176, size: 64, offset: 960)
!3013 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !210, line: 107, baseType: !3014, size: 128, offset: 1024)
!3014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !210, line: 107, size: 128, elements: !3015)
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3014, file: !210, line: 108, baseType: !11, size: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3014, file: !210, line: 109, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !213, file: !210, line: 111, baseType: !11, size: 128, offset: 1152)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !213, file: !210, line: 112, baseType: !11, size: 128, offset: 1280)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !213, file: !210, line: 120, baseType: !3022, size: 128, offset: 1408)
!3022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !210, line: 116, size: 128, elements: !3023)
!3023 = !{!3024, !3025, !3026}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3022, file: !210, line: 117, baseType: !469, size: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3022, file: !210, line: 118, baseType: !228, size: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3022, file: !210, line: 119, baseType: !195, size: 128, align: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !182, file: !183, line: 922, baseType: !257, size: 64, offset: 256)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !182, file: !183, line: 923, baseType: !2748, size: 64, offset: 320)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !182, file: !183, line: 929, baseType: !61, offset: 384)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !182, file: !183, line: 930, baseType: !3031, size: 32, offset: 384)
!3031 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !183, line: 296, baseType: !216, size: 32, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3038}
!3033 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!3034 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!3035 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!3036 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!3037 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!3038 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !182, file: !183, line: 931, baseType: !603, size: 64, offset: 448)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !182, file: !183, line: 932, baseType: !216, size: 32, offset: 512)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !182, file: !183, line: 933, baseType: !2595, size: 32, offset: 544)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !182, file: !183, line: 934, baseType: !1055, size: 192, offset: 576)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !182, file: !183, line: 935, baseType: !359, size: 64, offset: 768)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !182, file: !183, line: 936, baseType: !3045, size: 192, offset: 832)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !183, line: 885, size: 192, elements: !3046)
!3046 = !{!3047, !3048, !3049, !3057, !3058, !3059}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3045, file: !183, line: 886, baseType: !2848)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3045, file: !183, line: 887, baseType: !1346, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3045, file: !183, line: 888, baseType: !3050, size: 32, offset: 64)
!3050 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1348, line: 9, baseType: !216, size: 32, elements: !3051)
!3051 = !{!3052, !3053, !3054, !3055, !3056}
!3052 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!3053 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!3054 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!3055 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!3056 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3045, file: !183, line: 889, baseType: !263, size: 32, offset: 96)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3045, file: !183, line: 889, baseType: !263, size: 32, offset: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3045, file: !183, line: 890, baseType: !87, size: 32, offset: 160)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !182, file: !183, line: 937, baseType: !1423, size: 64, offset: 1024)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !182, file: !183, line: 938, baseType: !3062, size: 256, offset: 1088)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !183, line: 896, size: 256, elements: !3063)
!3063 = !{!3064, !3065, !3066, !3067, !3068, !3069}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3062, file: !183, line: 897, baseType: !152, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3062, file: !183, line: 898, baseType: !216, size: 32, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3062, file: !183, line: 899, baseType: !216, size: 32, offset: 96)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3062, file: !183, line: 902, baseType: !216, size: 32, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3062, file: !183, line: 903, baseType: !216, size: 32, offset: 160)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3062, file: !183, line: 904, baseType: !359, size: 64, offset: 192)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !182, file: !183, line: 940, baseType: !250, size: 64, offset: 1344)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !182, file: !183, line: 945, baseType: !176, size: 64, offset: 1408)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !182, file: !183, line: 949, baseType: !11, size: 128, offset: 1472)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !182, file: !183, line: 950, baseType: !11, size: 128, offset: 1600)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !182, file: !183, line: 952, baseType: !565, size: 64, offset: 1728)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !182, file: !183, line: 953, baseType: !786, size: 32, offset: 1792)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !182, file: !183, line: 954, baseType: !786, size: 32, offset: 1824)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !171, file: !128, line: 174, baseType: !178, size: 64, offset: 320)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !171, file: !128, line: 176, baseType: !3079, size: 64, offset: 384)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!87, !181, !54, !170, !858}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !159, file: !128, line: 90, baseType: !154, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !159, file: !128, line: 91, baseType: !3084, size: 64, offset: 256)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !118, file: !46, line: 143, baseType: !3086, size: 64, offset: 256)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!3089, !54}
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3091)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3092, line: 39, size: 384, elements: !3093)
!3092 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!3093 = !{!3094, !3100, !3104, !3108, !3114, !3118}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3091, file: !3092, line: 40, baseType: !3095, size: 32)
!3095 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3092, line: 26, baseType: !216, size: 32, elements: !3096)
!3096 = !{!3097, !3098, !3099}
!3097 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!3098 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!3099 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3091, file: !3092, line: 41, baseType: !3101, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!318}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3091, file: !3092, line: 42, baseType: !3105, size: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!176}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3091, file: !3092, line: 43, baseType: !3109, size: 64, offset: 192)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!2000, !3112}
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3092, line: 19, flags: DIFlagFwdDecl)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3091, file: !3092, line: 44, baseType: !3115, size: 64, offset: 256)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!2000}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3091, file: !3092, line: 45, baseType: !296, size: 64, offset: 320)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !118, file: !46, line: 144, baseType: !3120, size: 64, offset: 320)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!2000, !54}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !118, file: !46, line: 145, baseType: !3124, size: 64, offset: 384)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{null, !54, !3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !45, file: !46, line: 70, baseType: !3130, size: 64, offset: 384)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3132, line: 123, size: 1024, elements: !3133)
!3132 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3133 = !{!3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3262, !3263, !3264, !3265, !3266}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3131, file: !3132, line: 124, baseType: !579, size: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3131, file: !3132, line: 125, baseType: !579, size: 32, offset: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3131, file: !3132, line: 135, baseType: !3130, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3131, file: !3132, line: 136, baseType: !49, size: 64, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3131, file: !3132, line: 138, baseType: !592, size: 192, align: 64, offset: 192)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3131, file: !3132, line: 140, baseType: !2000, size: 64, offset: 384)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3131, file: !3132, line: 141, baseType: !216, size: 32, offset: 448)
!3141 = !DIDerivedType(tag: DW_TAG_member, scope: !3131, file: !3132, line: 142, baseType: !3142, size: 256, offset: 512)
!3142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3131, file: !3132, line: 142, size: 256, elements: !3143)
!3143 = !{!3144, !3190, !3194}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3142, file: !3132, line: 143, baseType: !3145, size: 192)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3132, line: 91, size: 192, elements: !3146)
!3146 = !{!3147, !3148, !3149}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3145, file: !3132, line: 92, baseType: !152, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3145, file: !3132, line: 94, baseType: !588, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3145, file: !3132, line: 100, baseType: !3150, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3132, line: 180, size: 704, elements: !3152)
!3152 = !{!3153, !3154, !3155, !3162, !3163, !3164, !3188, !3189}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3151, file: !3132, line: 182, baseType: !3130, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3151, file: !3132, line: 183, baseType: !216, size: 32, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3151, file: !3132, line: 186, baseType: !3156, size: 192, offset: 128)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3157, line: 19, size: 192, elements: !3158)
!3157 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3158 = !{!3159, !3160, !3161}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3156, file: !3157, line: 20, baseType: !570, size: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3156, file: !3157, line: 21, baseType: !216, size: 32, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3156, file: !3157, line: 22, baseType: !216, size: 32, offset: 160)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3151, file: !3132, line: 187, baseType: !246, size: 32, offset: 320)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3151, file: !3132, line: 188, baseType: !246, size: 32, offset: 352)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3151, file: !3132, line: 189, baseType: !3165, size: 64, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3132, line: 168, size: 320, elements: !3167)
!3167 = !{!3168, !3172, !3176, !3180, !3184}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3166, file: !3132, line: 169, baseType: !3169, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!87, !542, !3150}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3166, file: !3132, line: 171, baseType: !3173, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!87, !3130, !49, !144}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3166, file: !3132, line: 173, baseType: !3177, size: 64, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!87, !3130}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3166, file: !3132, line: 174, baseType: !3181, size: 64, offset: 192)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!87, !3130, !3130, !49}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3166, file: !3132, line: 176, baseType: !3185, size: 64, offset: 256)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!87, !542, !3130, !3150}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3151, file: !3132, line: 192, baseType: !11, size: 128, offset: 448)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3151, file: !3132, line: 194, baseType: !1357, size: 128, offset: 576)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3142, file: !3132, line: 144, baseType: !3191, size: 64)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3132, line: 103, size: 64, elements: !3192)
!3192 = !{!3193}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3191, file: !3132, line: 104, baseType: !3130, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3142, file: !3132, line: 145, baseType: !3195, size: 256)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3132, line: 107, size: 256, elements: !3196)
!3196 = !{!3197, !3257, !3260, !3261}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3195, file: !3132, line: 108, baseType: !3198, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3200)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3132, line: 217, size: 768, elements: !3201)
!3201 = !{!3202, !3222, !3226, !3230, !3234, !3238, !3242, !3246, !3247, !3248, !3249, !3253}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3200, file: !3132, line: 222, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!87, !3206}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3132, line: 197, size: 1088, elements: !3208)
!3208 = !{!3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3207, file: !3132, line: 199, baseType: !3130, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3207, file: !3132, line: 200, baseType: !181, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3207, file: !3132, line: 201, baseType: !542, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3207, file: !3132, line: 202, baseType: !176, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3207, file: !3132, line: 205, baseType: !1055, size: 192, offset: 256)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3207, file: !3132, line: 206, baseType: !1055, size: 192, offset: 448)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3207, file: !3132, line: 207, baseType: !87, size: 32, offset: 640)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3207, file: !3132, line: 208, baseType: !11, size: 128, offset: 704)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3207, file: !3132, line: 209, baseType: !103, size: 64, offset: 832)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3207, file: !3132, line: 211, baseType: !149, size: 64, offset: 896)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3207, file: !3132, line: 212, baseType: !318, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3207, file: !3132, line: 213, baseType: !318, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3207, file: !3132, line: 214, baseType: !886, size: 64, offset: 1024)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3200, file: !3132, line: 223, baseType: !3223, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{null, !3206}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3200, file: !3132, line: 236, baseType: !3227, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!87, !542, !176}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3200, file: !3132, line: 238, baseType: !3231, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!176, !542, !2761}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3200, file: !3132, line: 239, baseType: !3235, size: 64, offset: 256)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!176, !542, !176, !2761}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3200, file: !3132, line: 240, baseType: !3239, size: 64, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{null, !542, !176}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3200, file: !3132, line: 242, baseType: !3243, size: 64, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!134, !3206, !103, !149, !359}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3200, file: !3132, line: 252, baseType: !149, size: 64, offset: 448)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3200, file: !3132, line: 259, baseType: !318, size: 8, offset: 512)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3200, file: !3132, line: 260, baseType: !3243, size: 64, offset: 576)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3200, file: !3132, line: 263, baseType: !3250, size: 64, offset: 640)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!2790, !3206, !2792}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3200, file: !3132, line: 266, baseType: !3254, size: 64, offset: 704)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!87, !3206, !858}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3195, file: !3132, line: 109, baseType: !3258, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3132, line: 31, flags: DIFlagFwdDecl)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3195, file: !3132, line: 110, baseType: !359, size: 64, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3195, file: !3132, line: 111, baseType: !3130, size: 64, offset: 192)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3131, file: !3132, line: 148, baseType: !176, size: 64, offset: 768)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3131, file: !3132, line: 154, baseType: !250, size: 64, offset: 832)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3131, file: !3132, line: 156, baseType: !38, size: 16, offset: 896)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3131, file: !3132, line: 157, baseType: !144, size: 16, offset: 912)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3131, file: !3132, line: 158, baseType: !3267, size: 64, offset: 960)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3132, line: 32, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !45, file: !46, line: 71, baseType: !3270, size: 32, offset: 448)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3271, line: 19, size: 32, elements: !3272)
!3271 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3272 = !{!3273}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3270, file: !3271, line: 20, baseType: !1095, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !45, file: !46, line: 75, baseType: !216, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !45, file: !46, line: 76, baseType: !216, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !45, file: !46, line: 77, baseType: !216, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !45, file: !46, line: 78, baseType: !216, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !45, file: !46, line: 79, baseType: !216, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !41, file: !42, line: 463, baseType: !3280, size: 64, offset: 512)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !41, file: !42, line: 465, baseType: !3282, size: 64, offset: 576)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !42, line: 36, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !41, file: !42, line: 467, baseType: !49, size: 64, offset: 640)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !42, line: 468, baseType: !3286, size: 64, offset: 704)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3288)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !42, line: 87, size: 384, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3296, !3301, !3305}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3288, file: !42, line: 88, baseType: !49, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3288, file: !42, line: 89, baseType: !156, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3288, file: !42, line: 90, baseType: !3293, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!87, !3280, !98}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3288, file: !42, line: 91, baseType: !3297, size: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!103, !3280, !3300, !3127, !3128}
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3288, file: !42, line: 93, baseType: !3302, size: 64, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{null, !3280}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3288, file: !42, line: 95, baseType: !3306, size: 64, offset: 320)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3308)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !3309, line: 278, size: 1472, elements: !3310)
!3309 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!3310 = !{!3311, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3308, file: !3309, line: 279, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!87, !3280}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3308, file: !3309, line: 280, baseType: !3302, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3308, file: !3309, line: 281, baseType: !3312, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3308, file: !3309, line: 282, baseType: !3312, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3308, file: !3309, line: 283, baseType: !3312, size: 64, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3308, file: !3309, line: 284, baseType: !3312, size: 64, offset: 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3308, file: !3309, line: 285, baseType: !3312, size: 64, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3308, file: !3309, line: 286, baseType: !3312, size: 64, offset: 448)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3308, file: !3309, line: 287, baseType: !3312, size: 64, offset: 512)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3308, file: !3309, line: 288, baseType: !3312, size: 64, offset: 576)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3308, file: !3309, line: 289, baseType: !3312, size: 64, offset: 640)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3308, file: !3309, line: 290, baseType: !3312, size: 64, offset: 704)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3308, file: !3309, line: 291, baseType: !3312, size: 64, offset: 768)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3308, file: !3309, line: 292, baseType: !3312, size: 64, offset: 832)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3308, file: !3309, line: 293, baseType: !3312, size: 64, offset: 896)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3308, file: !3309, line: 294, baseType: !3312, size: 64, offset: 960)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3308, file: !3309, line: 295, baseType: !3312, size: 64, offset: 1024)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3308, file: !3309, line: 296, baseType: !3312, size: 64, offset: 1088)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3308, file: !3309, line: 297, baseType: !3312, size: 64, offset: 1152)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3308, file: !3309, line: 298, baseType: !3312, size: 64, offset: 1216)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3308, file: !3309, line: 299, baseType: !3312, size: 64, offset: 1280)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3308, file: !3309, line: 300, baseType: !3312, size: 64, offset: 1344)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3308, file: !3309, line: 301, baseType: !3312, size: 64, offset: 1408)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !41, file: !42, line: 470, baseType: !3338, size: 64, offset: 768)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3340, line: 82, size: 1408, elements: !3341)
!3340 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3341 = !{!3342, !3343, !3344, !3345, !3346, !3347, !3348, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3429, !3432, !3433}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3339, file: !3340, line: 83, baseType: !49, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3339, file: !3340, line: 84, baseType: !49, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3339, file: !3340, line: 85, baseType: !3280, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3339, file: !3340, line: 86, baseType: !156, size: 64, offset: 192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3339, file: !3340, line: 87, baseType: !156, size: 64, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3339, file: !3340, line: 88, baseType: !156, size: 64, offset: 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3339, file: !3340, line: 90, baseType: !3349, size: 64, offset: 384)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!87, !3280, !3352}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !3354, line: 95, size: 1152, elements: !3355)
!3354 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3367, !3380, !3393, !3394, !3395, !3396, !3397, !3405, !3406, !3407, !3408, !3409, !3410}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3353, file: !3354, line: 96, baseType: !49, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3353, file: !3354, line: 97, baseType: !3338, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3353, file: !3354, line: 99, baseType: !460, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3353, file: !3354, line: 100, baseType: !49, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3353, file: !3354, line: 102, baseType: !318, size: 8, offset: 256)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3353, file: !3354, line: 103, baseType: !3362, size: 32, offset: 288)
!3362 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !3354, line: 44, baseType: !216, size: 32, elements: !3363)
!3363 = !{!3364, !3365, !3366}
!3364 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!3365 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!3366 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3353, file: !3354, line: 105, baseType: !3368, size: 64, offset: 320)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3370)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3371, line: 262, size: 1600, elements: !3372)
!3371 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3372 = !{!3373, !3374, !3375, !3379}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3370, file: !3371, line: 263, baseType: !2586, size: 256)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3370, file: !3371, line: 264, baseType: !2586, size: 256, offset: 256)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3370, file: !3371, line: 265, baseType: !3376, size: 1024, offset: 512)
!3376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1024, elements: !3377)
!3377 = !{!3378}
!3378 = !DISubrange(count: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3370, file: !3371, line: 266, baseType: !2000, size: 64, offset: 1536)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3353, file: !3354, line: 106, baseType: !3381, size: 64, offset: 384)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3383)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3371, line: 210, size: 256, elements: !3384)
!3384 = !{!3385, !3389, !3391, !3392}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3383, file: !3371, line: 211, baseType: !3386, size: 72)
!3386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 72, elements: !3387)
!3387 = !{!3388}
!3388 = !DISubrange(count: 9)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3383, file: !3371, line: 212, baseType: !3390, size: 64, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3371, line: 14, baseType: !152)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3383, file: !3371, line: 213, baseType: !247, size: 32, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3383, file: !3371, line: 214, baseType: !247, size: 32, offset: 224)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3353, file: !3354, line: 108, baseType: !3312, size: 64, offset: 448)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3353, file: !3354, line: 109, baseType: !3302, size: 64, offset: 512)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3353, file: !3354, line: 110, baseType: !3312, size: 64, offset: 576)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3353, file: !3354, line: 111, baseType: !3302, size: 64, offset: 640)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3353, file: !3354, line: 112, baseType: !3398, size: 64, offset: 704)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!87, !3280, !3401}
!3401 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !3309, line: 52, baseType: !3402)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !3309, line: 50, size: 32, elements: !3403)
!3403 = !{!3404}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3402, file: !3309, line: 51, baseType: !87, size: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3353, file: !3354, line: 113, baseType: !3312, size: 64, offset: 768)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3353, file: !3354, line: 114, baseType: !156, size: 64, offset: 832)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3353, file: !3354, line: 115, baseType: !156, size: 64, offset: 896)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3353, file: !3354, line: 117, baseType: !3306, size: 64, offset: 960)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3353, file: !3354, line: 118, baseType: !3302, size: 64, offset: 1024)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3353, file: !3354, line: 120, baseType: !3411, size: 64, offset: 1088)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !3354, line: 120, flags: DIFlagFwdDecl)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3339, file: !3340, line: 91, baseType: !3293, size: 64, offset: 448)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3339, file: !3340, line: 92, baseType: !3312, size: 64, offset: 512)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3339, file: !3340, line: 93, baseType: !3302, size: 64, offset: 576)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3339, file: !3340, line: 94, baseType: !3312, size: 64, offset: 640)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3339, file: !3340, line: 95, baseType: !3302, size: 64, offset: 704)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3339, file: !3340, line: 97, baseType: !3312, size: 64, offset: 768)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3339, file: !3340, line: 98, baseType: !3312, size: 64, offset: 832)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3339, file: !3340, line: 100, baseType: !3398, size: 64, offset: 896)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3339, file: !3340, line: 101, baseType: !3312, size: 64, offset: 960)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3339, file: !3340, line: 103, baseType: !3312, size: 64, offset: 1024)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3339, file: !3340, line: 105, baseType: !3312, size: 64, offset: 1088)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3339, file: !3340, line: 107, baseType: !3306, size: 64, offset: 1152)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3339, file: !3340, line: 109, baseType: !3426, size: 64, offset: 1216)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3428)
!3428 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3340, line: 109, flags: DIFlagFwdDecl)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3339, file: !3340, line: 111, baseType: !3430, size: 64, offset: 1280)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3340, line: 111, flags: DIFlagFwdDecl)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3339, file: !3340, line: 112, baseType: !475, offset: 1344)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3339, file: !3340, line: 114, baseType: !318, size: 8, offset: 1344)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !41, file: !42, line: 471, baseType: !3352, size: 64, offset: 832)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !41, file: !42, line: 473, baseType: !176, size: 64, offset: 896)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !41, file: !42, line: 475, baseType: !176, size: 64, offset: 960)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !41, file: !42, line: 480, baseType: !1055, size: 192, offset: 1024)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !41, file: !42, line: 484, baseType: !3439, size: 576, offset: 1216)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !42, line: 361, size: 576, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3439, file: !42, line: 362, baseType: !11, size: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3439, file: !42, line: 363, baseType: !11, size: 128, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3439, file: !42, line: 364, baseType: !11, size: 128, offset: 256)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3439, file: !42, line: 365, baseType: !11, size: 128, offset: 384)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3439, file: !42, line: 366, baseType: !318, size: 8, offset: 512)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3439, file: !42, line: 367, baseType: !3447, size: 32, offset: 544)
!3447 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !42, line: 343, baseType: !216, size: 32, elements: !3448)
!3448 = !{!3449, !3450, !3451, !3452}
!3449 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!3450 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!3451 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!3452 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !41, file: !42, line: 485, baseType: !3454, size: 2304, offset: 1792)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !3309, line: 565, size: 2304, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3541, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3564, !3568}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3454, file: !3309, line: 566, baseType: !3401, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3454, file: !3309, line: 567, baseType: !216, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3454, file: !3309, line: 568, baseType: !216, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3454, file: !3309, line: 569, baseType: !318, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3454, file: !3309, line: 570, baseType: !318, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3454, file: !3309, line: 571, baseType: !318, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3454, file: !3309, line: 572, baseType: !318, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3454, file: !3309, line: 573, baseType: !318, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3454, file: !3309, line: 574, baseType: !318, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3454, file: !3309, line: 575, baseType: !318, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3454, file: !3309, line: 576, baseType: !318, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3454, file: !3309, line: 577, baseType: !246, size: 32, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3454, file: !3309, line: 578, baseType: !61, offset: 96)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3454, file: !3309, line: 580, baseType: !11, size: 128, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3454, file: !3309, line: 581, baseType: !1378, size: 192, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3454, file: !3309, line: 582, baseType: !3472, size: 64, offset: 448)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3474, line: 43, size: 1472, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3483, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3473, file: !3474, line: 44, baseType: !49, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3473, file: !3474, line: 45, baseType: !87, size: 32, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3473, file: !3474, line: 46, baseType: !11, size: 128, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3473, file: !3474, line: 47, baseType: !61, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3473, file: !3474, line: 48, baseType: !3481, size: 64, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !3309, line: 533, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3473, file: !3474, line: 49, baseType: !3484, size: 320, offset: 320)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3485, line: 11, size: 320, elements: !3486)
!3485 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3486 = !{!3487, !3488, !3489, !3494}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3484, file: !3485, line: 16, baseType: !469, size: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3484, file: !3485, line: 17, baseType: !152, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3484, file: !3485, line: 18, baseType: !3490, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !3493}
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3484, file: !3485, line: 19, baseType: !246, size: 32, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3473, file: !3474, line: 50, baseType: !152, size: 64, offset: 640)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3473, file: !3474, line: 51, baseType: !1166, size: 64, offset: 704)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3473, file: !3474, line: 52, baseType: !1166, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3473, file: !3474, line: 53, baseType: !1166, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3473, file: !3474, line: 54, baseType: !1166, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3473, file: !3474, line: 55, baseType: !1166, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3473, file: !3474, line: 56, baseType: !152, size: 64, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3473, file: !3474, line: 57, baseType: !152, size: 64, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3473, file: !3474, line: 58, baseType: !152, size: 64, offset: 1152)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3473, file: !3474, line: 59, baseType: !152, size: 64, offset: 1216)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3473, file: !3474, line: 60, baseType: !152, size: 64, offset: 1280)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3473, file: !3474, line: 61, baseType: !3280, size: 64, offset: 1344)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3473, file: !3474, line: 62, baseType: !318, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3473, file: !3474, line: 63, baseType: !318, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3454, file: !3309, line: 583, baseType: !318, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3454, file: !3309, line: 584, baseType: !318, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3454, file: !3309, line: 585, baseType: !318, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3454, file: !3309, line: 586, baseType: !216, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3454, file: !3309, line: 587, baseType: !216, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3454, file: !3309, line: 592, baseType: !1157, size: 512, offset: 576)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3454, file: !3309, line: 593, baseType: !250, size: 64, offset: 1088)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3454, file: !3309, line: 594, baseType: !1832, size: 256, offset: 1152)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3454, file: !3309, line: 595, baseType: !1357, size: 128, offset: 1408)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3454, file: !3309, line: 596, baseType: !3481, size: 64, offset: 1536)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3454, file: !3309, line: 597, baseType: !579, size: 32, offset: 1600)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3454, file: !3309, line: 598, baseType: !579, size: 32, offset: 1632)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3454, file: !3309, line: 599, baseType: !216, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3454, file: !3309, line: 600, baseType: !216, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3454, file: !3309, line: 601, baseType: !216, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3454, file: !3309, line: 602, baseType: !216, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3454, file: !3309, line: 603, baseType: !216, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3454, file: !3309, line: 604, baseType: !318, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3454, file: !3309, line: 605, baseType: !216, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3454, file: !3309, line: 606, baseType: !216, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3454, file: !3309, line: 607, baseType: !216, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3454, file: !3309, line: 608, baseType: !216, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3454, file: !3309, line: 609, baseType: !216, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3454, file: !3309, line: 610, baseType: !216, size: 32, offset: 1696)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3454, file: !3309, line: 611, baseType: !3534, size: 32, offset: 1728)
!3534 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !3309, line: 524, baseType: !216, size: 32, elements: !3535)
!3535 = !{!3536, !3537, !3538, !3539, !3540}
!3536 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!3537 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!3538 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!3539 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!3540 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3454, file: !3309, line: 612, baseType: !3542, size: 32, offset: 1760)
!3542 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !3309, line: 502, baseType: !216, size: 32, elements: !3543)
!3543 = !{!3544, !3545, !3546, !3547}
!3544 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!3545 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!3546 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!3547 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3454, file: !3309, line: 613, baseType: !87, size: 32, offset: 1792)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3454, file: !3309, line: 614, baseType: !87, size: 32, offset: 1824)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3454, file: !3309, line: 615, baseType: !250, size: 64, offset: 1856)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3454, file: !3309, line: 616, baseType: !250, size: 64, offset: 1920)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3454, file: !3309, line: 617, baseType: !250, size: 64, offset: 1984)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3454, file: !3309, line: 618, baseType: !250, size: 64, offset: 2048)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3454, file: !3309, line: 620, baseType: !3555, size: 64, offset: 2112)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !3309, line: 536, size: 256, elements: !3557)
!3557 = !{!3558, !3559, !3560, !3561}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3556, file: !3309, line: 537, baseType: !61)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3556, file: !3309, line: 538, baseType: !216, size: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3556, file: !3309, line: 540, baseType: !11, size: 128, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3556, file: !3309, line: 543, baseType: !3562, size: 64, offset: 192)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !3309, line: 534, flags: DIFlagFwdDecl)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3454, file: !3309, line: 621, baseType: !3565, size: 64, offset: 2176)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !3280, !1319}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3454, file: !3309, line: 622, baseType: !3569, size: 64, offset: 2240)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !3309, line: 622, flags: DIFlagFwdDecl)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !41, file: !42, line: 486, baseType: !3572, size: 64, offset: 4096)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !3309, line: 642, size: 1792, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3581, !3582, !3583}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3573, file: !3309, line: 643, baseType: !3308, size: 1472)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3573, file: !3309, line: 644, baseType: !3312, size: 64, offset: 1472)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3573, file: !3309, line: 645, baseType: !3578, size: 64, offset: 1536)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !3280, !318}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3573, file: !3309, line: 646, baseType: !3312, size: 64, offset: 1600)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3573, file: !3309, line: 647, baseType: !3302, size: 64, offset: 1664)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3573, file: !3309, line: 648, baseType: !3302, size: 64, offset: 1728)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !41, file: !42, line: 493, baseType: !3585, size: 64, offset: 4160)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3587, line: 13, flags: DIFlagFwdDecl)
!3587 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/lizy2001/genbc/linux")
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !41, file: !42, line: 499, baseType: !11, size: 128, offset: 4224)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !41, file: !42, line: 502, baseType: !3590, size: 64, offset: 4352)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3592)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !42, line: 502, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !41, file: !42, line: 504, baseType: !3594, size: 64, offset: 4416)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !41, file: !42, line: 505, baseType: !250, size: 64, offset: 4480)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !41, file: !42, line: 510, baseType: !250, size: 64, offset: 4544)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !41, file: !42, line: 511, baseType: !3598, size: 64, offset: 4608)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3600)
!3600 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !42, line: 511, flags: DIFlagFwdDecl)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !41, file: !42, line: 513, baseType: !3602, size: 64, offset: 4672)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !42, line: 288, size: 128, elements: !3604)
!3604 = !{!3605, !3606}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3603, file: !42, line: 293, baseType: !216, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3603, file: !42, line: 294, baseType: !152, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !41, file: !42, line: 515, baseType: !11, size: 128, offset: 4736)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !41, file: !42, line: 526, baseType: !3609, offset: 4864)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3610, line: 5, elements: !75)
!3610 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !41, file: !42, line: 528, baseType: !3612, size: 64, offset: 4864)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3614, line: 14, flags: DIFlagFwdDecl)
!3614 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !41, file: !42, line: 529, baseType: !3616, size: 64, offset: 4928)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3618, line: 17, size: 192, elements: !3619)
!3618 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3619 = !{!3620, !3621, !3704}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3617, file: !3618, line: 18, baseType: !3616, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3617, file: !3618, line: 19, baseType: !3622, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3624)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3618, line: 110, size: 1152, elements: !3625)
!3625 = !{!3626, !3630, !3634, !3640, !3646, !3650, !3654, !3659, !3663, !3664, !3668, !3672, !3676, !3687, !3688, !3689, !3690, !3700}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3624, file: !3618, line: 111, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!3616, !3616}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3624, file: !3618, line: 112, baseType: !3631, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{null, !3616}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3624, file: !3618, line: 113, baseType: !3635, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!318, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3617)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3624, file: !3618, line: 114, baseType: !3641, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!2000, !3638, !3644}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3624, file: !3618, line: 116, baseType: !3647, size: 64, offset: 256)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!318, !3638, !49}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3624, file: !3618, line: 118, baseType: !3651, size: 64, offset: 320)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!87, !3638, !49, !216, !176, !149}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3624, file: !3618, line: 123, baseType: !3655, size: 64, offset: 384)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!87, !3638, !49, !3658, !149}
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3624, file: !3618, line: 126, baseType: !3660, size: 64, offset: 448)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!49, !3638}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3624, file: !3618, line: 127, baseType: !3660, size: 64, offset: 512)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3624, file: !3618, line: 128, baseType: !3665, size: 64, offset: 576)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!3616, !3638}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3624, file: !3618, line: 130, baseType: !3669, size: 64, offset: 640)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!3616, !3638, !3616}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3624, file: !3618, line: 133, baseType: !3673, size: 64, offset: 704)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!3616, !3638, !49}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3624, file: !3618, line: 135, baseType: !3677, size: 64, offset: 768)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!87, !3638, !49, !49, !216, !216, !3680}
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3618, line: 43, size: 640, elements: !3682)
!3682 = !{!3683, !3684, !3685}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3681, file: !3618, line: 44, baseType: !3616, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3681, file: !3618, line: 45, baseType: !216, size: 32, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3681, file: !3618, line: 46, baseType: !3686, size: 512, offset: 128)
!3686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 512, elements: !1200)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3624, file: !3618, line: 140, baseType: !3669, size: 64, offset: 832)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3624, file: !3618, line: 143, baseType: !3665, size: 64, offset: 896)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3624, file: !3618, line: 145, baseType: !3627, size: 64, offset: 960)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3624, file: !3618, line: 146, baseType: !3691, size: 64, offset: 1024)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!87, !3638, !3694}
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3618, line: 29, size: 128, elements: !3696)
!3696 = !{!3697, !3698, !3699}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3695, file: !3618, line: 30, baseType: !216, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3695, file: !3618, line: 31, baseType: !216, size: 32, offset: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3695, file: !3618, line: 32, baseType: !3638, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3624, file: !3618, line: 148, baseType: !3701, size: 64, offset: 1088)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!87, !3638, !3280}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3617, file: !3618, line: 20, baseType: !3280, size: 64, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !41, file: !42, line: 534, baseType: !341, size: 32, offset: 4992)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !41, file: !42, line: 535, baseType: !246, size: 32, offset: 5024)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !41, file: !42, line: 537, baseType: !61, offset: 5056)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !41, file: !42, line: 538, baseType: !11, size: 128, offset: 5056)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !41, file: !42, line: 540, baseType: !3710, size: 64, offset: 5184)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3712, line: 54, size: 960, elements: !3713)
!3712 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3713 = !{!3714, !3715, !3716, !3717, !3718, !3719, !3720, !3724, !3728, !3729, !3730, !3731, !3735, !3739, !3740}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3711, file: !3712, line: 55, baseType: !49, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3711, file: !3712, line: 56, baseType: !460, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3711, file: !3712, line: 58, baseType: !156, size: 64, offset: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3711, file: !3712, line: 59, baseType: !156, size: 64, offset: 192)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3711, file: !3712, line: 60, baseType: !54, size: 64, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3711, file: !3712, line: 62, baseType: !3293, size: 64, offset: 320)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3711, file: !3712, line: 63, baseType: !3721, size: 64, offset: 384)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!103, !3280, !3300}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3711, file: !3712, line: 65, baseType: !3725, size: 64, offset: 448)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !3710}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3711, file: !3712, line: 66, baseType: !3302, size: 64, offset: 512)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3711, file: !3712, line: 68, baseType: !3312, size: 64, offset: 576)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3711, file: !3712, line: 70, baseType: !3089, size: 64, offset: 640)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3711, file: !3712, line: 71, baseType: !3732, size: 64, offset: 704)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!2000, !3280}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3711, file: !3712, line: 73, baseType: !3736, size: 64, offset: 768)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{null, !3280, !3127, !3128}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3711, file: !3712, line: 75, baseType: !3306, size: 64, offset: 832)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3711, file: !3712, line: 77, baseType: !3430, size: 64, offset: 896)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !41, file: !42, line: 541, baseType: !156, size: 64, offset: 5248)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !41, file: !42, line: 543, baseType: !3302, size: 64, offset: 5312)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !41, file: !42, line: 544, baseType: !3744, size: 64, offset: 5376)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !42, line: 45, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !41, file: !42, line: 545, baseType: !3747, size: 64, offset: 5440)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !42, line: 47, flags: DIFlagFwdDecl)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !41, file: !42, line: 547, baseType: !318, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !41, file: !42, line: 548, baseType: !318, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !41, file: !42, line: 549, baseType: !318, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !41, file: !42, line: 550, baseType: !318, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !19, file: !8, line: 1229, baseType: !103, size: 64, offset: 5888)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !19, file: !8, line: 1231, baseType: !6, size: 64, offset: 5952)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "channels_kset", scope: !19, file: !8, line: 1232, baseType: !56, size: 64, offset: 6016)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !19, file: !8, line: 1235, baseType: !212, size: 64, offset: 6080)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !7, file: !8, line: 778, baseType: !3758, size: 32, offset: 192)
!3758 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vmbus_channel_state", file: !8, line: 696, baseType: !216, size: 32, elements: !3759)
!3759 = !{!3760, !3761, !3762, !3763}
!3760 = !DIEnumerator(name: "CHANNEL_OFFER_STATE", value: 0, isUnsigned: true)
!3761 = !DIEnumerator(name: "CHANNEL_OPENING_STATE", value: 1, isUnsigned: true)
!3762 = !DIEnumerator(name: "CHANNEL_OPEN_STATE", value: 2, isUnsigned: true)
!3763 = !DIEnumerator(name: "CHANNEL_OPENED_STATE", value: 3, isUnsigned: true)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "offermsg", scope: !7, file: !8, line: 780, baseType: !3765, size: 1568, offset: 224)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_offer_channel", file: !8, line: 502, size: 1568, elements: !3766)
!3766 = !{!3767, !3799, !3828, !3829, !3830, !3831, !3832, !3833, !3834}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3765, file: !8, line: 503, baseType: !3768, size: 64)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_message_header", file: !8, line: 484, size: 64, elements: !3769)
!3769 = !{!3770, !3798}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "msgtype", scope: !3768, file: !8, line: 485, baseType: !3771, size: 32)
!3771 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vmbus_channel_message_type", file: !8, line: 453, baseType: !216, size: 32, elements: !3772)
!3772 = !{!3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797}
!3773 = !DIEnumerator(name: "CHANNELMSG_INVALID", value: 0, isUnsigned: true)
!3774 = !DIEnumerator(name: "CHANNELMSG_OFFERCHANNEL", value: 1, isUnsigned: true)
!3775 = !DIEnumerator(name: "CHANNELMSG_RESCIND_CHANNELOFFER", value: 2, isUnsigned: true)
!3776 = !DIEnumerator(name: "CHANNELMSG_REQUESTOFFERS", value: 3, isUnsigned: true)
!3777 = !DIEnumerator(name: "CHANNELMSG_ALLOFFERS_DELIVERED", value: 4, isUnsigned: true)
!3778 = !DIEnumerator(name: "CHANNELMSG_OPENCHANNEL", value: 5, isUnsigned: true)
!3779 = !DIEnumerator(name: "CHANNELMSG_OPENCHANNEL_RESULT", value: 6, isUnsigned: true)
!3780 = !DIEnumerator(name: "CHANNELMSG_CLOSECHANNEL", value: 7, isUnsigned: true)
!3781 = !DIEnumerator(name: "CHANNELMSG_GPADL_HEADER", value: 8, isUnsigned: true)
!3782 = !DIEnumerator(name: "CHANNELMSG_GPADL_BODY", value: 9, isUnsigned: true)
!3783 = !DIEnumerator(name: "CHANNELMSG_GPADL_CREATED", value: 10, isUnsigned: true)
!3784 = !DIEnumerator(name: "CHANNELMSG_GPADL_TEARDOWN", value: 11, isUnsigned: true)
!3785 = !DIEnumerator(name: "CHANNELMSG_GPADL_TORNDOWN", value: 12, isUnsigned: true)
!3786 = !DIEnumerator(name: "CHANNELMSG_RELID_RELEASED", value: 13, isUnsigned: true)
!3787 = !DIEnumerator(name: "CHANNELMSG_INITIATE_CONTACT", value: 14, isUnsigned: true)
!3788 = !DIEnumerator(name: "CHANNELMSG_VERSION_RESPONSE", value: 15, isUnsigned: true)
!3789 = !DIEnumerator(name: "CHANNELMSG_UNLOAD", value: 16, isUnsigned: true)
!3790 = !DIEnumerator(name: "CHANNELMSG_UNLOAD_RESPONSE", value: 17, isUnsigned: true)
!3791 = !DIEnumerator(name: "CHANNELMSG_18", value: 18, isUnsigned: true)
!3792 = !DIEnumerator(name: "CHANNELMSG_19", value: 19, isUnsigned: true)
!3793 = !DIEnumerator(name: "CHANNELMSG_20", value: 20, isUnsigned: true)
!3794 = !DIEnumerator(name: "CHANNELMSG_TL_CONNECT_REQUEST", value: 21, isUnsigned: true)
!3795 = !DIEnumerator(name: "CHANNELMSG_MODIFYCHANNEL", value: 22, isUnsigned: true)
!3796 = !DIEnumerator(name: "CHANNELMSG_TL_CONNECT_RESULT", value: 23, isUnsigned: true)
!3797 = !DIEnumerator(name: "CHANNELMSG_COUNT", value: 24, isUnsigned: true)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3768, file: !8, line: 486, baseType: !246, size: 32, offset: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "offer", scope: !3765, file: !8, line: 504, baseType: !3800, size: 1408, offset: 64)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_offer", file: !8, line: 266, size: 1408, elements: !3801)
!3801 = !{!3802, !3803, !3804, !3805, !3806, !3807, !3808, !3826, !3827}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "if_type", scope: !3800, file: !8, line: 267, baseType: !22, size: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "if_instance", scope: !3800, file: !8, line: 268, baseType: !22, size: 128, offset: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !3800, file: !8, line: 273, baseType: !250, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !3800, file: !8, line: 274, baseType: !250, size: 64, offset: 320)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "chn_flags", scope: !3800, file: !8, line: 276, baseType: !35, size: 16, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_megabytes", scope: !3800, file: !8, line: 277, baseType: !35, size: 16, offset: 400)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3800, file: !8, line: 296, baseType: !3809, size: 960, offset: 416)
!3809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3800, file: !8, line: 279, size: 960, elements: !3810)
!3810 = !{!3811, !3818}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !3809, file: !8, line: 283, baseType: !3812, size: 960)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3809, file: !8, line: 281, size: 960, elements: !3813)
!3813 = !{!3814}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "user_def", scope: !3812, file: !8, line: 282, baseType: !3815, size: 960)
!3815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 960, elements: !3816)
!3816 = !{!3817}
!3817 = !DISubrange(count: 120)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3809, file: !8, line: 295, baseType: !3819, size: 960)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3809, file: !8, line: 292, size: 960, elements: !3820)
!3820 = !{!3821, !3822}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_mode", scope: !3819, file: !8, line: 293, baseType: !246, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "user_def", scope: !3819, file: !8, line: 294, baseType: !3823, size: 928, offset: 32)
!3823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 928, elements: !3824)
!3824 = !{!3825}
!3825 = !DISubrange(count: 116)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "sub_channel_index", scope: !3800, file: !8, line: 303, baseType: !35, size: 16, offset: 1376)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !3800, file: !8, line: 304, baseType: !35, size: 16, offset: 1392)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !3765, file: !8, line: 505, baseType: !246, size: 32, offset: 1472)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "monitorid", scope: !3765, file: !8, line: 506, baseType: !1222, size: 8, offset: 1504)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_allocated", scope: !3765, file: !8, line: 510, baseType: !1222, size: 1, offset: 1512, flags: DIFlagBitField, extraData: i64 1512)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3765, file: !8, line: 511, baseType: !1222, size: 7, offset: 1513, flags: DIFlagBitField, extraData: i64 1512)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "is_dedicated_interrupt", scope: !3765, file: !8, line: 523, baseType: !35, size: 1, offset: 1520, flags: DIFlagBitField, extraData: i64 1512)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !3765, file: !8, line: 524, baseType: !35, size: 15, offset: 1521, flags: DIFlagBitField, extraData: i64 1512)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "connection_id", scope: !3765, file: !8, line: 525, baseType: !246, size: 32, offset: 1536)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_grp", scope: !7, file: !8, line: 785, baseType: !1222, size: 8, offset: 1792)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_bit", scope: !7, file: !8, line: 786, baseType: !1222, size: 8, offset: 1800)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "rescind", scope: !7, file: !8, line: 788, baseType: !318, size: 8, offset: 1808)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "rescind_event", scope: !7, file: !8, line: 789, baseType: !1378, size: 192, offset: 1856)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_gpadlhandle", scope: !7, file: !8, line: 791, baseType: !246, size: 32, offset: 2048)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_page", scope: !7, file: !8, line: 794, baseType: !552, size: 64, offset: 2112)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_pagecount", scope: !7, file: !8, line: 795, baseType: !246, size: 32, offset: 2176)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_send_offset", scope: !7, file: !8, line: 796, baseType: !246, size: 32, offset: 2208)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "outbound", scope: !7, file: !8, line: 797, baseType: !3844, size: 448, offset: 2240)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_ring_buffer_info", file: !8, line: 171, size: 448, elements: !3845)
!3845 = !{!3846, !3869, !3870, !3877, !3878, !3879, !3880}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "ring_buffer", scope: !3844, file: !8, line: 172, baseType: !3847, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_ring_buffer", file: !8, line: 113, size: 32768, elements: !3849)
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3855, !3863, !3867}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "write_index", scope: !3848, file: !8, line: 115, baseType: !246, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "read_index", scope: !3848, file: !8, line: 118, baseType: !246, size: 32, offset: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_mask", scope: !3848, file: !8, line: 120, baseType: !246, size: 32, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "pending_send_sz", scope: !3848, file: !8, line: 148, baseType: !246, size: 32, offset: 96)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !3848, file: !8, line: 149, baseType: !2108, size: 384, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "feature_bits", scope: !3848, file: !8, line: 155, baseType: !3856, size: 32, offset: 512)
!3856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3848, file: !8, line: 150, size: 32, elements: !3857)
!3857 = !{!3858, !3862}
!3858 = !DIDerivedType(tag: DW_TAG_member, scope: !3856, file: !8, line: 151, baseType: !3859, size: 32)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3856, file: !8, line: 151, size: 32, elements: !3860)
!3860 = !{!3861}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "feat_pending_send_sz", scope: !3859, file: !8, line: 152, baseType: !246, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3856, file: !8, line: 154, baseType: !246, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !3848, file: !8, line: 158, baseType: !3864, size: 32224, offset: 544)
!3864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, size: 32224, elements: !3865)
!3865 = !{!3866}
!3866 = !DISubrange(count: 4028)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3848, file: !8, line: 164, baseType: !3868, offset: 32768)
!3868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, elements: !2204)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "ring_size", scope: !3844, file: !8, line: 173, baseType: !246, size: 32, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "ring_size_div10_reciprocal", scope: !3844, file: !8, line: 174, baseType: !3871, size: 64, offset: 96)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reciprocal_value", file: !3872, line: 23, size: 64, elements: !3873)
!3872 = !DIFile(filename: "./include/linux/reciprocal_div.h", directory: "/home/lizy2001/genbc/linux")
!3873 = !{!3874, !3875, !3876}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !3871, file: !3872, line: 24, baseType: !246, size: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "sh1", scope: !3871, file: !3872, line: 25, baseType: !1222, size: 8, offset: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "sh2", scope: !3871, file: !3872, line: 25, baseType: !1222, size: 8, offset: 40)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "ring_lock", scope: !3844, file: !8, line: 175, baseType: !61, offset: 160)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "ring_datasize", scope: !3844, file: !8, line: 177, baseType: !246, size: 32, offset: 160)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "priv_read_index", scope: !3844, file: !8, line: 178, baseType: !246, size: 32, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "ring_buffer_mutex", scope: !3844, file: !8, line: 183, baseType: !1055, size: 192, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "inbound", scope: !7, file: !8, line: 798, baseType: !3844, size: 448, offset: 2688)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "close_msg", scope: !7, file: !8, line: 800, baseType: !3883, size: 832, offset: 3136)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_close_msg", file: !8, line: 733, size: 832, elements: !3884)
!3884 = !{!3885, !3930}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3883, file: !8, line: 734, baseType: !3886, size: 704)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_msginfo", file: !8, line: 707, size: 704, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3927, !3928}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "msglistentry", scope: !3886, file: !8, line: 709, baseType: !11, size: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "submsglist", scope: !3886, file: !8, line: 712, baseType: !11, size: 128, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "waitevent", scope: !3886, file: !8, line: 715, baseType: !1378, size: 192, offset: 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_channel", scope: !3886, file: !8, line: 716, baseType: !6, size: 64, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3886, file: !8, line: 723, baseType: !3893, size: 160, offset: 512)
!3893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3886, file: !8, line: 717, size: 160, elements: !3894)
!3894 = !{!3895, !3900, !3907, !3912, !3919}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "version_supported", scope: !3893, file: !8, line: 718, baseType: !3896, size: 72)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_version_supported", file: !8, line: 496, size: 72, elements: !3897)
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3896, file: !8, line: 497, baseType: !3768, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "version_supported", scope: !3896, file: !8, line: 498, baseType: !1222, size: 8, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "open_result", scope: !3893, file: !8, line: 719, baseType: !3901, size: 160)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_open_result", file: !8, line: 584, size: 160, elements: !3902)
!3902 = !{!3903, !3904, !3905, !3906}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3901, file: !8, line: 585, baseType: !3768, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !3901, file: !8, line: 586, baseType: !246, size: 32, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "openid", scope: !3901, file: !8, line: 587, baseType: !246, size: 32, offset: 96)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3901, file: !8, line: 588, baseType: !246, size: 32, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl_torndown", scope: !3893, file: !8, line: 720, baseType: !3908, size: 96)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_gpadl_torndown", file: !8, line: 638, size: 96, elements: !3909)
!3909 = !{!3910, !3911}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3908, file: !8, line: 639, baseType: !3768, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl", scope: !3908, file: !8, line: 640, baseType: !246, size: 32, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl_created", scope: !3893, file: !8, line: 721, baseType: !3913, size: 160)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_gpadl_created", file: !8, line: 625, size: 160, elements: !3914)
!3914 = !{!3915, !3916, !3917, !3918}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3913, file: !8, line: 626, baseType: !3768, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !3913, file: !8, line: 627, baseType: !246, size: 32, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl", scope: !3913, file: !8, line: 628, baseType: !246, size: 32, offset: 96)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "creation_status", scope: !3913, file: !8, line: 629, baseType: !246, size: 32, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "version_response", scope: !3893, file: !8, line: 722, baseType: !3920, size: 128)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_version_response", file: !8, line: 678, size: 128, elements: !3921)
!3921 = !{!3922, !3923, !3924, !3925, !3926}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3920, file: !8, line: 679, baseType: !3768, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "version_supported", scope: !3920, file: !8, line: 680, baseType: !1222, size: 8, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "connection_state", scope: !3920, file: !8, line: 682, baseType: !1222, size: 8, offset: 72)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3920, file: !8, line: 683, baseType: !35, size: 16, offset: 80)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "msg_conn_id", scope: !3920, file: !8, line: 693, baseType: !246, size: 32, offset: 96)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "msgsize", scope: !3886, file: !8, line: 725, baseType: !246, size: 32, offset: 672)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3886, file: !8, line: 730, baseType: !3929, offset: 704)
!3929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !2204)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3883, file: !8, line: 735, baseType: !3931, size: 96, offset: 704)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_close_channel", file: !8, line: 592, size: 96, elements: !3932)
!3932 = !{!3933, !3934}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3931, file: !8, line: 593, baseType: !3768, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !3931, file: !8, line: 594, baseType: !246, size: 32, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !7, file: !8, line: 803, baseType: !250, size: 64, offset: 3968)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "sig_events", scope: !7, file: !8, line: 804, baseType: !250, size: 64, offset: 4032)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "intr_out_empty", scope: !7, file: !8, line: 810, baseType: !250, size: 64, offset: 4096)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "out_full_flag", scope: !7, file: !8, line: 817, baseType: !318, size: 8, offset: 4160)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "callback_event", scope: !7, file: !8, line: 820, baseType: !3940, size: 320, offset: 4224)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !3941, line: 609, size: 320, elements: !3942)
!3941 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!3942 = !{!3943, !3945, !3946, !3947, !3948, !3959}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3940, file: !3941, line: 611, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3940, file: !3941, line: 612, baseType: !152, size: 64, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3940, file: !3941, line: 613, baseType: !579, size: 32, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !3940, file: !3941, line: 614, baseType: !318, size: 8, offset: 160)
!3948 = !DIDerivedType(tag: DW_TAG_member, scope: !3940, file: !3941, line: 615, baseType: !3949, size: 64, offset: 192)
!3949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3940, file: !3941, line: 615, size: 64, elements: !3950)
!3950 = !{!3951, !3955}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3949, file: !3941, line: 616, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{null, !152}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !3949, file: !3941, line: 617, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{null, !3944}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3940, file: !3941, line: 619, baseType: !152, size: 64, offset: 256)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "onchannel_callback", scope: !7, file: !8, line: 821, baseType: !296, size: 64, offset: 4544)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "channel_callback_context", scope: !7, file: !8, line: 822, baseType: !176, size: 64, offset: 4608)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "change_target_cpu_callback", scope: !7, file: !8, line: 824, baseType: !3963, size: 64, offset: 4672)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !6, !246, !246}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "sched_lock", scope: !7, file: !8, line: 831, baseType: !61, offset: 4736)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "callback_mode", scope: !7, file: !8, line: 848, baseType: !3968, size: 32, offset: 4736)
!3968 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hv_callback_mode", file: !8, line: 844, baseType: !216, size: 32, elements: !3969)
!3969 = !{!3970, !3971, !3972}
!3970 = !DIEnumerator(name: "HV_CALL_BATCHED", value: 0, isUnsigned: true)
!3971 = !DIEnumerator(name: "HV_CALL_DIRECT", value: 1, isUnsigned: true)
!3972 = !DIEnumerator(name: "HV_CALL_ISR", value: 2, isUnsigned: true)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "is_dedicated_interrupt", scope: !7, file: !8, line: 850, baseType: !318, size: 8, offset: 4768)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "sig_event", scope: !7, file: !8, line: 851, baseType: !250, size: 64, offset: 4800)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "target_cpu", scope: !7, file: !8, line: 862, baseType: !246, size: 32, offset: 4864)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "sc_creation_callback", scope: !7, file: !8, line: 883, baseType: !3977, size: 64, offset: 4928)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "chn_rescind_callback", scope: !7, file: !8, line: 889, baseType: !3977, size: 64, offset: 4992)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "sc_list", scope: !7, file: !8, line: 894, baseType: !11, size: 128, offset: 5056)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "primary_channel", scope: !7, file: !8, line: 899, baseType: !6, size: 64, offset: 5184)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "per_channel_state", scope: !7, file: !8, line: 903, baseType: !176, size: 64, offset: 5248)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !7, file: !8, line: 909, baseType: !195, size: 128, align: 64, offset: 5312)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !7, file: !8, line: 914, baseType: !45, size: 512, offset: 5440)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !7, file: !8, line: 940, baseType: !318, size: 8, offset: 5952)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "probe_done", scope: !7, file: !8, line: 942, baseType: !318, size: 8, offset: 5960)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !7, file: !8, line: 949, baseType: !35, size: 16, offset: 5968)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "add_channel_work", scope: !7, file: !8, line: 957, baseType: !1832, size: 256, offset: 6016)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "intr_in_full", scope: !7, file: !8, line: 963, baseType: !250, size: 64, offset: 6272)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "out_full_total", scope: !7, file: !8, line: 969, baseType: !250, size: 64, offset: 6336)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "out_full_first", scope: !7, file: !8, line: 975, baseType: !250, size: 64, offset: 6400)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz_testing_state", scope: !7, file: !8, line: 978, baseType: !318, size: 8, offset: 6464)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz_testing_interrupt_delay", scope: !7, file: !8, line: 988, baseType: !246, size: 32, offset: 6496)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz_testing_message_delay", scope: !7, file: !8, line: 989, baseType: !246, size: 32, offset: 6528)
!3994 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3995, retainedTypes: !4013, globals: !4017, splitDebugInlining: false, nameTableKind: None)
!3995 = !{!745, !947, !1173, !1296, !2250, !2345, !3031, !3050, !3095, !3362, !3447, !3534, !3542, !3758, !3771, !3968, !3996, !4001, !4006}
!3996 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3997, line: 10, baseType: !216, size: 32, elements: !3998)
!3997 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!3998 = !{!3999, !4000}
!3999 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!4000 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!4001 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "delay", file: !4002, line: 393, baseType: !216, size: 32, elements: !4003)
!4002 = !DIFile(filename: "drivers/hv/hyperv_vmbus.h", directory: "/home/lizy2001/genbc/linux")
!4003 = !{!4004, !4005}
!4004 = !DIEnumerator(name: "INTERRUPT_DELAY", value: 0, isUnsigned: true)
!4005 = !DIEnumerator(name: "MESSAGE_DELAY", value: 1, isUnsigned: true)
!4006 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4007, line: 305, baseType: !216, size: 32, elements: !4008)
!4007 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!4008 = !{!4009, !4010, !4011, !4012}
!4009 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!4010 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!4011 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!4012 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!4013 = !{!575, !3847, !935, !176, !49, !103, !4014, !152, !250}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4016)
!4016 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !216)
!4017 = !{!0, !4018}
!4018 = !DIGlobalVariableExpression(var: !4019, expr: !DIExpression())
!4019 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 188, type: !475, isLocal: true, isDefinition: true)
!4020 = !{!"rsp"}
!4021 = !{i32 7, !"Dwarf Version", i32 4}
!4022 = !{i32 2, !"Debug Info Version", i32 3}
!4023 = !{i32 1, !"wchar_size", i32 2}
!4024 = !{i32 1, !"Code Model", i32 2}
!4025 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4026 = distinct !DISubprogram(name: "hv_ringbuffer_get_debuginfo", scope: !3, file: !3, line: 156, type: !4027, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!87, !4029, !4030}
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_ring_buffer_debug_info", file: !8, line: 1260, size: 160, elements: !4032)
!4032 = !{!4033, !4034, !4035, !4036, !4037}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "current_interrupt_mask", scope: !4031, file: !8, line: 1261, baseType: !246, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "current_read_index", scope: !4031, file: !8, line: 1262, baseType: !246, size: 32, offset: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "current_write_index", scope: !4031, file: !8, line: 1263, baseType: !246, size: 32, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_avail_toread", scope: !4031, file: !8, line: 1264, baseType: !246, size: 32, offset: 96)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_avail_towrite", scope: !4031, file: !8, line: 1265, baseType: !246, size: 32, offset: 128)
!4038 = !DILocalVariable(name: "ring_info", arg: 1, scope: !4026, file: !3, line: 156, type: !4029)
!4039 = !DILocation(line: 156, column: 61, scope: !4026)
!4040 = !DILocalVariable(name: "debug_info", arg: 2, scope: !4026, file: !3, line: 157, type: !4030)
!4041 = !DILocation(line: 157, column: 39, scope: !4026)
!4042 = !DILocalVariable(name: "bytes_avail_towrite", scope: !4026, file: !3, line: 159, type: !246)
!4043 = !DILocation(line: 159, column: 6, scope: !4026)
!4044 = !DILocalVariable(name: "bytes_avail_toread", scope: !4026, file: !3, line: 160, type: !246)
!4045 = !DILocation(line: 160, column: 6, scope: !4026)
!4046 = !DILocation(line: 162, column: 14, scope: !4026)
!4047 = !DILocation(line: 162, column: 25, scope: !4026)
!4048 = !DILocation(line: 162, column: 2, scope: !4026)
!4049 = !DILocation(line: 164, column: 7, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 164, column: 6)
!4051 = !DILocation(line: 164, column: 18, scope: !4050)
!4052 = !DILocation(line: 164, column: 6, scope: !4026)
!4053 = !DILocation(line: 165, column: 17, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 164, column: 31)
!4055 = !DILocation(line: 165, column: 28, scope: !4054)
!4056 = !DILocation(line: 165, column: 3, scope: !4054)
!4057 = !DILocation(line: 166, column: 3, scope: !4054)
!4058 = !DILocation(line: 169, column: 31, scope: !4026)
!4059 = !DILocation(line: 169, column: 2, scope: !4026)
!4060 = !DILocation(line: 172, column: 35, scope: !4026)
!4061 = !DILocation(line: 172, column: 2, scope: !4026)
!4062 = !DILocation(line: 172, column: 14, scope: !4026)
!4063 = !DILocation(line: 172, column: 33, scope: !4026)
!4064 = !DILocation(line: 173, column: 36, scope: !4026)
!4065 = !DILocation(line: 173, column: 2, scope: !4026)
!4066 = !DILocation(line: 173, column: 14, scope: !4026)
!4067 = !DILocation(line: 173, column: 34, scope: !4026)
!4068 = !DILocation(line: 174, column: 35, scope: !4026)
!4069 = !DILocation(line: 174, column: 46, scope: !4026)
!4070 = !DILocation(line: 174, column: 59, scope: !4026)
!4071 = !DILocation(line: 174, column: 2, scope: !4026)
!4072 = !DILocation(line: 174, column: 14, scope: !4026)
!4073 = !DILocation(line: 174, column: 33, scope: !4026)
!4074 = !DILocation(line: 175, column: 36, scope: !4026)
!4075 = !DILocation(line: 175, column: 47, scope: !4026)
!4076 = !DILocation(line: 175, column: 60, scope: !4026)
!4077 = !DILocation(line: 175, column: 2, scope: !4026)
!4078 = !DILocation(line: 175, column: 14, scope: !4026)
!4079 = !DILocation(line: 175, column: 34, scope: !4026)
!4080 = !DILocation(line: 177, column: 5, scope: !4026)
!4081 = !DILocation(line: 177, column: 16, scope: !4026)
!4082 = !DILocation(line: 177, column: 29, scope: !4026)
!4083 = !DILocation(line: 176, column: 2, scope: !4026)
!4084 = !DILocation(line: 176, column: 14, scope: !4026)
!4085 = !DILocation(line: 177, column: 3, scope: !4026)
!4086 = !DILocation(line: 178, column: 16, scope: !4026)
!4087 = !DILocation(line: 178, column: 27, scope: !4026)
!4088 = !DILocation(line: 178, column: 2, scope: !4026)
!4089 = !DILocation(line: 180, column: 2, scope: !4026)
!4090 = !DILocation(line: 181, column: 1, scope: !4026)
!4091 = distinct !DISubprogram(name: "hv_get_ringbuffer_availbytes", scope: !3, file: !3, line: 140, type: !4092, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{null, !4094, !1285, !1285}
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3844)
!4096 = !DILocalVariable(name: "rbi", arg: 1, scope: !4091, file: !3, line: 140, type: !4094)
!4097 = !DILocation(line: 140, column: 64, scope: !4091)
!4098 = !DILocalVariable(name: "read", arg: 2, scope: !4091, file: !3, line: 141, type: !1285)
!4099 = !DILocation(line: 141, column: 14, scope: !4091)
!4100 = !DILocalVariable(name: "write", arg: 3, scope: !4091, file: !3, line: 141, type: !1285)
!4101 = !DILocation(line: 141, column: 25, scope: !4091)
!4102 = !DILocalVariable(name: "read_loc", scope: !4091, file: !3, line: 143, type: !246)
!4103 = !DILocation(line: 143, column: 6, scope: !4091)
!4104 = !DILocalVariable(name: "write_loc", scope: !4091, file: !3, line: 143, type: !246)
!4105 = !DILocation(line: 143, column: 16, scope: !4091)
!4106 = !DILocalVariable(name: "dsize", scope: !4091, file: !3, line: 143, type: !246)
!4107 = !DILocation(line: 143, column: 27, scope: !4091)
!4108 = !DILocation(line: 146, column: 13, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 146, column: 13)
!4110 = !DILocation(line: 146, column: 13, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 146, column: 13)
!4112 = !DILocation(line: 146, column: 11, scope: !4091)
!4113 = !DILocation(line: 147, column: 14, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 147, column: 14)
!4115 = !DILocation(line: 147, column: 14, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 147, column: 14)
!4117 = !DILocation(line: 147, column: 12, scope: !4091)
!4118 = !DILocation(line: 148, column: 10, scope: !4091)
!4119 = !DILocation(line: 148, column: 15, scope: !4091)
!4120 = !DILocation(line: 148, column: 8, scope: !4091)
!4121 = !DILocation(line: 150, column: 11, scope: !4091)
!4122 = !DILocation(line: 150, column: 24, scope: !4091)
!4123 = !DILocation(line: 150, column: 21, scope: !4091)
!4124 = !DILocation(line: 150, column: 35, scope: !4091)
!4125 = !DILocation(line: 150, column: 44, scope: !4091)
!4126 = !DILocation(line: 150, column: 56, scope: !4091)
!4127 = !DILocation(line: 150, column: 54, scope: !4091)
!4128 = !DILocation(line: 150, column: 41, scope: !4091)
!4129 = !DILocation(line: 151, column: 3, scope: !4091)
!4130 = !DILocation(line: 151, column: 14, scope: !4091)
!4131 = !DILocation(line: 151, column: 12, scope: !4091)
!4132 = !DILocation(line: 150, column: 3, scope: !4091)
!4133 = !DILocation(line: 150, column: 9, scope: !4091)
!4134 = !DILocation(line: 152, column: 10, scope: !4091)
!4135 = !DILocation(line: 152, column: 19, scope: !4091)
!4136 = !DILocation(line: 152, column: 18, scope: !4091)
!4137 = !DILocation(line: 152, column: 16, scope: !4091)
!4138 = !DILocation(line: 152, column: 3, scope: !4091)
!4139 = !DILocation(line: 152, column: 8, scope: !4091)
!4140 = !DILocation(line: 153, column: 1, scope: !4091)
!4141 = !DILocalVariable(name: "channel", arg: 1, scope: !2, file: !3, line: 185, type: !6)
!4142 = !DILocation(line: 185, column: 51, scope: !2)
!4143 = !DILocation(line: 187, column: 2, scope: !2)
!4144 = !DILocation(line: 187, column: 2, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !2, file: !3, line: 187, column: 2)
!4146 = !DILocation(line: 188, column: 2, scope: !2)
!4147 = !DILocation(line: 188, column: 2, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !2, file: !3, line: 188, column: 2)
!4149 = !DILocation(line: 189, column: 1, scope: !2)
!4150 = distinct !DISubprogram(name: "hv_ringbuffer_init", scope: !3, file: !3, line: 192, type: !4151, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!87, !4029, !552, !246}
!4153 = !DILocalVariable(name: "lock", arg: 1, scope: !4154, file: !4155, line: 327, type: !941)
!4154 = distinct !DISubprogram(name: "spinlock_check", scope: !4155, file: !4155, line: 327, type: !4156, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4155 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!4158, !941}
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!4159 = !DILocation(line: 327, column: 67, scope: !4154, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 235, column: 2, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 235, column: 2)
!4162 = !DILocalVariable(name: "ring_info", arg: 1, scope: !4150, file: !3, line: 192, type: !4029)
!4163 = !DILocation(line: 192, column: 52, scope: !4150)
!4164 = !DILocalVariable(name: "pages", arg: 2, scope: !4150, file: !3, line: 193, type: !552)
!4165 = !DILocation(line: 193, column: 23, scope: !4150)
!4166 = !DILocalVariable(name: "page_cnt", arg: 3, scope: !4150, file: !3, line: 193, type: !246)
!4167 = !DILocation(line: 193, column: 34, scope: !4150)
!4168 = !DILocalVariable(name: "i", scope: !4150, file: !3, line: 195, type: !87)
!4169 = !DILocation(line: 195, column: 6, scope: !4150)
!4170 = !DILocalVariable(name: "pages_wraparound", scope: !4150, file: !3, line: 196, type: !652)
!4171 = !DILocation(line: 196, column: 16, scope: !4150)
!4172 = !DILocation(line: 198, column: 2, scope: !4150)
!4173 = !DILocation(line: 198, column: 2, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 198, column: 2)
!4175 = !DILocation(line: 204, column: 29, scope: !4150)
!4176 = !DILocation(line: 204, column: 38, scope: !4150)
!4177 = !DILocation(line: 204, column: 42, scope: !4150)
!4178 = !DILocation(line: 204, column: 21, scope: !4150)
!4179 = !DILocation(line: 204, column: 19, scope: !4150)
!4180 = !DILocation(line: 206, column: 7, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 206, column: 6)
!4182 = !DILocation(line: 206, column: 6, scope: !4150)
!4183 = !DILocation(line: 207, column: 3, scope: !4181)
!4184 = !DILocation(line: 209, column: 24, scope: !4150)
!4185 = !DILocation(line: 209, column: 2, scope: !4150)
!4186 = !DILocation(line: 209, column: 22, scope: !4150)
!4187 = !DILocation(line: 210, column: 9, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 210, column: 2)
!4189 = !DILocation(line: 210, column: 7, scope: !4188)
!4190 = !DILocation(line: 210, column: 14, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4188, file: !3, line: 210, column: 2)
!4192 = !DILocation(line: 210, column: 23, scope: !4191)
!4193 = !DILocation(line: 210, column: 32, scope: !4191)
!4194 = !DILocation(line: 210, column: 20, scope: !4191)
!4195 = !DILocation(line: 210, column: 16, scope: !4191)
!4196 = !DILocation(line: 210, column: 2, scope: !4188)
!4197 = !DILocation(line: 211, column: 30, scope: !4191)
!4198 = !DILocation(line: 211, column: 36, scope: !4191)
!4199 = !DILocation(line: 211, column: 41, scope: !4191)
!4200 = !DILocation(line: 211, column: 50, scope: !4191)
!4201 = !DILocation(line: 211, column: 38, scope: !4191)
!4202 = !DILocation(line: 211, column: 55, scope: !4191)
!4203 = !DILocation(line: 211, column: 3, scope: !4191)
!4204 = !DILocation(line: 211, column: 20, scope: !4191)
!4205 = !DILocation(line: 211, column: 22, scope: !4191)
!4206 = !DILocation(line: 211, column: 27, scope: !4191)
!4207 = !DILocation(line: 210, column: 39, scope: !4191)
!4208 = !DILocation(line: 210, column: 2, scope: !4191)
!4209 = distinct !{!4209, !4196, !4210}
!4210 = !DILocation(line: 211, column: 58, scope: !4188)
!4211 = !DILocation(line: 214, column: 8, scope: !4150)
!4212 = !DILocation(line: 214, column: 26, scope: !4150)
!4213 = !DILocation(line: 214, column: 35, scope: !4150)
!4214 = !DILocation(line: 214, column: 39, scope: !4150)
!4215 = !DILocation(line: 214, column: 52, scope: !4150)
!4216 = !DILocation(line: 214, column: 3, scope: !4150)
!4217 = !DILocation(line: 213, column: 27, scope: !4150)
!4218 = !DILocation(line: 213, column: 2, scope: !4150)
!4219 = !DILocation(line: 213, column: 13, scope: !4150)
!4220 = !DILocation(line: 213, column: 25, scope: !4150)
!4221 = !DILocation(line: 216, column: 8, scope: !4150)
!4222 = !DILocation(line: 216, column: 2, scope: !4150)
!4223 = !DILocation(line: 219, column: 7, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 219, column: 6)
!4225 = !DILocation(line: 219, column: 18, scope: !4224)
!4226 = !DILocation(line: 219, column: 6, scope: !4150)
!4227 = !DILocation(line: 220, column: 3, scope: !4224)
!4228 = !DILocation(line: 223, column: 3, scope: !4150)
!4229 = !DILocation(line: 223, column: 14, scope: !4150)
!4230 = !DILocation(line: 223, column: 27, scope: !4150)
!4231 = !DILocation(line: 223, column: 39, scope: !4150)
!4232 = !DILocation(line: 222, column: 2, scope: !4150)
!4233 = !DILocation(line: 222, column: 13, scope: !4150)
!4234 = !DILocation(line: 222, column: 26, scope: !4150)
!4235 = !DILocation(line: 222, column: 37, scope: !4150)
!4236 = !DILocation(line: 226, column: 2, scope: !4150)
!4237 = !DILocation(line: 226, column: 13, scope: !4150)
!4238 = !DILocation(line: 226, column: 26, scope: !4150)
!4239 = !DILocation(line: 226, column: 39, scope: !4150)
!4240 = !DILocation(line: 226, column: 45, scope: !4150)
!4241 = !DILocation(line: 228, column: 25, scope: !4150)
!4242 = !DILocation(line: 228, column: 34, scope: !4150)
!4243 = !DILocation(line: 228, column: 2, scope: !4150)
!4244 = !DILocation(line: 228, column: 13, scope: !4150)
!4245 = !DILocation(line: 228, column: 23, scope: !4150)
!4246 = !DILocation(line: 229, column: 2, scope: !4150)
!4247 = !DILocation(line: 229, column: 13, scope: !4150)
!4248 = !DILocation(line: 230, column: 20, scope: !4150)
!4249 = !DILocation(line: 230, column: 31, scope: !4150)
!4250 = !DILocation(line: 230, column: 41, scope: !4150)
!4251 = !DILocation(line: 230, column: 3, scope: !4150)
!4252 = !DILocation(line: 231, column: 29, scope: !4150)
!4253 = !DILocation(line: 231, column: 40, scope: !4150)
!4254 = !DILocation(line: 231, column: 50, scope: !4150)
!4255 = !DILocation(line: 231, column: 2, scope: !4150)
!4256 = !DILocation(line: 231, column: 13, scope: !4150)
!4257 = !DILocation(line: 231, column: 27, scope: !4150)
!4258 = !DILocation(line: 233, column: 2, scope: !4150)
!4259 = !DILocation(line: 233, column: 13, scope: !4150)
!4260 = !DILocation(line: 233, column: 29, scope: !4150)
!4261 = !DILocation(line: 235, column: 2, scope: !4150)
!4262 = !DILocation(line: 235, column: 2, scope: !4161)
!4263 = !DILocation(line: 329, column: 10, scope: !4154, inlinedAt: !4160)
!4264 = !DILocation(line: 329, column: 16, scope: !4154, inlinedAt: !4160)
!4265 = !DILocation(line: 237, column: 2, scope: !4150)
!4266 = !DILocation(line: 238, column: 1, scope: !4150)
!4267 = distinct !DISubprogram(name: "kcalloc", scope: !4007, file: !4007, line: 601, type: !4268, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!176, !149, !149, !575}
!4270 = !DILocalVariable(name: "n", arg: 1, scope: !4267, file: !4007, line: 601, type: !149)
!4271 = !DILocation(line: 601, column: 36, scope: !4267)
!4272 = !DILocalVariable(name: "size", arg: 2, scope: !4267, file: !4007, line: 601, type: !149)
!4273 = !DILocation(line: 601, column: 46, scope: !4267)
!4274 = !DILocalVariable(name: "flags", arg: 3, scope: !4267, file: !4007, line: 601, type: !575)
!4275 = !DILocation(line: 601, column: 58, scope: !4267)
!4276 = !DILocation(line: 603, column: 23, scope: !4267)
!4277 = !DILocation(line: 603, column: 26, scope: !4267)
!4278 = !DILocation(line: 603, column: 32, scope: !4267)
!4279 = !DILocation(line: 603, column: 38, scope: !4267)
!4280 = !DILocation(line: 603, column: 9, scope: !4267)
!4281 = !DILocation(line: 603, column: 2, scope: !4267)
!4282 = distinct !DISubprogram(name: "hv_ringbuffer_cleanup", scope: !3, file: !3, line: 241, type: !4283, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{null, !4029}
!4285 = !DILocalVariable(name: "ring_info", arg: 1, scope: !4282, file: !3, line: 241, type: !4029)
!4286 = !DILocation(line: 241, column: 56, scope: !4282)
!4287 = !DILocation(line: 243, column: 14, scope: !4282)
!4288 = !DILocation(line: 243, column: 25, scope: !4282)
!4289 = !DILocation(line: 243, column: 2, scope: !4282)
!4290 = !DILocation(line: 244, column: 9, scope: !4282)
!4291 = !DILocation(line: 244, column: 20, scope: !4282)
!4292 = !DILocation(line: 244, column: 2, scope: !4282)
!4293 = !DILocation(line: 245, column: 2, scope: !4282)
!4294 = !DILocation(line: 245, column: 13, scope: !4282)
!4295 = !DILocation(line: 245, column: 25, scope: !4282)
!4296 = !DILocation(line: 246, column: 16, scope: !4282)
!4297 = !DILocation(line: 246, column: 27, scope: !4282)
!4298 = !DILocation(line: 246, column: 2, scope: !4282)
!4299 = !DILocation(line: 247, column: 1, scope: !4282)
!4300 = distinct !DISubprogram(name: "hv_ringbuffer_write", scope: !3, file: !3, line: 250, type: !4301, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!87, !6, !718, !246}
!4303 = !DILocalVariable(name: "lock", arg: 1, scope: !4304, file: !4155, line: 407, type: !941)
!4304 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4155, file: !4155, line: 407, type: !4305, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{null, !941, !152}
!4307 = !DILocation(line: 407, column: 64, scope: !4304, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 318, column: 2, scope: !4300)
!4309 = !DILocalVariable(name: "flags", arg: 2, scope: !4304, file: !4155, line: 407, type: !152)
!4310 = !DILocation(line: 407, column: 84, scope: !4304, inlinedAt: !4308)
!4311 = !DILocation(line: 407, column: 64, scope: !4304, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 285, column: 3, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 277, column: 49)
!4314 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 277, column: 6)
!4315 = !DILocation(line: 407, column: 84, scope: !4304, inlinedAt: !4312)
!4316 = !DILocation(line: 327, column: 67, scope: !4154, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 268, column: 2, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 268, column: 2)
!4319 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 268, column: 2)
!4320 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 268, column: 2)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 268, column: 2)
!4322 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 268, column: 2)
!4323 = !DILocalVariable(name: "channel", arg: 1, scope: !4300, file: !3, line: 250, type: !6)
!4324 = !DILocation(line: 250, column: 47, scope: !4300)
!4325 = !DILocalVariable(name: "kv_list", arg: 2, scope: !4300, file: !3, line: 251, type: !718)
!4326 = !DILocation(line: 251, column: 23, scope: !4300)
!4327 = !DILocalVariable(name: "kv_count", arg: 3, scope: !4300, file: !3, line: 251, type: !246)
!4328 = !DILocation(line: 251, column: 36, scope: !4300)
!4329 = !DILocalVariable(name: "i", scope: !4300, file: !3, line: 253, type: !87)
!4330 = !DILocation(line: 253, column: 6, scope: !4300)
!4331 = !DILocalVariable(name: "bytes_avail_towrite", scope: !4300, file: !3, line: 254, type: !246)
!4332 = !DILocation(line: 254, column: 6, scope: !4300)
!4333 = !DILocalVariable(name: "totalbytes_towrite", scope: !4300, file: !3, line: 255, type: !246)
!4334 = !DILocation(line: 255, column: 6, scope: !4300)
!4335 = !DILocalVariable(name: "next_write_location", scope: !4300, file: !3, line: 256, type: !246)
!4336 = !DILocation(line: 256, column: 6, scope: !4300)
!4337 = !DILocalVariable(name: "old_write", scope: !4300, file: !3, line: 257, type: !246)
!4338 = !DILocation(line: 257, column: 6, scope: !4300)
!4339 = !DILocalVariable(name: "prev_indices", scope: !4300, file: !3, line: 258, type: !250)
!4340 = !DILocation(line: 258, column: 6, scope: !4300)
!4341 = !DILocalVariable(name: "flags", scope: !4300, file: !3, line: 259, type: !152)
!4342 = !DILocation(line: 259, column: 16, scope: !4300)
!4343 = !DILocalVariable(name: "outring_info", scope: !4300, file: !3, line: 260, type: !4029)
!4344 = !DILocation(line: 260, column: 30, scope: !4300)
!4345 = !DILocation(line: 260, column: 46, scope: !4300)
!4346 = !DILocation(line: 260, column: 55, scope: !4300)
!4347 = !DILocation(line: 262, column: 6, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 262, column: 6)
!4349 = !DILocation(line: 262, column: 15, scope: !4348)
!4350 = !DILocation(line: 262, column: 6, scope: !4300)
!4351 = !DILocation(line: 263, column: 3, scope: !4348)
!4352 = !DILocation(line: 265, column: 9, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 265, column: 2)
!4354 = !DILocation(line: 265, column: 7, scope: !4353)
!4355 = !DILocation(line: 265, column: 14, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 265, column: 2)
!4357 = !DILocation(line: 265, column: 18, scope: !4356)
!4358 = !DILocation(line: 265, column: 16, scope: !4356)
!4359 = !DILocation(line: 265, column: 2, scope: !4353)
!4360 = !DILocation(line: 266, column: 25, scope: !4356)
!4361 = !DILocation(line: 266, column: 33, scope: !4356)
!4362 = !DILocation(line: 266, column: 36, scope: !4356)
!4363 = !DILocation(line: 266, column: 22, scope: !4356)
!4364 = !DILocation(line: 266, column: 3, scope: !4356)
!4365 = !DILocation(line: 265, column: 29, scope: !4356)
!4366 = !DILocation(line: 265, column: 2, scope: !4356)
!4367 = distinct !{!4367, !4359, !4368}
!4368 = !DILocation(line: 266, column: 36, scope: !4353)
!4369 = !DILocation(line: 268, column: 2, scope: !4300)
!4370 = !DILocation(line: 268, column: 2, scope: !4322)
!4371 = !DILocalVariable(name: "__dummy", scope: !4372, file: !3, line: 268, type: !152)
!4372 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 268, column: 2)
!4373 = !DILocation(line: 268, column: 2, scope: !4372)
!4374 = !DILocalVariable(name: "__dummy2", scope: !4372, file: !3, line: 268, type: !152)
!4375 = !DILocation(line: 268, column: 2, scope: !4321)
!4376 = !DILocation(line: 268, column: 2, scope: !4320)
!4377 = !DILocation(line: 268, column: 2, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 268, column: 2)
!4379 = !DILocalVariable(name: "__dummy", scope: !4380, file: !3, line: 268, type: !152)
!4380 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 268, column: 2)
!4381 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 268, column: 2)
!4382 = !DILocation(line: 268, column: 2, scope: !4380)
!4383 = !DILocalVariable(name: "__dummy2", scope: !4380, file: !3, line: 268, type: !152)
!4384 = !DILocation(line: 268, column: 2, scope: !4381)
!4385 = !DILocation(line: 268, column: 2, scope: !4319)
!4386 = !{i32 -2141883960}
!4387 = !DILocation(line: 268, column: 2, scope: !4318)
!4388 = !DILocation(line: 329, column: 10, scope: !4154, inlinedAt: !4317)
!4389 = !DILocation(line: 329, column: 16, scope: !4154, inlinedAt: !4317)
!4390 = !DILocation(line: 270, column: 46, scope: !4300)
!4391 = !DILocation(line: 270, column: 24, scope: !4300)
!4392 = !DILocation(line: 270, column: 22, scope: !4300)
!4393 = !DILocation(line: 277, column: 6, scope: !4314)
!4394 = !DILocation(line: 277, column: 29, scope: !4314)
!4395 = !DILocation(line: 277, column: 26, scope: !4314)
!4396 = !DILocation(line: 277, column: 6, scope: !4300)
!4397 = !DILocation(line: 278, column: 5, scope: !4313)
!4398 = !DILocation(line: 278, column: 14, scope: !4313)
!4399 = !DILocation(line: 278, column: 3, scope: !4313)
!4400 = !DILocation(line: 280, column: 8, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 280, column: 7)
!4402 = !DILocation(line: 280, column: 17, scope: !4401)
!4403 = !DILocation(line: 280, column: 7, scope: !4313)
!4404 = !DILocation(line: 281, column: 6, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 280, column: 32)
!4406 = !DILocation(line: 281, column: 15, scope: !4405)
!4407 = !DILocation(line: 281, column: 4, scope: !4405)
!4408 = !DILocation(line: 282, column: 4, scope: !4405)
!4409 = !DILocation(line: 282, column: 13, scope: !4405)
!4410 = !DILocation(line: 282, column: 27, scope: !4405)
!4411 = !DILocation(line: 283, column: 3, scope: !4405)
!4412 = !DILocation(line: 285, column: 27, scope: !4313)
!4413 = !DILocation(line: 285, column: 41, scope: !4313)
!4414 = !DILocation(line: 285, column: 52, scope: !4313)
!4415 = !DILocalVariable(name: "__dummy", scope: !4416, file: !4155, line: 409, type: !152)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !4155, line: 409, column: 2)
!4417 = distinct !DILexicalBlock(scope: !4304, file: !4155, line: 409, column: 2)
!4418 = !DILocation(line: 409, column: 2, scope: !4416, inlinedAt: !4312)
!4419 = !DILocalVariable(name: "__dummy2", scope: !4416, file: !4155, line: 409, type: !152)
!4420 = !DILocalVariable(name: "__dummy", scope: !4421, file: !4155, line: 409, type: !152)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !4155, line: 409, column: 2)
!4422 = distinct !DILexicalBlock(scope: !4423, file: !4155, line: 409, column: 2)
!4423 = distinct !DILexicalBlock(scope: !4424, file: !4155, line: 409, column: 2)
!4424 = distinct !DILexicalBlock(scope: !4417, file: !4155, line: 409, column: 2)
!4425 = !DILocation(line: 409, column: 2, scope: !4421, inlinedAt: !4312)
!4426 = !DILocalVariable(name: "__dummy2", scope: !4421, file: !4155, line: 409, type: !152)
!4427 = !DILocation(line: 409, column: 2, scope: !4422, inlinedAt: !4312)
!4428 = !DILocation(line: 409, column: 2, scope: !4429, inlinedAt: !4312)
!4429 = distinct !DILexicalBlock(scope: !4424, file: !4155, line: 409, column: 2)
!4430 = !{i32 -2145436632}
!4431 = !DILocation(line: 409, column: 2, scope: !4432, inlinedAt: !4312)
!4432 = distinct !DILexicalBlock(scope: !4429, file: !4155, line: 409, column: 2)
!4433 = !DILocation(line: 286, column: 3, scope: !4313)
!4434 = !DILocation(line: 289, column: 2, scope: !4300)
!4435 = !DILocation(line: 289, column: 11, scope: !4300)
!4436 = !DILocation(line: 289, column: 25, scope: !4300)
!4437 = !DILocation(line: 292, column: 51, scope: !4300)
!4438 = !DILocation(line: 292, column: 24, scope: !4300)
!4439 = !DILocation(line: 292, column: 22, scope: !4300)
!4440 = !DILocation(line: 294, column: 14, scope: !4300)
!4441 = !DILocation(line: 294, column: 12, scope: !4300)
!4442 = !DILocation(line: 296, column: 9, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 296, column: 2)
!4444 = !DILocation(line: 296, column: 7, scope: !4443)
!4445 = !DILocation(line: 296, column: 14, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 296, column: 2)
!4447 = !DILocation(line: 296, column: 18, scope: !4446)
!4448 = !DILocation(line: 296, column: 16, scope: !4446)
!4449 = !DILocation(line: 296, column: 2, scope: !4443)
!4450 = !DILocation(line: 297, column: 46, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 296, column: 33)
!4452 = !DILocation(line: 298, column: 12, scope: !4451)
!4453 = !DILocation(line: 299, column: 12, scope: !4451)
!4454 = !DILocation(line: 299, column: 20, scope: !4451)
!4455 = !DILocation(line: 299, column: 23, scope: !4451)
!4456 = !DILocation(line: 300, column: 12, scope: !4451)
!4457 = !DILocation(line: 300, column: 20, scope: !4451)
!4458 = !DILocation(line: 300, column: 23, scope: !4451)
!4459 = !DILocation(line: 297, column: 25, scope: !4451)
!4460 = !DILocation(line: 297, column: 23, scope: !4451)
!4461 = !DILocation(line: 301, column: 2, scope: !4451)
!4462 = !DILocation(line: 296, column: 29, scope: !4446)
!4463 = !DILocation(line: 296, column: 2, scope: !4446)
!4464 = distinct !{!4464, !4449, !4465}
!4465 = !DILocation(line: 301, column: 2, scope: !4443)
!4466 = !DILocation(line: 304, column: 43, scope: !4300)
!4467 = !DILocation(line: 304, column: 17, scope: !4300)
!4468 = !DILocation(line: 304, column: 15, scope: !4300)
!4469 = !DILocation(line: 306, column: 45, scope: !4300)
!4470 = !DILocation(line: 307, column: 11, scope: !4300)
!4471 = !DILocation(line: 308, column: 11, scope: !4300)
!4472 = !DILocation(line: 306, column: 24, scope: !4300)
!4473 = !DILocation(line: 306, column: 22, scope: !4300)
!4474 = !DILocation(line: 312, column: 2, scope: !4300)
!4475 = !{i32 -2141883774}
!4476 = !DILocation(line: 315, column: 29, scope: !4300)
!4477 = !DILocation(line: 315, column: 43, scope: !4300)
!4478 = !DILocation(line: 315, column: 2, scope: !4300)
!4479 = !DILocation(line: 318, column: 26, scope: !4300)
!4480 = !DILocation(line: 318, column: 40, scope: !4300)
!4481 = !DILocation(line: 318, column: 51, scope: !4300)
!4482 = !DILocation(line: 409, column: 2, scope: !4416, inlinedAt: !4308)
!4483 = !DILocation(line: 409, column: 2, scope: !4421, inlinedAt: !4308)
!4484 = !DILocation(line: 409, column: 2, scope: !4422, inlinedAt: !4308)
!4485 = !DILocation(line: 409, column: 2, scope: !4429, inlinedAt: !4308)
!4486 = !DILocation(line: 409, column: 2, scope: !4432, inlinedAt: !4308)
!4487 = !DILocation(line: 320, column: 21, scope: !4300)
!4488 = !DILocation(line: 320, column: 32, scope: !4300)
!4489 = !DILocation(line: 320, column: 2, scope: !4300)
!4490 = !DILocation(line: 322, column: 6, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 322, column: 6)
!4492 = !DILocation(line: 322, column: 15, scope: !4491)
!4493 = !DILocation(line: 322, column: 6, scope: !4300)
!4494 = !DILocation(line: 323, column: 3, scope: !4491)
!4495 = !DILocation(line: 325, column: 2, scope: !4300)
!4496 = !DILocation(line: 326, column: 1, scope: !4300)
!4497 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4498, file: !4498, line: 666, type: !4499, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4498 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!152}
!4501 = !DILocalVariable(name: "f", scope: !4497, file: !4498, line: 668, type: !152)
!4502 = !DILocation(line: 668, column: 16, scope: !4497)
!4503 = !DILocation(line: 670, column: 6, scope: !4497)
!4504 = !DILocation(line: 670, column: 4, scope: !4497)
!4505 = !DILocation(line: 671, column: 2, scope: !4497)
!4506 = !DILocation(line: 672, column: 9, scope: !4497)
!4507 = !DILocation(line: 672, column: 2, scope: !4497)
!4508 = distinct !DISubprogram(name: "hv_get_bytes_to_write", scope: !8, file: !8, line: 201, type: !4509, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!246, !4094}
!4511 = !DILocalVariable(name: "rbi", arg: 1, scope: !4508, file: !8, line: 201, type: !4094)
!4512 = !DILocation(line: 201, column: 75, scope: !4508)
!4513 = !DILocalVariable(name: "read_loc", scope: !4508, file: !8, line: 203, type: !246)
!4514 = !DILocation(line: 203, column: 6, scope: !4508)
!4515 = !DILocalVariable(name: "write_loc", scope: !4508, file: !8, line: 203, type: !246)
!4516 = !DILocation(line: 203, column: 16, scope: !4508)
!4517 = !DILocalVariable(name: "dsize", scope: !4508, file: !8, line: 203, type: !246)
!4518 = !DILocation(line: 203, column: 27, scope: !4508)
!4519 = !DILocalVariable(name: "write", scope: !4508, file: !8, line: 203, type: !246)
!4520 = !DILocation(line: 203, column: 34, scope: !4508)
!4521 = !DILocation(line: 205, column: 10, scope: !4508)
!4522 = !DILocation(line: 205, column: 15, scope: !4508)
!4523 = !DILocation(line: 205, column: 8, scope: !4508)
!4524 = !DILocation(line: 206, column: 13, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4508, file: !8, line: 206, column: 13)
!4526 = !DILocation(line: 206, column: 13, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4525, file: !8, line: 206, column: 13)
!4528 = !DILocation(line: 206, column: 11, scope: !4508)
!4529 = !DILocation(line: 207, column: 14, scope: !4508)
!4530 = !DILocation(line: 207, column: 19, scope: !4508)
!4531 = !DILocation(line: 207, column: 32, scope: !4508)
!4532 = !DILocation(line: 207, column: 12, scope: !4508)
!4533 = !DILocation(line: 209, column: 10, scope: !4508)
!4534 = !DILocation(line: 209, column: 23, scope: !4508)
!4535 = !DILocation(line: 209, column: 20, scope: !4508)
!4536 = !DILocation(line: 209, column: 34, scope: !4508)
!4537 = !DILocation(line: 209, column: 43, scope: !4508)
!4538 = !DILocation(line: 209, column: 55, scope: !4508)
!4539 = !DILocation(line: 209, column: 53, scope: !4508)
!4540 = !DILocation(line: 209, column: 40, scope: !4508)
!4541 = !DILocation(line: 210, column: 3, scope: !4508)
!4542 = !DILocation(line: 210, column: 14, scope: !4508)
!4543 = !DILocation(line: 210, column: 12, scope: !4508)
!4544 = !DILocation(line: 209, column: 8, scope: !4508)
!4545 = !DILocation(line: 211, column: 9, scope: !4508)
!4546 = !DILocation(line: 211, column: 2, scope: !4508)
!4547 = distinct !DISubprogram(name: "hv_get_next_write_location", scope: !3, file: !3, line: 72, type: !4548, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!246, !4029}
!4550 = !DILocalVariable(name: "ring_info", arg: 1, scope: !4547, file: !3, line: 72, type: !4029)
!4551 = !DILocation(line: 72, column: 56, scope: !4547)
!4552 = !DILocalVariable(name: "next", scope: !4547, file: !3, line: 74, type: !246)
!4553 = !DILocation(line: 74, column: 6, scope: !4547)
!4554 = !DILocation(line: 74, column: 13, scope: !4547)
!4555 = !DILocation(line: 74, column: 24, scope: !4547)
!4556 = !DILocation(line: 74, column: 37, scope: !4547)
!4557 = !DILocation(line: 76, column: 9, scope: !4547)
!4558 = !DILocation(line: 76, column: 2, scope: !4547)
!4559 = distinct !DISubprogram(name: "hv_copyto_ringbuffer", scope: !3, file: !3, line: 114, type: !4560, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!246, !4029, !246, !2000, !246}
!4562 = !DILocalVariable(name: "ring_info", arg: 1, scope: !4559, file: !3, line: 115, type: !4029)
!4563 = !DILocation(line: 115, column: 30, scope: !4559)
!4564 = !DILocalVariable(name: "start_write_offset", arg: 2, scope: !4559, file: !3, line: 116, type: !246)
!4565 = !DILocation(line: 116, column: 9, scope: !4559)
!4566 = !DILocalVariable(name: "src", arg: 3, scope: !4559, file: !3, line: 117, type: !2000)
!4567 = !DILocation(line: 117, column: 16, scope: !4559)
!4568 = !DILocalVariable(name: "srclen", arg: 4, scope: !4559, file: !3, line: 118, type: !246)
!4569 = !DILocation(line: 118, column: 9, scope: !4559)
!4570 = !DILocalVariable(name: "ring_buffer", scope: !4559, file: !3, line: 120, type: !176)
!4571 = !DILocation(line: 120, column: 8, scope: !4559)
!4572 = !DILocation(line: 120, column: 41, scope: !4559)
!4573 = !DILocation(line: 120, column: 22, scope: !4559)
!4574 = !DILocalVariable(name: "ring_buffer_size", scope: !4559, file: !3, line: 121, type: !246)
!4575 = !DILocation(line: 121, column: 6, scope: !4559)
!4576 = !DILocation(line: 121, column: 48, scope: !4559)
!4577 = !DILocation(line: 121, column: 25, scope: !4559)
!4578 = !DILocation(line: 123, column: 9, scope: !4559)
!4579 = !DILocation(line: 123, column: 23, scope: !4559)
!4580 = !DILocation(line: 123, column: 21, scope: !4559)
!4581 = !DILocation(line: 123, column: 43, scope: !4559)
!4582 = !DILocation(line: 123, column: 48, scope: !4559)
!4583 = !DILocation(line: 123, column: 2, scope: !4559)
!4584 = !DILocation(line: 125, column: 24, scope: !4559)
!4585 = !DILocation(line: 125, column: 21, scope: !4559)
!4586 = !DILocation(line: 126, column: 6, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 126, column: 6)
!4588 = !DILocation(line: 126, column: 28, scope: !4587)
!4589 = !DILocation(line: 126, column: 25, scope: !4587)
!4590 = !DILocation(line: 126, column: 6, scope: !4559)
!4591 = !DILocation(line: 127, column: 25, scope: !4587)
!4592 = !DILocation(line: 127, column: 22, scope: !4587)
!4593 = !DILocation(line: 127, column: 3, scope: !4587)
!4594 = !DILocation(line: 129, column: 9, scope: !4559)
!4595 = !DILocation(line: 129, column: 2, scope: !4559)
!4596 = distinct !DISubprogram(name: "hv_get_ring_bufferindices", scope: !3, file: !3, line: 105, type: !4597, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!250, !4029}
!4599 = !DILocalVariable(name: "ring_info", arg: 1, scope: !4596, file: !3, line: 105, type: !4029)
!4600 = !DILocation(line: 105, column: 55, scope: !4596)
!4601 = !DILocation(line: 107, column: 14, scope: !4596)
!4602 = !DILocation(line: 107, column: 25, scope: !4596)
!4603 = !DILocation(line: 107, column: 38, scope: !4596)
!4604 = !DILocation(line: 107, column: 9, scope: !4596)
!4605 = !DILocation(line: 107, column: 50, scope: !4596)
!4606 = !DILocation(line: 107, column: 2, scope: !4596)
!4607 = distinct !DISubprogram(name: "hv_set_next_write_location", scope: !3, file: !3, line: 81, type: !4608, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{null, !4029, !246}
!4610 = !DILocalVariable(name: "ring_info", arg: 1, scope: !4607, file: !3, line: 81, type: !4029)
!4611 = !DILocation(line: 81, column: 56, scope: !4607)
!4612 = !DILocalVariable(name: "next_write_location", arg: 2, scope: !4607, file: !3, line: 82, type: !246)
!4613 = !DILocation(line: 82, column: 12, scope: !4607)
!4614 = !DILocation(line: 84, column: 40, scope: !4607)
!4615 = !DILocation(line: 84, column: 2, scope: !4607)
!4616 = !DILocation(line: 84, column: 13, scope: !4607)
!4617 = !DILocation(line: 84, column: 26, scope: !4607)
!4618 = !DILocation(line: 84, column: 38, scope: !4607)
!4619 = !DILocation(line: 85, column: 1, scope: !4607)
!4620 = distinct !DISubprogram(name: "hv_signal_on_write", scope: !3, file: !3, line: 50, type: !4621, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{null, !246, !6}
!4623 = !DILocalVariable(name: "old_write", arg: 1, scope: !4620, file: !3, line: 50, type: !246)
!4624 = !DILocation(line: 50, column: 36, scope: !4620)
!4625 = !DILocalVariable(name: "channel", arg: 2, scope: !4620, file: !3, line: 50, type: !6)
!4626 = !DILocation(line: 50, column: 69, scope: !4620)
!4627 = !DILocalVariable(name: "rbi", scope: !4620, file: !3, line: 52, type: !4029)
!4628 = !DILocation(line: 52, column: 30, scope: !4620)
!4629 = !DILocation(line: 52, column: 37, scope: !4620)
!4630 = !DILocation(line: 52, column: 46, scope: !4620)
!4631 = !DILocation(line: 54, column: 2, scope: !4620)
!4632 = !{i32 -2141898519}
!4633 = !DILocation(line: 55, column: 6, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 55, column: 6)
!4635 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 55, column: 6)
!4636 = !DILocation(line: 55, column: 6, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 55, column: 6)
!4638 = !DILocation(line: 55, column: 6, scope: !4635)
!4639 = !DILocation(line: 55, column: 6, scope: !4620)
!4640 = !DILocation(line: 56, column: 3, scope: !4635)
!4641 = !DILocation(line: 59, column: 2, scope: !4620)
!4642 = !{i32 -2141895984}
!4643 = !DILocation(line: 64, column: 6, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 64, column: 6)
!4645 = !DILocation(line: 64, column: 19, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 64, column: 19)
!4647 = !DILocation(line: 64, column: 19, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 64, column: 19)
!4649 = !DILocation(line: 64, column: 16, scope: !4644)
!4650 = !DILocation(line: 64, column: 6, scope: !4620)
!4651 = !DILocation(line: 65, column: 5, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 64, column: 60)
!4653 = !DILocation(line: 65, column: 14, scope: !4652)
!4654 = !DILocation(line: 65, column: 3, scope: !4652)
!4655 = !DILocation(line: 66, column: 18, scope: !4652)
!4656 = !DILocation(line: 66, column: 3, scope: !4652)
!4657 = !DILocation(line: 67, column: 2, scope: !4652)
!4658 = !DILocation(line: 68, column: 1, scope: !4620)
!4659 = distinct !DISubprogram(name: "hv_ringbuffer_read", scope: !3, file: !3, line: 328, type: !4660, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!87, !6, !176, !246, !1285, !3594, !318}
!4662 = !DILocalVariable(name: "channel", arg: 1, scope: !4659, file: !3, line: 328, type: !6)
!4663 = !DILocation(line: 328, column: 46, scope: !4659)
!4664 = !DILocalVariable(name: "buffer", arg: 2, scope: !4659, file: !3, line: 329, type: !176)
!4665 = !DILocation(line: 329, column: 16, scope: !4659)
!4666 = !DILocalVariable(name: "buflen", arg: 3, scope: !4659, file: !3, line: 329, type: !246)
!4667 = !DILocation(line: 329, column: 28, scope: !4659)
!4668 = !DILocalVariable(name: "buffer_actual_len", arg: 4, scope: !4659, file: !3, line: 329, type: !1285)
!4669 = !DILocation(line: 329, column: 41, scope: !4659)
!4670 = !DILocalVariable(name: "requestid", arg: 5, scope: !4659, file: !3, line: 330, type: !3594)
!4671 = !DILocation(line: 330, column: 15, scope: !4659)
!4672 = !DILocalVariable(name: "raw", arg: 6, scope: !4659, file: !3, line: 330, type: !318)
!4673 = !DILocation(line: 330, column: 31, scope: !4659)
!4674 = !DILocalVariable(name: "desc", scope: !4659, file: !3, line: 332, type: !4675)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmpacket_descriptor", file: !8, line: 317, size: 128, elements: !4677)
!4677 = !{!4678, !4679, !4680, !4681, !4682}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4676, file: !8, line: 318, baseType: !35, size: 16)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "offset8", scope: !4676, file: !8, line: 319, baseType: !35, size: 16, offset: 16)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "len8", scope: !4676, file: !8, line: 320, baseType: !35, size: 16, offset: 32)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4676, file: !8, line: 321, baseType: !35, size: 16, offset: 48)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "trans_id", scope: !4676, file: !8, line: 322, baseType: !250, size: 64, offset: 64)
!4683 = !DILocation(line: 332, column: 30, scope: !4659)
!4684 = !DILocalVariable(name: "packetlen", scope: !4659, file: !3, line: 333, type: !246)
!4685 = !DILocation(line: 333, column: 6, scope: !4659)
!4686 = !DILocalVariable(name: "offset", scope: !4659, file: !3, line: 333, type: !246)
!4687 = !DILocation(line: 333, column: 17, scope: !4659)
!4688 = !DILocation(line: 335, column: 6, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 335, column: 6)
!4690 = !DILocation(line: 335, column: 6, scope: !4659)
!4691 = !DILocation(line: 336, column: 3, scope: !4689)
!4692 = !DILocation(line: 338, column: 3, scope: !4659)
!4693 = !DILocation(line: 338, column: 21, scope: !4659)
!4694 = !DILocation(line: 339, column: 3, scope: !4659)
!4695 = !DILocation(line: 339, column: 13, scope: !4659)
!4696 = !DILocation(line: 342, column: 27, scope: !4659)
!4697 = !DILocation(line: 342, column: 9, scope: !4659)
!4698 = !DILocation(line: 342, column: 7, scope: !4659)
!4699 = !DILocation(line: 343, column: 6, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 343, column: 6)
!4701 = !DILocation(line: 343, column: 11, scope: !4700)
!4702 = !DILocation(line: 343, column: 6, scope: !4659)
!4703 = !DILocation(line: 348, column: 3, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 343, column: 20)
!4705 = !DILocation(line: 351, column: 11, scope: !4659)
!4706 = !DILocation(line: 351, column: 22, scope: !4659)
!4707 = !DILocation(line: 351, column: 28, scope: !4659)
!4708 = !DILocation(line: 351, column: 36, scope: !4659)
!4709 = !DILocation(line: 351, column: 9, scope: !4659)
!4710 = !DILocation(line: 352, column: 15, scope: !4659)
!4711 = !DILocation(line: 352, column: 21, scope: !4659)
!4712 = !DILocation(line: 352, column: 26, scope: !4659)
!4713 = !DILocation(line: 352, column: 34, scope: !4659)
!4714 = !DILocation(line: 352, column: 32, scope: !4659)
!4715 = !DILocation(line: 352, column: 12, scope: !4659)
!4716 = !DILocation(line: 353, column: 23, scope: !4659)
!4717 = !DILocation(line: 353, column: 3, scope: !4659)
!4718 = !DILocation(line: 353, column: 21, scope: !4659)
!4719 = !DILocation(line: 354, column: 15, scope: !4659)
!4720 = !DILocation(line: 354, column: 21, scope: !4659)
!4721 = !DILocation(line: 354, column: 3, scope: !4659)
!4722 = !DILocation(line: 354, column: 13, scope: !4659)
!4723 = !DILocation(line: 356, column: 6, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 356, column: 6)
!4725 = !DILocation(line: 356, column: 6, scope: !4659)
!4726 = !DILocation(line: 357, column: 3, scope: !4724)
!4727 = !DILocation(line: 360, column: 9, scope: !4659)
!4728 = !DILocation(line: 360, column: 31, scope: !4659)
!4729 = !DILocation(line: 360, column: 17, scope: !4659)
!4730 = !DILocation(line: 360, column: 38, scope: !4659)
!4731 = !DILocation(line: 360, column: 36, scope: !4659)
!4732 = !DILocation(line: 360, column: 46, scope: !4659)
!4733 = !DILocation(line: 360, column: 2, scope: !4659)
!4734 = !DILocation(line: 363, column: 21, scope: !4659)
!4735 = !DILocation(line: 363, column: 30, scope: !4659)
!4736 = !DILocation(line: 363, column: 2, scope: !4659)
!4737 = !DILocation(line: 366, column: 20, scope: !4659)
!4738 = !DILocation(line: 366, column: 2, scope: !4659)
!4739 = !DILocation(line: 368, column: 2, scope: !4659)
!4740 = !DILocation(line: 369, column: 1, scope: !4659)
!4741 = distinct !DISubprogram(name: "hv_pkt_iter_first", scope: !3, file: !3, line: 394, type: !4742, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!4675, !6}
!4744 = !DILocalVariable(name: "channel", arg: 1, scope: !4741, file: !3, line: 394, type: !6)
!4745 = !DILocation(line: 394, column: 69, scope: !4741)
!4746 = !DILocalVariable(name: "rbi", scope: !4741, file: !3, line: 396, type: !4029)
!4747 = !DILocation(line: 396, column: 30, scope: !4741)
!4748 = !DILocation(line: 396, column: 37, scope: !4741)
!4749 = !DILocation(line: 396, column: 46, scope: !4741)
!4750 = !DILocalVariable(name: "desc", scope: !4741, file: !3, line: 397, type: !4675)
!4751 = !DILocation(line: 397, column: 30, scope: !4741)
!4752 = !DILocation(line: 399, column: 22, scope: !4741)
!4753 = !DILocation(line: 399, column: 2, scope: !4741)
!4754 = !DILocation(line: 400, column: 24, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 400, column: 6)
!4756 = !DILocation(line: 400, column: 6, scope: !4755)
!4757 = !DILocation(line: 400, column: 29, scope: !4755)
!4758 = !DILocation(line: 400, column: 6, scope: !4741)
!4759 = !DILocation(line: 401, column: 3, scope: !4755)
!4760 = !DILocation(line: 403, column: 28, scope: !4741)
!4761 = !DILocation(line: 403, column: 9, scope: !4741)
!4762 = !DILocation(line: 403, column: 35, scope: !4741)
!4763 = !DILocation(line: 403, column: 40, scope: !4741)
!4764 = !DILocation(line: 403, column: 33, scope: !4741)
!4765 = !DILocation(line: 403, column: 7, scope: !4741)
!4766 = !DILocation(line: 404, column: 6, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 404, column: 6)
!4768 = !DILocation(line: 404, column: 6, scope: !4741)
!4769 = !DILocation(line: 405, column: 3, scope: !4767)
!4770 = !DILocation(line: 407, column: 9, scope: !4741)
!4771 = !DILocation(line: 407, column: 2, scope: !4741)
!4772 = !DILocation(line: 408, column: 1, scope: !4741)
!4773 = distinct !DISubprogram(name: "__hv_pkt_iter_next", scope: !3, file: !3, line: 418, type: !4774, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!4675, !6, !4776}
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4676)
!4778 = !DILocalVariable(name: "channel", arg: 1, scope: !4773, file: !3, line: 418, type: !6)
!4779 = !DILocation(line: 418, column: 42, scope: !4773)
!4780 = !DILocalVariable(name: "desc", arg: 2, scope: !4773, file: !3, line: 419, type: !4776)
!4781 = !DILocation(line: 419, column: 40, scope: !4773)
!4782 = !DILocalVariable(name: "rbi", scope: !4773, file: !3, line: 421, type: !4029)
!4783 = !DILocation(line: 421, column: 30, scope: !4773)
!4784 = !DILocation(line: 421, column: 37, scope: !4773)
!4785 = !DILocation(line: 421, column: 46, scope: !4773)
!4786 = !DILocalVariable(name: "packetlen", scope: !4773, file: !3, line: 422, type: !246)
!4787 = !DILocation(line: 422, column: 6, scope: !4773)
!4788 = !DILocation(line: 422, column: 18, scope: !4773)
!4789 = !DILocation(line: 422, column: 24, scope: !4773)
!4790 = !DILocation(line: 422, column: 29, scope: !4773)
!4791 = !DILocalVariable(name: "dsize", scope: !4773, file: !3, line: 423, type: !246)
!4792 = !DILocation(line: 423, column: 6, scope: !4773)
!4793 = !DILocation(line: 423, column: 14, scope: !4773)
!4794 = !DILocation(line: 423, column: 19, scope: !4773)
!4795 = !DILocation(line: 425, column: 22, scope: !4773)
!4796 = !DILocation(line: 425, column: 2, scope: !4773)
!4797 = !DILocation(line: 427, column: 26, scope: !4773)
!4798 = !DILocation(line: 427, column: 36, scope: !4773)
!4799 = !DILocation(line: 427, column: 2, scope: !4773)
!4800 = !DILocation(line: 427, column: 7, scope: !4773)
!4801 = !DILocation(line: 427, column: 23, scope: !4773)
!4802 = !DILocation(line: 428, column: 6, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 428, column: 6)
!4804 = !DILocation(line: 428, column: 11, scope: !4803)
!4805 = !DILocation(line: 428, column: 30, scope: !4803)
!4806 = !DILocation(line: 428, column: 27, scope: !4803)
!4807 = !DILocation(line: 428, column: 6, scope: !4773)
!4808 = !DILocation(line: 429, column: 27, scope: !4803)
!4809 = !DILocation(line: 429, column: 3, scope: !4803)
!4810 = !DILocation(line: 429, column: 8, scope: !4803)
!4811 = !DILocation(line: 429, column: 24, scope: !4803)
!4812 = !DILocation(line: 432, column: 27, scope: !4773)
!4813 = !DILocation(line: 432, column: 9, scope: !4773)
!4814 = !DILocation(line: 432, column: 2, scope: !4773)
!4815 = distinct !DISubprogram(name: "hv_pkt_iter_close", scope: !3, file: !3, line: 467, type: !4, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4816 = !DILocalVariable(name: "channel", arg: 1, scope: !4815, file: !3, line: 467, type: !6)
!4817 = !DILocation(line: 467, column: 46, scope: !4815)
!4818 = !DILocalVariable(name: "rbi", scope: !4815, file: !3, line: 469, type: !4029)
!4819 = !DILocation(line: 469, column: 30, scope: !4815)
!4820 = !DILocation(line: 469, column: 37, scope: !4815)
!4821 = !DILocation(line: 469, column: 46, scope: !4815)
!4822 = !DILocalVariable(name: "curr_write_sz", scope: !4815, file: !3, line: 470, type: !246)
!4823 = !DILocation(line: 470, column: 6, scope: !4815)
!4824 = !DILocalVariable(name: "pending_sz", scope: !4815, file: !3, line: 470, type: !246)
!4825 = !DILocation(line: 470, column: 21, scope: !4815)
!4826 = !DILocalVariable(name: "bytes_read", scope: !4815, file: !3, line: 470, type: !246)
!4827 = !DILocation(line: 470, column: 33, scope: !4815)
!4828 = !DILocalVariable(name: "start_read_index", scope: !4815, file: !3, line: 470, type: !246)
!4829 = !DILocation(line: 470, column: 45, scope: !4815)
!4830 = !DILocation(line: 477, column: 2, scope: !4815)
!4831 = !{i32 -2141880925}
!4832 = !DILocation(line: 478, column: 21, scope: !4815)
!4833 = !DILocation(line: 478, column: 26, scope: !4815)
!4834 = !DILocation(line: 478, column: 39, scope: !4815)
!4835 = !DILocation(line: 478, column: 19, scope: !4815)
!4836 = !DILocation(line: 479, column: 33, scope: !4815)
!4837 = !DILocation(line: 479, column: 38, scope: !4815)
!4838 = !DILocation(line: 479, column: 2, scope: !4815)
!4839 = !DILocation(line: 479, column: 7, scope: !4815)
!4840 = !DILocation(line: 479, column: 20, scope: !4815)
!4841 = !DILocation(line: 479, column: 31, scope: !4815)
!4842 = !DILocation(line: 486, column: 7, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 486, column: 6)
!4844 = !DILocation(line: 486, column: 12, scope: !4843)
!4845 = !DILocation(line: 486, column: 25, scope: !4843)
!4846 = !DILocation(line: 486, column: 38, scope: !4843)
!4847 = !DILocation(line: 486, column: 6, scope: !4815)
!4848 = !DILocation(line: 487, column: 3, scope: !4843)
!4849 = !DILocation(line: 498, column: 2, scope: !4815)
!4850 = !{i32 -2141880884}
!4851 = !DILocation(line: 505, column: 15, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 505, column: 15)
!4853 = !DILocation(line: 505, column: 15, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 505, column: 15)
!4855 = !DILocation(line: 505, column: 13, scope: !4815)
!4856 = !DILocation(line: 506, column: 7, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 506, column: 6)
!4858 = !DILocation(line: 506, column: 6, scope: !4815)
!4859 = !DILocation(line: 507, column: 3, scope: !4857)
!4860 = !DILocation(line: 513, column: 2, scope: !4815)
!4861 = !{i32 -2141878327}
!4862 = !DILocation(line: 514, column: 40, scope: !4815)
!4863 = !DILocation(line: 514, column: 18, scope: !4815)
!4864 = !DILocation(line: 514, column: 16, scope: !4815)
!4865 = !DILocation(line: 515, column: 38, scope: !4815)
!4866 = !DILocation(line: 515, column: 43, scope: !4815)
!4867 = !DILocation(line: 515, column: 15, scope: !4815)
!4868 = !DILocation(line: 515, column: 13, scope: !4815)
!4869 = !DILocation(line: 537, column: 6, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 537, column: 6)
!4871 = !DILocation(line: 537, column: 22, scope: !4870)
!4872 = !DILocation(line: 537, column: 20, scope: !4870)
!4873 = !DILocation(line: 537, column: 35, scope: !4870)
!4874 = !DILocation(line: 537, column: 33, scope: !4870)
!4875 = !DILocation(line: 537, column: 6, scope: !4815)
!4876 = !DILocation(line: 538, column: 3, scope: !4870)
!4877 = !DILocation(line: 544, column: 6, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 544, column: 6)
!4879 = !DILocation(line: 544, column: 23, scope: !4878)
!4880 = !DILocation(line: 544, column: 20, scope: !4878)
!4881 = !DILocation(line: 544, column: 6, scope: !4815)
!4882 = !DILocation(line: 545, column: 3, scope: !4878)
!4883 = !DILocation(line: 547, column: 4, scope: !4815)
!4884 = !DILocation(line: 547, column: 13, scope: !4815)
!4885 = !DILocation(line: 547, column: 2, scope: !4815)
!4886 = !DILocation(line: 548, column: 17, scope: !4815)
!4887 = !DILocation(line: 548, column: 2, scope: !4815)
!4888 = !DILocation(line: 549, column: 1, scope: !4815)
!4889 = distinct !DISubprogram(name: "hv_debug_delay_test", scope: !4002, file: !4002, line: 458, type: !4890, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{null, !6, !4001}
!4892 = !DILocalVariable(name: "channel", arg: 1, scope: !4889, file: !4002, line: 458, type: !6)
!4893 = !DILocation(line: 458, column: 62, scope: !4889)
!4894 = !DILocalVariable(name: "delay_type", arg: 2, scope: !4889, file: !4002, line: 459, type: !4001)
!4895 = !DILocation(line: 459, column: 23, scope: !4889)
!4896 = !DILocation(line: 459, column: 36, scope: !4889)
!4897 = distinct !DISubprogram(name: "hv_pkt_iter_avail", scope: !3, file: !3, line: 378, type: !4509, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4898 = !DILocalVariable(name: "rbi", arg: 1, scope: !4897, file: !3, line: 378, type: !4094)
!4899 = !DILocation(line: 378, column: 64, scope: !4897)
!4900 = !DILocalVariable(name: "priv_read_loc", scope: !4897, file: !3, line: 380, type: !246)
!4901 = !DILocation(line: 380, column: 6, scope: !4897)
!4902 = !DILocation(line: 380, column: 22, scope: !4897)
!4903 = !DILocation(line: 380, column: 27, scope: !4897)
!4904 = !DILocalVariable(name: "write_loc", scope: !4897, file: !3, line: 381, type: !246)
!4905 = !DILocation(line: 381, column: 6, scope: !4897)
!4906 = !DILocation(line: 381, column: 18, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 381, column: 18)
!4908 = !DILocation(line: 381, column: 18, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 381, column: 18)
!4910 = !DILocation(line: 383, column: 6, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 383, column: 6)
!4912 = !DILocation(line: 383, column: 19, scope: !4911)
!4913 = !DILocation(line: 383, column: 16, scope: !4911)
!4914 = !DILocation(line: 383, column: 6, scope: !4897)
!4915 = !DILocation(line: 384, column: 10, scope: !4911)
!4916 = !DILocation(line: 384, column: 22, scope: !4911)
!4917 = !DILocation(line: 384, column: 20, scope: !4911)
!4918 = !DILocation(line: 384, column: 3, scope: !4911)
!4919 = !DILocation(line: 386, column: 11, scope: !4911)
!4920 = !DILocation(line: 386, column: 16, scope: !4911)
!4921 = !DILocation(line: 386, column: 32, scope: !4911)
!4922 = !DILocation(line: 386, column: 30, scope: !4911)
!4923 = !DILocation(line: 386, column: 49, scope: !4911)
!4924 = !DILocation(line: 386, column: 47, scope: !4911)
!4925 = !DILocation(line: 386, column: 3, scope: !4911)
!4926 = !DILocation(line: 387, column: 1, scope: !4897)
!4927 = distinct !DISubprogram(name: "hv_get_ring_buffer", scope: !8, file: !8, line: 1570, type: !4928, scopeLine: 1571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!176, !4094}
!4930 = !DILocalVariable(name: "ring_info", arg: 1, scope: !4927, file: !8, line: 1570, type: !4094)
!4931 = !DILocation(line: 1570, column: 54, scope: !4927)
!4932 = !DILocation(line: 1572, column: 9, scope: !4927)
!4933 = !DILocation(line: 1572, column: 20, scope: !4927)
!4934 = !DILocation(line: 1572, column: 33, scope: !4927)
!4935 = !DILocation(line: 1572, column: 2, scope: !4927)
!4936 = distinct !DISubprogram(name: "hv_pkt_iter_bytes_read", scope: !3, file: !3, line: 437, type: !4937, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!246, !4094, !246}
!4939 = !DILocalVariable(name: "rbi", arg: 1, scope: !4936, file: !3, line: 437, type: !4094)
!4940 = !DILocation(line: 437, column: 69, scope: !4936)
!4941 = !DILocalVariable(name: "start_read_index", arg: 2, scope: !4936, file: !3, line: 438, type: !246)
!4942 = !DILocation(line: 438, column: 10, scope: !4936)
!4943 = !DILocation(line: 440, column: 6, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 440, column: 6)
!4945 = !DILocation(line: 440, column: 11, scope: !4944)
!4946 = !DILocation(line: 440, column: 30, scope: !4944)
!4947 = !DILocation(line: 440, column: 27, scope: !4944)
!4948 = !DILocation(line: 440, column: 6, scope: !4936)
!4949 = !DILocation(line: 441, column: 10, scope: !4944)
!4950 = !DILocation(line: 441, column: 15, scope: !4944)
!4951 = !DILocation(line: 441, column: 33, scope: !4944)
!4952 = !DILocation(line: 441, column: 31, scope: !4944)
!4953 = !DILocation(line: 441, column: 3, scope: !4944)
!4954 = !DILocation(line: 443, column: 10, scope: !4944)
!4955 = !DILocation(line: 443, column: 15, scope: !4944)
!4956 = !DILocation(line: 443, column: 31, scope: !4944)
!4957 = !DILocation(line: 443, column: 29, scope: !4944)
!4958 = !DILocation(line: 444, column: 4, scope: !4944)
!4959 = !DILocation(line: 444, column: 9, scope: !4944)
!4960 = !DILocation(line: 443, column: 48, scope: !4944)
!4961 = !DILocation(line: 443, column: 3, scope: !4944)
!4962 = !DILocation(line: 445, column: 1, scope: !4936)
!4963 = distinct !DISubprogram(name: "kmalloc_array", scope: !4007, file: !4007, line: 584, type: !4268, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4964 = !DILocalVariable(name: "s", arg: 1, scope: !4965, file: !4007, line: 445, type: !812)
!4965 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !4007, file: !4007, line: 445, type: !4966, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!176, !812, !575, !149}
!4968 = !DILocation(line: 445, column: 72, scope: !4965, inlinedAt: !4969)
!4969 = distinct !DILocation(line: 552, column: 10, scope: !4970, inlinedAt: !4975)
!4970 = distinct !DILexicalBlock(scope: !4971, file: !4007, line: 540, column: 34)
!4971 = distinct !DILexicalBlock(scope: !4972, file: !4007, line: 540, column: 6)
!4972 = distinct !DISubprogram(name: "kmalloc", scope: !4007, file: !4007, line: 538, type: !4973, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!176, !149, !575}
!4975 = distinct !DILocation(line: 591, column: 10, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4963, file: !4007, line: 590, column: 6)
!4977 = !DILocalVariable(name: "flags", arg: 2, scope: !4965, file: !4007, line: 446, type: !575)
!4978 = !DILocation(line: 446, column: 9, scope: !4965, inlinedAt: !4969)
!4979 = !DILocalVariable(name: "size", arg: 3, scope: !4965, file: !4007, line: 446, type: !149)
!4980 = !DILocation(line: 446, column: 23, scope: !4965, inlinedAt: !4969)
!4981 = !DILocalVariable(name: "ret", scope: !4965, file: !4007, line: 448, type: !176)
!4982 = !DILocation(line: 448, column: 8, scope: !4965, inlinedAt: !4969)
!4983 = !DILocalVariable(name: "flags", arg: 1, scope: !4984, file: !4007, line: 318, type: !575)
!4984 = distinct !DISubprogram(name: "kmalloc_type", scope: !4007, file: !4007, line: 318, type: !4985, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!4006, !575}
!4987 = !DILocation(line: 318, column: 67, scope: !4984, inlinedAt: !4988)
!4988 = distinct !DILocation(line: 553, column: 20, scope: !4970, inlinedAt: !4975)
!4989 = !DILocalVariable(name: "size", arg: 1, scope: !4990, file: !4007, line: 346, type: !149)
!4990 = distinct !DISubprogram(name: "kmalloc_index", scope: !4007, file: !4007, line: 346, type: !4991, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!216, !149}
!4993 = !DILocation(line: 346, column: 58, scope: !4990, inlinedAt: !4994)
!4994 = distinct !DILocation(line: 547, column: 11, scope: !4970, inlinedAt: !4975)
!4995 = !DILocalVariable(name: "size", arg: 1, scope: !4996, file: !4007, line: 472, type: !149)
!4996 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !4007, file: !4007, line: 472, type: !4997, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!176, !149, !575, !216}
!4999 = !DILocation(line: 472, column: 28, scope: !4996, inlinedAt: !5000)
!5000 = distinct !DILocation(line: 481, column: 9, scope: !5001, inlinedAt: !5002)
!5001 = distinct !DISubprogram(name: "kmalloc_large", scope: !4007, file: !4007, line: 478, type: !4973, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!5002 = distinct !DILocation(line: 545, column: 11, scope: !5003, inlinedAt: !4975)
!5003 = distinct !DILexicalBlock(scope: !4970, file: !4007, line: 544, column: 7)
!5004 = !DILocalVariable(name: "flags", arg: 2, scope: !4996, file: !4007, line: 472, type: !575)
!5005 = !DILocation(line: 472, column: 40, scope: !4996, inlinedAt: !5000)
!5006 = !DILocalVariable(name: "order", arg: 3, scope: !4996, file: !4007, line: 472, type: !216)
!5007 = !DILocation(line: 472, column: 60, scope: !4996, inlinedAt: !5000)
!5008 = !DILocalVariable(name: "size", arg: 1, scope: !5001, file: !4007, line: 478, type: !149)
!5009 = !DILocation(line: 478, column: 51, scope: !5001, inlinedAt: !5002)
!5010 = !DILocalVariable(name: "flags", arg: 2, scope: !5001, file: !4007, line: 478, type: !575)
!5011 = !DILocation(line: 478, column: 63, scope: !5001, inlinedAt: !5002)
!5012 = !DILocalVariable(name: "order", scope: !5001, file: !4007, line: 480, type: !216)
!5013 = !DILocation(line: 480, column: 15, scope: !5001, inlinedAt: !5002)
!5014 = !DILocalVariable(name: "size", arg: 1, scope: !4972, file: !4007, line: 538, type: !149)
!5015 = !DILocation(line: 538, column: 45, scope: !4972, inlinedAt: !4975)
!5016 = !DILocalVariable(name: "flags", arg: 2, scope: !4972, file: !4007, line: 538, type: !575)
!5017 = !DILocation(line: 538, column: 57, scope: !4972, inlinedAt: !4975)
!5018 = !DILocalVariable(name: "index", scope: !4970, file: !4007, line: 542, type: !216)
!5019 = !DILocation(line: 542, column: 16, scope: !4970, inlinedAt: !4975)
!5020 = !DILocalVariable(name: "n", arg: 1, scope: !4963, file: !4007, line: 584, type: !149)
!5021 = !DILocation(line: 584, column: 42, scope: !4963)
!5022 = !DILocalVariable(name: "size", arg: 2, scope: !4963, file: !4007, line: 584, type: !149)
!5023 = !DILocation(line: 584, column: 52, scope: !4963)
!5024 = !DILocalVariable(name: "flags", arg: 3, scope: !4963, file: !4007, line: 584, type: !575)
!5025 = !DILocation(line: 584, column: 64, scope: !4963)
!5026 = !DILocalVariable(name: "bytes", scope: !4963, file: !4007, line: 586, type: !149)
!5027 = !DILocation(line: 586, column: 9, scope: !4963)
!5028 = !DILocalVariable(name: "__a", scope: !5029, file: !4007, line: 588, type: !149)
!5029 = distinct !DILexicalBlock(scope: !5030, file: !4007, line: 588, column: 6)
!5030 = distinct !DILexicalBlock(scope: !4963, file: !4007, line: 588, column: 6)
!5031 = !DILocation(line: 588, column: 6, scope: !5029)
!5032 = !DILocalVariable(name: "__b", scope: !5029, file: !4007, line: 588, type: !149)
!5033 = !DILocalVariable(name: "__d", scope: !5029, file: !4007, line: 588, type: !5034)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!5035 = !DILocation(line: 588, column: 6, scope: !5030)
!5036 = !DILocation(line: 588, column: 6, scope: !4963)
!5037 = !DILocation(line: 589, column: 3, scope: !5030)
!5038 = !DILocation(line: 590, column: 27, scope: !4976)
!5039 = !DILocation(line: 590, column: 6, scope: !4976)
!5040 = !DILocation(line: 590, column: 30, scope: !4976)
!5041 = !DILocation(line: 590, column: 54, scope: !4976)
!5042 = !DILocation(line: 590, column: 33, scope: !4976)
!5043 = !DILocation(line: 590, column: 6, scope: !4963)
!5044 = !DILocation(line: 591, column: 18, scope: !4976)
!5045 = !DILocation(line: 591, column: 25, scope: !4976)
!5046 = !DILocation(line: 540, column: 27, scope: !4971, inlinedAt: !4975)
!5047 = !DILocation(line: 540, column: 6, scope: !4971, inlinedAt: !4975)
!5048 = !DILocation(line: 540, column: 6, scope: !4972, inlinedAt: !4975)
!5049 = !DILocation(line: 544, column: 7, scope: !5003, inlinedAt: !4975)
!5050 = !DILocation(line: 544, column: 12, scope: !5003, inlinedAt: !4975)
!5051 = !DILocation(line: 544, column: 7, scope: !4970, inlinedAt: !4975)
!5052 = !DILocation(line: 545, column: 25, scope: !5003, inlinedAt: !4975)
!5053 = !DILocation(line: 545, column: 31, scope: !5003, inlinedAt: !4975)
!5054 = !DILocation(line: 480, column: 33, scope: !5001, inlinedAt: !5002)
!5055 = !DILocation(line: 480, column: 23, scope: !5001, inlinedAt: !5002)
!5056 = !DILocation(line: 481, column: 29, scope: !5001, inlinedAt: !5002)
!5057 = !DILocation(line: 481, column: 35, scope: !5001, inlinedAt: !5002)
!5058 = !DILocation(line: 481, column: 42, scope: !5001, inlinedAt: !5002)
!5059 = !DILocation(line: 474, column: 23, scope: !4996, inlinedAt: !5000)
!5060 = !DILocation(line: 474, column: 29, scope: !4996, inlinedAt: !5000)
!5061 = !DILocation(line: 474, column: 36, scope: !4996, inlinedAt: !5000)
!5062 = !DILocation(line: 474, column: 9, scope: !4996, inlinedAt: !5000)
!5063 = !DILocation(line: 545, column: 4, scope: !5003, inlinedAt: !4975)
!5064 = !DILocation(line: 547, column: 25, scope: !4970, inlinedAt: !4975)
!5065 = !DILocation(line: 348, column: 7, scope: !5066, inlinedAt: !4994)
!5066 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 348, column: 6)
!5067 = !DILocation(line: 348, column: 6, scope: !4990, inlinedAt: !4994)
!5068 = !DILocation(line: 349, column: 3, scope: !5066, inlinedAt: !4994)
!5069 = !DILocation(line: 351, column: 6, scope: !5070, inlinedAt: !4994)
!5070 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 351, column: 6)
!5071 = !DILocation(line: 351, column: 11, scope: !5070, inlinedAt: !4994)
!5072 = !DILocation(line: 351, column: 6, scope: !4990, inlinedAt: !4994)
!5073 = !DILocation(line: 352, column: 3, scope: !5070, inlinedAt: !4994)
!5074 = !DILocation(line: 354, column: 32, scope: !5075, inlinedAt: !4994)
!5075 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 354, column: 6)
!5076 = !DILocation(line: 354, column: 37, scope: !5075, inlinedAt: !4994)
!5077 = !DILocation(line: 354, column: 42, scope: !5075, inlinedAt: !4994)
!5078 = !DILocation(line: 354, column: 45, scope: !5075, inlinedAt: !4994)
!5079 = !DILocation(line: 354, column: 50, scope: !5075, inlinedAt: !4994)
!5080 = !DILocation(line: 354, column: 6, scope: !4990, inlinedAt: !4994)
!5081 = !DILocation(line: 355, column: 3, scope: !5075, inlinedAt: !4994)
!5082 = !DILocation(line: 356, column: 32, scope: !5083, inlinedAt: !4994)
!5083 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 356, column: 6)
!5084 = !DILocation(line: 356, column: 37, scope: !5083, inlinedAt: !4994)
!5085 = !DILocation(line: 356, column: 43, scope: !5083, inlinedAt: !4994)
!5086 = !DILocation(line: 356, column: 46, scope: !5083, inlinedAt: !4994)
!5087 = !DILocation(line: 356, column: 51, scope: !5083, inlinedAt: !4994)
!5088 = !DILocation(line: 356, column: 6, scope: !4990, inlinedAt: !4994)
!5089 = !DILocation(line: 357, column: 3, scope: !5083, inlinedAt: !4994)
!5090 = !DILocation(line: 358, column: 6, scope: !5091, inlinedAt: !4994)
!5091 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 358, column: 6)
!5092 = !DILocation(line: 358, column: 11, scope: !5091, inlinedAt: !4994)
!5093 = !DILocation(line: 358, column: 6, scope: !4990, inlinedAt: !4994)
!5094 = !DILocation(line: 358, column: 26, scope: !5091, inlinedAt: !4994)
!5095 = !DILocation(line: 359, column: 6, scope: !5096, inlinedAt: !4994)
!5096 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 359, column: 6)
!5097 = !DILocation(line: 359, column: 11, scope: !5096, inlinedAt: !4994)
!5098 = !DILocation(line: 359, column: 6, scope: !4990, inlinedAt: !4994)
!5099 = !DILocation(line: 359, column: 26, scope: !5096, inlinedAt: !4994)
!5100 = !DILocation(line: 360, column: 6, scope: !5101, inlinedAt: !4994)
!5101 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 360, column: 6)
!5102 = !DILocation(line: 360, column: 11, scope: !5101, inlinedAt: !4994)
!5103 = !DILocation(line: 360, column: 6, scope: !4990, inlinedAt: !4994)
!5104 = !DILocation(line: 360, column: 26, scope: !5101, inlinedAt: !4994)
!5105 = !DILocation(line: 361, column: 6, scope: !5106, inlinedAt: !4994)
!5106 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 361, column: 6)
!5107 = !DILocation(line: 361, column: 11, scope: !5106, inlinedAt: !4994)
!5108 = !DILocation(line: 361, column: 6, scope: !4990, inlinedAt: !4994)
!5109 = !DILocation(line: 361, column: 26, scope: !5106, inlinedAt: !4994)
!5110 = !DILocation(line: 362, column: 6, scope: !5111, inlinedAt: !4994)
!5111 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 362, column: 6)
!5112 = !DILocation(line: 362, column: 11, scope: !5111, inlinedAt: !4994)
!5113 = !DILocation(line: 362, column: 6, scope: !4990, inlinedAt: !4994)
!5114 = !DILocation(line: 362, column: 26, scope: !5111, inlinedAt: !4994)
!5115 = !DILocation(line: 363, column: 6, scope: !5116, inlinedAt: !4994)
!5116 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 363, column: 6)
!5117 = !DILocation(line: 363, column: 11, scope: !5116, inlinedAt: !4994)
!5118 = !DILocation(line: 363, column: 6, scope: !4990, inlinedAt: !4994)
!5119 = !DILocation(line: 363, column: 26, scope: !5116, inlinedAt: !4994)
!5120 = !DILocation(line: 364, column: 6, scope: !5121, inlinedAt: !4994)
!5121 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 364, column: 6)
!5122 = !DILocation(line: 364, column: 11, scope: !5121, inlinedAt: !4994)
!5123 = !DILocation(line: 364, column: 6, scope: !4990, inlinedAt: !4994)
!5124 = !DILocation(line: 364, column: 26, scope: !5121, inlinedAt: !4994)
!5125 = !DILocation(line: 365, column: 6, scope: !5126, inlinedAt: !4994)
!5126 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 365, column: 6)
!5127 = !DILocation(line: 365, column: 11, scope: !5126, inlinedAt: !4994)
!5128 = !DILocation(line: 365, column: 6, scope: !4990, inlinedAt: !4994)
!5129 = !DILocation(line: 365, column: 26, scope: !5126, inlinedAt: !4994)
!5130 = !DILocation(line: 366, column: 6, scope: !5131, inlinedAt: !4994)
!5131 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 366, column: 6)
!5132 = !DILocation(line: 366, column: 11, scope: !5131, inlinedAt: !4994)
!5133 = !DILocation(line: 366, column: 6, scope: !4990, inlinedAt: !4994)
!5134 = !DILocation(line: 366, column: 26, scope: !5131, inlinedAt: !4994)
!5135 = !DILocation(line: 367, column: 6, scope: !5136, inlinedAt: !4994)
!5136 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 367, column: 6)
!5137 = !DILocation(line: 367, column: 11, scope: !5136, inlinedAt: !4994)
!5138 = !DILocation(line: 367, column: 6, scope: !4990, inlinedAt: !4994)
!5139 = !DILocation(line: 367, column: 26, scope: !5136, inlinedAt: !4994)
!5140 = !DILocation(line: 368, column: 6, scope: !5141, inlinedAt: !4994)
!5141 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 368, column: 6)
!5142 = !DILocation(line: 368, column: 11, scope: !5141, inlinedAt: !4994)
!5143 = !DILocation(line: 368, column: 6, scope: !4990, inlinedAt: !4994)
!5144 = !DILocation(line: 368, column: 26, scope: !5141, inlinedAt: !4994)
!5145 = !DILocation(line: 369, column: 6, scope: !5146, inlinedAt: !4994)
!5146 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 369, column: 6)
!5147 = !DILocation(line: 369, column: 11, scope: !5146, inlinedAt: !4994)
!5148 = !DILocation(line: 369, column: 6, scope: !4990, inlinedAt: !4994)
!5149 = !DILocation(line: 369, column: 26, scope: !5146, inlinedAt: !4994)
!5150 = !DILocation(line: 370, column: 6, scope: !5151, inlinedAt: !4994)
!5151 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 370, column: 6)
!5152 = !DILocation(line: 370, column: 11, scope: !5151, inlinedAt: !4994)
!5153 = !DILocation(line: 370, column: 6, scope: !4990, inlinedAt: !4994)
!5154 = !DILocation(line: 370, column: 26, scope: !5151, inlinedAt: !4994)
!5155 = !DILocation(line: 371, column: 6, scope: !5156, inlinedAt: !4994)
!5156 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 371, column: 6)
!5157 = !DILocation(line: 371, column: 11, scope: !5156, inlinedAt: !4994)
!5158 = !DILocation(line: 371, column: 6, scope: !4990, inlinedAt: !4994)
!5159 = !DILocation(line: 371, column: 26, scope: !5156, inlinedAt: !4994)
!5160 = !DILocation(line: 372, column: 6, scope: !5161, inlinedAt: !4994)
!5161 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 372, column: 6)
!5162 = !DILocation(line: 372, column: 11, scope: !5161, inlinedAt: !4994)
!5163 = !DILocation(line: 372, column: 6, scope: !4990, inlinedAt: !4994)
!5164 = !DILocation(line: 372, column: 26, scope: !5161, inlinedAt: !4994)
!5165 = !DILocation(line: 373, column: 6, scope: !5166, inlinedAt: !4994)
!5166 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 373, column: 6)
!5167 = !DILocation(line: 373, column: 11, scope: !5166, inlinedAt: !4994)
!5168 = !DILocation(line: 373, column: 6, scope: !4990, inlinedAt: !4994)
!5169 = !DILocation(line: 373, column: 26, scope: !5166, inlinedAt: !4994)
!5170 = !DILocation(line: 374, column: 6, scope: !5171, inlinedAt: !4994)
!5171 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 374, column: 6)
!5172 = !DILocation(line: 374, column: 11, scope: !5171, inlinedAt: !4994)
!5173 = !DILocation(line: 374, column: 6, scope: !4990, inlinedAt: !4994)
!5174 = !DILocation(line: 374, column: 26, scope: !5171, inlinedAt: !4994)
!5175 = !DILocation(line: 375, column: 6, scope: !5176, inlinedAt: !4994)
!5176 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 375, column: 6)
!5177 = !DILocation(line: 375, column: 11, scope: !5176, inlinedAt: !4994)
!5178 = !DILocation(line: 375, column: 6, scope: !4990, inlinedAt: !4994)
!5179 = !DILocation(line: 375, column: 27, scope: !5176, inlinedAt: !4994)
!5180 = !DILocation(line: 376, column: 6, scope: !5181, inlinedAt: !4994)
!5181 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 376, column: 6)
!5182 = !DILocation(line: 376, column: 11, scope: !5181, inlinedAt: !4994)
!5183 = !DILocation(line: 376, column: 6, scope: !4990, inlinedAt: !4994)
!5184 = !DILocation(line: 376, column: 32, scope: !5181, inlinedAt: !4994)
!5185 = !DILocation(line: 377, column: 6, scope: !5186, inlinedAt: !4994)
!5186 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 377, column: 6)
!5187 = !DILocation(line: 377, column: 11, scope: !5186, inlinedAt: !4994)
!5188 = !DILocation(line: 377, column: 6, scope: !4990, inlinedAt: !4994)
!5189 = !DILocation(line: 377, column: 32, scope: !5186, inlinedAt: !4994)
!5190 = !DILocation(line: 378, column: 6, scope: !5191, inlinedAt: !4994)
!5191 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 378, column: 6)
!5192 = !DILocation(line: 378, column: 11, scope: !5191, inlinedAt: !4994)
!5193 = !DILocation(line: 378, column: 6, scope: !4990, inlinedAt: !4994)
!5194 = !DILocation(line: 378, column: 32, scope: !5191, inlinedAt: !4994)
!5195 = !DILocation(line: 379, column: 6, scope: !5196, inlinedAt: !4994)
!5196 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 379, column: 6)
!5197 = !DILocation(line: 379, column: 11, scope: !5196, inlinedAt: !4994)
!5198 = !DILocation(line: 379, column: 6, scope: !4990, inlinedAt: !4994)
!5199 = !DILocation(line: 379, column: 33, scope: !5196, inlinedAt: !4994)
!5200 = !DILocation(line: 380, column: 6, scope: !5201, inlinedAt: !4994)
!5201 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 380, column: 6)
!5202 = !DILocation(line: 380, column: 11, scope: !5201, inlinedAt: !4994)
!5203 = !DILocation(line: 380, column: 6, scope: !4990, inlinedAt: !4994)
!5204 = !DILocation(line: 380, column: 33, scope: !5201, inlinedAt: !4994)
!5205 = !DILocation(line: 381, column: 6, scope: !5206, inlinedAt: !4994)
!5206 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 381, column: 6)
!5207 = !DILocation(line: 381, column: 11, scope: !5206, inlinedAt: !4994)
!5208 = !DILocation(line: 381, column: 6, scope: !4990, inlinedAt: !4994)
!5209 = !DILocation(line: 381, column: 33, scope: !5206, inlinedAt: !4994)
!5210 = !DILocation(line: 382, column: 2, scope: !5211, inlinedAt: !4994)
!5211 = distinct !DILexicalBlock(scope: !5212, file: !4007, line: 382, column: 2)
!5212 = distinct !DILexicalBlock(scope: !4990, file: !4007, line: 382, column: 2)
!5213 = !{i32 -2142094596, i32 -2142094567, i32 -2142094521, i32 -2142094463, i32 -2142094409, i32 -2142094355, i32 -2142094300, i32 -2142094269}
!5214 = !DILocation(line: 382, column: 2, scope: !5215, inlinedAt: !4994)
!5215 = distinct !DILexicalBlock(scope: !5216, file: !4007, line: 382, column: 2)
!5216 = distinct !DILexicalBlock(scope: !5212, file: !4007, line: 382, column: 2)
!5217 = !{i32 -2142093826, i32 -2142093819, i32 -2142093765, i32 -2142093734, i32 -2142093704}
!5218 = !DILocation(line: 382, column: 2, scope: !5216, inlinedAt: !4994)
!5219 = !DILocation(line: 386, column: 1, scope: !4990, inlinedAt: !4994)
!5220 = !DILocation(line: 547, column: 9, scope: !4970, inlinedAt: !4975)
!5221 = !DILocation(line: 549, column: 8, scope: !5222, inlinedAt: !4975)
!5222 = distinct !DILexicalBlock(scope: !4970, file: !4007, line: 549, column: 7)
!5223 = !DILocation(line: 549, column: 7, scope: !4970, inlinedAt: !4975)
!5224 = !DILocation(line: 550, column: 4, scope: !5222, inlinedAt: !4975)
!5225 = !DILocation(line: 553, column: 33, scope: !4970, inlinedAt: !4975)
!5226 = !DILocation(line: 325, column: 6, scope: !5227, inlinedAt: !4988)
!5227 = distinct !DILexicalBlock(scope: !4984, file: !4007, line: 325, column: 6)
!5228 = !DILocation(line: 325, column: 6, scope: !4984, inlinedAt: !4988)
!5229 = !DILocation(line: 326, column: 3, scope: !5227, inlinedAt: !4988)
!5230 = !DILocation(line: 332, column: 9, scope: !4984, inlinedAt: !4988)
!5231 = !DILocation(line: 332, column: 15, scope: !4984, inlinedAt: !4988)
!5232 = !DILocation(line: 332, column: 2, scope: !4984, inlinedAt: !4988)
!5233 = !DILocation(line: 336, column: 1, scope: !4984, inlinedAt: !4988)
!5234 = !DILocation(line: 553, column: 5, scope: !4970, inlinedAt: !4975)
!5235 = !DILocation(line: 553, column: 41, scope: !4970, inlinedAt: !4975)
!5236 = !DILocation(line: 554, column: 5, scope: !4970, inlinedAt: !4975)
!5237 = !DILocation(line: 554, column: 12, scope: !4970, inlinedAt: !4975)
!5238 = !DILocation(line: 448, column: 31, scope: !4965, inlinedAt: !4969)
!5239 = !DILocation(line: 448, column: 34, scope: !4965, inlinedAt: !4969)
!5240 = !DILocation(line: 448, column: 14, scope: !4965, inlinedAt: !4969)
!5241 = !DILocation(line: 450, column: 22, scope: !4965, inlinedAt: !4969)
!5242 = !DILocation(line: 450, column: 25, scope: !4965, inlinedAt: !4969)
!5243 = !DILocation(line: 450, column: 30, scope: !4965, inlinedAt: !4969)
!5244 = !DILocation(line: 450, column: 36, scope: !4965, inlinedAt: !4969)
!5245 = !DILocation(line: 450, column: 8, scope: !4965, inlinedAt: !4969)
!5246 = !DILocation(line: 450, column: 6, scope: !4965, inlinedAt: !4969)
!5247 = !DILocation(line: 451, column: 9, scope: !4965, inlinedAt: !4969)
!5248 = !DILocation(line: 552, column: 3, scope: !4970, inlinedAt: !4975)
!5249 = !DILocation(line: 557, column: 19, scope: !4972, inlinedAt: !4975)
!5250 = !DILocation(line: 557, column: 25, scope: !4972, inlinedAt: !4975)
!5251 = !DILocation(line: 557, column: 9, scope: !4972, inlinedAt: !4975)
!5252 = !DILocation(line: 557, column: 2, scope: !4972, inlinedAt: !4975)
!5253 = !DILocation(line: 558, column: 1, scope: !4972, inlinedAt: !4975)
!5254 = !DILocation(line: 591, column: 3, scope: !4976)
!5255 = !DILocation(line: 592, column: 19, scope: !4963)
!5256 = !DILocation(line: 592, column: 26, scope: !4963)
!5257 = !DILocation(line: 592, column: 9, scope: !4963)
!5258 = !DILocation(line: 592, column: 2, scope: !4963)
!5259 = !DILocation(line: 593, column: 1, scope: !4963)
!5260 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5261, file: !5261, line: 52, type: !5262, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!5261 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!318, !318}
!5264 = !DILocalVariable(name: "overflow", arg: 1, scope: !5260, file: !5261, line: 52, type: !318)
!5265 = !DILocation(line: 52, column: 60, scope: !5260)
!5266 = !DILocation(line: 54, column: 9, scope: !5260)
!5267 = !DILocation(line: 54, column: 2, scope: !5260)
!5268 = distinct !DISubprogram(name: "get_order", scope: !5269, file: !5269, line: 29, type: !5270, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!5269 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!87, !152}
!5272 = !DILocalVariable(name: "x", arg: 1, scope: !5273, file: !5274, line: 366, type: !251)
!5273 = distinct !DISubprogram(name: "fls64", scope: !5274, file: !5274, line: 366, type: !5275, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!5274 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!87, !251}
!5277 = !DILocation(line: 366, column: 40, scope: !5273, inlinedAt: !5278)
!5278 = distinct !DILocation(line: 46, column: 9, scope: !5268)
!5279 = !DILocalVariable(name: "bitpos", scope: !5273, file: !5274, line: 368, type: !87)
!5280 = !DILocation(line: 368, column: 6, scope: !5273, inlinedAt: !5278)
!5281 = !DILocalVariable(name: "size", arg: 1, scope: !5268, file: !5269, line: 29, type: !152)
!5282 = !DILocation(line: 29, column: 63, scope: !5268)
!5283 = !DILocation(line: 31, column: 27, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5268, file: !5269, line: 31, column: 6)
!5285 = !DILocation(line: 31, column: 6, scope: !5284)
!5286 = !DILocation(line: 31, column: 6, scope: !5268)
!5287 = !DILocation(line: 32, column: 8, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !5269, line: 32, column: 7)
!5289 = distinct !DILexicalBlock(scope: !5284, file: !5269, line: 31, column: 34)
!5290 = !DILocation(line: 32, column: 7, scope: !5289)
!5291 = !DILocation(line: 33, column: 4, scope: !5288)
!5292 = !DILocation(line: 35, column: 7, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5289, file: !5269, line: 35, column: 7)
!5294 = !DILocation(line: 35, column: 12, scope: !5293)
!5295 = !DILocation(line: 35, column: 7, scope: !5289)
!5296 = !DILocation(line: 36, column: 4, scope: !5293)
!5297 = !DILocation(line: 38, column: 10, scope: !5289)
!5298 = !DILocation(line: 38, column: 28, scope: !5289)
!5299 = !DILocation(line: 38, column: 41, scope: !5289)
!5300 = !DILocation(line: 38, column: 3, scope: !5289)
!5301 = !DILocation(line: 41, column: 6, scope: !5268)
!5302 = !DILocation(line: 42, column: 7, scope: !5268)
!5303 = !DILocation(line: 46, column: 15, scope: !5268)
!5304 = !DILocation(line: 374, column: 2, scope: !5273, inlinedAt: !5278)
!5305 = !DILocation(line: 376, column: 14, scope: !5273, inlinedAt: !5278)
!5306 = !{i32 255076}
!5307 = !DILocation(line: 377, column: 9, scope: !5273, inlinedAt: !5278)
!5308 = !DILocation(line: 377, column: 16, scope: !5273, inlinedAt: !5278)
!5309 = !DILocation(line: 46, column: 2, scope: !5268)
!5310 = !DILocation(line: 48, column: 1, scope: !5268)
!5311 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5312, file: !5312, line: 30, type: !5313, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!5312 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!87, !250}
!5315 = !DILocation(line: 366, column: 40, scope: !5273, inlinedAt: !5316)
!5316 = distinct !DILocation(line: 32, column: 9, scope: !5311)
!5317 = !DILocation(line: 368, column: 6, scope: !5273, inlinedAt: !5316)
!5318 = !DILocalVariable(name: "n", arg: 1, scope: !5311, file: !5312, line: 30, type: !250)
!5319 = !DILocation(line: 30, column: 21, scope: !5311)
!5320 = !DILocation(line: 32, column: 15, scope: !5311)
!5321 = !DILocation(line: 374, column: 2, scope: !5273, inlinedAt: !5316)
!5322 = !DILocation(line: 376, column: 14, scope: !5273, inlinedAt: !5316)
!5323 = !DILocation(line: 377, column: 9, scope: !5273, inlinedAt: !5316)
!5324 = !DILocation(line: 377, column: 16, scope: !5273, inlinedAt: !5316)
!5325 = !DILocation(line: 32, column: 18, scope: !5311)
!5326 = !DILocation(line: 32, column: 2, scope: !5311)
!5327 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5328, file: !5328, line: 137, type: !5329, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!5328 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5329 = !DISubroutineType(types: !5330)
!5330 = !{!176, !812, !2000, !149, !575}
!5331 = !DILocalVariable(name: "s", arg: 1, scope: !5327, file: !5328, line: 137, type: !812)
!5332 = !DILocation(line: 137, column: 54, scope: !5327)
!5333 = !DILocalVariable(name: "object", arg: 2, scope: !5327, file: !5328, line: 137, type: !2000)
!5334 = !DILocation(line: 137, column: 69, scope: !5327)
!5335 = !DILocalVariable(name: "size", arg: 3, scope: !5327, file: !5328, line: 138, type: !149)
!5336 = !DILocation(line: 138, column: 12, scope: !5327)
!5337 = !DILocalVariable(name: "flags", arg: 4, scope: !5327, file: !5328, line: 138, type: !575)
!5338 = !DILocation(line: 138, column: 24, scope: !5327)
!5339 = !DILocation(line: 140, column: 17, scope: !5327)
!5340 = !DILocation(line: 140, column: 2, scope: !5327)
!5341 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4498, file: !4498, line: 646, type: !4499, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!5342 = !DILocalVariable(name: "__ret", scope: !5343, file: !4498, line: 648, type: !152)
!5343 = distinct !DILexicalBlock(scope: !5341, file: !4498, line: 648, column: 9)
!5344 = !DILocation(line: 648, column: 9, scope: !5343)
!5345 = !DILocalVariable(name: "__edi", scope: !5343, file: !4498, line: 648, type: !152)
!5346 = !DILocalVariable(name: "__esi", scope: !5343, file: !4498, line: 648, type: !152)
!5347 = !DILocalVariable(name: "__edx", scope: !5343, file: !4498, line: 648, type: !152)
!5348 = !DILocalVariable(name: "__ecx", scope: !5343, file: !4498, line: 648, type: !152)
!5349 = !DILocalVariable(name: "__eax", scope: !5343, file: !4498, line: 648, type: !152)
!5350 = !DILocation(line: 648, column: 9, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !4498, line: 648, column: 9)
!5352 = distinct !DILexicalBlock(scope: !5343, file: !4498, line: 648, column: 9)
!5353 = !{i32 -2145609009, i32 -2145606694, i32 -2145606460, i32 -2145606409, i32 -2145606381, i32 -2145606356, i32 -2145606672, i32 -2145606659, i32 -2145606221, i32 -2145606102, i32 -2145606567, i32 -2145606540, i32 -2145606512, i32 -2145606482}
!5354 = !DILocalVariable(name: "__mask", scope: !5355, file: !4498, line: 648, type: !152)
!5355 = distinct !DILexicalBlock(scope: !5351, file: !4498, line: 648, column: 9)
!5356 = !DILocation(line: 648, column: 9, scope: !5355)
!5357 = !DILocation(line: 648, column: 9, scope: !5352)
!5358 = !DILocation(line: 648, column: 2, scope: !5341)
!5359 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4498, file: !4498, line: 656, type: !1753, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!5360 = !DILocalVariable(name: "__edi", scope: !5361, file: !4498, line: 658, type: !152)
!5361 = distinct !DILexicalBlock(scope: !5359, file: !4498, line: 658, column: 2)
!5362 = !DILocation(line: 658, column: 2, scope: !5361)
!5363 = !DILocalVariable(name: "__esi", scope: !5361, file: !4498, line: 658, type: !152)
!5364 = !DILocalVariable(name: "__edx", scope: !5361, file: !4498, line: 658, type: !152)
!5365 = !DILocalVariable(name: "__ecx", scope: !5361, file: !4498, line: 658, type: !152)
!5366 = !DILocalVariable(name: "__eax", scope: !5361, file: !4498, line: 658, type: !152)
!5367 = !{i32 -2145601915, i32 -2145601183, i32 -2145600949, i32 -2145600898, i32 -2145600870, i32 -2145600845, i32 -2145601161, i32 -2145601148, i32 -2145600710, i32 -2145600591, i32 -2145601056, i32 -2145601029, i32 -2145601001, i32 -2145600971}
!5368 = !DILocation(line: 659, column: 1, scope: !5359)
!5369 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4498, file: !4498, line: 651, type: !3953, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!5370 = !DILocalVariable(name: "f", arg: 1, scope: !5369, file: !4498, line: 651, type: !152)
!5371 = !DILocation(line: 651, column: 65, scope: !5369)
!5372 = !DILocalVariable(name: "__edi", scope: !5373, file: !4498, line: 653, type: !152)
!5373 = distinct !DILexicalBlock(scope: !5369, file: !4498, line: 653, column: 2)
!5374 = !DILocation(line: 653, column: 2, scope: !5373)
!5375 = !DILocalVariable(name: "__esi", scope: !5373, file: !4498, line: 653, type: !152)
!5376 = !DILocalVariable(name: "__edx", scope: !5373, file: !4498, line: 653, type: !152)
!5377 = !DILocalVariable(name: "__ecx", scope: !5373, file: !4498, line: 653, type: !152)
!5378 = !DILocalVariable(name: "__eax", scope: !5373, file: !4498, line: 653, type: !152)
!5379 = !{i32 -2145604542, i32 -2145603792, i32 -2145603558, i32 -2145603507, i32 -2145603479, i32 -2145603454, i32 -2145603770, i32 -2145603757, i32 -2145603319, i32 -2145603200, i32 -2145603665, i32 -2145603638, i32 -2145603610, i32 -2145603580}
!5380 = !DILocation(line: 654, column: 1, scope: !5369)
!5381 = distinct !DISubprogram(name: "hv_get_ring_buffersize", scope: !3, file: !3, line: 98, type: !4509, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3994, retainedNodes: !75)
!5382 = !DILocalVariable(name: "ring_info", arg: 1, scope: !5381, file: !3, line: 98, type: !4094)
!5383 = !DILocation(line: 98, column: 58, scope: !5381)
!5384 = !DILocation(line: 100, column: 9, scope: !5381)
!5385 = !DILocation(line: 100, column: 20, scope: !5381)
!5386 = !DILocation(line: 100, column: 2, scope: !5381)
