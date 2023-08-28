; ModuleID = '../bcout/drivers/xen/xlate_mmu.llvm.bc'
source_filename = "drivers/xen/xlate_mmu.c"
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.49, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.52 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i64, i64 }
%union.anon.52 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.64, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.64 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.3, %union.anon.18, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, %struct.fsnotify_mark_connector*, i8* }
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
%struct.kqid = type { %union.anon.19, i32 }
%union.anon.19 = type { %struct.kuid_t }
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
%union.anon.53 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.54 = type { %struct.callback_head }
%union.anon.55 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, {}*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.58 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.18 = type { %struct.atomic_t }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.27, %union.anon.31, %struct.key_restriction* }
%union.anon.25 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.26 = type { i64 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.28, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.28 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.31 = type { %union.key_payload }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.48 = type { %struct.callback_head }
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
%struct.remap_data = type { i64*, i32, %struct.pgprot, i16, %struct.vm_area_struct*, i32, %struct.page**, %struct.xen_remap_gfn_info*, i32*, i32, [1 x i32], [1 x i64], [1 x i64], i32 }
%struct.xen_remap_gfn_info = type opaque
%struct.xen_add_to_physmap_range = type { i16, i16, i16, i16, i64*, i64*, i32* }
%struct.xen_remove_from_physmap = type { i16, i64 }
%struct.map_balloon_pages = type { i64*, i32 }
%struct.remap_pfn = type { %struct.mm_struct*, %struct.page**, %struct.pgprot, i64 }

@.str = private unnamed_addr constant [24 x i8] c"drivers/xen/xlate_mmu.c\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\014%s Couldn't balloon alloc %ld pages rc:%d\0A\00", align 1
@__func__.xen_xlate_map_ballooned_pages = private unnamed_addr constant [30 x i8] c"xen_xlate_map_ballooned_pages\00", align 1
@__default_kernel_pte_mask = external dso_local global i64, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"\014%s Couldn't map %ld pages rc:%d\0A\00", align 1
@vmemmap_base = external dso_local global i64, align 8
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@__supported_pte_mask = external dso_local global i64, align 8
@xen_features = external dso_local global [32 x i8], align 16
@xen_p2m_size = external dso_local global i64, align 8
@xen_p2m_addr = external dso_local global i64*, align 8
@xen_max_p2m_pfn = external dso_local global i64, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xen_xlate_remap_gfn_array(%struct.vm_area_struct* %vma, i64 %addr, i64* %gfn, i32 %nr, i32* %err_ptr, i64 %prot.coerce, i32 %domid, %struct.page** %pages) #0 !dbg !3275 {
entry:
  %prot = alloca %struct.pgprot, align 8
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  %addr.addr = alloca i64, align 8
  %gfn.addr = alloca i64*, align 8
  %nr.addr = alloca i32, align 4
  %err_ptr.addr = alloca i32*, align 8
  %domid.addr = alloca i32, align 4
  %pages.addr = alloca %struct.page**, align 8
  %err = alloca i32, align 4
  %data = alloca %struct.remap_data, align 8
  %range = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, %struct.pgprot* %prot, i32 0, i32 0
  store i64 %prot.coerce, i64* %coerce.dive, align 8
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !3281, metadata !DIExpression()), !dbg !3282
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !3283, metadata !DIExpression()), !dbg !3284
  store i64* %gfn, i64** %gfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %gfn.addr, metadata !3285, metadata !DIExpression()), !dbg !3286
  store i32 %nr, i32* %nr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr, metadata !3287, metadata !DIExpression()), !dbg !3288
  store i32* %err_ptr, i32** %err_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err_ptr.addr, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.declare(metadata %struct.pgprot* %prot, metadata !3291, metadata !DIExpression()), !dbg !3292
  store i32 %domid, i32* %domid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %domid.addr, metadata !3293, metadata !DIExpression()), !dbg !3294
  store %struct.page** %pages, %struct.page*** %pages.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page*** %pages.addr, metadata !3295, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3297, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.declare(metadata %struct.remap_data* %data, metadata !3299, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.declare(metadata i64* %range, metadata !3326, metadata !DIExpression()), !dbg !3327
  %0 = load i32, i32* %nr.addr, align 4, !dbg !3328
  %conv = sext i32 %0 to i64, !dbg !3328
  %add = add i64 %conv, 1, !dbg !3328
  %sub = sub i64 %add, 1, !dbg !3328
  %div = udiv i64 %sub, 1, !dbg !3328
  %shl = shl i64 %div, 12, !dbg !3329
  store i64 %shl, i64* %range, align 8, !dbg !3327
  br label %do.body, !dbg !3330

do.body:                                          ; preds = %entry
  %1 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !3331
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %1, i32 0, i32 8, !dbg !3331
  %2 = load i64, i64* %vm_flags, align 8, !dbg !3331
  %and = and i64 %2, 17408, !dbg !3331
  %cmp = icmp eq i64 %and, 17408, !dbg !3331
  %lnot = xor i1 %cmp, true, !dbg !3331
  %lnot2 = xor i1 %lnot, true, !dbg !3331
  %lnot3 = xor i1 %lnot2, true, !dbg !3331
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3331
  %conv4 = sext i32 %lnot.ext to i64, !dbg !3331
  %tobool = icmp ne i64 %conv4, 0, !dbg !3331
  br i1 %tobool, label %if.then, label %if.end, !dbg !3334

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !3331

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !3335

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !3337

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !3335

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 156, i32 0, i64 12) #7, !dbg !3339, !srcloc !3341
  br label %do.end8, !dbg !3339

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !3335

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #7, !dbg !3342, !srcloc !3345
  unreachable, !dbg !3346

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !3335

do.end11:                                         ; preds = %do.end10
  br label %if.end, !dbg !3335

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.end12, !dbg !3334

do.end12:                                         ; preds = %if.end
  %3 = load i64*, i64** %gfn.addr, align 8, !dbg !3347
  %fgfn = getelementptr inbounds %struct.remap_data, %struct.remap_data* %data, i32 0, i32 0, !dbg !3348
  store i64* %3, i64** %fgfn, align 8, !dbg !3349
  %4 = load i32, i32* %nr.addr, align 4, !dbg !3350
  %nr_fgfn = getelementptr inbounds %struct.remap_data, %struct.remap_data* %data, i32 0, i32 1, !dbg !3351
  store i32 %4, i32* %nr_fgfn, align 8, !dbg !3352
  %prot13 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %data, i32 0, i32 2, !dbg !3353
  %5 = bitcast %struct.pgprot* %prot13 to i8*, !dbg !3354
  %6 = bitcast %struct.pgprot* %prot to i8*, !dbg !3354
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 8, i1 false), !dbg !3354
  %7 = load i32, i32* %domid.addr, align 4, !dbg !3355
  %conv14 = trunc i32 %7 to i16, !dbg !3355
  %domid15 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %data, i32 0, i32 3, !dbg !3356
  store i16 %conv14, i16* %domid15, align 8, !dbg !3357
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !3358
  %vma16 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %data, i32 0, i32 4, !dbg !3359
  store %struct.vm_area_struct* %8, %struct.vm_area_struct** %vma16, align 8, !dbg !3360
  %9 = load %struct.page**, %struct.page*** %pages.addr, align 8, !dbg !3361
  %pages17 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %data, i32 0, i32 6, !dbg !3362
  store %struct.page** %9, %struct.page*** %pages17, align 8, !dbg !3363
  %index = getelementptr inbounds %struct.remap_data, %struct.remap_data* %data, i32 0, i32 5, !dbg !3364
  store i32 0, i32* %index, align 8, !dbg !3365
  %10 = load i32*, i32** %err_ptr.addr, align 8, !dbg !3366
  %err_ptr18 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %data, i32 0, i32 8, !dbg !3367
  store i32* %10, i32** %err_ptr18, align 8, !dbg !3368
  %mapped = getelementptr inbounds %struct.remap_data, %struct.remap_data* %data, i32 0, i32 9, !dbg !3369
  store i32 0, i32* %mapped, align 8, !dbg !3370
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !3371
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 6, !dbg !3372
  %12 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8, !dbg !3372
  %13 = load i64, i64* %addr.addr, align 8, !dbg !3373
  %14 = load i64, i64* %range, align 8, !dbg !3374
  %15 = bitcast %struct.remap_data* %data to i8*, !dbg !3375
  %call = call i32 @apply_to_page_range(%struct.mm_struct* %12, i64 %13, i64 %14, i32 (%struct.pte_t*, i64, i8*)* @remap_pte_fn, i8* %15) #11, !dbg !3376
  store i32 %call, i32* %err, align 4, !dbg !3377
  %16 = load i32, i32* %err, align 4, !dbg !3378
  %cmp19 = icmp slt i32 %16, 0, !dbg !3379
  br i1 %cmp19, label %cond.true, label %cond.false, !dbg !3378

cond.true:                                        ; preds = %do.end12
  %17 = load i32, i32* %err, align 4, !dbg !3380
  br label %cond.end, !dbg !3378

cond.false:                                       ; preds = %do.end12
  %mapped21 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %data, i32 0, i32 9, !dbg !3381
  %18 = load i32, i32* %mapped21, align 8, !dbg !3381
  br label %cond.end, !dbg !3378

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !3378
  ret i32 %cond, !dbg !3382
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @apply_to_page_range(%struct.mm_struct*, i64, i64, i32 (%struct.pte_t*, i64, i8*)*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @remap_pte_fn(%struct.pte_t* %ptep, i64 %addr, i8* %data) #0 !dbg !3383 {
entry:
  %ptep.addr = alloca %struct.pte_t*, align 8
  %addr.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %info = alloca %struct.remap_data*, align 8
  %page = alloca %struct.page*, align 8
  %pte = alloca %struct.pte_t, align 8
  %agg.tmp = alloca %struct.pte_t, align 8
  %rc = alloca i32, align 4
  %nr_gfn = alloca i32, align 4
  %i = alloca i32, align 4
  %xatp = alloca %struct.xen_add_to_physmap_range, align 8
  %__UNIQUE_ID___x227 = alloca i32, align 4
  %__UNIQUE_ID___y228 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.pte_t* %ptep, %struct.pte_t** %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pte_t** %ptep.addr, metadata !3386, metadata !DIExpression()), !dbg !3387
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !3388, metadata !DIExpression()), !dbg !3389
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.declare(metadata %struct.remap_data** %info, metadata !3392, metadata !DIExpression()), !dbg !3394
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3395
  %1 = bitcast i8* %0 to %struct.remap_data*, !dbg !3395
  store %struct.remap_data* %1, %struct.remap_data** %info, align 8, !dbg !3394
  call void @llvm.dbg.declare(metadata %struct.page** %page, metadata !3396, metadata !DIExpression()), !dbg !3397
  %2 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3398
  %pages = getelementptr inbounds %struct.remap_data, %struct.remap_data* %2, i32 0, i32 6, !dbg !3399
  %3 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !3399
  %4 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3400
  %index = getelementptr inbounds %struct.remap_data, %struct.remap_data* %4, i32 0, i32 5, !dbg !3401
  %5 = load i32, i32* %index, align 8, !dbg !3402
  %inc = add i32 %5, 1, !dbg !3402
  store i32 %inc, i32* %index, align 8, !dbg !3402
  %idxprom = sext i32 %5 to i64, !dbg !3398
  %arrayidx = getelementptr %struct.page*, %struct.page** %3, i64 %idxprom, !dbg !3398
  %6 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !3398
  store %struct.page* %6, %struct.page** %page, align 8, !dbg !3397
  call void @llvm.dbg.declare(metadata %struct.pte_t* %pte, metadata !3403, metadata !DIExpression()), !dbg !3404
  %7 = load %struct.page*, %struct.page** %page, align 8, !dbg !3405
  %8 = load i64, i64* @vmemmap_base, align 8, !dbg !3405
  %9 = inttoptr i64 %8 to %struct.page*, !dbg !3405
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %7 to i64, !dbg !3405
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %9 to i64, !dbg !3405
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3405
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !3405
  %10 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3406
  %prot = getelementptr inbounds %struct.remap_data, %struct.remap_data* %10, i32 0, i32 2, !dbg !3407
  %coerce.dive = getelementptr inbounds %struct.pgprot, %struct.pgprot* %prot, i32 0, i32 0, !dbg !3408
  %11 = load i64, i64* %coerce.dive, align 8, !dbg !3408
  %call = call i64 @pfn_pte(i64 %sub.ptr.div, i64 %11) #11, !dbg !3408
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %agg.tmp, i32 0, i32 0, !dbg !3408
  store i64 %call, i64* %coerce.dive1, align 8, !dbg !3408
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %agg.tmp, i32 0, i32 0, !dbg !3409
  %12 = load i64, i64* %coerce.dive2, align 8, !dbg !3409
  %call3 = call i64 @pte_mkspecial(i64 %12) #11, !dbg !3409
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0, !dbg !3409
  store i64 %call3, i64* %coerce.dive4, align 8, !dbg !3409
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !3410, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.declare(metadata i32* %nr_gfn, metadata !3412, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3414, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.declare(metadata %struct.xen_add_to_physmap_range* %xatp, metadata !3416, metadata !DIExpression()), !dbg !3431
  %13 = bitcast %struct.xen_add_to_physmap_range* %xatp to i8*, !dbg !3431
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false), !dbg !3431
  %domid = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %xatp, i32 0, i32 0, !dbg !3432
  store i16 32752, i16* %domid, align 8, !dbg !3432
  %space = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %xatp, i32 0, i32 1, !dbg !3432
  store i16 4, i16* %space, align 2, !dbg !3432
  %foreign_domid = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %xatp, i32 0, i32 3, !dbg !3432
  %14 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3433
  %domid5 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %14, i32 0, i32 3, !dbg !3434
  %15 = load i16, i16* %domid5, align 8, !dbg !3434
  store i16 %15, i16* %foreign_domid, align 2, !dbg !3432
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x227, metadata !3435, metadata !DIExpression()), !dbg !3437
  store i32 1, i32* %__UNIQUE_ID___x227, align 4, !dbg !3437
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y228, metadata !3438, metadata !DIExpression()), !dbg !3437
  %16 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3437
  %nr_fgfn = getelementptr inbounds %struct.remap_data, %struct.remap_data* %16, i32 0, i32 1, !dbg !3437
  %17 = load i32, i32* %nr_fgfn, align 8, !dbg !3437
  store i32 %17, i32* %__UNIQUE_ID___y228, align 4, !dbg !3437
  %18 = load i32, i32* %__UNIQUE_ID___x227, align 4, !dbg !3437
  %19 = load i32, i32* %__UNIQUE_ID___y228, align 4, !dbg !3437
  %cmp = icmp slt i32 %18, %19, !dbg !3437
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3437

cond.true:                                        ; preds = %entry
  %20 = load i32, i32* %__UNIQUE_ID___x227, align 4, !dbg !3437
  br label %cond.end, !dbg !3437

cond.false:                                       ; preds = %entry
  %21 = load i32, i32* %__UNIQUE_ID___y228, align 4, !dbg !3437
  br label %cond.end, !dbg !3437

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ], !dbg !3437
  store i32 %cond, i32* %tmp, align 4, !dbg !3437
  %22 = load i32, i32* %tmp, align 4, !dbg !3437
  store i32 %22, i32* %nr_gfn, align 4, !dbg !3439
  %23 = load i32, i32* %nr_gfn, align 4, !dbg !3440
  %24 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3441
  %nr_fgfn6 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %24, i32 0, i32 1, !dbg !3442
  %25 = load i32, i32* %nr_fgfn6, align 8, !dbg !3443
  %sub = sub i32 %25, %23, !dbg !3443
  store i32 %sub, i32* %nr_fgfn6, align 8, !dbg !3443
  %26 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3444
  %h_iter = getelementptr inbounds %struct.remap_data, %struct.remap_data* %26, i32 0, i32 13, !dbg !3445
  store i32 0, i32* %h_iter, align 8, !dbg !3446
  %27 = load i32, i32* %nr_gfn, align 4, !dbg !3447
  %28 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3448
  %29 = bitcast %struct.remap_data* %28 to i8*, !dbg !3448
  call void @xen_for_each_gfn(%struct.page** %page, i32 %27, void (i64, i8*)* @setup_hparams, i8* %29) #11, !dbg !3449
  br label %do.body, !dbg !3450

do.body:                                          ; preds = %cond.end
  %30 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3451
  %h_iter7 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %30, i32 0, i32 13, !dbg !3451
  %31 = load i32, i32* %h_iter7, align 8, !dbg !3451
  %32 = load i32, i32* %nr_gfn, align 4, !dbg !3451
  %cmp8 = icmp ne i32 %31, %32, !dbg !3451
  %lnot = xor i1 %cmp8, true, !dbg !3451
  %lnot9 = xor i1 %lnot, true, !dbg !3451
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !3451
  %conv = sext i32 %lnot.ext to i64, !dbg !3451
  %tobool = icmp ne i64 %conv, 0, !dbg !3451
  br i1 %tobool, label %if.then, label %if.end, !dbg !3454

if.then:                                          ; preds = %do.body
  br label %do.body10, !dbg !3451

do.body10:                                        ; preds = %if.then
  br label %do.body11, !dbg !3455

do.body11:                                        ; preds = %do.body10
  br label %do.end, !dbg !3457

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !3455

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 114, i32 0, i64 12) #7, !dbg !3459, !srcloc !3461
  br label %do.end13, !dbg !3459

do.end13:                                         ; preds = %do.body12
  br label %do.body14, !dbg !3455

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 229) #7, !dbg !3462, !srcloc !3465
  unreachable, !dbg !3466

do.end15:                                         ; No predecessors!
  br label %do.end16, !dbg !3455

do.end16:                                         ; preds = %do.end15
  br label %if.end, !dbg !3455

if.end:                                           ; preds = %do.end16, %do.body
  br label %do.end17, !dbg !3454

do.end17:                                         ; preds = %if.end
  br label %do.body18, !dbg !3467

do.body18:                                        ; preds = %do.end17
  %33 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3468
  %h_idxs = getelementptr inbounds %struct.remap_data, %struct.remap_data* %33, i32 0, i32 11, !dbg !3468
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %h_idxs, i64 0, i64 0, !dbg !3468
  %idxs = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %xatp, i32 0, i32 4, !dbg !3468
  store i64* %arraydecay, i64** %idxs, align 8, !dbg !3468
  br label %do.end19, !dbg !3468

do.end19:                                         ; preds = %do.body18
  br label %do.body20, !dbg !3470

do.body20:                                        ; preds = %do.end19
  %34 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3471
  %h_gpfns = getelementptr inbounds %struct.remap_data, %struct.remap_data* %34, i32 0, i32 12, !dbg !3471
  %arraydecay21 = getelementptr inbounds [1 x i64], [1 x i64]* %h_gpfns, i64 0, i64 0, !dbg !3471
  %gpfns = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %xatp, i32 0, i32 5, !dbg !3471
  store i64* %arraydecay21, i64** %gpfns, align 8, !dbg !3471
  br label %do.end22, !dbg !3471

do.end22:                                         ; preds = %do.body20
  br label %do.body23, !dbg !3473

do.body23:                                        ; preds = %do.end22
  %35 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3474
  %h_errs = getelementptr inbounds %struct.remap_data, %struct.remap_data* %35, i32 0, i32 10, !dbg !3474
  %arraydecay24 = getelementptr inbounds [1 x i32], [1 x i32]* %h_errs, i64 0, i64 0, !dbg !3474
  %errs = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %xatp, i32 0, i32 6, !dbg !3474
  store i32* %arraydecay24, i32** %errs, align 8, !dbg !3474
  br label %do.end25, !dbg !3474

do.end25:                                         ; preds = %do.body23
  %36 = load i32, i32* %nr_gfn, align 4, !dbg !3476
  %conv26 = trunc i32 %36 to i16, !dbg !3476
  %size = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %xatp, i32 0, i32 2, !dbg !3477
  store i16 %conv26, i16* %size, align 4, !dbg !3478
  %37 = bitcast %struct.xen_add_to_physmap_range* %xatp to i8*, !dbg !3479
  %call27 = call i64 @HYPERVISOR_memory_op(i32 23, i8* %37) #11, !dbg !3480
  %conv28 = trunc i64 %call27 to i32, !dbg !3480
  store i32 %conv28, i32* %rc, align 4, !dbg !3481
  store i32 0, i32* %i, align 4, !dbg !3482
  br label %for.cond, !dbg !3484

for.cond:                                         ; preds = %for.inc, %do.end25
  %38 = load i32, i32* %i, align 4, !dbg !3485
  %39 = load i32, i32* %nr_gfn, align 4, !dbg !3487
  %cmp29 = icmp ult i32 %38, %39, !dbg !3488
  br i1 %cmp29, label %for.body, label %for.end, !dbg !3489

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3490, metadata !DIExpression()), !dbg !3492
  %40 = load i32, i32* %rc, align 4, !dbg !3493
  %cmp31 = icmp slt i32 %40, 0, !dbg !3494
  br i1 %cmp31, label %cond.true33, label %cond.false34, !dbg !3495

cond.true33:                                      ; preds = %for.body
  %41 = load i32, i32* %rc, align 4, !dbg !3496
  br label %cond.end38, !dbg !3495

cond.false34:                                     ; preds = %for.body
  %42 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3497
  %h_errs35 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %42, i32 0, i32 10, !dbg !3498
  %43 = load i32, i32* %i, align 4, !dbg !3499
  %idxprom36 = zext i32 %43 to i64, !dbg !3497
  %arrayidx37 = getelementptr [1 x i32], [1 x i32]* %h_errs35, i64 0, i64 %idxprom36, !dbg !3497
  %44 = load i32, i32* %arrayidx37, align 4, !dbg !3497
  br label %cond.end38, !dbg !3495

cond.end38:                                       ; preds = %cond.false34, %cond.true33
  %cond39 = phi i32 [ %41, %cond.true33 ], [ %44, %cond.false34 ], !dbg !3495
  store i32 %cond39, i32* %err, align 4, !dbg !3492
  %45 = load i32, i32* %err, align 4, !dbg !3500
  %46 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3501
  %err_ptr = getelementptr inbounds %struct.remap_data, %struct.remap_data* %46, i32 0, i32 8, !dbg !3502
  %47 = load i32*, i32** %err_ptr, align 8, !dbg !3503
  %incdec.ptr = getelementptr i32, i32* %47, i32 1, !dbg !3503
  store i32* %incdec.ptr, i32** %err_ptr, align 8, !dbg !3503
  store i32 %45, i32* %47, align 4, !dbg !3504
  %48 = load i32, i32* %err, align 4, !dbg !3505
  %tobool40 = icmp ne i32 %48, 0, !dbg !3505
  br i1 %tobool40, label %if.end43, label %if.then41, !dbg !3507

if.then41:                                        ; preds = %cond.end38
  %49 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3508
  %mapped = getelementptr inbounds %struct.remap_data, %struct.remap_data* %49, i32 0, i32 9, !dbg !3509
  %50 = load i32, i32* %mapped, align 8, !dbg !3510
  %inc42 = add i32 %50, 1, !dbg !3510
  store i32 %inc42, i32* %mapped, align 8, !dbg !3510
  br label %if.end43, !dbg !3508

if.end43:                                         ; preds = %if.then41, %cond.end38
  br label %for.inc, !dbg !3511

for.inc:                                          ; preds = %if.end43
  %51 = load i32, i32* %i, align 4, !dbg !3512
  %inc44 = add i32 %51, 1, !dbg !3512
  store i32 %inc44, i32* %i, align 4, !dbg !3512
  br label %for.cond, !dbg !3513, !llvm.loop !3514

for.end:                                          ; preds = %for.cond
  %52 = load i32, i32* %rc, align 4, !dbg !3516
  %tobool45 = icmp ne i32 %52, 0, !dbg !3516
  br i1 %tobool45, label %if.end48, label %if.then46, !dbg !3518

if.then46:                                        ; preds = %for.end
  %53 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3519
  %vma = getelementptr inbounds %struct.remap_data, %struct.remap_data* %53, i32 0, i32 4, !dbg !3520
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8, !dbg !3520
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 6, !dbg !3521
  %55 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8, !dbg !3521
  %56 = load i64, i64* %addr.addr, align 8, !dbg !3522
  %57 = load %struct.pte_t*, %struct.pte_t** %ptep.addr, align 8, !dbg !3523
  %coerce.dive47 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0, !dbg !3524
  %58 = load i64, i64* %coerce.dive47, align 8, !dbg !3524
  call void @set_pte_at(%struct.mm_struct* %55, i64 %56, %struct.pte_t* %57, i64 %58) #11, !dbg !3524
  br label %if.end48, !dbg !3524

if.end48:                                         ; preds = %if.then46, %for.end
  ret i32 0, !dbg !3525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xen_xlate_unmap_gfn_range(%struct.vm_area_struct* %vma, i32 %nr, %struct.page** %pages) #0 !dbg !3526 {
entry:
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  %nr.addr = alloca i32, align 4
  %pages.addr = alloca %struct.page**, align 8
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !3529, metadata !DIExpression()), !dbg !3530
  store i32 %nr, i32* %nr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr, metadata !3531, metadata !DIExpression()), !dbg !3532
  store %struct.page** %pages, %struct.page*** %pages.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page*** %pages.addr, metadata !3533, metadata !DIExpression()), !dbg !3534
  %0 = load %struct.page**, %struct.page*** %pages.addr, align 8, !dbg !3535
  %1 = load i32, i32* %nr.addr, align 4, !dbg !3536
  call void @xen_for_each_gfn(%struct.page** %0, i32 %1, void (i64, i8*)* @unmap_gfn, i8* null) #11, !dbg !3537
  ret i32 0, !dbg !3538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_for_each_gfn(%struct.page** %pages, i32 %nr_gfn, void (i64, i8*)* %fn, i8* %data) #0 !dbg !3539 {
entry:
  %pages.addr = alloca %struct.page**, align 8
  %nr_gfn.addr = alloca i32, align 4
  %fn.addr = alloca void (i64, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %xen_pfn = alloca i64, align 8
  %page = alloca %struct.page*, align 8
  %i = alloca i32, align 4
  store %struct.page** %pages, %struct.page*** %pages.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page*** %pages.addr, metadata !3546, metadata !DIExpression()), !dbg !3547
  store i32 %nr_gfn, i32* %nr_gfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_gfn.addr, metadata !3548, metadata !DIExpression()), !dbg !3549
  store void (i64, i8*)* %fn, void (i64, i8*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (i64, i8*)** %fn.addr, metadata !3550, metadata !DIExpression()), !dbg !3551
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3552, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.declare(metadata i64* %xen_pfn, metadata !3554, metadata !DIExpression()), !dbg !3555
  store i64 0, i64* %xen_pfn, align 8, !dbg !3555
  call void @llvm.dbg.declare(metadata %struct.page** %page, metadata !3556, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3558, metadata !DIExpression()), !dbg !3559
  store i32 0, i32* %i, align 4, !dbg !3560
  br label %for.cond, !dbg !3562

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3563
  %1 = load i32, i32* %nr_gfn.addr, align 4, !dbg !3565
  %cmp = icmp ult i32 %0, %1, !dbg !3566
  br i1 %cmp, label %for.body, label %for.end, !dbg !3567

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !3568
  %conv = sext i32 %2 to i64, !dbg !3568
  %rem = urem i64 %conv, 1, !dbg !3571
  %cmp1 = icmp eq i64 %rem, 0, !dbg !3572
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3573

if.then:                                          ; preds = %for.body
  %3 = load %struct.page**, %struct.page*** %pages.addr, align 8, !dbg !3574
  %4 = load i32, i32* %i, align 4, !dbg !3576
  %conv3 = sext i32 %4 to i64, !dbg !3576
  %div = udiv i64 %conv3, 1, !dbg !3577
  %arrayidx = getelementptr %struct.page*, %struct.page** %3, i64 %div, !dbg !3574
  %5 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !3574
  store %struct.page* %5, %struct.page** %page, align 8, !dbg !3578
  %6 = load %struct.page*, %struct.page** %page, align 8, !dbg !3579
  %7 = load i64, i64* @vmemmap_base, align 8, !dbg !3579
  %8 = inttoptr i64 %7 to %struct.page*, !dbg !3579
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %6 to i64, !dbg !3579
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %8 to i64, !dbg !3579
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3579
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !3579
  %shl = shl i64 %sub.ptr.div, 0, !dbg !3579
  store i64 %shl, i64* %xen_pfn, align 8, !dbg !3580
  br label %if.end, !dbg !3581

if.end:                                           ; preds = %if.then, %for.body
  %9 = load void (i64, i8*)*, void (i64, i8*)** %fn.addr, align 8, !dbg !3582
  %10 = load i64, i64* %xen_pfn, align 8, !dbg !3583
  %inc = add i64 %10, 1, !dbg !3583
  store i64 %inc, i64* %xen_pfn, align 8, !dbg !3583
  %call = call i64 @pfn_to_gfn(i64 %10) #11, !dbg !3584
  %11 = load i8*, i8** %data.addr, align 8, !dbg !3585
  call void %9(i64 %call, i8* %11) #11, !dbg !3582
  br label %for.inc, !dbg !3586

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !3587
  %inc4 = add i32 %12, 1, !dbg !3587
  store i32 %inc4, i32* %i, align 4, !dbg !3587
  br label %for.cond, !dbg !3588, !llvm.loop !3589

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3591
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @unmap_gfn(i64 %gfn, i8* %data) #0 !dbg !3592 {
entry:
  %gfn.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %xrp = alloca %struct.xen_remove_from_physmap, align 8
  store i64 %gfn, i64* %gfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %gfn.addr, metadata !3593, metadata !DIExpression()), !dbg !3594
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3595, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.declare(metadata %struct.xen_remove_from_physmap* %xrp, metadata !3597, metadata !DIExpression()), !dbg !3602
  %domid = getelementptr inbounds %struct.xen_remove_from_physmap, %struct.xen_remove_from_physmap* %xrp, i32 0, i32 0, !dbg !3603
  store i16 32752, i16* %domid, align 8, !dbg !3604
  %0 = load i64, i64* %gfn.addr, align 8, !dbg !3605
  %gpfn = getelementptr inbounds %struct.xen_remove_from_physmap, %struct.xen_remove_from_physmap* %xrp, i32 0, i32 1, !dbg !3606
  store i64 %0, i64* %gpfn, align 8, !dbg !3607
  %1 = bitcast %struct.xen_remove_from_physmap* %xrp to i8*, !dbg !3608
  %call = call i64 @HYPERVISOR_memory_op(i32 15, i8* %1) #11, !dbg !3609
  ret void, !dbg !3610
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xen_xlate_map_ballooned_pages(i64** %gfns, i8** %virt, i64 %nr_grant_frames) #4 section ".init.text" !dbg !3611 {
entry:
  %retval = alloca i32, align 4
  %gfns.addr = alloca i64**, align 8
  %virt.addr = alloca i8**, align 8
  %nr_grant_frames.addr = alloca i64, align 8
  %pages = alloca %struct.page**, align 8
  %pfns = alloca i64*, align 8
  %vaddr = alloca i8*, align 8
  %data = alloca %struct.map_balloon_pages, align 8
  %rc = alloca i32, align 4
  %nr_pages = alloca i64, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  store i64** %gfns, i64*** %gfns.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %gfns.addr, metadata !3615, metadata !DIExpression()), !dbg !3616
  store i8** %virt, i8*** %virt.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %virt.addr, metadata !3617, metadata !DIExpression()), !dbg !3618
  store i64 %nr_grant_frames, i64* %nr_grant_frames.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr_grant_frames.addr, metadata !3619, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.declare(metadata %struct.page*** %pages, metadata !3621, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.declare(metadata i64** %pfns, metadata !3623, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.declare(metadata i8** %vaddr, metadata !3625, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.declare(metadata %struct.map_balloon_pages* %data, metadata !3627, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !3633, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.declare(metadata i64* %nr_pages, metadata !3635, metadata !DIExpression()), !dbg !3636
  br label %do.body, !dbg !3637

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %nr_grant_frames.addr, align 8, !dbg !3638
  %cmp = icmp eq i64 %0, 0, !dbg !3638
  %lnot = xor i1 %cmp, true, !dbg !3638
  %lnot1 = xor i1 %lnot, true, !dbg !3638
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3638
  %conv = sext i32 %lnot.ext to i64, !dbg !3638
  %tobool = icmp ne i64 %conv, 0, !dbg !3638
  br i1 %tobool, label %if.then, label %if.end, !dbg !3641

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !3638

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !3642

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !3644

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !3642

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 224, i32 0, i64 12) #7, !dbg !3646, !srcloc !3648
  br label %do.end5, !dbg !3646

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !3642

do.body6:                                         ; preds = %do.end5
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 231) #7, !dbg !3649, !srcloc !3652
  unreachable, !dbg !3653

do.end7:                                          ; No predecessors!
  br label %do.end8, !dbg !3642

do.end8:                                          ; preds = %do.end7
  br label %if.end, !dbg !3642

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !3641

do.end9:                                          ; preds = %if.end
  %1 = load i64, i64* %nr_grant_frames.addr, align 8, !dbg !3654
  %add = add i64 %1, 1, !dbg !3654
  %sub = sub i64 %add, 1, !dbg !3654
  %div = udiv i64 %sub, 1, !dbg !3654
  store i64 %div, i64* %nr_pages, align 8, !dbg !3655
  %2 = load i64, i64* %nr_pages, align 8, !dbg !3656
  %call = call i8* @kcalloc(i64 %2, i64 8, i32 3264) #11, !dbg !3657
  %3 = bitcast i8* %call to %struct.page**, !dbg !3657
  store %struct.page** %3, %struct.page*** %pages, align 8, !dbg !3658
  %4 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !3659
  %tobool10 = icmp ne %struct.page** %4, null, !dbg !3659
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !3661

if.then11:                                        ; preds = %do.end9
  store i32 -12, i32* %retval, align 4, !dbg !3662
  br label %return, !dbg !3662

if.end12:                                         ; preds = %do.end9
  %5 = load i64, i64* %nr_grant_frames.addr, align 8, !dbg !3663
  %call13 = call i8* @kcalloc(i64 %5, i64 8, i32 3264) #11, !dbg !3664
  %6 = bitcast i8* %call13 to i64*, !dbg !3664
  store i64* %6, i64** %pfns, align 8, !dbg !3665
  %7 = load i64*, i64** %pfns, align 8, !dbg !3666
  %tobool14 = icmp ne i64* %7, null, !dbg !3666
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !3668

if.then15:                                        ; preds = %if.end12
  %8 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !3669
  %9 = bitcast %struct.page** %8 to i8*, !dbg !3669
  call void @kfree(i8* %9) #11, !dbg !3671
  store i32 -12, i32* %retval, align 4, !dbg !3672
  br label %return, !dbg !3672

if.end16:                                         ; preds = %if.end12
  %10 = load i64, i64* %nr_pages, align 8, !dbg !3673
  %conv17 = trunc i64 %10 to i32, !dbg !3673
  %11 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !3674
  %call18 = call i32 @alloc_xenballooned_pages(i32 %conv17, %struct.page** %11) #11, !dbg !3675
  store i32 %call18, i32* %rc, align 4, !dbg !3676
  %12 = load i32, i32* %rc, align 4, !dbg !3677
  %tobool19 = icmp ne i32 %12, 0, !dbg !3677
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !3679

if.then20:                                        ; preds = %if.end16
  %13 = load i64, i64* %nr_pages, align 8, !dbg !3680
  %14 = load i32, i32* %rc, align 4, !dbg !3680
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.xen_xlate_map_ballooned_pages, i64 0, i64 0), i64 %13, i32 %14) #12, !dbg !3680
  %15 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !3682
  %16 = bitcast %struct.page** %15 to i8*, !dbg !3682
  call void @kfree(i8* %16) #11, !dbg !3683
  %17 = load i64*, i64** %pfns, align 8, !dbg !3684
  %18 = bitcast i64* %17 to i8*, !dbg !3684
  call void @kfree(i8* %18) #11, !dbg !3685
  %19 = load i32, i32* %rc, align 4, !dbg !3686
  store i32 %19, i32* %retval, align 4, !dbg !3687
  br label %return, !dbg !3687

if.end22:                                         ; preds = %if.end16
  %20 = load i64*, i64** %pfns, align 8, !dbg !3688
  %pfns23 = getelementptr inbounds %struct.map_balloon_pages, %struct.map_balloon_pages* %data, i32 0, i32 0, !dbg !3689
  store i64* %20, i64** %pfns23, align 8, !dbg !3690
  %idx = getelementptr inbounds %struct.map_balloon_pages, %struct.map_balloon_pages* %data, i32 0, i32 1, !dbg !3691
  store i32 0, i32* %idx, align 8, !dbg !3692
  %21 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !3693
  %22 = load i64, i64* %nr_grant_frames.addr, align 8, !dbg !3694
  %conv24 = trunc i64 %22 to i32, !dbg !3694
  %23 = bitcast %struct.map_balloon_pages* %data to i8*, !dbg !3695
  call void @xen_for_each_gfn(%struct.page** %21, i32 %conv24, void (i64, i8*)* @setup_balloon_gfn, i8* %23) #11, !dbg !3696
  %24 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !3697
  %25 = load i64, i64* %nr_pages, align 8, !dbg !3698
  %conv25 = trunc i64 %25 to i32, !dbg !3698
  %pgprot = getelementptr inbounds %struct.pgprot, %struct.pgprot* %.compoundliteral, i32 0, i32 0, !dbg !3699
  %26 = load i64, i64* @__default_kernel_pte_mask, align 8, !dbg !3699
  %and = and i64 -9223372036854775453, %26, !dbg !3699
  store i64 %and, i64* %pgprot, align 8, !dbg !3699
  %coerce.dive = getelementptr inbounds %struct.pgprot, %struct.pgprot* %.compoundliteral, i32 0, i32 0, !dbg !3700
  %27 = load i64, i64* %coerce.dive, align 8, !dbg !3700
  %call26 = call i8* @vmap(%struct.page** %24, i32 %conv25, i64 0, i64 %27) #11, !dbg !3700
  store i8* %call26, i8** %vaddr, align 8, !dbg !3701
  %28 = load i8*, i8** %vaddr, align 8, !dbg !3702
  %tobool27 = icmp ne i8* %28, null, !dbg !3702
  br i1 %tobool27, label %if.end31, label %if.then28, !dbg !3704

if.then28:                                        ; preds = %if.end22
  %29 = load i64, i64* %nr_pages, align 8, !dbg !3705
  %30 = load i32, i32* %rc, align 4, !dbg !3705
  %call29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.xen_xlate_map_ballooned_pages, i64 0, i64 0), i64 %29, i32 %30) #12, !dbg !3705
  %31 = load i64, i64* %nr_pages, align 8, !dbg !3707
  %conv30 = trunc i64 %31 to i32, !dbg !3707
  %32 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !3708
  call void @free_xenballooned_pages(i32 %conv30, %struct.page** %32) #11, !dbg !3709
  %33 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !3710
  %34 = bitcast %struct.page** %33 to i8*, !dbg !3710
  call void @kfree(i8* %34) #11, !dbg !3711
  %35 = load i64*, i64** %pfns, align 8, !dbg !3712
  %36 = bitcast i64* %35 to i8*, !dbg !3712
  call void @kfree(i8* %36) #11, !dbg !3713
  store i32 -12, i32* %retval, align 4, !dbg !3714
  br label %return, !dbg !3714

if.end31:                                         ; preds = %if.end22
  %37 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !3715
  %38 = bitcast %struct.page** %37 to i8*, !dbg !3715
  call void @kfree(i8* %38) #11, !dbg !3716
  %39 = load i64*, i64** %pfns, align 8, !dbg !3717
  %40 = load i64**, i64*** %gfns.addr, align 8, !dbg !3718
  store i64* %39, i64** %40, align 8, !dbg !3719
  %41 = load i8*, i8** %vaddr, align 8, !dbg !3720
  %42 = load i8**, i8*** %virt.addr, align 8, !dbg !3721
  store i8* %41, i8** %42, align 8, !dbg !3722
  store i32 0, i32* %retval, align 4, !dbg !3723
  br label %return, !dbg !3723

return:                                           ; preds = %if.end31, %if.then28, %if.then20, %if.then15, %if.then11
  %43 = load i32, i32* %retval, align 4, !dbg !3724
  ret i32 %43, !dbg !3724
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !3725 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3728, metadata !DIExpression()), !dbg !3729
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3730, metadata !DIExpression()), !dbg !3731
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3732, metadata !DIExpression()), !dbg !3733
  %0 = load i64, i64* %n.addr, align 8, !dbg !3734
  %1 = load i64, i64* %size.addr, align 8, !dbg !3735
  %2 = load i32, i32* %flags.addr, align 4, !dbg !3736
  %or = or i32 %2, 256, !dbg !3737
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #11, !dbg !3738
  ret i8* %call, !dbg !3739
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @alloc_xenballooned_pages(i32, %struct.page**) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @setup_balloon_gfn(i64 %gfn, i8* %data) #0 !dbg !3740 {
entry:
  %gfn.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %info = alloca %struct.map_balloon_pages*, align 8
  store i64 %gfn, i64* %gfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %gfn.addr, metadata !3741, metadata !DIExpression()), !dbg !3742
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3743, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.declare(metadata %struct.map_balloon_pages** %info, metadata !3745, metadata !DIExpression()), !dbg !3747
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3748
  %1 = bitcast i8* %0 to %struct.map_balloon_pages*, !dbg !3748
  store %struct.map_balloon_pages* %1, %struct.map_balloon_pages** %info, align 8, !dbg !3747
  %2 = load i64, i64* %gfn.addr, align 8, !dbg !3749
  %3 = load %struct.map_balloon_pages*, %struct.map_balloon_pages** %info, align 8, !dbg !3750
  %pfns = getelementptr inbounds %struct.map_balloon_pages, %struct.map_balloon_pages* %3, i32 0, i32 0, !dbg !3751
  %4 = load i64*, i64** %pfns, align 8, !dbg !3751
  %5 = load %struct.map_balloon_pages*, %struct.map_balloon_pages** %info, align 8, !dbg !3752
  %idx = getelementptr inbounds %struct.map_balloon_pages, %struct.map_balloon_pages* %5, i32 0, i32 1, !dbg !3753
  %6 = load i32, i32* %idx, align 8, !dbg !3754
  %inc = add i32 %6, 1, !dbg !3754
  store i32 %inc, i32* %idx, align 8, !dbg !3754
  %idxprom = zext i32 %6 to i64, !dbg !3750
  %arrayidx = getelementptr i64, i64* %4, i64 %idxprom, !dbg !3750
  store i64 %2, i64* %arrayidx, align 8, !dbg !3755
  ret void, !dbg !3756
}

; Function Attrs: noredzone
declare dso_local i8* @vmap(%struct.page**, i32, i64, i64) #3

; Function Attrs: noredzone
declare dso_local void @free_xenballooned_pages(i32, %struct.page**) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xen_remap_vma_range(%struct.vm_area_struct* %vma, i64 %addr, i64 %len) #0 !dbg !3757 {
entry:
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  %addr.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %r = alloca %struct.remap_pfn, align 8
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !3760, metadata !DIExpression()), !dbg !3761
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !3762, metadata !DIExpression()), !dbg !3763
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3764, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.declare(metadata %struct.remap_pfn* %r, metadata !3766, metadata !DIExpression()), !dbg !3773
  %mm = getelementptr inbounds %struct.remap_pfn, %struct.remap_pfn* %r, i32 0, i32 0, !dbg !3774
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !3775
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i32 0, i32 6, !dbg !3776
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8, !dbg !3776
  store %struct.mm_struct* %1, %struct.mm_struct** %mm, align 8, !dbg !3774
  %pages = getelementptr inbounds %struct.remap_pfn, %struct.remap_pfn* %r, i32 0, i32 1, !dbg !3774
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !3777
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %2, i32 0, i32 15, !dbg !3778
  %3 = load i8*, i8** %vm_private_data, align 8, !dbg !3778
  %4 = bitcast i8* %3 to %struct.page**, !dbg !3777
  store %struct.page** %4, %struct.page*** %pages, align 8, !dbg !3774
  %prot = getelementptr inbounds %struct.remap_pfn, %struct.remap_pfn* %r, i32 0, i32 2, !dbg !3774
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !3779
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 7, !dbg !3780
  %6 = bitcast %struct.pgprot* %prot to i8*, !dbg !3780
  %7 = bitcast %struct.pgprot* %vm_page_prot to i8*, !dbg !3780
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 8, i1 false), !dbg !3780
  %i = getelementptr inbounds %struct.remap_pfn, %struct.remap_pfn* %r, i32 0, i32 3, !dbg !3774
  store i64 0, i64* %i, align 8, !dbg !3774
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !3781
  %vm_mm1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 6, !dbg !3782
  %9 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm1, align 8, !dbg !3782
  %10 = load i64, i64* %addr.addr, align 8, !dbg !3783
  %11 = load i64, i64* %len.addr, align 8, !dbg !3784
  %12 = bitcast %struct.remap_pfn* %r to i8*, !dbg !3785
  %call = call i32 @apply_to_page_range(%struct.mm_struct* %9, i64 %10, i64 %11, i32 (%struct.pte_t*, i64, i8*)* @remap_pfn_fn, i8* %12) #11, !dbg !3786
  ret i32 %call, !dbg !3787
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @remap_pfn_fn(%struct.pte_t* %ptep, i64 %addr, i8* %data) #0 !dbg !3788 {
entry:
  %ptep.addr = alloca %struct.pte_t*, align 8
  %addr.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %r = alloca %struct.remap_pfn*, align 8
  %page = alloca %struct.page*, align 8
  %pte = alloca %struct.pte_t, align 8
  %agg.tmp = alloca %struct.pte_t, align 8
  store %struct.pte_t* %ptep, %struct.pte_t** %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pte_t** %ptep.addr, metadata !3789, metadata !DIExpression()), !dbg !3790
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !3791, metadata !DIExpression()), !dbg !3792
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3793, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.declare(metadata %struct.remap_pfn** %r, metadata !3795, metadata !DIExpression()), !dbg !3797
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3798
  %1 = bitcast i8* %0 to %struct.remap_pfn*, !dbg !3798
  store %struct.remap_pfn* %1, %struct.remap_pfn** %r, align 8, !dbg !3797
  call void @llvm.dbg.declare(metadata %struct.page** %page, metadata !3799, metadata !DIExpression()), !dbg !3800
  %2 = load %struct.remap_pfn*, %struct.remap_pfn** %r, align 8, !dbg !3801
  %pages = getelementptr inbounds %struct.remap_pfn, %struct.remap_pfn* %2, i32 0, i32 1, !dbg !3802
  %3 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !3802
  %4 = load %struct.remap_pfn*, %struct.remap_pfn** %r, align 8, !dbg !3803
  %i = getelementptr inbounds %struct.remap_pfn, %struct.remap_pfn* %4, i32 0, i32 3, !dbg !3804
  %5 = load i64, i64* %i, align 8, !dbg !3804
  %arrayidx = getelementptr %struct.page*, %struct.page** %3, i64 %5, !dbg !3801
  %6 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !3801
  store %struct.page* %6, %struct.page** %page, align 8, !dbg !3800
  call void @llvm.dbg.declare(metadata %struct.pte_t* %pte, metadata !3805, metadata !DIExpression()), !dbg !3806
  %7 = load %struct.page*, %struct.page** %page, align 8, !dbg !3807
  %8 = load i64, i64* @vmemmap_base, align 8, !dbg !3807
  %9 = inttoptr i64 %8 to %struct.page*, !dbg !3807
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %7 to i64, !dbg !3807
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %9 to i64, !dbg !3807
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3807
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !3807
  %10 = load %struct.remap_pfn*, %struct.remap_pfn** %r, align 8, !dbg !3808
  %prot = getelementptr inbounds %struct.remap_pfn, %struct.remap_pfn* %10, i32 0, i32 2, !dbg !3809
  %coerce.dive = getelementptr inbounds %struct.pgprot, %struct.pgprot* %prot, i32 0, i32 0, !dbg !3810
  %11 = load i64, i64* %coerce.dive, align 8, !dbg !3810
  %call = call i64 @pfn_pte(i64 %sub.ptr.div, i64 %11) #11, !dbg !3810
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %agg.tmp, i32 0, i32 0, !dbg !3810
  store i64 %call, i64* %coerce.dive1, align 8, !dbg !3810
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %agg.tmp, i32 0, i32 0, !dbg !3811
  %12 = load i64, i64* %coerce.dive2, align 8, !dbg !3811
  %call3 = call i64 @pte_mkspecial(i64 %12) #11, !dbg !3811
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0, !dbg !3811
  store i64 %call3, i64* %coerce.dive4, align 8, !dbg !3811
  %13 = load %struct.remap_pfn*, %struct.remap_pfn** %r, align 8, !dbg !3812
  %mm = getelementptr inbounds %struct.remap_pfn, %struct.remap_pfn* %13, i32 0, i32 0, !dbg !3813
  %14 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8, !dbg !3813
  %15 = load i64, i64* %addr.addr, align 8, !dbg !3814
  %16 = load %struct.pte_t*, %struct.pte_t** %ptep.addr, align 8, !dbg !3815
  %coerce.dive5 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0, !dbg !3816
  %17 = load i64, i64* %coerce.dive5, align 8, !dbg !3816
  call void @set_pte_at(%struct.mm_struct* %14, i64 %15, %struct.pte_t* %16, i64 %17) #11, !dbg !3816
  %18 = load %struct.remap_pfn*, %struct.remap_pfn** %r, align 8, !dbg !3817
  %i6 = getelementptr inbounds %struct.remap_pfn, %struct.remap_pfn* %18, i32 0, i32 3, !dbg !3818
  %19 = load i64, i64* %i6, align 8, !dbg !3819
  %inc = add i64 %19, 1, !dbg !3819
  store i64 %inc, i64* %i6, align 8, !dbg !3819
  ret i32 0, !dbg !3820
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pte_mkspecial(i64 %pte.coerce) #0 !dbg !3821 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0
  store i64 %pte.coerce, i64* %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.pte_t* %pte, metadata !3825, metadata !DIExpression()), !dbg !3826
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0, !dbg !3827
  %0 = load i64, i64* %coerce.dive1, align 8, !dbg !3827
  %call = call i64 @pte_set_flags(i64 %0, i64 512) #11, !dbg !3827
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %retval, i32 0, i32 0, !dbg !3827
  store i64 %call, i64* %coerce.dive2, align 8, !dbg !3827
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %retval, i32 0, i32 0, !dbg !3828
  %1 = load i64, i64* %coerce.dive3, align 8, !dbg !3828
  ret i64 %1, !dbg !3828
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_pte(i64 %page_nr, i64 %pgprot.coerce) #0 !dbg !3829 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pgprot = alloca %struct.pgprot, align 8
  %page_nr.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, %struct.pgprot* %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, i64* %coerce.dive, align 8
  store i64 %page_nr, i64* %page_nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %page_nr.addr, metadata !3832, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.declare(metadata %struct.pgprot* %pgprot, metadata !3834, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.declare(metadata i64* %pfn, metadata !3836, metadata !DIExpression()), !dbg !3837
  %0 = load i64, i64* %page_nr.addr, align 8, !dbg !3838
  %shl = shl i64 %0, 12, !dbg !3839
  store i64 %shl, i64* %pfn, align 8, !dbg !3837
  %pgprot1 = getelementptr inbounds %struct.pgprot, %struct.pgprot* %pgprot, i32 0, i32 0, !dbg !3840
  %1 = load i64, i64* %pgprot1, align 8, !dbg !3840
  %call = call i64 @protnone_mask(i64 %1) #11, !dbg !3841
  %2 = load i64, i64* %pfn, align 8, !dbg !3842
  %xor = xor i64 %2, %call, !dbg !3842
  store i64 %xor, i64* %pfn, align 8, !dbg !3842
  %3 = load i64, i64* %pfn, align 8, !dbg !3843
  %and = and i64 %3, 4503599627366400, !dbg !3843
  store i64 %and, i64* %pfn, align 8, !dbg !3843
  %4 = load i64, i64* %pfn, align 8, !dbg !3844
  %coerce.dive2 = getelementptr inbounds %struct.pgprot, %struct.pgprot* %pgprot, i32 0, i32 0, !dbg !3845
  %5 = load i64, i64* %coerce.dive2, align 8, !dbg !3845
  %call3 = call i64 @check_pgprot(i64 %5) #11, !dbg !3845
  %or = or i64 %4, %call3, !dbg !3846
  %call4 = call i64 @__pte(i64 %or) #11, !dbg !3847
  %coerce.dive5 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %retval, i32 0, i32 0, !dbg !3847
  store i64 %call4, i64* %coerce.dive5, align 8, !dbg !3847
  %coerce.dive6 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %retval, i32 0, i32 0, !dbg !3848
  %6 = load i64, i64* %coerce.dive6, align 8, !dbg !3848
  ret i64 %6, !dbg !3848
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @setup_hparams(i64 %gfn, i8* %data) #0 !dbg !3849 {
entry:
  %gfn.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %info = alloca %struct.remap_data*, align 8
  store i64 %gfn, i64* %gfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %gfn.addr, metadata !3850, metadata !DIExpression()), !dbg !3851
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3852, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.declare(metadata %struct.remap_data** %info, metadata !3854, metadata !DIExpression()), !dbg !3855
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3856
  %1 = bitcast i8* %0 to %struct.remap_data*, !dbg !3856
  store %struct.remap_data* %1, %struct.remap_data** %info, align 8, !dbg !3855
  %2 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3857
  %fgfn = getelementptr inbounds %struct.remap_data, %struct.remap_data* %2, i32 0, i32 0, !dbg !3858
  %3 = load i64*, i64** %fgfn, align 8, !dbg !3858
  %4 = load i64, i64* %3, align 8, !dbg !3859
  %5 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3860
  %h_idxs = getelementptr inbounds %struct.remap_data, %struct.remap_data* %5, i32 0, i32 11, !dbg !3861
  %6 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3862
  %h_iter = getelementptr inbounds %struct.remap_data, %struct.remap_data* %6, i32 0, i32 13, !dbg !3863
  %7 = load i32, i32* %h_iter, align 8, !dbg !3863
  %idxprom = sext i32 %7 to i64, !dbg !3860
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %h_idxs, i64 0, i64 %idxprom, !dbg !3860
  store i64 %4, i64* %arrayidx, align 8, !dbg !3864
  %8 = load i64, i64* %gfn.addr, align 8, !dbg !3865
  %9 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3866
  %h_gpfns = getelementptr inbounds %struct.remap_data, %struct.remap_data* %9, i32 0, i32 12, !dbg !3867
  %10 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3868
  %h_iter1 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %10, i32 0, i32 13, !dbg !3869
  %11 = load i32, i32* %h_iter1, align 8, !dbg !3869
  %idxprom2 = sext i32 %11 to i64, !dbg !3866
  %arrayidx3 = getelementptr [1 x i64], [1 x i64]* %h_gpfns, i64 0, i64 %idxprom2, !dbg !3866
  store i64 %8, i64* %arrayidx3, align 8, !dbg !3870
  %12 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3871
  %h_errs = getelementptr inbounds %struct.remap_data, %struct.remap_data* %12, i32 0, i32 10, !dbg !3872
  %13 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3873
  %h_iter4 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %13, i32 0, i32 13, !dbg !3874
  %14 = load i32, i32* %h_iter4, align 8, !dbg !3874
  %idxprom5 = sext i32 %14 to i64, !dbg !3871
  %arrayidx6 = getelementptr [1 x i32], [1 x i32]* %h_errs, i64 0, i64 %idxprom5, !dbg !3871
  store i32 0, i32* %arrayidx6, align 4, !dbg !3875
  %15 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3876
  %h_iter7 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %15, i32 0, i32 13, !dbg !3877
  %16 = load i32, i32* %h_iter7, align 8, !dbg !3878
  %inc = add i32 %16, 1, !dbg !3878
  store i32 %inc, i32* %h_iter7, align 8, !dbg !3878
  %17 = load %struct.remap_data*, %struct.remap_data** %info, align 8, !dbg !3879
  %fgfn8 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %17, i32 0, i32 0, !dbg !3880
  %18 = load i64*, i64** %fgfn8, align 8, !dbg !3881
  %incdec.ptr = getelementptr i64, i64* %18, i32 1, !dbg !3881
  store i64* %incdec.ptr, i64** %fgfn8, align 8, !dbg !3881
  ret void, !dbg !3882
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @HYPERVISOR_memory_op(i32 %cmd, i8* %arg) #0 !dbg !3883 {
entry:
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !3887, metadata !DIExpression()), !dbg !3888
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !3889, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !3891, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !3894, metadata !DIExpression()), !dbg !3893
  %0 = load i64, i64* %__arg1, align 8, !dbg !3893
  store i64 %0, i64* %__arg1, align 8, !dbg !3893
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !3895, metadata !DIExpression()), !dbg !3893
  %1 = load i64, i64* %__arg2, align 8, !dbg !3893
  store i64 %1, i64* %__arg2, align 8, !dbg !3893
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !3896, metadata !DIExpression()), !dbg !3893
  %2 = load i64, i64* %__arg3, align 8, !dbg !3893
  store i64 %2, i64* %__arg3, align 8, !dbg !3893
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !3897, metadata !DIExpression()), !dbg !3893
  %3 = load i64, i64* %__arg4, align 8, !dbg !3893
  store i64 %3, i64* %__arg4, align 8, !dbg !3893
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !3898, metadata !DIExpression()), !dbg !3893
  %4 = load i64, i64* %__arg5, align 8, !dbg !3893
  store i64 %4, i64* %__arg5, align 8, !dbg !3893
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !3893
  %conv = zext i32 %5 to i64, !dbg !3893
  store i64 %conv, i64* %__arg1, align 8, !dbg !3893
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !3893
  %7 = ptrtoint i8* %6 to i64, !dbg !3893
  store i64 %7, i64* %__arg2, align 8, !dbg !3893
  %8 = call i64 @llvm.read_register.i64(metadata !3269), !dbg !3893
  %9 = load i64, i64* %__arg1, align 8, !dbg !3893
  %10 = load i64, i64* %__arg2, align 8, !dbg !3893
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 384, i64 %8, i64 %9, i64 %10) #7, !dbg !3893, !srcloc !3899
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !3893
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !3893
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !3893
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !3893
  store i64 %asmresult, i64* %__res, align 8, !dbg !3893
  call void @llvm.write_register.i64(metadata !3269, i64 %asmresult1), !dbg !3893
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !3893
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !3893
  %12 = load i64, i64* %__res, align 8, !dbg !3893
  store i64 %12, i64* %tmp, align 8, !dbg !3893
  %13 = load i64, i64* %tmp, align 8, !dbg !3893
  ret i64 %13, !dbg !3900
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_pte_at(%struct.mm_struct* %mm, i64 %addr, %struct.pte_t* %ptep, i64 %pte.coerce) #0 !dbg !3901 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %mm.addr = alloca %struct.mm_struct*, align 8
  %addr.addr = alloca i64, align 8
  %ptep.addr = alloca %struct.pte_t*, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0
  store i64 %pte.coerce, i64* %coerce.dive, align 8
  store %struct.mm_struct* %mm, %struct.mm_struct** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mm_struct** %mm.addr, metadata !3904, metadata !DIExpression()), !dbg !3905
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !3906, metadata !DIExpression()), !dbg !3907
  store %struct.pte_t* %ptep, %struct.pte_t** %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pte_t** %ptep.addr, metadata !3908, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.declare(metadata %struct.pte_t* %pte, metadata !3910, metadata !DIExpression()), !dbg !3911
  %0 = load %struct.pte_t*, %struct.pte_t** %ptep.addr, align 8, !dbg !3912
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0, !dbg !3913
  %1 = load i64, i64* %coerce.dive1, align 8, !dbg !3913
  call void @set_pte(%struct.pte_t* %0, i64 %1) #11, !dbg !3913
  ret void, !dbg !3914
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pte_set_flags(i64 %pte.coerce, i64 %set) #0 !dbg !3915 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %set.addr = alloca i64, align 8
  %v = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0
  store i64 %pte.coerce, i64* %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.pte_t* %pte, metadata !3918, metadata !DIExpression()), !dbg !3919
  store i64 %set, i64* %set.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %set.addr, metadata !3920, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.declare(metadata i64* %v, metadata !3922, metadata !DIExpression()), !dbg !3923
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0, !dbg !3924
  %0 = load i64, i64* %coerce.dive1, align 8, !dbg !3924
  %call = call i64 @native_pte_val(i64 %0) #11, !dbg !3924
  store i64 %call, i64* %v, align 8, !dbg !3923
  %1 = load i64, i64* %v, align 8, !dbg !3925
  %2 = load i64, i64* %set.addr, align 8, !dbg !3926
  %or = or i64 %1, %2, !dbg !3927
  %call2 = call i64 @native_make_pte(i64 %or) #11, !dbg !3928
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %retval, i32 0, i32 0, !dbg !3928
  store i64 %call2, i64* %coerce.dive3, align 8, !dbg !3928
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %retval, i32 0, i32 0, !dbg !3929
  %3 = load i64, i64* %coerce.dive4, align 8, !dbg !3929
  ret i64 %3, !dbg !3929
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @native_pte_val(i64 %pte.coerce) #0 !dbg !3930 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0
  store i64 %pte.coerce, i64* %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.pte_t* %pte, metadata !3933, metadata !DIExpression()), !dbg !3934
  %pte1 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0, !dbg !3935
  %0 = load i64, i64* %pte1, align 8, !dbg !3935
  ret i64 %0, !dbg !3936
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @native_make_pte(i64 %val) #0 !dbg !3937 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !3940, metadata !DIExpression()), !dbg !3941
  %pte = getelementptr inbounds %struct.pte_t, %struct.pte_t* %retval, i32 0, i32 0, !dbg !3942
  %0 = load i64, i64* %val.addr, align 8, !dbg !3943
  store i64 %0, i64* %pte, align 8, !dbg !3942
  %coerce.dive = getelementptr inbounds %struct.pte_t, %struct.pte_t* %retval, i32 0, i32 0, !dbg !3944
  %1 = load i64, i64* %coerce.dive, align 8, !dbg !3944
  ret i64 %1, !dbg !3944
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @protnone_mask(i64 %val) #0 !dbg !3945 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !3949, metadata !DIExpression()), !dbg !3950
  %0 = load i64, i64* %val.addr, align 8, !dbg !3951
  %call = call zeroext i1 @__pte_needs_invert(i64 %0) #11, !dbg !3952
  %1 = zext i1 %call to i64, !dbg !3952
  %cond = select i1 %call, i64 -1, i64 0, !dbg !3952
  ret i64 %cond, !dbg !3953
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__pte(i64 %val) #0 !dbg !3954 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %val.addr = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !3956, metadata !DIExpression()), !dbg !3957
  %pte = getelementptr inbounds %struct.pte_t, %struct.pte_t* %retval, i32 0, i32 0, !dbg !3958
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3959, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3962, metadata !DIExpression()), !dbg !3961
  %0 = load i64, i64* %__edi, align 8, !dbg !3961
  store i64 %0, i64* %__edi, align 8, !dbg !3961
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3963, metadata !DIExpression()), !dbg !3961
  %1 = load i64, i64* %__esi, align 8, !dbg !3961
  store i64 %1, i64* %__esi, align 8, !dbg !3961
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3964, metadata !DIExpression()), !dbg !3961
  %2 = load i64, i64* %__edx, align 8, !dbg !3961
  store i64 %2, i64* %__edx, align 8, !dbg !3961
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3965, metadata !DIExpression()), !dbg !3961
  %3 = load i64, i64* %__ecx, align 8, !dbg !3961
  store i64 %3, i64* %__ecx, align 8, !dbg !3961
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3966, metadata !DIExpression()), !dbg !3961
  %4 = load i64, i64* %__eax, align 8, !dbg !3961
  store i64 %4, i64* %__eax, align 8, !dbg !3961
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 4, i32 27, i32 0), align 8, !dbg !3961
  %6 = call i64 @llvm.read_register.i64(metadata !3269), !dbg !3967
  %7 = load i64, i64* %val.addr, align 8, !dbg !3967
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 69, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 4, i32 27, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !3967, !srcloc !3970
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !3967
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !3967
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3967
  call void @llvm.write_register.i64(metadata !3269, i64 %asmresult1), !dbg !3967
  %9 = load i64, i64* %__eax, align 8, !dbg !3967
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3971, metadata !DIExpression()), !dbg !3973
  store i64 -1, i64* %__mask, align 8, !dbg !3973
  %10 = load i64, i64* %__mask, align 8, !dbg !3973
  store i64 %10, i64* %tmp, align 8, !dbg !3973
  %11 = load i64, i64* %tmp, align 8, !dbg !3973
  %and = and i64 %9, %11, !dbg !3967
  store i64 %and, i64* %__ret, align 8, !dbg !3967
  %12 = load i64, i64* %__ret, align 8, !dbg !3961
  store i64 %12, i64* %tmp2, align 8, !dbg !3974
  %13 = load i64, i64* %tmp2, align 8, !dbg !3961
  store i64 %13, i64* %pte, align 8, !dbg !3958
  %coerce.dive = getelementptr inbounds %struct.pte_t, %struct.pte_t* %retval, i32 0, i32 0, !dbg !3975
  %14 = load i64, i64* %coerce.dive, align 8, !dbg !3975
  ret i64 %14, !dbg !3975
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @check_pgprot(i64 %pgprot.coerce) #0 !dbg !3976 {
entry:
  %pgprot = alloca %struct.pgprot, align 8
  %massaged_val = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, %struct.pgprot* %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, i64* %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.pgprot* %pgprot, metadata !3979, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.declare(metadata i64* %massaged_val, metadata !3981, metadata !DIExpression()), !dbg !3982
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, %struct.pgprot* %pgprot, i32 0, i32 0, !dbg !3983
  %0 = load i64, i64* %coerce.dive1, align 8, !dbg !3983
  %call = call i64 @massage_pgprot(i64 %0) #11, !dbg !3983
  store i64 %call, i64* %massaged_val, align 8, !dbg !3982
  %1 = load i64, i64* %massaged_val, align 8, !dbg !3984
  ret i64 %1, !dbg !3985
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__pte_needs_invert(i64 %val) #0 !dbg !3986 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !3989, metadata !DIExpression()), !dbg !3990
  %0 = load i64, i64* %val.addr, align 8, !dbg !3991
  %tobool = icmp ne i64 %0, 0, !dbg !3991
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !3992

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %val.addr, align 8, !dbg !3993
  %and = and i64 %1, 1, !dbg !3994
  %tobool1 = icmp ne i64 %and, 0, !dbg !3995
  %lnot = xor i1 %tobool1, true, !dbg !3995
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !3996
  ret i1 %2, !dbg !3997
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @massage_pgprot(i64 %pgprot.coerce) #0 !dbg !3998 {
entry:
  %pgprot = alloca %struct.pgprot, align 8
  %protval = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, %struct.pgprot* %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, i64* %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.pgprot* %pgprot, metadata !3999, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.declare(metadata i64* %protval, metadata !4001, metadata !DIExpression()), !dbg !4002
  %pgprot1 = getelementptr inbounds %struct.pgprot, %struct.pgprot* %pgprot, i32 0, i32 0, !dbg !4003
  %0 = load i64, i64* %pgprot1, align 8, !dbg !4003
  store i64 %0, i64* %protval, align 8, !dbg !4002
  %1 = load i64, i64* %protval, align 8, !dbg !4004
  %and = and i64 %1, 1, !dbg !4006
  %tobool = icmp ne i64 %and, 0, !dbg !4006
  br i1 %tobool, label %if.then, label %if.end, !dbg !4007

if.then:                                          ; preds = %entry
  %2 = load i64, i64* @__supported_pte_mask, align 8, !dbg !4008
  %3 = load i64, i64* %protval, align 8, !dbg !4009
  %and2 = and i64 %3, %2, !dbg !4009
  store i64 %and2, i64* %protval, align 8, !dbg !4009
  br label %if.end, !dbg !4010

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %protval, align 8, !dbg !4011
  ret i64 %4, !dbg !4012
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_pte(%struct.pte_t* %ptep, i64 %pte.coerce) #0 !dbg !4013 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %ptep.addr = alloca %struct.pte_t*, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0
  store i64 %pte.coerce, i64* %coerce.dive, align 8
  store %struct.pte_t* %ptep, %struct.pte_t** %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pte_t** %ptep.addr, metadata !4016, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.declare(metadata %struct.pte_t* %pte, metadata !4018, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4020, metadata !DIExpression()), !dbg !4022
  %0 = load i64, i64* %__edi, align 8, !dbg !4022
  store i64 %0, i64* %__edi, align 8, !dbg !4022
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4023, metadata !DIExpression()), !dbg !4022
  %1 = load i64, i64* %__esi, align 8, !dbg !4022
  store i64 %1, i64* %__esi, align 8, !dbg !4022
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4024, metadata !DIExpression()), !dbg !4022
  %2 = load i64, i64* %__edx, align 8, !dbg !4022
  store i64 %2, i64* %__edx, align 8, !dbg !4022
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4025, metadata !DIExpression()), !dbg !4022
  %3 = load i64, i64* %__ecx, align 8, !dbg !4022
  store i64 %3, i64* %__ecx, align 8, !dbg !4022
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4026, metadata !DIExpression()), !dbg !4022
  %4 = load i64, i64* %__eax, align 8, !dbg !4022
  store i64 %4, i64* %__eax, align 8, !dbg !4022
  %5 = load void (%struct.pte_t*, i64)*, void (%struct.pte_t*, i64)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 4, i32 22), align 8, !dbg !4022
  %6 = call i64 @llvm.read_register.i64(metadata !3269), !dbg !4022
  %7 = load %struct.pte_t*, %struct.pte_t** %ptep.addr, align 8, !dbg !4022
  %8 = ptrtoint %struct.pte_t* %7 to i64, !dbg !4022
  %pte1 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i32 0, i32 0, !dbg !4022
  %9 = load i64, i64* %pte1, align 8, !dbg !4022
  %10 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,{di},{si},4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 64, void (%struct.pte_t*, i64)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 4, i32 22), i32 511, i64 %8, i64 %9, i64 %6) #7, !dbg !4022, !srcloc !4027
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %10, 0, !dbg !4022
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %10, 1, !dbg !4022
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %10, 2, !dbg !4022
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %10, 3, !dbg !4022
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64 } %10, 4, !dbg !4022
  store i64 %asmresult, i64* %__edi, align 8, !dbg !4022
  store i64 %asmresult2, i64* %__esi, align 8, !dbg !4022
  store i64 %asmresult3, i64* %__edx, align 8, !dbg !4022
  store i64 %asmresult4, i64* %__ecx, align 8, !dbg !4022
  call void @llvm.write_register.i64(metadata !3269, i64 %asmresult5), !dbg !4022
  ret void, !dbg !4028
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_gfn(i64 %pfn) #0 !dbg !4029 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !4033, metadata !DIExpression()), !dbg !4034
  %call = call i32 @xen_feature(i32 2) #11, !dbg !4035
  %tobool = icmp ne i32 %call, 0, !dbg !4035
  br i1 %tobool, label %if.then, label %if.else, !dbg !4037

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !4038
  store i64 %0, i64* %retval, align 8, !dbg !4039
  br label %return, !dbg !4039

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !4040
  %call1 = call i64 @pfn_to_mfn(i64 %1) #11, !dbg !4041
  store i64 %call1, i64* %retval, align 8, !dbg !4042
  br label %return, !dbg !4042

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !4043
  ret i64 %2, !dbg !4043
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_feature(i32 %flag) #0 !dbg !4044 {
entry:
  %flag.addr = alloca i32, align 4
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !4046, metadata !DIExpression()), !dbg !4047
  %0 = load i32, i32* %flag.addr, align 4, !dbg !4048
  %idxprom = sext i32 %0 to i64, !dbg !4049
  %arrayidx = getelementptr [32 x i8], [32 x i8]* @xen_features, i64 0, i64 %idxprom, !dbg !4049
  %1 = load i8, i8* %arrayidx, align 1, !dbg !4049
  %conv = zext i8 %1 to i32, !dbg !4049
  ret i32 %conv, !dbg !4050
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_mfn(i64 %pfn) #0 !dbg !4051 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !4052, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !4054, metadata !DIExpression()), !dbg !4055
  %call = call i32 @xen_feature(i32 2) #11, !dbg !4056
  %tobool = icmp ne i32 %call, 0, !dbg !4056
  br i1 %tobool, label %if.then, label %if.end, !dbg !4058

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !4059
  store i64 %0, i64* %retval, align 8, !dbg !4060
  br label %return, !dbg !4060

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !4061
  %call1 = call i64 @__pfn_to_mfn(i64 %1) #11, !dbg !4062
  store i64 %call1, i64* %mfn, align 8, !dbg !4063
  %2 = load i64, i64* %mfn, align 8, !dbg !4064
  %cmp = icmp ne i64 %2, -1, !dbg !4066
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4067

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %mfn, align 8, !dbg !4068
  %and = and i64 %3, 4611686018427387903, !dbg !4068
  store i64 %and, i64* %mfn, align 8, !dbg !4068
  br label %if.end3, !dbg !4069

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %mfn, align 8, !dbg !4070
  store i64 %4, i64* %retval, align 8, !dbg !4071
  br label %return, !dbg !4071

return:                                           ; preds = %if.end3, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !4072
  ret i64 %5, !dbg !4072
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__pfn_to_mfn(i64 %pfn) #0 !dbg !4073 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !4074, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !4076, metadata !DIExpression()), !dbg !4077
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !4078
  %1 = load i64, i64* @xen_p2m_size, align 8, !dbg !4080
  %cmp = icmp ult i64 %0, %1, !dbg !4081
  br i1 %cmp, label %if.then, label %if.else, !dbg !4082

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** @xen_p2m_addr, align 8, !dbg !4083
  %3 = load i64, i64* %pfn.addr, align 8, !dbg !4084
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !4083
  %4 = load i64, i64* %arrayidx, align 8, !dbg !4083
  store i64 %4, i64* %mfn, align 8, !dbg !4085
  br label %if.end, !dbg !4086

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %pfn.addr, align 8, !dbg !4087
  %6 = load i64, i64* @xen_max_p2m_pfn, align 8, !dbg !4087
  %cmp1 = icmp ult i64 %5, %6, !dbg !4087
  %lnot = xor i1 %cmp1, true, !dbg !4087
  %lnot2 = xor i1 %lnot, true, !dbg !4087
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4087
  %conv = sext i32 %lnot.ext to i64, !dbg !4087
  %tobool = icmp ne i64 %conv, 0, !dbg !4087
  br i1 %tobool, label %if.then3, label %if.else4, !dbg !4089

if.then3:                                         ; preds = %if.else
  %7 = load i64, i64* %pfn.addr, align 8, !dbg !4090
  %call = call i64 @get_phys_to_machine(i64 %7) #11, !dbg !4091
  store i64 %call, i64* %retval, align 8, !dbg !4092
  br label %return, !dbg !4092

if.else4:                                         ; preds = %if.else
  %8 = load i64, i64* %pfn.addr, align 8, !dbg !4093
  %or = or i64 %8, 4611686018427387904, !dbg !4093
  store i64 %or, i64* %retval, align 8, !dbg !4094
  br label %return, !dbg !4094

if.end:                                           ; preds = %if.then
  %9 = load i64, i64* %mfn, align 8, !dbg !4095
  %cmp5 = icmp eq i64 %9, -1, !dbg !4095
  %lnot7 = xor i1 %cmp5, true, !dbg !4095
  %lnot9 = xor i1 %lnot7, true, !dbg !4095
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !4095
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !4095
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !4095
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !4097

if.then13:                                        ; preds = %if.end
  %10 = load i64, i64* %pfn.addr, align 8, !dbg !4098
  %call14 = call i64 @get_phys_to_machine(i64 %10) #11, !dbg !4099
  store i64 %call14, i64* %retval, align 8, !dbg !4100
  br label %return, !dbg !4100

if.end15:                                         ; preds = %if.end
  %11 = load i64, i64* %mfn, align 8, !dbg !4101
  store i64 %11, i64* %retval, align 8, !dbg !4102
  br label %return, !dbg !4102

return:                                           ; preds = %if.end15, %if.then13, %if.else4, %if.then3
  %12 = load i64, i64* %retval, align 8, !dbg !4103
  ret i64 %12, !dbg !4103
}

; Function Attrs: noredzone
declare dso_local i64 @get_phys_to_machine(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !4104 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4105, metadata !DIExpression()), !dbg !4109
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4118, metadata !DIExpression()), !dbg !4119
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4120, metadata !DIExpression()), !dbg !4121
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4122, metadata !DIExpression()), !dbg !4123
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4124, metadata !DIExpression()), !dbg !4128
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4130, metadata !DIExpression()), !dbg !4134
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4136, metadata !DIExpression()), !dbg !4140
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4145, metadata !DIExpression()), !dbg !4146
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4147, metadata !DIExpression()), !dbg !4148
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4149, metadata !DIExpression()), !dbg !4150
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4151, metadata !DIExpression()), !dbg !4152
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4153, metadata !DIExpression()), !dbg !4154
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4155, metadata !DIExpression()), !dbg !4156
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4157, metadata !DIExpression()), !dbg !4158
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4159, metadata !DIExpression()), !dbg !4160
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4161, metadata !DIExpression()), !dbg !4162
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4163, metadata !DIExpression()), !dbg !4164
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4165, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4167, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4169, metadata !DIExpression()), !dbg !4172
  %0 = load i64, i64* %n.addr, align 8, !dbg !4172
  store i64 %0, i64* %__a, align 8, !dbg !4172
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4173, metadata !DIExpression()), !dbg !4172
  %1 = load i64, i64* %size.addr, align 8, !dbg !4172
  store i64 %1, i64* %__b, align 8, !dbg !4172
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4174, metadata !DIExpression()), !dbg !4172
  store i64* %bytes, i64** %__d, align 8, !dbg !4172
  %cmp = icmp eq i64* %__a, %__b, !dbg !4172
  %conv = zext i1 %cmp to i32, !dbg !4172
  %2 = load i64*, i64** %__d, align 8, !dbg !4172
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4172
  %conv2 = zext i1 %cmp1 to i32, !dbg !4172
  %3 = load i64, i64* %__a, align 8, !dbg !4172
  %4 = load i64, i64* %__b, align 8, !dbg !4172
  %5 = load i64*, i64** %__d, align 8, !dbg !4172
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4172
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4172
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4172
  store i64 %8, i64* %5, align 8, !dbg !4172
  %frombool = zext i1 %7 to i8, !dbg !4172
  store i8 %frombool, i8* %tmp, align 1, !dbg !4172
  %9 = load i8, i8* %tmp, align 1, !dbg !4172
  %tobool = trunc i8 %9 to i1, !dbg !4172
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #11, !dbg !4176
  %lnot = xor i1 %call, true, !dbg !4176
  %lnot3 = xor i1 %lnot, true, !dbg !4176
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4176
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4176
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4176
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4177

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4178
  br label %return, !dbg !4178

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4179
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4180
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4181

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4182
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4183
  br i1 %13, label %if.then6, label %if.end8, !dbg !4184

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4185
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4186
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4187
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #7, !dbg !4188
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4189

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4190
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4191
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4192

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4193
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4194
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4195
  %call.i.i = call i32 @get_order(i64 %21) #13, !dbg !4196
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4154
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4197
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4198
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4199
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4200
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4201
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4202
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #14, !dbg !4203
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4203
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4203
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4203
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !4203
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4204
  br label %kmalloc.exit, !dbg !4204

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4205
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4206
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4206
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4208

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4209
  br label %kmalloc_index.exit.i, !dbg !4209

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4210
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4212
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4213

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4214
  br label %kmalloc_index.exit.i, !dbg !4214

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4215
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4217
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4218

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4219
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4220
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4221

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4222
  br label %kmalloc_index.exit.i, !dbg !4222

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4223
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !4225
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4226

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4227
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !4228
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4229

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4230
  br label %kmalloc_index.exit.i, !dbg !4230

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4231
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !4233
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4234

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4235
  br label %kmalloc_index.exit.i, !dbg !4235

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4236
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !4238
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4239

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4240
  br label %kmalloc_index.exit.i, !dbg !4240

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4241
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !4243
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4244

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4245
  br label %kmalloc_index.exit.i, !dbg !4245

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4246
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !4248
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4249

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4250
  br label %kmalloc_index.exit.i, !dbg !4250

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4251
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !4253
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4254

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4255
  br label %kmalloc_index.exit.i, !dbg !4255

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4256
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !4258
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4259

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4260
  br label %kmalloc_index.exit.i, !dbg !4260

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4261
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !4263
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4264

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4265
  br label %kmalloc_index.exit.i, !dbg !4265

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4266
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !4268
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4269

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4270
  br label %kmalloc_index.exit.i, !dbg !4270

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4271
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !4273
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4274

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4275
  br label %kmalloc_index.exit.i, !dbg !4275

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4276
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !4278
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4279

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4280
  br label %kmalloc_index.exit.i, !dbg !4280

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4281
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !4283
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4284

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4285
  br label %kmalloc_index.exit.i, !dbg !4285

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4286
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !4288
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4289

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4290
  br label %kmalloc_index.exit.i, !dbg !4290

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4291
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !4293
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4294

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4295
  br label %kmalloc_index.exit.i, !dbg !4295

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4296
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !4298
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4299

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4300
  br label %kmalloc_index.exit.i, !dbg !4300

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4301
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !4303
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4304

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4305
  br label %kmalloc_index.exit.i, !dbg !4305

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4306
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !4308
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4309

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4310
  br label %kmalloc_index.exit.i, !dbg !4310

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4311
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !4313
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4314

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4315
  br label %kmalloc_index.exit.i, !dbg !4315

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4316
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !4318
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4319

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4320
  br label %kmalloc_index.exit.i, !dbg !4320

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4321
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !4323
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4324

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4325
  br label %kmalloc_index.exit.i, !dbg !4325

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4326
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !4328
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4329

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4330
  br label %kmalloc_index.exit.i, !dbg !4330

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4331
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !4333
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4334

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4335
  br label %kmalloc_index.exit.i, !dbg !4335

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4336
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !4338
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4339

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4340
  br label %kmalloc_index.exit.i, !dbg !4340

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4341
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !4343
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4344

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4345
  br label %kmalloc_index.exit.i, !dbg !4345

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4346
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !4348
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4349

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4350
  br label %kmalloc_index.exit.i, !dbg !4350

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !4351, !srcloc !4354
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 214) #7, !dbg !4355, !srcloc !4358
  unreachable, !dbg !4359

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !4360
  store i32 %59, i32* %index.i, align 4, !dbg !4361
  %60 = load i32, i32* %index.i, align 4, !dbg !4362
  %tobool.i = icmp ne i32 %60, 0, !dbg !4362
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4364

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4365
  br label %kmalloc.exit, !dbg !4365

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !4366
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4367
  %and.i.i = and i32 %62, 17, !dbg !4367
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4367
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4367
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4367
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4367
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4369

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4370
  br label %kmalloc_type.exit.i, !dbg !4370

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4371
  %and2.i.i = and i32 %63, 1, !dbg !4372
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4371
  %64 = zext i1 %tobool3.i.i to i64, !dbg !4371
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4371
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4373
  br label %kmalloc_type.exit.i, !dbg !4373

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !4374
  %idxprom.i = zext i32 %65 to i64, !dbg !4375
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4375
  %66 = load i32, i32* %index.i, align 4, !dbg !4376
  %idxprom6.i = zext i32 %66 to i64, !dbg !4375
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4375
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4375
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !4377
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !4378
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4379
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4380
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #14, !dbg !4381
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4381
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4381
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4381
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !4381
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4123
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4382
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !4383
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4384
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4385
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #14, !dbg !4386
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4387
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !4388
  store i8* %76, i8** %retval.i, align 8, !dbg !4389
  br label %kmalloc.exit, !dbg !4389

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !4390
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !4391
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #14, !dbg !4392
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4392
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4392
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4392
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !4392
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4393
  br label %kmalloc.exit, !dbg !4393

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !4394
  store i8* %79, i8** %retval, align 8, !dbg !4395
  br label %return, !dbg !4395

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !4396
  %81 = load i32, i32* %flags.addr, align 4, !dbg !4397
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #11, !dbg !4398
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !4398
  %maskedptr = and i64 %ptrint, 7, !dbg !4398
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !4398
  call void @llvm.assume(i1 %maskcond), !dbg !4398
  store i8* %call9, i8** %retval, align 8, !dbg !4399
  br label %return, !dbg !4399

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !4400
  ret i8* %82, !dbg !4400
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !4401 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4405, metadata !DIExpression()), !dbg !4406
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4407
  %tobool = trunc i8 %0 to i1, !dbg !4407
  %lnot = xor i1 %tobool, true, !dbg !4407
  %lnot1 = xor i1 %lnot, true, !dbg !4407
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4407
  %conv = sext i32 %lnot.ext to i64, !dbg !4407
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4407
  ret i1 %tobool2, !dbg !4408
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #9

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #10 !dbg !4409 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4413, metadata !DIExpression()), !dbg !4418
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4420, metadata !DIExpression()), !dbg !4421
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4422, metadata !DIExpression()), !dbg !4423
  %0 = load i64, i64* %size.addr, align 8, !dbg !4424
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4426
  br i1 %1, label %if.then, label %if.end447, !dbg !4427

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4428
  %tobool = icmp ne i64 %2, 0, !dbg !4428
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4431

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4432
  br label %return, !dbg !4432

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4433
  %cmp = icmp ult i64 %3, 4096, !dbg !4435
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4436

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4437
  br label %return, !dbg !4437

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub = sub i64 %4, 1, !dbg !4438
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4438
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4438

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub4 = sub i64 %6, 1, !dbg !4438
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4438
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4438

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub6 = sub i64 %8, 1, !dbg !4438
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4438
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4438

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4438

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub9 = sub i64 %9, 1, !dbg !4438
  %and = and i64 %sub9, -9223372036854775808, !dbg !4438
  %tobool10 = icmp ne i64 %and, 0, !dbg !4438
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4438

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4438

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub13 = sub i64 %10, 1, !dbg !4438
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4438
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4438
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4438

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4438

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub18 = sub i64 %11, 1, !dbg !4438
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4438
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4438
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4438

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4438

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub23 = sub i64 %12, 1, !dbg !4438
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4438
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4438
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4438

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4438

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub28 = sub i64 %13, 1, !dbg !4438
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4438
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4438
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4438

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4438

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub33 = sub i64 %14, 1, !dbg !4438
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4438
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4438
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4438

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4438

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub38 = sub i64 %15, 1, !dbg !4438
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4438
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4438
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4438

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4438

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub43 = sub i64 %16, 1, !dbg !4438
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4438
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4438
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4438

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4438

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub48 = sub i64 %17, 1, !dbg !4438
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4438
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4438
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4438

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4438

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub53 = sub i64 %18, 1, !dbg !4438
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4438
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4438
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4438

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4438

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub58 = sub i64 %19, 1, !dbg !4438
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4438
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4438
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4438

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4438

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub63 = sub i64 %20, 1, !dbg !4438
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4438
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4438
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4438

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4438

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub68 = sub i64 %21, 1, !dbg !4438
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4438
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4438
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4438

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4438

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub73 = sub i64 %22, 1, !dbg !4438
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4438
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4438
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4438

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4438

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub78 = sub i64 %23, 1, !dbg !4438
  %and79 = and i64 %sub78, 562949953421312, !dbg !4438
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4438
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4438

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4438

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub83 = sub i64 %24, 1, !dbg !4438
  %and84 = and i64 %sub83, 281474976710656, !dbg !4438
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4438
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4438

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4438

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub88 = sub i64 %25, 1, !dbg !4438
  %and89 = and i64 %sub88, 140737488355328, !dbg !4438
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4438
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4438

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4438

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub93 = sub i64 %26, 1, !dbg !4438
  %and94 = and i64 %sub93, 70368744177664, !dbg !4438
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4438
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4438

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4438

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub98 = sub i64 %27, 1, !dbg !4438
  %and99 = and i64 %sub98, 35184372088832, !dbg !4438
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4438
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4438

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4438

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub103 = sub i64 %28, 1, !dbg !4438
  %and104 = and i64 %sub103, 17592186044416, !dbg !4438
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4438
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4438

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4438

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub108 = sub i64 %29, 1, !dbg !4438
  %and109 = and i64 %sub108, 8796093022208, !dbg !4438
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4438
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4438

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4438

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub113 = sub i64 %30, 1, !dbg !4438
  %and114 = and i64 %sub113, 4398046511104, !dbg !4438
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4438
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4438

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4438

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub118 = sub i64 %31, 1, !dbg !4438
  %and119 = and i64 %sub118, 2199023255552, !dbg !4438
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4438
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4438

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4438

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub123 = sub i64 %32, 1, !dbg !4438
  %and124 = and i64 %sub123, 1099511627776, !dbg !4438
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4438
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4438

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4438

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub128 = sub i64 %33, 1, !dbg !4438
  %and129 = and i64 %sub128, 549755813888, !dbg !4438
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4438
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4438

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4438

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub133 = sub i64 %34, 1, !dbg !4438
  %and134 = and i64 %sub133, 274877906944, !dbg !4438
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4438
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4438

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4438

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub138 = sub i64 %35, 1, !dbg !4438
  %and139 = and i64 %sub138, 137438953472, !dbg !4438
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4438
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4438

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4438

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub143 = sub i64 %36, 1, !dbg !4438
  %and144 = and i64 %sub143, 68719476736, !dbg !4438
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4438
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4438

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4438

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub148 = sub i64 %37, 1, !dbg !4438
  %and149 = and i64 %sub148, 34359738368, !dbg !4438
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4438
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4438

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4438

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub153 = sub i64 %38, 1, !dbg !4438
  %and154 = and i64 %sub153, 17179869184, !dbg !4438
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4438
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4438

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4438

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub158 = sub i64 %39, 1, !dbg !4438
  %and159 = and i64 %sub158, 8589934592, !dbg !4438
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4438
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4438

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4438

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub163 = sub i64 %40, 1, !dbg !4438
  %and164 = and i64 %sub163, 4294967296, !dbg !4438
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4438
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4438

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4438

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub168 = sub i64 %41, 1, !dbg !4438
  %and169 = and i64 %sub168, 2147483648, !dbg !4438
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4438
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4438

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4438

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub173 = sub i64 %42, 1, !dbg !4438
  %and174 = and i64 %sub173, 1073741824, !dbg !4438
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4438
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4438

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4438

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub178 = sub i64 %43, 1, !dbg !4438
  %and179 = and i64 %sub178, 536870912, !dbg !4438
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4438
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4438

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4438

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub183 = sub i64 %44, 1, !dbg !4438
  %and184 = and i64 %sub183, 268435456, !dbg !4438
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4438
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4438

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4438

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub188 = sub i64 %45, 1, !dbg !4438
  %and189 = and i64 %sub188, 134217728, !dbg !4438
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4438
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4438

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4438

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub193 = sub i64 %46, 1, !dbg !4438
  %and194 = and i64 %sub193, 67108864, !dbg !4438
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4438
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4438

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4438

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub198 = sub i64 %47, 1, !dbg !4438
  %and199 = and i64 %sub198, 33554432, !dbg !4438
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4438
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4438

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4438

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub203 = sub i64 %48, 1, !dbg !4438
  %and204 = and i64 %sub203, 16777216, !dbg !4438
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4438
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4438

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4438

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub208 = sub i64 %49, 1, !dbg !4438
  %and209 = and i64 %sub208, 8388608, !dbg !4438
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4438
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4438

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4438

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub213 = sub i64 %50, 1, !dbg !4438
  %and214 = and i64 %sub213, 4194304, !dbg !4438
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4438
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4438

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4438

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub218 = sub i64 %51, 1, !dbg !4438
  %and219 = and i64 %sub218, 2097152, !dbg !4438
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4438
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4438

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4438

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub223 = sub i64 %52, 1, !dbg !4438
  %and224 = and i64 %sub223, 1048576, !dbg !4438
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4438
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4438

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4438

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub228 = sub i64 %53, 1, !dbg !4438
  %and229 = and i64 %sub228, 524288, !dbg !4438
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4438
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4438

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4438

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub233 = sub i64 %54, 1, !dbg !4438
  %and234 = and i64 %sub233, 262144, !dbg !4438
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4438
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4438

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4438

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub238 = sub i64 %55, 1, !dbg !4438
  %and239 = and i64 %sub238, 131072, !dbg !4438
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4438
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4438

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4438

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub243 = sub i64 %56, 1, !dbg !4438
  %and244 = and i64 %sub243, 65536, !dbg !4438
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4438
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4438

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4438

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub248 = sub i64 %57, 1, !dbg !4438
  %and249 = and i64 %sub248, 32768, !dbg !4438
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4438
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4438

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4438

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub253 = sub i64 %58, 1, !dbg !4438
  %and254 = and i64 %sub253, 16384, !dbg !4438
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4438
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4438

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4438

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub258 = sub i64 %59, 1, !dbg !4438
  %and259 = and i64 %sub258, 8192, !dbg !4438
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4438
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4438

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4438

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub263 = sub i64 %60, 1, !dbg !4438
  %and264 = and i64 %sub263, 4096, !dbg !4438
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4438
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4438

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4438

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub268 = sub i64 %61, 1, !dbg !4438
  %and269 = and i64 %sub268, 2048, !dbg !4438
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4438
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4438

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4438

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub273 = sub i64 %62, 1, !dbg !4438
  %and274 = and i64 %sub273, 1024, !dbg !4438
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4438
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4438

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4438

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub278 = sub i64 %63, 1, !dbg !4438
  %and279 = and i64 %sub278, 512, !dbg !4438
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4438
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4438

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4438

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub283 = sub i64 %64, 1, !dbg !4438
  %and284 = and i64 %sub283, 256, !dbg !4438
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4438
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4438

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4438

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub288 = sub i64 %65, 1, !dbg !4438
  %and289 = and i64 %sub288, 128, !dbg !4438
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4438
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4438

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4438

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub293 = sub i64 %66, 1, !dbg !4438
  %and294 = and i64 %sub293, 64, !dbg !4438
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4438
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4438

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4438

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub298 = sub i64 %67, 1, !dbg !4438
  %and299 = and i64 %sub298, 32, !dbg !4438
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4438
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4438

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4438

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub303 = sub i64 %68, 1, !dbg !4438
  %and304 = and i64 %sub303, 16, !dbg !4438
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4438
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4438

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4438

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub308 = sub i64 %69, 1, !dbg !4438
  %and309 = and i64 %sub308, 8, !dbg !4438
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4438
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4438

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4438

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub313 = sub i64 %70, 1, !dbg !4438
  %and314 = and i64 %sub313, 4, !dbg !4438
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4438
  %71 = zext i1 %tobool315 to i64, !dbg !4438
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4438
  br label %cond.end, !dbg !4438

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4438
  br label %cond.end317, !dbg !4438

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4438
  br label %cond.end319, !dbg !4438

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4438
  br label %cond.end321, !dbg !4438

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4438
  br label %cond.end323, !dbg !4438

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4438
  br label %cond.end325, !dbg !4438

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4438
  br label %cond.end327, !dbg !4438

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4438
  br label %cond.end329, !dbg !4438

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4438
  br label %cond.end331, !dbg !4438

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4438
  br label %cond.end333, !dbg !4438

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4438
  br label %cond.end335, !dbg !4438

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4438
  br label %cond.end337, !dbg !4438

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4438
  br label %cond.end339, !dbg !4438

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4438
  br label %cond.end341, !dbg !4438

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4438
  br label %cond.end343, !dbg !4438

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4438
  br label %cond.end345, !dbg !4438

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4438
  br label %cond.end347, !dbg !4438

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4438
  br label %cond.end349, !dbg !4438

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4438
  br label %cond.end351, !dbg !4438

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4438
  br label %cond.end353, !dbg !4438

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4438
  br label %cond.end355, !dbg !4438

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4438
  br label %cond.end357, !dbg !4438

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4438
  br label %cond.end359, !dbg !4438

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4438
  br label %cond.end361, !dbg !4438

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4438
  br label %cond.end363, !dbg !4438

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4438
  br label %cond.end365, !dbg !4438

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4438
  br label %cond.end367, !dbg !4438

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4438
  br label %cond.end369, !dbg !4438

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4438
  br label %cond.end371, !dbg !4438

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4438
  br label %cond.end373, !dbg !4438

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4438
  br label %cond.end375, !dbg !4438

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4438
  br label %cond.end377, !dbg !4438

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4438
  br label %cond.end379, !dbg !4438

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4438
  br label %cond.end381, !dbg !4438

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4438
  br label %cond.end383, !dbg !4438

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4438
  br label %cond.end385, !dbg !4438

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4438
  br label %cond.end387, !dbg !4438

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4438
  br label %cond.end389, !dbg !4438

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4438
  br label %cond.end391, !dbg !4438

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4438
  br label %cond.end393, !dbg !4438

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4438
  br label %cond.end395, !dbg !4438

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4438
  br label %cond.end397, !dbg !4438

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4438
  br label %cond.end399, !dbg !4438

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4438
  br label %cond.end401, !dbg !4438

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4438
  br label %cond.end403, !dbg !4438

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4438
  br label %cond.end405, !dbg !4438

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4438
  br label %cond.end407, !dbg !4438

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4438
  br label %cond.end409, !dbg !4438

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4438
  br label %cond.end411, !dbg !4438

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4438
  br label %cond.end413, !dbg !4438

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4438
  br label %cond.end415, !dbg !4438

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4438
  br label %cond.end417, !dbg !4438

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4438
  br label %cond.end419, !dbg !4438

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4438
  br label %cond.end421, !dbg !4438

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4438
  br label %cond.end423, !dbg !4438

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4438
  br label %cond.end425, !dbg !4438

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4438
  br label %cond.end427, !dbg !4438

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4438
  br label %cond.end429, !dbg !4438

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4438
  br label %cond.end431, !dbg !4438

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4438
  br label %cond.end433, !dbg !4438

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4438
  br label %cond.end435, !dbg !4438

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4438
  br label %cond.end437, !dbg !4438

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4438
  br label %cond.end440, !dbg !4438

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4438

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4438
  br label %cond.end444, !dbg !4438

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4438
  %sub443 = sub i64 %72, 1, !dbg !4438
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !4438
  br label %cond.end444, !dbg !4438

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4438
  %sub446 = sub i32 %cond445, 12, !dbg !4439
  %add = add i32 %sub446, 1, !dbg !4440
  store i32 %add, i32* %retval, align 4, !dbg !4441
  br label %return, !dbg !4441

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4442
  %dec = add i64 %73, -1, !dbg !4442
  store i64 %dec, i64* %size.addr, align 8, !dbg !4442
  %74 = load i64, i64* %size.addr, align 8, !dbg !4443
  %shr = lshr i64 %74, 12, !dbg !4443
  store i64 %shr, i64* %size.addr, align 8, !dbg !4443
  %75 = load i64, i64* %size.addr, align 8, !dbg !4444
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4421
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4445
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4446
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !4445, !srcloc !4447
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4445
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4448
  %add.i = add i32 %79, 1, !dbg !4449
  store i32 %add.i, i32* %retval, align 4, !dbg !4450
  br label %return, !dbg !4450

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4451
  ret i32 %80, !dbg !4451
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #10 !dbg !4452 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4413, metadata !DIExpression()), !dbg !4456
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4420, metadata !DIExpression()), !dbg !4458
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4459, metadata !DIExpression()), !dbg !4460
  %0 = load i64, i64* %n.addr, align 8, !dbg !4461
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4458
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4462
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4463
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !4462, !srcloc !4447
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4462
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4464
  %add.i = add i32 %4, 1, !dbg !4465
  %sub = sub i32 %add.i, 1, !dbg !4466
  ret i32 %sub, !dbg !4467
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4468 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4472, metadata !DIExpression()), !dbg !4473
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4474, metadata !DIExpression()), !dbg !4475
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4476, metadata !DIExpression()), !dbg !4477
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4478, metadata !DIExpression()), !dbg !4479
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4480
  ret i8* %0, !dbg !4481
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind willreturn }
attributes #10 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { noredzone nounwind }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!3269}
!llvm.module.flags = !{!3270, !3271, !3272, !3273}
!llvm.ident = !{!3274}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !71, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/xen/xlate_mmu.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !18, !24, !29, !35, !41, !47, !56, !64}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4, line: 15, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !12, line: 59, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!15 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!16 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!17 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !5, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !5, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !30, line: 16, baseType: !5, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !36, line: 26, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !42, line: 546, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46}
!44 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !48, line: 296, baseType: !5, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52, !53, !54, !55}
!50 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!53 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!54 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!55 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !57, line: 9, baseType: !5, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!58 = !{!59, !60, !61, !62, !63}
!59 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!60 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!61 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!62 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!63 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !65, line: 305, baseType: !5, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!71 = !{!72, !73, !75, !77, !78, !212, !1651, !504}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !74, line: 148, baseType: !5)
!74 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !76, line: 14, baseType: !77)
!76 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !80, line: 68, size: 512, align: 128, elements: !81)
!80 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !3261, !3268}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !80, line: 69, baseType: !77, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !80, line: 77, baseType: !84, size: 320, offset: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !80, line: 77, size: 320, elements: !85)
!85 = !{!86, !3135, !3140, !3166, !3174, !3180, !3192, !3260}
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 78, baseType: !87, size: 320)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 78, size: 320, elements: !88)
!88 = !{!89, !95, !3133, !3134}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !87, file: !80, line: 84, baseType: !90, size: 128)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !74, line: 178, size: 128, elements: !91)
!91 = !{!92, !94}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !74, line: 179, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !90, file: !74, line: 179, baseType: !93, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !87, file: !80, line: 86, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !48, line: 451, size: 1216, align: 64, elements: !98)
!98 = !{!99, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3128, !3129, !3130, !3131, !3132}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !97, file: !48, line: 452, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !48, line: 610, size: 4224, elements: !102)
!102 = !{!103, !106, !107, !116, !123, !124, !2666, !2667, !2668, !2669, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2710, !2718, !2719, !2720, !3023, !3024, !3025, !3026}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !101, file: !48, line: 611, baseType: !104, size: 16)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !74, line: 19, baseType: !105)
!105 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !101, file: !48, line: 612, baseType: !105, size: 16, offset: 16)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !101, file: !48, line: 613, baseType: !108, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !109, line: 23, baseType: !110)
!109 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 21, size: 32, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !110, file: !109, line: 22, baseType: !113, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !74, line: 32, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !115, line: 49, baseType: !5)
!115 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !101, file: !48, line: 614, baseType: !117, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !109, line: 28, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 26, size: 32, elements: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !118, file: !109, line: 27, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !74, line: 33, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !115, line: 50, baseType: !5)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !101, file: !48, line: 615, baseType: !5, size: 32, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !101, file: !48, line: 622, baseType: !125, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !48, line: 1864, size: 1536, align: 512, elements: !128)
!128 = !{!129, !2540, !2553, !2557, !2563, !2567, !2571, !2575, !2579, !2583, !2587, !2588, !2592, !2596, !2616, !2642, !2646, !2652, !2657, !2661, !2662}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !127, file: !48, line: 1865, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !100, !133, !5}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !135, line: 89, size: 1536, elements: !136)
!135 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !148, !156, !157, !180, !181, !185, !213, !287, !2525, !2526, !2527, !2532, !2533, !2534}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !134, file: !135, line: 91, baseType: !5, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !134, file: !135, line: 92, baseType: !139, size: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !140, line: 277, baseType: !141)
!140 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !140, line: 277, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !141, file: !140, line: 277, baseType: !144, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !140, line: 70, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !140, line: 65, size: 32, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !145, file: !140, line: 66, baseType: !5, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !134, file: !135, line: 93, baseType: !149, size: 128, offset: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !150, line: 38, size: 128, elements: !151)
!150 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !154}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !150, line: 39, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !149, file: !150, line: 39, baseType: !155, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !134, file: !135, line: 94, baseType: !133, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !134, file: !135, line: 95, baseType: !158, size: 128, offset: 256)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !135, line: 47, size: 128, elements: !159)
!159 = !{!160, !176}
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !135, line: 48, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !158, file: !135, line: 48, size: 64, elements: !162)
!162 = !{!163, !172}
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !161, file: !135, line: 49, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !161, file: !135, line: 49, size: 64, elements: !165)
!165 = !{!166, !171}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !164, file: !135, line: 50, baseType: !167, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !168, line: 21, baseType: !169)
!168 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !170, line: 27, baseType: !5)
!170 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!171 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !164, file: !135, line: 50, baseType: !167, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !161, file: !135, line: 52, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !168, line: 23, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !170, line: 31, baseType: !175)
!175 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !135, line: 54, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !134, file: !135, line: 96, baseType: !100, size: 64, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !134, file: !135, line: 98, baseType: !182, size: 256, offset: 448)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !134, file: !135, line: 101, baseType: !186, size: 32, offset: 704)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !187, line: 25, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !187, line: 26, baseType: !190, size: 32)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !186, file: !187, line: 26, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !187, line: 30, baseType: !193, size: 32)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !190, file: !187, line: 30, size: 32, elements: !194)
!194 = !{!195, !211}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !193, file: !187, line: 31, baseType: !196)
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
!211 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !193, file: !187, line: 32, baseType: !212, size: 32)
!212 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !134, file: !135, line: 102, baseType: !214, size: 64, offset: 768)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !135, line: 135, size: 1024, align: 512, elements: !217)
!217 = !{!218, !222, !223, !230, !239, !243, !247, !251, !252, !256, !261, !273, !281}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !216, file: !135, line: 136, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!212, !133, !5}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !216, file: !135, line: 137, baseType: !219, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !216, file: !135, line: 138, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!212, !227, !229}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !216, file: !135, line: 139, baseType: !231, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!212, !227, !5, !234, !237}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !216, file: !135, line: 141, baseType: !240, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!212, !227}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !216, file: !135, line: 142, baseType: !244, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!212, !133}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !216, file: !135, line: 143, baseType: !248, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !133}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !216, file: !135, line: 144, baseType: !248, size: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !216, file: !135, line: 145, baseType: !253, size: 64, offset: 512)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !133, !100}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !216, file: !135, line: 146, baseType: !257, size: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !133, !260, !212}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !216, file: !135, line: 147, baseType: !262, size: 64, offset: 640)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !267}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !135, line: 18, flags: DIFlagFwdDecl)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !269, line: 8, size: 128, elements: !270)
!269 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !268, file: !269, line: 9, baseType: !265, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !268, file: !269, line: 10, baseType: !133, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !216, file: !135, line: 148, baseType: !274, size: 64, offset: 704)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!212, !277, !279}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !74, line: 30, baseType: !280)
!280 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !216, file: !135, line: 149, baseType: !282, size: 64, offset: 768)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!133, !133, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !134, file: !135, line: 103, baseType: !288, size: 64, offset: 832)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !48, line: 1416, size: 9472, elements: !290)
!290 = !{!291, !292, !295, !296, !297, !301, !352, !2191, !2273, !2356, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2372, !2376, !2377, !2380, !2381, !2384, !2385, !2386, !2427, !2454, !2455, !2456, !2457, !2458, !2459, !2462, !2464, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2492, !2493, !2494, !2495, !2496, !2499, !2500, !2501, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !289, file: !48, line: 1417, baseType: !90, size: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !289, file: !48, line: 1418, baseType: !293, size: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !74, line: 16, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !74, line: 13, baseType: !167)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !289, file: !48, line: 1419, baseType: !179, size: 8, offset: 160)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !289, file: !48, line: 1420, baseType: !77, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !289, file: !48, line: 1421, baseType: !298, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !74, line: 46, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !115, line: 88, baseType: !300)
!300 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !289, file: !48, line: 1422, baseType: !302, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !48, line: 2228, size: 576, elements: !304)
!304 = !{!305, !306, !307, !313, !317, !321, !325, !329, !330, !340, !343, !344, !345, !349, !350, !351}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !48, line: 2229, baseType: !234, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !303, file: !48, line: 2230, baseType: !212, size: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !303, file: !48, line: 2238, baseType: !308, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!212, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !48, line: 69, flags: DIFlagFwdDecl)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !303, file: !48, line: 2239, baseType: !314, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !48, line: 70, flags: DIFlagFwdDecl)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !303, file: !48, line: 2240, baseType: !318, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!133, !302, !212, !234, !72}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !303, file: !48, line: 2242, baseType: !322, size: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !288}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !303, file: !48, line: 2243, baseType: !326, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !328, line: 76, flags: DIFlagFwdDecl)
!328 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !48, line: 2244, baseType: !302, size: 64, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !303, file: !48, line: 2245, baseType: !331, size: 64, offset: 512)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !74, line: 182, size: 64, elements: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !331, file: !74, line: 183, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !74, line: 186, size: 128, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !74, line: 187, baseType: !334, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !335, file: !74, line: 187, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !303, file: !48, line: 2247, baseType: !341, offset: 576)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !342, line: 187, elements: !210)
!342 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!343 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !303, file: !48, line: 2248, baseType: !341, offset: 576)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !303, file: !48, line: 2249, baseType: !341, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !303, file: !48, line: 2250, baseType: !346, offset: 576)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 3)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !303, file: !48, line: 2252, baseType: !341, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !303, file: !48, line: 2253, baseType: !341, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !303, file: !48, line: 2254, baseType: !341, offset: 576)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !289, file: !48, line: 1423, baseType: !353, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !48, line: 1935, size: 1472, elements: !356)
!356 = !{!357, !361, !365, !366, !370, !376, !380, !381, !382, !386, !390, !391, !392, !393, !399, !404, !405, !2168, !2169, !2170, !2171, !2175, !2190}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !355, file: !48, line: 1936, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!100, !288}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !355, file: !48, line: 1937, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !100}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !355, file: !48, line: 1938, baseType: !362, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !355, file: !48, line: 1940, baseType: !367, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !100, !212}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !355, file: !48, line: 1941, baseType: !371, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!212, !100, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !42, line: 40, flags: DIFlagFwdDecl)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !355, file: !48, line: 1942, baseType: !377, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!212, !100}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !355, file: !48, line: 1943, baseType: !362, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !355, file: !48, line: 1944, baseType: !322, size: 64, offset: 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !355, file: !48, line: 1945, baseType: !383, size: 64, offset: 512)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!212, !288, !212}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !355, file: !48, line: 1946, baseType: !387, size: 64, offset: 576)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!212, !288}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !355, file: !48, line: 1947, baseType: !387, size: 64, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !355, file: !48, line: 1948, baseType: !387, size: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !355, file: !48, line: 1949, baseType: !387, size: 64, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !355, file: !48, line: 1950, baseType: !394, size: 64, offset: 832)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!212, !133, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !48, line: 57, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !355, file: !48, line: 1951, baseType: !400, size: 64, offset: 896)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!212, !288, !403, !260}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !355, file: !48, line: 1952, baseType: !322, size: 64, offset: 960)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !355, file: !48, line: 1954, baseType: !406, size: 64, offset: 1024)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!212, !409, !133}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !411, line: 16, size: 896, elements: !412)
!411 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!412 = !{!413, !414, !418, !419, !420, !421, !422, !423, !438, !460, !461, !2167}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !410, file: !411, line: 17, baseType: !260, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !410, file: !411, line: 18, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 55, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !115, line: 72, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !115, line: 16, baseType: !77)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !410, file: !411, line: 19, baseType: !415, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !410, file: !411, line: 20, baseType: !415, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !410, file: !411, line: 21, baseType: !415, size: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !410, file: !411, line: 22, baseType: !298, size: 64, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !410, file: !411, line: 23, baseType: !298, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !410, file: !411, line: 24, baseType: !424, size: 192, offset: 448)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !425, line: 53, size: 192, elements: !426)
!425 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!426 = !{!427, !436, !437}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !424, file: !425, line: 54, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !429, line: 13, baseType: !430)
!429 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !74, line: 175, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 173, size: 64, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !431, file: !74, line: 174, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !168, line: 22, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !170, line: 30, baseType: !300)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !424, file: !425, line: 55, baseType: !196, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !424, file: !425, line: 59, baseType: !90, size: 128, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !410, file: !411, line: 25, baseType: !439, size: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !411, line: 31, size: 256, elements: !442)
!442 = !{!443, !448, !452, !456}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !441, file: !411, line: 32, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!72, !409, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !441, file: !411, line: 33, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !409, !72}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !441, file: !411, line: 34, baseType: !453, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!72, !409, !72, !447}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !441, file: !411, line: 35, baseType: !457, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!212, !409, !72}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !410, file: !411, line: 26, baseType: !212, size: 32, offset: 704)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !410, file: !411, line: 27, baseType: !462, size: 64, offset: 768)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !48, line: 916, size: 1856, align: 32, elements: !465)
!465 = !{!466, !484, !485, !486, !2131, !2132, !2133, !2134, !2135, !2137, !2138, !2139, !2148, !2149, !2158, !2159, !2160, !2161, !2162, !2163, !2166}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !464, file: !48, line: 920, baseType: !467, size: 128)
!467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !48, line: 917, size: 128, elements: !468)
!468 = !{!469, !475}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !467, file: !48, line: 918, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !471, line: 58, size: 64, elements: !472)
!471 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !470, file: !471, line: 59, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !467, file: !48, line: 919, baseType: !476, size: 128, align: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !74, line: 216, size: 128, align: 64, elements: !477)
!477 = !{!478, !480}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !74, line: 217, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !476, file: !74, line: 218, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !479}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !464, file: !48, line: 921, baseType: !268, size: 128, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !464, file: !48, line: 922, baseType: !100, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !464, file: !48, line: 923, baseType: !487, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !48, line: 1822, size: 2048, elements: !490)
!490 = !{!491, !492, !497, !505, !509, !537, !538, !542, !555, !556, !579, !583, !584, !1963, !1964, !1968, !1973, !1974, !1978, !1982, !2091, !2095, !2096, !2100, !2101, !2105, !2109, !2114, !2118, !2122, !2126, !2130}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !489, file: !48, line: 1823, baseType: !326, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !489, file: !48, line: 1824, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!298, !496, !298, !212}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !489, file: !48, line: 1825, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!501, !496, !260, !415, !447}
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !74, line: 60, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !115, line: 73, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !115, line: 15, baseType: !504)
!504 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !489, file: !48, line: 1826, baseType: !506, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!501, !496, !234, !415, !447}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !489, file: !48, line: 1827, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!501, !513, !535}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !48, line: 320, size: 384, elements: !515)
!515 = !{!516, !517, !518, !522, !523, !524, !527, !528}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !514, file: !48, line: 321, baseType: !496, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !514, file: !48, line: 326, baseType: !298, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !514, file: !48, line: 327, baseType: !519, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !513, !504, !504}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !514, file: !48, line: 328, baseType: !72, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !514, file: !48, line: 329, baseType: !212, size: 32, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !514, file: !48, line: 330, baseType: !525, size: 16, offset: 288)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !168, line: 19, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !170, line: 24, baseType: !105)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !514, file: !48, line: 331, baseType: !525, size: 16, offset: 304)
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !48, line: 332, baseType: !529, size: 64, offset: 320)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !48, line: 332, size: 64, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !529, file: !48, line: 333, baseType: !5, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !529, file: !48, line: 334, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !48, line: 334, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !48, line: 64, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !489, file: !48, line: 1828, baseType: !510, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !489, file: !48, line: 1829, baseType: !539, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!212, !513, !279}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !489, file: !48, line: 1830, baseType: !543, size: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!212, !496, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !48, line: 1776, size: 128, elements: !548)
!548 = !{!549, !554}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !547, file: !48, line: 1777, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !48, line: 1773, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!212, !546, !234, !212, !298, !173, !5}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !547, file: !48, line: 1778, baseType: !298, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !489, file: !48, line: 1831, baseType: !543, size: 64, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !489, file: !48, line: 1832, baseType: !557, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !496, !562}
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !561, line: 52, baseType: !5)
!561 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !564, line: 43, size: 128, elements: !565)
!564 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!565 = !{!566, !578}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !563, file: !564, line: 44, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !564, line: 37, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !496, !571, !562}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !573, line: 40, baseType: !574)
!573 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !573, line: 36, size: 128, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !574, file: !573, line: 37, baseType: !196)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !574, file: !573, line: 38, baseType: !90, size: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !563, file: !564, line: 45, baseType: !560, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !489, file: !48, line: 1833, baseType: !580, size: 64, offset: 640)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!504, !496, !5, !77}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !489, file: !48, line: 1834, baseType: !580, size: 64, offset: 704)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !489, file: !48, line: 1835, baseType: !585, size: 64, offset: 768)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!212, !496, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !80, line: 305, size: 1472, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !603, !604, !1857, !1863, !1864, !1869, !1870, !1873, !1957, !1958, !1959, !1960, !1961}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !589, file: !80, line: 308, baseType: !77, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !589, file: !80, line: 309, baseType: !77, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !589, file: !80, line: 313, baseType: !588, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !589, file: !80, line: 313, baseType: !588, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !589, file: !80, line: 315, baseType: !596, size: 192, align: 64, offset: 256)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !597, line: 24, size: 192, align: 64, elements: !598)
!597 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!598 = !{!599, !600, !602}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !596, file: !597, line: 25, baseType: !77, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !596, file: !597, line: 26, baseType: !601, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !596, file: !597, line: 27, baseType: !601, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !589, file: !80, line: 323, baseType: !77, size: 64, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !589, file: !80, line: 327, baseType: !605, size: 64, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !80, line: 388, size: 7296, elements: !607)
!607 = !{!608, !1853}
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !80, line: 389, baseType: !609, size: 7296)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !606, file: !80, line: 389, size: 7296, elements: !610)
!610 = !{!611, !612, !616, !617, !621, !622, !623, !624, !625, !633, !638, !639, !640, !641, !642, !643, !644, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !679, !687, !690, !714, !715, !1837, !1838, !1841, !1842, !1843, !1846, !1847, !1848, !1851, !1852}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !609, file: !80, line: 390, baseType: !588, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !609, file: !80, line: 391, baseType: !613, size: 64, offset: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !597, line: 31, size: 64, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !613, file: !597, line: 32, baseType: !601, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !609, file: !80, line: 392, baseType: !173, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !609, file: !80, line: 394, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!77, !496, !77, !77, !77, !77}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !609, file: !80, line: 398, baseType: !77, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !609, file: !80, line: 399, baseType: !77, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !609, file: !80, line: 405, baseType: !77, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !609, file: !80, line: 406, baseType: !77, size: 64, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !609, file: !80, line: 407, baseType: !626, size: 64, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !628, line: 286, baseType: !629)
!628 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !628, line: 286, size: 64, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !629, file: !628, line: 286, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !76, line: 18, baseType: !77)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !609, file: !80, line: 416, baseType: !634, size: 32, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !74, line: 168, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 166, size: 32, elements: !636)
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !635, file: !74, line: 167, baseType: !212, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !609, file: !80, line: 428, baseType: !634, size: 32, offset: 608)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !609, file: !80, line: 437, baseType: !634, size: 32, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !609, file: !80, line: 447, baseType: !634, size: 32, offset: 672)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !609, file: !80, line: 450, baseType: !428, size: 64, offset: 704)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !609, file: !80, line: 452, baseType: !212, size: 32, offset: 768)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !609, file: !80, line: 454, baseType: !196, offset: 800)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !609, file: !80, line: 457, baseType: !645, size: 256, offset: 832)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !646, line: 35, size: 256, elements: !647)
!646 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!647 = !{!648, !649, !650, !652}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !645, file: !646, line: 36, baseType: !428, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !645, file: !646, line: 42, baseType: !428, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !645, file: !646, line: 46, baseType: !651, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !197, line: 29, baseType: !204)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !645, file: !646, line: 47, baseType: !90, size: 128, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !609, file: !80, line: 459, baseType: !90, size: 128, offset: 1088)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !609, file: !80, line: 466, baseType: !77, size: 64, offset: 1216)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !609, file: !80, line: 467, baseType: !77, size: 64, offset: 1280)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !609, file: !80, line: 469, baseType: !77, size: 64, offset: 1344)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !609, file: !80, line: 470, baseType: !77, size: 64, offset: 1408)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !609, file: !80, line: 471, baseType: !430, size: 64, offset: 1472)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !609, file: !80, line: 472, baseType: !77, size: 64, offset: 1536)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !609, file: !80, line: 473, baseType: !77, size: 64, offset: 1600)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !609, file: !80, line: 474, baseType: !77, size: 64, offset: 1664)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !609, file: !80, line: 475, baseType: !77, size: 64, offset: 1728)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !609, file: !80, line: 477, baseType: !196, offset: 1792)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !609, file: !80, line: 478, baseType: !77, size: 64, offset: 1792)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !609, file: !80, line: 478, baseType: !77, size: 64, offset: 1856)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !609, file: !80, line: 478, baseType: !77, size: 64, offset: 1920)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !609, file: !80, line: 478, baseType: !77, size: 64, offset: 1984)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !609, file: !80, line: 479, baseType: !77, size: 64, offset: 2048)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !609, file: !80, line: 479, baseType: !77, size: 64, offset: 2112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !609, file: !80, line: 479, baseType: !77, size: 64, offset: 2176)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !609, file: !80, line: 480, baseType: !77, size: 64, offset: 2240)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !609, file: !80, line: 480, baseType: !77, size: 64, offset: 2304)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !609, file: !80, line: 480, baseType: !77, size: 64, offset: 2368)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !609, file: !80, line: 480, baseType: !77, size: 64, offset: 2432)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !609, file: !80, line: 482, baseType: !676, size: 2816, offset: 2496)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 2816, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 44)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !609, file: !80, line: 488, baseType: !680, size: 256, offset: 5312)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !681, line: 60, size: 256, elements: !682)
!681 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !680, file: !681, line: 61, baseType: !684, size: 256)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 256, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 4)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !609, file: !80, line: 490, baseType: !688, size: 64, offset: 5568)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !80, line: 490, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !609, file: !80, line: 493, baseType: !691, size: 896, offset: 5632)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !692, line: 53, baseType: !693)
!692 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !692, line: 13, size: 896, elements: !694)
!694 = !{!695, !696, !697, !698, !701, !702, !703, !704, !708, !709, !710}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !693, file: !692, line: 18, baseType: !173, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !693, file: !692, line: 28, baseType: !430, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !693, file: !692, line: 31, baseType: !645, size: 256, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !693, file: !692, line: 32, baseType: !699, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !692, line: 32, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !693, file: !692, line: 37, baseType: !105, size: 16, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !693, file: !692, line: 40, baseType: !424, size: 192, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !693, file: !692, line: 41, baseType: !72, size: 64, offset: 704)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !693, file: !692, line: 42, baseType: !705, size: 64, offset: 768)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !692, line: 42, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !693, file: !692, line: 44, baseType: !634, size: 32, offset: 832)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !693, file: !692, line: 50, baseType: !525, size: 16, offset: 864)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !693, file: !692, line: 51, baseType: !711, size: 16, offset: 880)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !168, line: 18, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !170, line: 23, baseType: !713)
!713 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !80, line: 495, baseType: !77, size: 64, offset: 6528)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !609, file: !80, line: 497, baseType: !716, size: 64, offset: 6592)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !80, line: 381, size: 384, elements: !718)
!718 = !{!719, !720, !1836}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !717, file: !80, line: 382, baseType: !634, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !717, file: !80, line: 383, baseType: !721, size: 128, offset: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !80, line: 376, size: 128, elements: !722)
!722 = !{!723, !1834}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !721, file: !80, line: 377, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !726, line: 640, size: 48640, elements: !727)
!726 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!727 = !{!728, !734, !736, !737, !743, !744, !745, !746, !747, !748, !749, !750, !754, !772, !783, !872, !873, !874, !885, !886, !888, !889, !890, !891, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !975, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !1007, !1009, !1010, !1011, !1023, !1024, !1025, !1026, !1027, !1028, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1052, !1057, !1244, !1245, !1246, !1247, !1251, !1254, !1257, !1260, !1263, !1266, !1367, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1415, !1416, !1417, !1418, !1419, !1424, !1425, !1426, !1429, !1430, !1433, !1436, !1439, !1442, !1493, !1496, !1497, !1576, !1577, !1580, !1581, !1584, !1585, !1586, !1590, !1591, !1592, !1605, !1606, !1607, !1617, !1622, !1625, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !725, file: !726, line: 646, baseType: !729, size: 128)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !730, line: 56, size: 128, elements: !731)
!730 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !729, file: !730, line: 57, baseType: !77, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !729, file: !730, line: 58, baseType: !167, size: 32, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !725, file: !726, line: 649, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !504)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !725, file: !726, line: 657, baseType: !72, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !725, file: !726, line: 658, baseType: !738, size: 32, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !739, line: 113, baseType: !740)
!739 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !739, line: 111, size: 32, elements: !741)
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !740, file: !739, line: 112, baseType: !634, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !725, file: !726, line: 660, baseType: !5, size: 32, offset: 288)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !725, file: !726, line: 661, baseType: !5, size: 32, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !725, file: !726, line: 684, baseType: !212, size: 32, offset: 352)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !725, file: !726, line: 686, baseType: !212, size: 32, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !725, file: !726, line: 687, baseType: !212, size: 32, offset: 416)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !725, file: !726, line: 688, baseType: !212, size: 32, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !725, file: !726, line: 689, baseType: !5, size: 32, offset: 480)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !725, file: !726, line: 691, baseType: !751, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !726, line: 691, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !725, file: !726, line: 692, baseType: !755, size: 832, offset: 576)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !726, line: 451, size: 832, elements: !756)
!756 = !{!757, !762, !763, !764, !765, !766, !767, !768, !769, !770}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !755, file: !726, line: 453, baseType: !758, size: 128)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !726, line: 325, size: 128, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !758, file: !726, line: 326, baseType: !77, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !758, file: !726, line: 327, baseType: !167, size: 32, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !755, file: !726, line: 454, baseType: !596, size: 192, align: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !755, file: !726, line: 455, baseType: !90, size: 128, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !755, file: !726, line: 456, baseType: !5, size: 32, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !755, file: !726, line: 458, baseType: !173, size: 64, offset: 512)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !755, file: !726, line: 459, baseType: !173, size: 64, offset: 576)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !755, file: !726, line: 460, baseType: !173, size: 64, offset: 640)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !755, file: !726, line: 461, baseType: !173, size: 64, offset: 704)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !755, file: !726, line: 463, baseType: !173, size: 64, offset: 768)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !755, file: !726, line: 465, baseType: !771, offset: 832)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !726, line: 415, elements: !210)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !725, file: !726, line: 693, baseType: !773, size: 384, offset: 1408)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !726, line: 489, size: 384, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !781}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !773, file: !726, line: 490, baseType: !90, size: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !773, file: !726, line: 491, baseType: !77, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !773, file: !726, line: 492, baseType: !77, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !773, file: !726, line: 493, baseType: !5, size: 32, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !773, file: !726, line: 494, baseType: !105, size: 16, offset: 288)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !773, file: !726, line: 495, baseType: !105, size: 16, offset: 304)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !773, file: !726, line: 497, baseType: !782, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !725, file: !726, line: 697, baseType: !784, size: 1792, offset: 1792)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !726, line: 507, size: 1792, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !869, !870}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !784, file: !726, line: 508, baseType: !596, size: 192, align: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !784, file: !726, line: 515, baseType: !173, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !784, file: !726, line: 516, baseType: !173, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !784, file: !726, line: 517, baseType: !173, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !784, file: !726, line: 518, baseType: !173, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !784, file: !726, line: 519, baseType: !173, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !784, file: !726, line: 526, baseType: !434, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !784, file: !726, line: 527, baseType: !173, size: 64, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !784, file: !726, line: 528, baseType: !5, size: 32, offset: 640)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !784, file: !726, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !784, file: !726, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !784, file: !726, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !784, file: !726, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !784, file: !726, line: 563, baseType: !800, size: 512, offset: 704)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !801)
!801 = !{!802, !810, !811, !816, !863, !866, !867, !868}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !800, file: !25, line: 119, baseType: !803, size: 256)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !804, line: 9, size: 256, elements: !805)
!804 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !803, file: !804, line: 10, baseType: !596, size: 192, align: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !803, file: !804, line: 11, baseType: !808, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !809, line: 29, baseType: !434)
!809 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !800, file: !25, line: 120, baseType: !808, size: 64, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !800, file: !25, line: 121, baseType: !812, size: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!24, !815}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !800, file: !25, line: 122, baseType: !817, size: 64, offset: 384)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !819)
!819 = !{!820, !840, !841, !844, !849, !850, !858, !862}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !818, file: !25, line: 160, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 214, size: 4608, align: 512, elements: !823)
!823 = !{!824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !822, file: !25, line: 215, baseType: !651)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !822, file: !25, line: 216, baseType: !5, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !822, file: !25, line: 217, baseType: !5, size: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !822, file: !25, line: 218, baseType: !5, size: 32, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !822, file: !25, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !822, file: !25, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !822, file: !25, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !822, file: !25, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !822, file: !25, line: 233, baseType: !808, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !822, file: !25, line: 234, baseType: !815, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !822, file: !25, line: 235, baseType: !808, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !822, file: !25, line: 236, baseType: !815, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !822, file: !25, line: 237, baseType: !837, size: 4096, offset: 512)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 4096, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 8)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !818, file: !25, line: 161, baseType: !5, size: 32, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !818, file: !25, line: 162, baseType: !842, size: 32, offset: 96)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !74, line: 27, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !115, line: 96, baseType: !212)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !818, file: !25, line: 163, baseType: !845, size: 32, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !140, line: 276, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !140, line: 276, size: 32, elements: !847)
!847 = !{!848}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !846, file: !140, line: 276, baseType: !144, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !818, file: !25, line: 164, baseType: !815, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !818, file: !25, line: 165, baseType: !851, size: 128, offset: 256)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !804, line: 14, size: 128, elements: !852)
!852 = !{!853}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !851, file: !804, line: 15, baseType: !854, size: 128)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !597, line: 125, size: 128, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !854, file: !597, line: 126, baseType: !613, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !854, file: !597, line: 127, baseType: !601, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !818, file: !25, line: 166, baseType: !859, size: 64, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!808}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !818, file: !25, line: 167, baseType: !808, size: 64, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !800, file: !25, line: 123, baseType: !864, size: 8, offset: 448)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !168, line: 17, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !170, line: 21, baseType: !179)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !800, file: !25, line: 124, baseType: !864, size: 8, offset: 456)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !800, file: !25, line: 125, baseType: !864, size: 8, offset: 464)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !800, file: !25, line: 126, baseType: !864, size: 8, offset: 472)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !784, file: !726, line: 572, baseType: !800, size: 512, offset: 1216)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !784, file: !726, line: 580, baseType: !871, size: 64, offset: 1728)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !725, file: !726, line: 721, baseType: !5, size: 32, offset: 3584)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !725, file: !726, line: 722, baseType: !212, size: 32, offset: 3616)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !725, file: !726, line: 723, baseType: !875, size: 64, offset: 3648)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !878, line: 17, baseType: !879)
!878 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !878, line: 17, size: 64, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !879, file: !878, line: 17, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 1)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !725, file: !726, line: 724, baseType: !877, size: 64, offset: 3712)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !725, file: !726, line: 749, baseType: !887, offset: 3776)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !726, line: 290, elements: !210)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !725, file: !726, line: 751, baseType: !90, size: 128, offset: 3776)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !725, file: !726, line: 757, baseType: !605, size: 64, offset: 3904)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !725, file: !726, line: 758, baseType: !605, size: 64, offset: 3968)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !725, file: !726, line: 761, baseType: !892, size: 320, offset: 4032)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !681, line: 34, size: 320, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !892, file: !681, line: 35, baseType: !173, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !892, file: !681, line: 36, baseType: !896, size: 256, offset: 64)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 256, elements: !685)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !725, file: !726, line: 766, baseType: !212, size: 32, offset: 4352)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !725, file: !726, line: 767, baseType: !212, size: 32, offset: 4384)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !725, file: !726, line: 768, baseType: !212, size: 32, offset: 4416)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !725, file: !726, line: 770, baseType: !212, size: 32, offset: 4448)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !725, file: !726, line: 772, baseType: !77, size: 64, offset: 4480)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !725, file: !726, line: 775, baseType: !5, size: 32, offset: 4544)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !725, file: !726, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !725, file: !726, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !725, file: !726, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !725, file: !726, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !725, file: !726, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !725, file: !726, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !725, file: !726, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !725, file: !726, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !725, file: !726, line: 831, baseType: !77, size: 64, offset: 4672)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !725, file: !726, line: 833, baseType: !913, size: 384, offset: 4736)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !30, line: 25, size: 384, elements: !914)
!914 = !{!915, !920}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !913, file: !30, line: 26, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!504, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !913, file: !30, line: 27, baseType: !921, size: 320, offset: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !913, file: !30, line: 27, size: 320, elements: !922)
!922 = !{!923, !933, !960}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !921, file: !30, line: 36, baseType: !924, size: 320)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !30, line: 29, size: 320, elements: !925)
!925 = !{!926, !928, !929, !930, !931, !932}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !924, file: !30, line: 30, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !924, file: !30, line: 31, baseType: !167, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !924, file: !30, line: 32, baseType: !167, size: 32, offset: 96)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !924, file: !30, line: 33, baseType: !167, size: 32, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !924, file: !30, line: 34, baseType: !173, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !924, file: !30, line: 35, baseType: !927, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !921, file: !30, line: 46, baseType: !934, size: 192)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !30, line: 38, size: 192, elements: !935)
!935 = !{!936, !937, !938, !959}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !934, file: !30, line: 39, baseType: !842, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !934, file: !30, line: 40, baseType: !29, size: 32, offset: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !30, line: 41, baseType: !939, size: 64, offset: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !934, file: !30, line: 41, size: 64, elements: !940)
!940 = !{!941, !949}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !939, file: !30, line: 42, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !944, line: 7, size: 128, elements: !945)
!944 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!945 = !{!946, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !943, file: !944, line: 8, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !115, line: 93, baseType: !300)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !943, file: !944, line: 9, baseType: !300, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !939, file: !30, line: 43, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !952, line: 7, size: 64, elements: !953)
!952 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!953 = !{!954, !958}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !951, file: !952, line: 8, baseType: !955, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !952, line: 5, baseType: !956)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !168, line: 20, baseType: !957)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !170, line: 26, baseType: !212)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !951, file: !952, line: 9, baseType: !956, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !934, file: !30, line: 45, baseType: !173, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !921, file: !30, line: 54, baseType: !961, size: 256)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !30, line: 48, size: 256, elements: !962)
!962 = !{!963, !971, !972, !973, !974}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !961, file: !30, line: 49, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !966, line: 36, size: 64, elements: !967)
!966 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !965, file: !966, line: 37, baseType: !212, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !965, file: !966, line: 38, baseType: !713, size: 16, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !965, file: !966, line: 39, baseType: !713, size: 16, offset: 48)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !961, file: !30, line: 50, baseType: !212, size: 32, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !961, file: !30, line: 51, baseType: !212, size: 32, offset: 96)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !961, file: !30, line: 52, baseType: !77, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !961, file: !30, line: 53, baseType: !77, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !725, file: !726, line: 835, baseType: !976, size: 32, offset: 5120)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !74, line: 22, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !115, line: 28, baseType: !212)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !725, file: !726, line: 836, baseType: !976, size: 32, offset: 5152)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !725, file: !726, line: 840, baseType: !77, size: 64, offset: 5184)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !725, file: !726, line: 849, baseType: !724, size: 64, offset: 5248)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !725, file: !726, line: 852, baseType: !724, size: 64, offset: 5312)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !725, file: !726, line: 857, baseType: !90, size: 128, offset: 5376)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !725, file: !726, line: 858, baseType: !90, size: 128, offset: 5504)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !725, file: !726, line: 859, baseType: !724, size: 64, offset: 5632)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !725, file: !726, line: 867, baseType: !90, size: 128, offset: 5696)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !725, file: !726, line: 868, baseType: !90, size: 128, offset: 5824)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !725, file: !726, line: 871, baseType: !988, size: 64, offset: 5952)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !57, line: 59, size: 768, elements: !990)
!990 = !{!991, !992, !993, !994, !996, !997, !998, !999}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !989, file: !57, line: 61, baseType: !738, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !989, file: !57, line: 62, baseType: !5, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !989, file: !57, line: 63, baseType: !196, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !989, file: !57, line: 65, baseType: !995, size: 256, offset: 64)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 256, elements: !685)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !989, file: !57, line: 66, baseType: !331, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !989, file: !57, line: 68, baseType: !572, size: 128, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !989, file: !57, line: 69, baseType: !476, size: 128, align: 64, offset: 512)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !989, file: !57, line: 70, baseType: !1000, size: 128, offset: 640)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1001, size: 128, elements: !883)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !57, line: 54, size: 128, elements: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1001, file: !57, line: 55, baseType: !212, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1001, file: !57, line: 56, baseType: !1005, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !57, line: 56, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !725, file: !726, line: 872, baseType: !1008, size: 512, offset: 6016)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 512, elements: !685)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !725, file: !726, line: 873, baseType: !90, size: 128, offset: 6528)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !725, file: !726, line: 874, baseType: !90, size: 128, offset: 6656)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !725, file: !726, line: 876, baseType: !1012, size: 64, offset: 6784)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1014, line: 26, size: 192, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1013, file: !1014, line: 27, baseType: !5, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1013, file: !1014, line: 28, baseType: !1018, size: 128, offset: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1019, line: 43, size: 128, elements: !1020)
!1019 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1018, file: !1019, line: 44, baseType: !651)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1018, file: !1019, line: 45, baseType: !90, size: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !725, file: !726, line: 879, baseType: !403, size: 64, offset: 6848)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !725, file: !726, line: 882, baseType: !403, size: 64, offset: 6912)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !725, file: !726, line: 884, baseType: !173, size: 64, offset: 6976)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !725, file: !726, line: 885, baseType: !173, size: 64, offset: 7040)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !725, file: !726, line: 890, baseType: !173, size: 64, offset: 7104)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !725, file: !726, line: 891, baseType: !1029, size: 128, offset: 7168)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !726, line: 242, size: 128, elements: !1030)
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1029, file: !726, line: 244, baseType: !173, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1029, file: !726, line: 245, baseType: !173, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1029, file: !726, line: 246, baseType: !651, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !725, file: !726, line: 900, baseType: !77, size: 64, offset: 7296)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !725, file: !726, line: 901, baseType: !77, size: 64, offset: 7360)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !725, file: !726, line: 904, baseType: !173, size: 64, offset: 7424)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !725, file: !726, line: 907, baseType: !173, size: 64, offset: 7488)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !725, file: !726, line: 910, baseType: !77, size: 64, offset: 7552)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !725, file: !726, line: 911, baseType: !77, size: 64, offset: 7616)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !725, file: !726, line: 914, baseType: !1041, size: 640, offset: 7680)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1042, line: 123, size: 640, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1043 = !{!1044, !1050, !1051}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1041, file: !1042, line: 124, baseType: !1045, size: 576)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1046, size: 576, elements: !347)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1042, line: 108, size: 192, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1046, file: !1042, line: 109, baseType: !173, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1046, file: !1042, line: 110, baseType: !851, size: 128, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1041, file: !1042, line: 125, baseType: !5, size: 32, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1041, file: !1042, line: 126, baseType: !5, size: 32, offset: 608)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !725, file: !726, line: 917, baseType: !1053, size: 192, offset: 8320)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1042, line: 134, size: 192, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1053, file: !1042, line: 135, baseType: !476, size: 128, align: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1053, file: !1042, line: 136, baseType: !5, size: 32, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !725, file: !726, line: 923, baseType: !1058, size: 64, offset: 8512)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1061, line: 111, size: 1280, elements: !1062)
!1061 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1082, !1083, !1084, !1085, !1086, !1087, !1197, !1198, !1199, !1200, !1226, !1229, !1239}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1060, file: !1061, line: 112, baseType: !634, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1060, file: !1061, line: 120, baseType: !108, size: 32, offset: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1060, file: !1061, line: 121, baseType: !117, size: 32, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1060, file: !1061, line: 122, baseType: !108, size: 32, offset: 96)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1060, file: !1061, line: 123, baseType: !117, size: 32, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1060, file: !1061, line: 124, baseType: !108, size: 32, offset: 160)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1060, file: !1061, line: 125, baseType: !117, size: 32, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1060, file: !1061, line: 126, baseType: !108, size: 32, offset: 224)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1060, file: !1061, line: 127, baseType: !117, size: 32, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1060, file: !1061, line: 128, baseType: !5, size: 32, offset: 288)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1060, file: !1061, line: 129, baseType: !1074, size: 64, offset: 320)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1075, line: 26, baseType: !1076)
!1075 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1075, line: 24, size: 64, elements: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1076, file: !1075, line: 25, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 64, elements: !1080)
!1080 = !{!1081}
!1081 = !DISubrange(count: 2)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1060, file: !1061, line: 130, baseType: !1074, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1060, file: !1061, line: 131, baseType: !1074, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1060, file: !1061, line: 132, baseType: !1074, size: 64, offset: 512)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1060, file: !1061, line: 133, baseType: !1074, size: 64, offset: 576)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1060, file: !1061, line: 135, baseType: !179, size: 8, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1060, file: !1061, line: 137, baseType: !1088, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1090, line: 189, size: 1664, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1091 = !{!1092, !1093, !1096, !1101, !1102, !1105, !1106, !1113, !1114, !1115, !1116, !1119, !1120, !1121, !1122, !1123, !1161, !1182}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1089, file: !1090, line: 190, baseType: !738, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1089, file: !1090, line: 191, baseType: !1094, size: 32, offset: 32)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1090, line: 28, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !74, line: 98, baseType: !956)
!1096 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !1090, line: 192, baseType: !1097, size: 192, offset: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !1090, line: 192, size: 192, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1097, file: !1090, line: 193, baseType: !90, size: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1097, file: !1090, line: 194, baseType: !596, size: 192, align: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1089, file: !1090, line: 199, baseType: !645, size: 256, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1089, file: !1090, line: 200, baseType: !1103, size: 64, offset: 512)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1090, line: 200, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1089, file: !1090, line: 201, baseType: !72, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !1090, line: 202, baseType: !1107, size: 64, offset: 640)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !1090, line: 202, size: 64, elements: !1108)
!1108 = !{!1109, !1112}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1107, file: !1090, line: 203, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1111, line: 8, baseType: !435)
!1111 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1107, file: !1090, line: 204, baseType: !1110, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1089, file: !1090, line: 206, baseType: !1110, size: 64, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1089, file: !1090, line: 207, baseType: !108, size: 32, offset: 768)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1089, file: !1090, line: 208, baseType: !117, size: 32, offset: 800)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1089, file: !1090, line: 209, baseType: !1117, size: 32, offset: 832)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1090, line: 31, baseType: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !74, line: 104, baseType: !167)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1089, file: !1090, line: 210, baseType: !105, size: 16, offset: 864)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1089, file: !1090, line: 211, baseType: !105, size: 16, offset: 880)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1089, file: !1090, line: 215, baseType: !713, size: 16, offset: 896)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1089, file: !1090, line: 222, baseType: !77, size: 64, offset: 960)
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !1090, line: 239, baseType: !1124, size: 320, offset: 1024)
!1124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !1090, line: 239, size: 320, elements: !1125)
!1125 = !{!1126, !1153}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1124, file: !1090, line: 240, baseType: !1127, size: 320)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1090, line: 108, size: 320, elements: !1128)
!1128 = !{!1129, !1130, !1142, !1145, !1152}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1127, file: !1090, line: 110, baseType: !77, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !1090, line: 111, baseType: !1131, size: 64, offset: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !1090, line: 111, size: 64, elements: !1132)
!1132 = !{!1133, !1141}
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !1090, line: 112, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !1090, line: 112, size: 64, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1134, file: !1090, line: 114, baseType: !525, size: 16)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1134, file: !1090, line: 115, baseType: !1138, size: 48, offset: 16)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 48, elements: !1139)
!1139 = !{!1140}
!1140 = !DISubrange(count: 6)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1131, file: !1090, line: 121, baseType: !77, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1127, file: !1090, line: 123, baseType: !1143, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1090, line: 96, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1127, file: !1090, line: 124, baseType: !1146, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1090, line: 102, size: 192, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1147, file: !1090, line: 103, baseType: !476, size: 128, align: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1147, file: !1090, line: 104, baseType: !738, size: 32, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1147, file: !1090, line: 105, baseType: !279, size: 8, offset: 160)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1127, file: !1090, line: 125, baseType: !234, size: 64, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !1090, line: 241, baseType: !1154, size: 320)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !1090, line: 241, size: 320, elements: !1155)
!1155 = !{!1156, !1157, !1158, !1159, !1160}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1154, file: !1090, line: 242, baseType: !77, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1154, file: !1090, line: 243, baseType: !77, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1154, file: !1090, line: 244, baseType: !1143, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1154, file: !1090, line: 245, baseType: !1146, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1154, file: !1090, line: 246, baseType: !260, size: 64, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !1090, line: 254, baseType: !1162, size: 256, offset: 1344)
!1162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !1090, line: 254, size: 256, elements: !1163)
!1163 = !{!1164, !1170}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1162, file: !1090, line: 255, baseType: !1165, size: 256)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1090, line: 128, size: 256, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1165, file: !1090, line: 129, baseType: !72, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1165, file: !1090, line: 130, baseType: !1169, size: 256)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !685)
!1170 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !1090, line: 256, baseType: !1171, size: 256)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1162, file: !1090, line: 256, size: 256, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1171, file: !1090, line: 258, baseType: !90, size: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1171, file: !1090, line: 259, baseType: !1175, size: 128, offset: 128)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1176, line: 22, size: 128, elements: !1177)
!1176 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1177 = !{!1178, !1181}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1175, file: !1176, line: 23, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1176, line: 23, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1175, file: !1176, line: 24, baseType: !77, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1089, file: !1090, line: 274, baseType: !1183, size: 64, offset: 1600)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1090, line: 170, size: 192, elements: !1185)
!1185 = !{!1186, !1195, !1196}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1184, file: !1090, line: 171, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1090, line: 165, baseType: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!212, !1088, !1191, !1193, !1088}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1144)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1184, file: !1090, line: 172, baseType: !1088, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1184, file: !1090, line: 173, baseType: !1143, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1060, file: !1061, line: 138, baseType: !1088, size: 64, offset: 768)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1060, file: !1061, line: 139, baseType: !1088, size: 64, offset: 832)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1060, file: !1061, line: 140, baseType: !1088, size: 64, offset: 896)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1060, file: !1061, line: 145, baseType: !1201, size: 64, offset: 960)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1203, line: 13, size: 896, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1204 = !{!1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1202, file: !1203, line: 14, baseType: !738, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1202, file: !1203, line: 15, baseType: !634, size: 32, offset: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1202, file: !1203, line: 16, baseType: !634, size: 32, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1202, file: !1203, line: 21, baseType: !428, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1202, file: !1203, line: 27, baseType: !77, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1202, file: !1203, line: 28, baseType: !77, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1202, file: !1203, line: 29, baseType: !428, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1202, file: !1203, line: 32, baseType: !335, size: 128, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1202, file: !1203, line: 33, baseType: !108, size: 32, offset: 512)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1202, file: !1203, line: 37, baseType: !428, size: 64, offset: 576)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1202, file: !1203, line: 44, baseType: !1216, size: 256, offset: 640)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1217, line: 15, size: 256, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1218 = !{!1219, !1220, !1221, !1222, !1223, !1224, !1225}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1216, file: !1217, line: 16, baseType: !651)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1216, file: !1217, line: 18, baseType: !212, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1216, file: !1217, line: 19, baseType: !212, size: 32, offset: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1216, file: !1217, line: 20, baseType: !212, size: 32, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1216, file: !1217, line: 21, baseType: !212, size: 32, offset: 96)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1216, file: !1217, line: 22, baseType: !77, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !1217, line: 23, baseType: !77, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1060, file: !1061, line: 146, baseType: !1227, size: 64, offset: 1024)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !80, line: 516, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1060, file: !1061, line: 147, baseType: !1230, size: 64, offset: 1088)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1061, line: 25, size: 64, elements: !1232)
!1232 = !{!1233, !1234, !1235}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1231, file: !1061, line: 26, baseType: !634, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1231, file: !1061, line: 27, baseType: !212, size: 32, offset: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1231, file: !1061, line: 28, baseType: !1236, offset: 64)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, elements: !1237)
!1237 = !{!1238}
!1238 = !DISubrange(count: 0)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !1061, line: 149, baseType: !1240, size: 128, offset: 1152)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1060, file: !1061, line: 149, size: 128, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1240, file: !1061, line: 150, baseType: !212, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1240, file: !1061, line: 151, baseType: !476, size: 128, align: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !725, file: !726, line: 926, baseType: !1058, size: 64, offset: 8576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !725, file: !726, line: 929, baseType: !1058, size: 64, offset: 8640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !725, file: !726, line: 933, baseType: !1088, size: 64, offset: 8704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !725, file: !726, line: 943, baseType: !1248, size: 128, offset: 8768)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 128, elements: !1249)
!1249 = !{!1250}
!1250 = !DISubrange(count: 16)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !725, file: !726, line: 945, baseType: !1252, size: 64, offset: 8896)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !726, line: 49, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !725, file: !726, line: 956, baseType: !1255, size: 64, offset: 8960)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !726, line: 45, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !725, file: !726, line: 959, baseType: !1258, size: 64, offset: 9024)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !726, line: 959, flags: DIFlagFwdDecl)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !725, file: !726, line: 962, baseType: !1261, size: 64, offset: 9088)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !726, line: 66, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !725, file: !726, line: 966, baseType: !1264, size: 64, offset: 9152)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !726, line: 50, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !725, file: !726, line: 969, baseType: !1267, size: 64, offset: 9216)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1269, line: 82, size: 7296, elements: !1270)
!1269 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1276, !1277, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1306, !1315, !1316, !1318, !1319, !1320, !1323, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1353, !1354, !1361, !1362, !1363, !1364, !1365, !1366}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1268, file: !1269, line: 83, baseType: !738, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1268, file: !1269, line: 84, baseType: !634, size: 32, offset: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1268, file: !1269, line: 85, baseType: !212, size: 32, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1268, file: !1269, line: 86, baseType: !90, size: 128, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1268, file: !1269, line: 88, baseType: !572, size: 128, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1268, file: !1269, line: 91, baseType: !724, size: 64, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1268, file: !1269, line: 94, baseType: !1278, size: 192, offset: 448)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1279, line: 30, size: 192, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1278, file: !1279, line: 31, baseType: !90, size: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1278, file: !1279, line: 32, baseType: !1283, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1284, line: 25, baseType: !1285)
!1284 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1284, line: 23, size: 64, elements: !1286)
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1285, file: !1284, line: 24, baseType: !882, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1268, file: !1269, line: 97, baseType: !331, size: 64, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1268, file: !1269, line: 100, baseType: !212, size: 32, offset: 704)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1268, file: !1269, line: 106, baseType: !212, size: 32, offset: 736)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1268, file: !1269, line: 107, baseType: !724, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1268, file: !1269, line: 110, baseType: !212, size: 32, offset: 832)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1268, file: !1269, line: 111, baseType: !5, size: 32, offset: 864)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1268, file: !1269, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1268, file: !1269, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1268, file: !1269, line: 128, baseType: !212, size: 32, offset: 928)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1268, file: !1269, line: 129, baseType: !90, size: 128, offset: 960)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1268, file: !1269, line: 132, baseType: !800, size: 512, offset: 1088)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1268, file: !1269, line: 133, baseType: !808, size: 64, offset: 1600)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1268, file: !1269, line: 140, baseType: !1301, size: 256, offset: 1664)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1302, size: 256, elements: !1080)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1269, line: 38, size: 128, elements: !1303)
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1302, file: !1269, line: 39, baseType: !173, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1302, file: !1269, line: 40, baseType: !173, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1268, file: !1269, line: 146, baseType: !1307, size: 192, offset: 1920)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1269, line: 66, size: 192, elements: !1308)
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1307, file: !1269, line: 67, baseType: !1310, size: 192)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1269, line: 47, size: 192, elements: !1311)
!1311 = !{!1312, !1313, !1314}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1310, file: !1269, line: 48, baseType: !430, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1310, file: !1269, line: 49, baseType: !430, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1310, file: !1269, line: 50, baseType: !430, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1268, file: !1269, line: 150, baseType: !1041, size: 640, offset: 2112)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1268, file: !1269, line: 153, baseType: !1317, size: 256, offset: 2752)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, size: 256, elements: !685)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1268, file: !1269, line: 159, baseType: !988, size: 64, offset: 3008)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1268, file: !1269, line: 162, baseType: !212, size: 32, offset: 3072)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1268, file: !1269, line: 164, baseType: !1321, size: 64, offset: 3136)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1269, line: 164, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1268, file: !1269, line: 175, baseType: !1324, size: 32, offset: 3200)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !140, line: 805, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 798, size: 32, elements: !1326)
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1325, file: !140, line: 803, baseType: !139, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1325, file: !140, line: 804, baseType: !196, offset: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1268, file: !1269, line: 176, baseType: !173, size: 64, offset: 3264)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1268, file: !1269, line: 176, baseType: !173, size: 64, offset: 3328)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1268, file: !1269, line: 176, baseType: !173, size: 64, offset: 3392)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1268, file: !1269, line: 176, baseType: !173, size: 64, offset: 3456)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1268, file: !1269, line: 177, baseType: !173, size: 64, offset: 3520)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1268, file: !1269, line: 178, baseType: !173, size: 64, offset: 3584)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1268, file: !1269, line: 179, baseType: !1029, size: 128, offset: 3648)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1268, file: !1269, line: 180, baseType: !77, size: 64, offset: 3776)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1268, file: !1269, line: 180, baseType: !77, size: 64, offset: 3840)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1268, file: !1269, line: 180, baseType: !77, size: 64, offset: 3904)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1268, file: !1269, line: 180, baseType: !77, size: 64, offset: 3968)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1268, file: !1269, line: 181, baseType: !77, size: 64, offset: 4032)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1268, file: !1269, line: 181, baseType: !77, size: 64, offset: 4096)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1268, file: !1269, line: 181, baseType: !77, size: 64, offset: 4160)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1268, file: !1269, line: 181, baseType: !77, size: 64, offset: 4224)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1268, file: !1269, line: 182, baseType: !77, size: 64, offset: 4288)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1268, file: !1269, line: 182, baseType: !77, size: 64, offset: 4352)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1268, file: !1269, line: 182, baseType: !77, size: 64, offset: 4416)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1268, file: !1269, line: 182, baseType: !77, size: 64, offset: 4480)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1268, file: !1269, line: 183, baseType: !77, size: 64, offset: 4544)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1268, file: !1269, line: 183, baseType: !77, size: 64, offset: 4608)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1268, file: !1269, line: 184, baseType: !1351, offset: 4672)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1352, line: 12, elements: !210)
!1352 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1268, file: !1269, line: 192, baseType: !175, size: 64, offset: 4672)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1268, file: !1269, line: 203, baseType: !1355, size: 2048, offset: 4736)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1356, size: 2048, elements: !1249)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1357, line: 43, size: 128, elements: !1358)
!1357 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1358 = !{!1359, !1360}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1356, file: !1357, line: 44, baseType: !417, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1356, file: !1357, line: 45, baseType: !417, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1268, file: !1269, line: 220, baseType: !279, size: 8, offset: 6784)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1268, file: !1269, line: 221, baseType: !713, size: 16, offset: 6800)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1268, file: !1269, line: 222, baseType: !713, size: 16, offset: 6816)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1268, file: !1269, line: 224, baseType: !605, size: 64, offset: 6848)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1268, file: !1269, line: 227, baseType: !424, size: 192, offset: 6912)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1268, file: !1269, line: 233, baseType: !424, size: 192, offset: 7104)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !725, file: !726, line: 970, baseType: !1368, size: 64, offset: 9280)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1269, line: 20, size: 16576, elements: !1370)
!1370 = !{!1371, !1372, !1373, !1374}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1369, file: !1269, line: 21, baseType: !196)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1369, file: !1269, line: 22, baseType: !738, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1369, file: !1269, line: 23, baseType: !572, size: 128, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1369, file: !1269, line: 24, baseType: !1375, size: 16384, offset: 192)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 16384, elements: !1396)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1279, line: 49, size: 256, elements: !1377)
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1376, file: !1279, line: 50, baseType: !1379, size: 256)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1279, line: 35, size: 256, elements: !1380)
!1380 = !{!1381, !1388, !1389, !1395}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1379, file: !1279, line: 37, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1383, line: 19, baseType: !1384)
!1383 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1383, line: 18, baseType: !1386)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !212}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1379, file: !1279, line: 38, baseType: !77, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1379, file: !1279, line: 44, baseType: !1390, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1383, line: 22, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1383, line: 21, baseType: !1393)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1379, file: !1279, line: 46, baseType: !1283, size: 64, offset: 192)
!1396 = !{!1397}
!1397 = !DISubrange(count: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !725, file: !726, line: 971, baseType: !1283, size: 64, offset: 9344)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !725, file: !726, line: 972, baseType: !1283, size: 64, offset: 9408)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !725, file: !726, line: 974, baseType: !1283, size: 64, offset: 9472)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !725, file: !726, line: 975, baseType: !1278, size: 192, offset: 9536)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !725, file: !726, line: 976, baseType: !77, size: 64, offset: 9728)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !725, file: !726, line: 977, baseType: !415, size: 64, offset: 9792)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !725, file: !726, line: 978, baseType: !5, size: 32, offset: 9856)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !725, file: !726, line: 980, baseType: !479, size: 64, offset: 9920)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !725, file: !726, line: 989, baseType: !1407, size: 128, offset: 9984)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1408, line: 35, size: 128, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !{!1410, !1411, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1407, file: !1408, line: 36, baseType: !212, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1407, file: !1408, line: 37, baseType: !634, size: 32, offset: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1407, file: !1408, line: 38, baseType: !1413, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1408, line: 23, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !725, file: !726, line: 992, baseType: !173, size: 64, offset: 10112)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !725, file: !726, line: 993, baseType: !173, size: 64, offset: 10176)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !725, file: !726, line: 996, baseType: !196, offset: 10240)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !725, file: !726, line: 999, baseType: !651, offset: 10240)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !725, file: !726, line: 1001, baseType: !1420, size: 64, offset: 10240)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !726, line: 636, size: 64, elements: !1421)
!1421 = !{!1422}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1420, file: !726, line: 637, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !725, file: !726, line: 1005, baseType: !854, size: 128, offset: 10304)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !725, file: !726, line: 1007, baseType: !724, size: 64, offset: 10432)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !725, file: !726, line: 1009, baseType: !1427, size: 64, offset: 10496)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !726, line: 1009, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !725, file: !726, line: 1043, baseType: !72, size: 64, offset: 10560)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !725, file: !726, line: 1046, baseType: !1431, size: 64, offset: 10624)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !726, line: 41, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !725, file: !726, line: 1050, baseType: !1434, size: 64, offset: 10688)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !726, line: 42, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !725, file: !726, line: 1054, baseType: !1437, size: 64, offset: 10752)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !726, line: 55, flags: DIFlagFwdDecl)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !725, file: !726, line: 1056, baseType: !1440, size: 64, offset: 10816)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !726, line: 40, flags: DIFlagFwdDecl)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !725, file: !726, line: 1058, baseType: !1443, size: 64, offset: 10880)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1445, line: 99, size: 704, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1446 = !{!1447, !1448, !1449, !1450, !1451, !1452, !1459, !1480, !1481}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1444, file: !1445, line: 100, baseType: !428, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1444, file: !1445, line: 101, baseType: !634, size: 32, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1444, file: !1445, line: 102, baseType: !634, size: 32, offset: 96)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1444, file: !1445, line: 105, baseType: !196, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1444, file: !1445, line: 107, baseType: !105, size: 16, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1444, file: !1445, line: 109, baseType: !1453, size: 128, offset: 192)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1454, line: 292, size: 128, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1453, file: !1454, line: 293, baseType: !196)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1453, file: !1454, line: 295, baseType: !73, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1453, file: !1454, line: 296, baseType: !72, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1444, file: !1445, line: 110, baseType: !1460, size: 64, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1445, line: 73, size: 448, elements: !1462)
!1462 = !{!1463, !1466, !1467, !1474, !1479}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1461, file: !1445, line: 74, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1445, line: 74, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1461, file: !1445, line: 75, baseType: !1443, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, scope: !1461, file: !1445, line: 83, baseType: !1468, size: 128, offset: 128)
!1468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1461, file: !1445, line: 83, size: 128, elements: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1468, file: !1445, line: 84, baseType: !90, size: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1468, file: !1445, line: 85, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !80, line: 117, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1461, file: !1445, line: 87, baseType: !1475, size: 128, offset: 256)
!1475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1461, file: !1445, line: 87, size: 128, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1475, file: !1445, line: 88, baseType: !335, size: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1475, file: !1445, line: 89, baseType: !476, size: 128, align: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1461, file: !1445, line: 92, baseType: !5, size: 32, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1444, file: !1445, line: 111, baseType: !331, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1444, file: !1445, line: 113, baseType: !1482, size: 256, offset: 448)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1483, line: 102, size: 256, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1484 = !{!1485, !1486, !1487}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1482, file: !1483, line: 103, baseType: !428, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1482, file: !1483, line: 104, baseType: !90, size: 128, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1482, file: !1483, line: 105, baseType: !1488, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1483, line: 21, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !1492}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !725, file: !726, line: 1061, baseType: !1494, size: 64, offset: 10944)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !726, line: 43, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !725, file: !726, line: 1064, baseType: !77, size: 64, offset: 11008)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !725, file: !726, line: 1065, baseType: !1498, size: 64, offset: 11072)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1279, line: 14, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1279, line: 12, size: 384, elements: !1501)
!1501 = !{!1502}
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1500, file: !1279, line: 13, baseType: !1503, size: 384)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1500, file: !1279, line: 13, size: 384, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1503, file: !1279, line: 13, baseType: !212, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1503, file: !1279, line: 13, baseType: !212, size: 32, offset: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1503, file: !1279, line: 13, baseType: !212, size: 32, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1503, file: !1279, line: 13, baseType: !1509, size: 256, offset: 128)
!1509 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1510, line: 32, size: 256, elements: !1511)
!1510 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1511 = !{!1512, !1517, !1530, !1536, !1545, !1565, !1570}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1509, file: !1510, line: 37, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 34, size: 64, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1513, file: !1510, line: 35, baseType: !977, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1513, file: !1510, line: 36, baseType: !114, size: 32, offset: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1509, file: !1510, line: 45, baseType: !1518, size: 192)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 40, size: 192, elements: !1519)
!1519 = !{!1520, !1522, !1523, !1529}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1518, file: !1510, line: 41, baseType: !1521, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !115, line: 95, baseType: !212)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1518, file: !1510, line: 42, baseType: !212, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1518, file: !1510, line: 43, baseType: !1524, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1510, line: 11, baseType: !1525)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1510, line: 8, size: 64, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1525, file: !1510, line: 9, baseType: !212, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1525, file: !1510, line: 10, baseType: !72, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1518, file: !1510, line: 44, baseType: !212, size: 32, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1509, file: !1510, line: 52, baseType: !1531, size: 128)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 48, size: 128, elements: !1532)
!1532 = !{!1533, !1534, !1535}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1531, file: !1510, line: 49, baseType: !977, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1531, file: !1510, line: 50, baseType: !114, size: 32, offset: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1531, file: !1510, line: 51, baseType: !1524, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1509, file: !1510, line: 61, baseType: !1537, size: 256)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 55, size: 256, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1544}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1537, file: !1510, line: 56, baseType: !977, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1537, file: !1510, line: 57, baseType: !114, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1537, file: !1510, line: 58, baseType: !212, size: 32, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1537, file: !1510, line: 59, baseType: !1543, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !115, line: 94, baseType: !503)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1537, file: !1510, line: 60, baseType: !1543, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1509, file: !1510, line: 95, baseType: !1546, size: 256)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 64, size: 256, elements: !1547)
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1546, file: !1510, line: 65, baseType: !72, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1510, line: 77, baseType: !1550, size: 192, offset: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1510, line: 77, size: 192, elements: !1551)
!1551 = !{!1552, !1553, !1560}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1550, file: !1510, line: 82, baseType: !713, size: 16)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1550, file: !1510, line: 88, baseType: !1554, size: 192)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1550, file: !1510, line: 84, size: 192, elements: !1555)
!1555 = !{!1556, !1558, !1559}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1554, file: !1510, line: 85, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 64, elements: !838)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1554, file: !1510, line: 86, baseType: !72, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1554, file: !1510, line: 87, baseType: !72, size: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1550, file: !1510, line: 93, baseType: !1561, size: 96)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1550, file: !1510, line: 90, size: 96, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1561, file: !1510, line: 91, baseType: !1557, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1561, file: !1510, line: 92, baseType: !169, size: 32, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1509, file: !1510, line: 101, baseType: !1566, size: 128)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 98, size: 128, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1566, file: !1510, line: 99, baseType: !504, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1566, file: !1510, line: 100, baseType: !212, size: 32, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1509, file: !1510, line: 108, baseType: !1571, size: 128)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 104, size: 128, elements: !1572)
!1572 = !{!1573, !1574, !1575}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1571, file: !1510, line: 105, baseType: !72, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1571, file: !1510, line: 106, baseType: !212, size: 32, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1571, file: !1510, line: 107, baseType: !5, size: 32, offset: 96)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !725, file: !726, line: 1067, baseType: !1351, offset: 11136)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !725, file: !726, line: 1099, baseType: !1578, size: 64, offset: 11136)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !726, line: 56, flags: DIFlagFwdDecl)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !725, file: !726, line: 1103, baseType: !90, size: 128, offset: 11200)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !725, file: !726, line: 1104, baseType: !1582, size: 64, offset: 11328)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !726, line: 46, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !725, file: !726, line: 1105, baseType: !424, size: 192, offset: 11392)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !725, file: !726, line: 1106, baseType: !5, size: 32, offset: 11584)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !725, file: !726, line: 1109, baseType: !1587, size: 128, offset: 11648)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1588, size: 128, elements: !1080)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !726, line: 51, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !725, file: !726, line: 1110, baseType: !424, size: 192, offset: 11776)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !725, file: !726, line: 1111, baseType: !90, size: 128, offset: 11968)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !725, file: !726, line: 1173, baseType: !1593, size: 64, offset: 12096)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1595, line: 62, size: 256, align: 256, elements: !1596)
!1595 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1596 = !{!1597, !1598, !1599, !1604}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1594, file: !1595, line: 75, baseType: !169, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1594, file: !1595, line: 90, baseType: !169, size: 32, offset: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1594, file: !1595, line: 124, baseType: !1600, size: 64, offset: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1594, file: !1595, line: 109, size: 64, elements: !1601)
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1600, file: !1595, line: 110, baseType: !174, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1600, file: !1595, line: 112, baseType: !174, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1594, file: !1595, line: 144, baseType: !169, size: 32, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !725, file: !726, line: 1174, baseType: !167, size: 32, offset: 12160)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !725, file: !726, line: 1179, baseType: !77, size: 64, offset: 12224)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !725, file: !726, line: 1182, baseType: !1608, size: 128, offset: 12288)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !681, line: 76, size: 128, elements: !1609)
!1609 = !{!1610, !1615, !1616}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1608, file: !681, line: 85, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1612, line: 7, size: 64, elements: !1613)
!1612 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1613 = !{!1614}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1611, file: !1612, line: 12, baseType: !879, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1608, file: !681, line: 88, baseType: !279, size: 8, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1608, file: !681, line: 95, baseType: !279, size: 8, offset: 72)
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !726, line: 1184, baseType: !1618, size: 128, offset: 12416)
!1618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !725, file: !726, line: 1184, size: 128, elements: !1619)
!1619 = !{!1620, !1621}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1618, file: !726, line: 1185, baseType: !738, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1618, file: !726, line: 1186, baseType: !476, size: 128, align: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !725, file: !726, line: 1190, baseType: !1623, size: 64, offset: 12544)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !726, line: 53, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !725, file: !726, line: 1192, baseType: !1626, size: 128, offset: 12608)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !681, line: 64, size: 128, elements: !1627)
!1627 = !{!1628, !1629, !1630}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1626, file: !681, line: 65, baseType: !78, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1626, file: !681, line: 67, baseType: !169, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1626, file: !681, line: 68, baseType: !169, size: 32, offset: 96)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !725, file: !726, line: 1206, baseType: !212, size: 32, offset: 12736)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !725, file: !726, line: 1207, baseType: !212, size: 32, offset: 12768)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !725, file: !726, line: 1209, baseType: !77, size: 64, offset: 12800)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !725, file: !726, line: 1219, baseType: !173, size: 64, offset: 12864)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !725, file: !726, line: 1220, baseType: !173, size: 64, offset: 12928)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !725, file: !726, line: 1317, baseType: !212, size: 32, offset: 12992)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !725, file: !726, line: 1319, baseType: !724, size: 64, offset: 13056)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !725, file: !726, line: 1322, baseType: !1639, size: 64, offset: 13120)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1641, line: 56, size: 512, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1642 = !{!1643, !1644, !1645, !1646, !1647, !1649, !1650, !1652}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1640, file: !1641, line: 57, baseType: !1639, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1640, file: !1641, line: 58, baseType: !72, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1640, file: !1641, line: 59, baseType: !77, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1640, file: !1641, line: 60, baseType: !77, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1640, file: !1641, line: 61, baseType: !1648, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1640, file: !1641, line: 62, baseType: !5, size: 32, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1640, file: !1641, line: 63, baseType: !1651, size: 64, offset: 384)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !74, line: 153, baseType: !173)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1640, file: !1641, line: 64, baseType: !1653, size: 64, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !725, file: !726, line: 1326, baseType: !738, size: 32, offset: 13184)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !725, file: !726, line: 1342, baseType: !72, size: 64, offset: 13248)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !725, file: !726, line: 1343, baseType: !174, size: 64, offset: 13312)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !725, file: !726, line: 1344, baseType: !173, size: 64, offset: 13376)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !725, file: !726, line: 1345, baseType: !174, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !725, file: !726, line: 1346, baseType: !174, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !725, file: !726, line: 1347, baseType: !174, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !725, file: !726, line: 1348, baseType: !476, size: 128, align: 64, offset: 13504)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !725, file: !726, line: 1358, baseType: !1664, size: 34816, offset: 13824)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1665, line: 485, size: 34816, elements: !1666)
!1665 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1666 = !{!1667, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1696, !1697, !1698, !1699, !1700, !1701, !1704, !1705, !1706}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1664, file: !1665, line: 487, baseType: !1668, size: 192)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1669, size: 192, elements: !347)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1670, line: 16, size: 64, elements: !1671)
!1670 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1669, file: !1670, line: 17, baseType: !525, size: 16)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1669, file: !1670, line: 18, baseType: !525, size: 16, offset: 16)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1669, file: !1670, line: 19, baseType: !525, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1669, file: !1670, line: 19, baseType: !525, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1669, file: !1670, line: 19, baseType: !525, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1669, file: !1670, line: 19, baseType: !525, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1669, file: !1670, line: 19, baseType: !525, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1669, file: !1670, line: 20, baseType: !525, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1669, file: !1670, line: 20, baseType: !525, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1669, file: !1670, line: 20, baseType: !525, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1669, file: !1670, line: 20, baseType: !525, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1669, file: !1670, line: 20, baseType: !525, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1669, file: !1670, line: 20, baseType: !525, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1664, file: !1665, line: 491, baseType: !77, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1664, file: !1665, line: 495, baseType: !105, size: 16, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1664, file: !1665, line: 496, baseType: !105, size: 16, offset: 272)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1664, file: !1665, line: 497, baseType: !105, size: 16, offset: 288)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1664, file: !1665, line: 498, baseType: !105, size: 16, offset: 304)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1664, file: !1665, line: 502, baseType: !77, size: 64, offset: 320)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1664, file: !1665, line: 503, baseType: !77, size: 64, offset: 384)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1664, file: !1665, line: 514, baseType: !1693, size: 256, offset: 448)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1694, size: 256, elements: !685)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1665, line: 483, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1664, file: !1665, line: 516, baseType: !77, size: 64, offset: 704)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1664, file: !1665, line: 518, baseType: !77, size: 64, offset: 768)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1664, file: !1665, line: 520, baseType: !77, size: 64, offset: 832)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1664, file: !1665, line: 521, baseType: !77, size: 64, offset: 896)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1664, file: !1665, line: 522, baseType: !77, size: 64, offset: 960)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1664, file: !1665, line: 528, baseType: !1702, size: 64, offset: 1024)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1665, line: 10, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1664, file: !1665, line: 535, baseType: !77, size: 64, offset: 1088)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1664, file: !1665, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1664, file: !1665, line: 540, baseType: !1707, size: 33280, offset: 1536)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1708, line: 317, size: 33280, elements: !1709)
!1708 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1709 = !{!1710, !1711, !1712}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1707, file: !1708, line: 330, baseType: !5, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1707, file: !1708, line: 337, baseType: !77, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1707, file: !1708, line: 348, baseType: !1713, size: 32768, offset: 512)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1708, line: 304, size: 32768, elements: !1714)
!1714 = !{!1715, !1730, !1767, !1817, !1830}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1713, file: !1708, line: 305, baseType: !1716, size: 896)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1708, line: 12, size: 896, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1729}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1716, file: !1708, line: 13, baseType: !167, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1716, file: !1708, line: 14, baseType: !167, size: 32, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1716, file: !1708, line: 15, baseType: !167, size: 32, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1716, file: !1708, line: 16, baseType: !167, size: 32, offset: 96)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1716, file: !1708, line: 17, baseType: !167, size: 32, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1716, file: !1708, line: 18, baseType: !167, size: 32, offset: 160)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1716, file: !1708, line: 19, baseType: !167, size: 32, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1716, file: !1708, line: 22, baseType: !1726, size: 640, offset: 224)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 640, elements: !1727)
!1727 = !{!1728}
!1728 = !DISubrange(count: 20)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1716, file: !1708, line: 25, baseType: !167, size: 32, offset: 864)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1713, file: !1708, line: 306, baseType: !1731, size: 4096, align: 128)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1708, line: 34, size: 4096, align: 128, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1752, !1753, !1754, !1756, !1758, !1762}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1731, file: !1708, line: 35, baseType: !525, size: 16)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1731, file: !1708, line: 36, baseType: !525, size: 16, offset: 16)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1731, file: !1708, line: 37, baseType: !525, size: 16, offset: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1731, file: !1708, line: 38, baseType: !525, size: 16, offset: 48)
!1737 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1708, line: 39, baseType: !1738, size: 128, offset: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1708, line: 39, size: 128, elements: !1739)
!1739 = !{!1740, !1745}
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1738, file: !1708, line: 40, baseType: !1741, size: 128)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1738, file: !1708, line: 40, size: 128, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1741, file: !1708, line: 41, baseType: !173, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1741, file: !1708, line: 42, baseType: !173, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1738, file: !1708, line: 44, baseType: !1746, size: 128)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1738, file: !1708, line: 44, size: 128, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1746, file: !1708, line: 45, baseType: !167, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1746, file: !1708, line: 46, baseType: !167, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1746, file: !1708, line: 47, baseType: !167, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1746, file: !1708, line: 48, baseType: !167, size: 32, offset: 96)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1731, file: !1708, line: 51, baseType: !167, size: 32, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1731, file: !1708, line: 52, baseType: !167, size: 32, offset: 224)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1731, file: !1708, line: 55, baseType: !1755, size: 1024, offset: 256)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 1024, elements: !183)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1731, file: !1708, line: 58, baseType: !1757, size: 2048, offset: 1280)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 2048, elements: !1396)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1731, file: !1708, line: 60, baseType: !1759, size: 384, offset: 3328)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 384, elements: !1760)
!1760 = !{!1761}
!1761 = !DISubrange(count: 12)
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1708, line: 62, baseType: !1763, size: 384, offset: 3712)
!1763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1708, line: 62, size: 384, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1763, file: !1708, line: 63, baseType: !1759, size: 384)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1763, file: !1708, line: 64, baseType: !1759, size: 384)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1713, file: !1708, line: 307, baseType: !1768, size: 1088)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1708, line: 79, size: 1088, elements: !1769)
!1769 = !{!1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1816}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1768, file: !1708, line: 80, baseType: !167, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1768, file: !1708, line: 81, baseType: !167, size: 32, offset: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1768, file: !1708, line: 82, baseType: !167, size: 32, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1768, file: !1708, line: 83, baseType: !167, size: 32, offset: 96)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1768, file: !1708, line: 84, baseType: !167, size: 32, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1768, file: !1708, line: 85, baseType: !167, size: 32, offset: 160)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1768, file: !1708, line: 86, baseType: !167, size: 32, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1768, file: !1708, line: 88, baseType: !1726, size: 640, offset: 224)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1768, file: !1708, line: 89, baseType: !864, size: 8, offset: 864)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1768, file: !1708, line: 90, baseType: !864, size: 8, offset: 872)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1768, file: !1708, line: 91, baseType: !864, size: 8, offset: 880)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1768, file: !1708, line: 92, baseType: !864, size: 8, offset: 888)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1768, file: !1708, line: 93, baseType: !864, size: 8, offset: 896)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1768, file: !1708, line: 94, baseType: !864, size: 8, offset: 904)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1768, file: !1708, line: 95, baseType: !1785, size: 64, offset: 960)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1787, line: 11, size: 128, elements: !1788)
!1787 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1786, file: !1787, line: 12, baseType: !504, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1786, file: !1787, line: 13, baseType: !1791, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1793, line: 56, size: 1344, elements: !1794)
!1793 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1792, file: !1793, line: 61, baseType: !77, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1792, file: !1793, line: 62, baseType: !77, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1792, file: !1793, line: 63, baseType: !77, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1792, file: !1793, line: 64, baseType: !77, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1792, file: !1793, line: 65, baseType: !77, size: 64, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1792, file: !1793, line: 66, baseType: !77, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1792, file: !1793, line: 68, baseType: !77, size: 64, offset: 384)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1792, file: !1793, line: 69, baseType: !77, size: 64, offset: 448)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1792, file: !1793, line: 70, baseType: !77, size: 64, offset: 512)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1792, file: !1793, line: 71, baseType: !77, size: 64, offset: 576)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1792, file: !1793, line: 72, baseType: !77, size: 64, offset: 640)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1792, file: !1793, line: 73, baseType: !77, size: 64, offset: 704)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1792, file: !1793, line: 74, baseType: !77, size: 64, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1792, file: !1793, line: 75, baseType: !77, size: 64, offset: 832)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1792, file: !1793, line: 76, baseType: !77, size: 64, offset: 896)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1792, file: !1793, line: 81, baseType: !77, size: 64, offset: 960)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1792, file: !1793, line: 83, baseType: !77, size: 64, offset: 1024)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1792, file: !1793, line: 84, baseType: !77, size: 64, offset: 1088)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1792, file: !1793, line: 85, baseType: !77, size: 64, offset: 1152)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1792, file: !1793, line: 86, baseType: !77, size: 64, offset: 1216)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1792, file: !1793, line: 87, baseType: !77, size: 64, offset: 1280)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1768, file: !1708, line: 96, baseType: !167, size: 32, offset: 1024)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1713, file: !1708, line: 308, baseType: !1818, size: 4608, align: 512)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1708, line: 289, size: 4608, align: 512, elements: !1819)
!1819 = !{!1820, !1821, !1828}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1818, file: !1708, line: 290, baseType: !1731, size: 4096, align: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1818, file: !1708, line: 291, baseType: !1822, size: 512, offset: 4096)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1708, line: 268, size: 512, elements: !1823)
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1822, file: !1708, line: 269, baseType: !173, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1822, file: !1708, line: 270, baseType: !173, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1822, file: !1708, line: 271, baseType: !1827, size: 384, offset: 128)
!1827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 384, elements: !1139)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1818, file: !1708, line: 292, baseType: !1829, offset: 4608)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, elements: !1237)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1713, file: !1708, line: 309, baseType: !1831, size: 32768)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 32768, elements: !1832)
!1832 = !{!1833}
!1833 = !DISubrange(count: 4096)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !80, line: 378, baseType: !1835, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !717, file: !80, line: 384, baseType: !1013, size: 192, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !609, file: !80, line: 500, baseType: !196, offset: 6656)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !609, file: !80, line: 501, baseType: !1839, size: 64, offset: 6656)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !80, line: 387, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !609, file: !80, line: 516, baseType: !1227, size: 64, offset: 6720)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !609, file: !80, line: 519, baseType: !496, size: 64, offset: 6784)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !609, file: !80, line: 521, baseType: !1844, size: 64, offset: 6848)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !80, line: 521, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !609, file: !80, line: 545, baseType: !634, size: 32, offset: 6912)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !609, file: !80, line: 548, baseType: !279, size: 8, offset: 6944)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !609, file: !80, line: 550, baseType: !1849, offset: 6952)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1850, line: 142, elements: !210)
!1850 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !609, file: !80, line: 554, baseType: !1482, size: 256, offset: 6976)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !609, file: !80, line: 557, baseType: !167, size: 32, offset: 7232)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !606, file: !80, line: 565, baseType: !1854, offset: 7296)
!1854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, elements: !1855)
!1855 = !{!1856}
!1856 = !DISubrange(count: -1)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !589, file: !80, line: 333, baseType: !1858, size: 64, offset: 576)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !628, line: 284, baseType: !1859)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !628, line: 284, size: 64, elements: !1860)
!1860 = !{!1861}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1859, file: !628, line: 284, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !76, line: 19, baseType: !77)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !589, file: !80, line: 334, baseType: !77, size: 64, offset: 640)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !589, file: !80, line: 343, baseType: !1865, size: 256, offset: 704)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !589, file: !80, line: 340, size: 256, elements: !1866)
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1865, file: !80, line: 341, baseType: !596, size: 192, align: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1865, file: !80, line: 342, baseType: !77, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !589, file: !80, line: 351, baseType: !90, size: 128, offset: 960)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !589, file: !80, line: 353, baseType: !1871, size: 64, offset: 1088)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !80, line: 353, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !589, file: !80, line: 356, baseType: !1874, size: 64, offset: 1152)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1876)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !42, line: 557, size: 832, elements: !1877)
!1877 = !{!1878, !1882, !1883, !1887, !1891, !1931, !1935, !1939, !1943, !1944, !1945, !1949, !1953}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1876, file: !42, line: 558, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !588}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1876, file: !42, line: 559, baseType: !1879, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1876, file: !42, line: 560, baseType: !1884, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!212, !588, !77}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1876, file: !42, line: 561, baseType: !1888, size: 64, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!212, !588}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1876, file: !42, line: 562, baseType: !1892, size: 64, offset: 256)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !80, line: 682, baseType: !5)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !42, line: 508, size: 768, elements: !1898)
!1898 = !{!1899, !1900, !1901, !1902, !1903, !1904, !1911, !1918, !1923, !1924, !1925, !1927, !1929}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1897, file: !42, line: 509, baseType: !588, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1897, file: !42, line: 510, baseType: !5, size: 32, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1897, file: !42, line: 511, baseType: !73, size: 32, offset: 96)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1897, file: !42, line: 512, baseType: !77, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1897, file: !42, line: 513, baseType: !77, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1897, file: !42, line: 514, baseType: !1905, size: 64, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !628, line: 385, baseType: !1907)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !628, line: 385, size: 64, elements: !1908)
!1908 = !{!1909}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1907, file: !628, line: 385, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !76, line: 15, baseType: !77)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1897, file: !42, line: 516, baseType: !1912, size: 64, offset: 320)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !628, line: 359, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !628, line: 359, size: 64, elements: !1915)
!1915 = !{!1916}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1914, file: !628, line: 359, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !76, line: 16, baseType: !77)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1897, file: !42, line: 519, baseType: !1919, size: 64, offset: 384)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !76, line: 21, baseType: !1920)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 21, size: 64, elements: !1921)
!1921 = !{!1922}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1920, file: !76, line: 21, baseType: !75, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1897, file: !42, line: 521, baseType: !78, size: 64, offset: 448)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1897, file: !42, line: 522, baseType: !78, size: 64, offset: 512)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1897, file: !42, line: 528, baseType: !1926, size: 64, offset: 576)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1897, file: !42, line: 532, baseType: !1928, size: 64, offset: 640)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1897, file: !42, line: 536, baseType: !1930, size: 64, offset: 704)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !628, line: 509, baseType: !78)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1876, file: !42, line: 563, baseType: !1932, size: 64, offset: 320)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!1895, !1896, !41}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1876, file: !42, line: 565, baseType: !1936, size: 64, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1896, !77, !77}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1876, file: !42, line: 567, baseType: !1940, size: 64, offset: 448)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!77, !588}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1876, file: !42, line: 571, baseType: !1892, size: 64, offset: 512)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1876, file: !42, line: 574, baseType: !1892, size: 64, offset: 576)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1876, file: !42, line: 579, baseType: !1946, size: 64, offset: 640)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!212, !588, !77, !72, !212, !212}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1876, file: !42, line: 585, baseType: !1950, size: 64, offset: 704)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!234, !588}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1876, file: !42, line: 615, baseType: !1954, size: 64, offset: 768)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!78, !588, !77}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !589, file: !80, line: 359, baseType: !77, size: 64, offset: 1216)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !589, file: !80, line: 361, baseType: !496, size: 64, offset: 1280)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !589, file: !80, line: 362, baseType: !72, size: 64, offset: 1344)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !589, file: !80, line: 365, baseType: !428, size: 64, offset: 1408)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !589, file: !80, line: 373, baseType: !1962, offset: 1472)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !80, line: 296, elements: !210)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !489, file: !48, line: 1836, baseType: !77, size: 64, offset: 832)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !489, file: !48, line: 1837, baseType: !1965, size: 64, offset: 896)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!212, !100, !496}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !489, file: !48, line: 1838, baseType: !1969, size: 64, offset: 960)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!212, !496, !1972}
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !48, line: 1007, baseType: !72)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !489, file: !48, line: 1839, baseType: !1965, size: 64, offset: 1024)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !489, file: !48, line: 1840, baseType: !1975, size: 64, offset: 1088)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!212, !496, !298, !298, !212}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !489, file: !48, line: 1841, baseType: !1979, size: 64, offset: 1152)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!212, !212, !496, !212}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !489, file: !48, line: 1842, baseType: !1983, size: 64, offset: 1216)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!212, !496, !212, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !48, line: 1062, size: 1664, elements: !1988)
!1988 = !{!1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2020, !2021, !2022, !2035, !2067}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1987, file: !48, line: 1063, baseType: !1986, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1987, file: !48, line: 1064, baseType: !90, size: 128, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1987, file: !48, line: 1065, baseType: !335, size: 128, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1987, file: !48, line: 1066, baseType: !90, size: 128, offset: 320)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1987, file: !48, line: 1069, baseType: !90, size: 128, offset: 448)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1987, file: !48, line: 1072, baseType: !1972, size: 64, offset: 576)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1987, file: !48, line: 1073, baseType: !5, size: 32, offset: 640)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1987, file: !48, line: 1074, baseType: !179, size: 8, offset: 672)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1987, file: !48, line: 1075, baseType: !5, size: 32, offset: 704)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1987, file: !48, line: 1076, baseType: !212, size: 32, offset: 736)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1987, file: !48, line: 1077, baseType: !572, size: 128, offset: 768)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1987, file: !48, line: 1078, baseType: !496, size: 64, offset: 896)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1987, file: !48, line: 1079, baseType: !298, size: 64, offset: 960)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1987, file: !48, line: 1080, baseType: !298, size: 64, offset: 1024)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1987, file: !48, line: 1082, baseType: !2004, size: 64, offset: 1088)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !48, line: 1314, size: 320, elements: !2006)
!2006 = !{!2007, !2015, !2016, !2017, !2018, !2019}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2005, file: !48, line: 1315, baseType: !2008)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2009, line: 20, baseType: !2010)
!2009 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2009, line: 11, elements: !2011)
!2011 = !{!2012}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2010, file: !2009, line: 12, baseType: !2013)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !208, line: 33, baseType: !2014)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 31, elements: !210)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2005, file: !48, line: 1316, baseType: !212, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2005, file: !48, line: 1317, baseType: !212, size: 32, offset: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2005, file: !48, line: 1318, baseType: !2004, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2005, file: !48, line: 1319, baseType: !496, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2005, file: !48, line: 1320, baseType: !476, size: 128, align: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1987, file: !48, line: 1084, baseType: !77, size: 64, offset: 1152)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1987, file: !48, line: 1085, baseType: !77, size: 64, offset: 1216)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1987, file: !48, line: 1087, baseType: !2023, size: 64, offset: 1280)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2025)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !48, line: 1011, size: 128, elements: !2026)
!2026 = !{!2027, !2031}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2025, file: !48, line: 1012, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !1986, !1986}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2025, file: !48, line: 1013, baseType: !2032, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !1986}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1987, file: !48, line: 1088, baseType: !2036, size: 64, offset: 1344)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !48, line: 1016, size: 512, elements: !2039)
!2039 = !{!2040, !2044, !2048, !2049, !2053, !2057, !2061, !2066}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2038, file: !48, line: 1017, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!1972, !1972}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2038, file: !48, line: 1018, baseType: !2045, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !1972}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2038, file: !48, line: 1019, baseType: !2032, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2038, file: !48, line: 1020, baseType: !2050, size: 64, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!212, !1986, !212}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2038, file: !48, line: 1021, baseType: !2054, size: 64, offset: 256)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!279, !1986}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2038, file: !48, line: 1022, baseType: !2058, size: 64, offset: 320)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!212, !1986, !212, !93}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2038, file: !48, line: 1023, baseType: !2062, size: 64, offset: 384)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !1986, !2065}
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2038, file: !48, line: 1024, baseType: !2054, size: 64, offset: 448)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1987, file: !48, line: 1097, baseType: !2068, size: 256, offset: 1408)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1987, file: !48, line: 1089, size: 256, elements: !2069)
!2069 = !{!2070, !2079, !2085}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2068, file: !48, line: 1090, baseType: !2071, size: 256)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2072, line: 10, size: 256, elements: !2073)
!2072 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2073 = !{!2074, !2075, !2078}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2071, file: !2072, line: 11, baseType: !167, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2071, file: !2072, line: 12, baseType: !2076, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2072, line: 5, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2071, file: !2072, line: 13, baseType: !90, size: 128, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2068, file: !48, line: 1091, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2072, line: 17, size: 64, elements: !2081)
!2081 = !{!2082}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2080, file: !2072, line: 18, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2072, line: 16, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2068, file: !48, line: 1096, baseType: !2086, size: 192)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2068, file: !48, line: 1092, size: 192, elements: !2087)
!2087 = !{!2088, !2089, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2086, file: !48, line: 1093, baseType: !90, size: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2086, file: !48, line: 1094, baseType: !212, size: 32, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2086, file: !48, line: 1095, baseType: !5, size: 32, offset: 160)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !489, file: !48, line: 1843, baseType: !2092, size: 64, offset: 1280)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!501, !496, !78, !212, !415, !447, !212}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !489, file: !48, line: 1844, baseType: !618, size: 64, offset: 1344)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !489, file: !48, line: 1845, baseType: !2097, size: 64, offset: 1408)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!212, !212}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !489, file: !48, line: 1846, baseType: !1983, size: 64, offset: 1472)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !489, file: !48, line: 1847, baseType: !2102, size: 64, offset: 1536)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!501, !1623, !496, !447, !415, !5}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !489, file: !48, line: 1848, baseType: !2106, size: 64, offset: 1600)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!501, !496, !447, !1623, !415, !5}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !489, file: !48, line: 1849, baseType: !2110, size: 64, offset: 1664)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!212, !496, !504, !2113, !2065}
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !489, file: !48, line: 1850, baseType: !2115, size: 64, offset: 1728)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!504, !496, !212, !298, !298}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !489, file: !48, line: 1852, baseType: !2119, size: 64, offset: 1792)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !409, !496}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !489, file: !48, line: 1856, baseType: !2123, size: 64, offset: 1856)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!501, !496, !298, !496, !298, !415, !5}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !489, file: !48, line: 1858, baseType: !2127, size: 64, offset: 1920)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!298, !496, !298, !496, !298, !298, !5}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !489, file: !48, line: 1861, baseType: !1975, size: 64, offset: 1984)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !464, file: !48, line: 929, baseType: !196, offset: 384)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !464, file: !48, line: 930, baseType: !47, size: 32, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !464, file: !48, line: 931, baseType: !428, size: 64, offset: 448)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !464, file: !48, line: 932, baseType: !5, size: 32, offset: 512)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !464, file: !48, line: 933, baseType: !2136, size: 32, offset: 544)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !74, line: 150, baseType: !5)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !464, file: !48, line: 934, baseType: !424, size: 192, offset: 576)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !464, file: !48, line: 935, baseType: !298, size: 64, offset: 768)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !464, file: !48, line: 936, baseType: !2140, size: 192, offset: 832)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !48, line: 885, size: 192, elements: !2141)
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2140, file: !48, line: 886, baseType: !2008)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2140, file: !48, line: 887, baseType: !988, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2140, file: !48, line: 888, baseType: !56, size: 32, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2140, file: !48, line: 889, baseType: !108, size: 32, offset: 96)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2140, file: !48, line: 889, baseType: !108, size: 32, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2140, file: !48, line: 890, baseType: !212, size: 32, offset: 160)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !464, file: !48, line: 937, baseType: !1058, size: 64, offset: 1024)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !464, file: !48, line: 938, baseType: !2150, size: 256, offset: 1088)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !48, line: 896, size: 256, elements: !2151)
!2151 = !{!2152, !2153, !2154, !2155, !2156, !2157}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2150, file: !48, line: 897, baseType: !77, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2150, file: !48, line: 898, baseType: !5, size: 32, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2150, file: !48, line: 899, baseType: !5, size: 32, offset: 96)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2150, file: !48, line: 902, baseType: !5, size: 32, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2150, file: !48, line: 903, baseType: !5, size: 32, offset: 160)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2150, file: !48, line: 904, baseType: !298, size: 64, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !464, file: !48, line: 940, baseType: !173, size: 64, offset: 1344)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !464, file: !48, line: 945, baseType: !72, size: 64, offset: 1408)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !464, file: !48, line: 949, baseType: !90, size: 128, offset: 1472)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !464, file: !48, line: 950, baseType: !90, size: 128, offset: 1600)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !464, file: !48, line: 952, baseType: !96, size: 64, offset: 1728)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !464, file: !48, line: 953, baseType: !2164, size: 32, offset: 1792)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2165, line: 8, baseType: !167)
!2165 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !464, file: !48, line: 954, baseType: !2164, size: 32, offset: 1824)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !410, file: !411, line: 28, baseType: !72, size: 64, offset: 832)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !355, file: !48, line: 1955, baseType: !406, size: 64, offset: 1088)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !355, file: !48, line: 1956, baseType: !406, size: 64, offset: 1152)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !355, file: !48, line: 1957, baseType: !406, size: 64, offset: 1216)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !355, file: !48, line: 1963, baseType: !2172, size: 64, offset: 1280)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!212, !288, !78, !73}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !355, file: !48, line: 1964, baseType: !2176, size: 64, offset: 1344)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!504, !288, !2179}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2181, line: 12, size: 256, elements: !2182)
!2181 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2182 = !{!2183, !2184, !2185, !2186, !2187}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2180, file: !2181, line: 13, baseType: !73, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2180, file: !2181, line: 16, baseType: !212, size: 32, offset: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2180, file: !2181, line: 23, baseType: !77, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2180, file: !2181, line: 30, baseType: !77, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2180, file: !2181, line: 33, baseType: !2188, size: 64, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !80, line: 27, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !355, file: !48, line: 1966, baseType: !2176, size: 64, offset: 1408)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !289, file: !48, line: 1424, baseType: !2192, size: 64, offset: 448)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 322, size: 704, elements: !2195)
!2195 = !{!2196, !2242, !2246, !2250, !2251, !2252, !2253, !2254, !2259, !2264, !2268}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2194, file: !19, line: 323, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!212, !2200}
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 294, size: 1600, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2227, !2228, !2229}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2201, file: !19, line: 295, baseType: !335, size: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2201, file: !19, line: 296, baseType: !90, size: 128, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2201, file: !19, line: 297, baseType: !90, size: 128, offset: 256)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2201, file: !19, line: 298, baseType: !90, size: 128, offset: 384)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2201, file: !19, line: 299, baseType: !424, size: 192, offset: 512)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2201, file: !19, line: 300, baseType: !196, offset: 704)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2201, file: !19, line: 301, baseType: !634, size: 32, offset: 704)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2201, file: !19, line: 302, baseType: !288, size: 64, offset: 768)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2201, file: !19, line: 303, baseType: !2212, size: 64, offset: 832)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !2213)
!2213 = !{!2214, !2226}
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !19, line: 69, baseType: !2215, size: 32)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !19, line: 69, size: 32, elements: !2216)
!2216 = !{!2217, !2218, !2219}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2215, file: !19, line: 70, baseType: !108, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2215, file: !19, line: 71, baseType: !117, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2215, file: !19, line: 72, baseType: !2220, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2221, line: 24, baseType: !2222)
!2221 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2221, line: 22, size: 32, elements: !2223)
!2223 = !{!2224}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2222, file: !2221, line: 23, baseType: !2225, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2221, line: 20, baseType: !114)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2212, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2201, file: !19, line: 304, baseType: !298, size: 64, offset: 896)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2201, file: !19, line: 305, baseType: !77, size: 64, offset: 960)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2201, file: !19, line: 306, baseType: !2230, size: 576, offset: 1024)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !2231)
!2231 = !{!2232, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2230, file: !19, line: 206, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !300)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2230, file: !19, line: 207, baseType: !2233, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2230, file: !19, line: 208, baseType: !2233, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2230, file: !19, line: 209, baseType: !2233, size: 64, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2230, file: !19, line: 210, baseType: !2233, size: 64, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2230, file: !19, line: 211, baseType: !2233, size: 64, offset: 320)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2230, file: !19, line: 212, baseType: !2233, size: 64, offset: 384)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2230, file: !19, line: 213, baseType: !1110, size: 64, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2230, file: !19, line: 214, baseType: !1110, size: 64, offset: 512)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2194, file: !19, line: 324, baseType: !2243, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!2200, !288, !212}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2194, file: !19, line: 325, baseType: !2247, size: 64, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !2200}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2194, file: !19, line: 326, baseType: !2197, size: 64, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2194, file: !19, line: 327, baseType: !2197, size: 64, offset: 256)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2194, file: !19, line: 328, baseType: !2197, size: 64, offset: 320)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2194, file: !19, line: 329, baseType: !383, size: 64, offset: 384)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2194, file: !19, line: 332, baseType: !2255, size: 64, offset: 448)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!2258, !100}
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2194, file: !19, line: 333, baseType: !2260, size: 64, offset: 512)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!212, !100, !2263}
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2194, file: !19, line: 335, baseType: !2265, size: 64, offset: 576)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!212, !100, !2258}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2194, file: !19, line: 337, baseType: !2269, size: 64, offset: 640)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!212, !288, !2272}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !289, file: !48, line: 1425, baseType: !2274, size: 64, offset: 512)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2276)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 428, size: 704, elements: !2277)
!2277 = !{!2278, !2282, !2283, !2287, !2288, !2289, !2304, !2327, !2331, !2332, !2355}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2276, file: !19, line: 429, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!212, !288, !212, !212, !277}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2276, file: !19, line: 430, baseType: !383, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2276, file: !19, line: 431, baseType: !2284, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!212, !288, !5}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2276, file: !19, line: 432, baseType: !2284, size: 64, offset: 192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2276, file: !19, line: 433, baseType: !383, size: 64, offset: 256)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2276, file: !19, line: 434, baseType: !2290, size: 64, offset: 320)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!212, !288, !212, !2293}
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 415, size: 256, elements: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2294, file: !19, line: 416, baseType: !212, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2294, file: !19, line: 417, baseType: !5, size: 32, offset: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2294, file: !19, line: 418, baseType: !5, size: 32, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2294, file: !19, line: 420, baseType: !5, size: 32, offset: 96)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2294, file: !19, line: 421, baseType: !5, size: 32, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2294, file: !19, line: 422, baseType: !5, size: 32, offset: 160)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2294, file: !19, line: 423, baseType: !5, size: 32, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2294, file: !19, line: 424, baseType: !5, size: 32, offset: 224)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2276, file: !19, line: 435, baseType: !2305, size: 64, offset: 384)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!212, !288, !2212, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 343, size: 960, elements: !2310)
!2310 = !{!2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2309, file: !19, line: 344, baseType: !212, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2309, file: !19, line: 345, baseType: !173, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2309, file: !19, line: 346, baseType: !173, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2309, file: !19, line: 347, baseType: !173, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2309, file: !19, line: 348, baseType: !173, size: 64, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2309, file: !19, line: 349, baseType: !173, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2309, file: !19, line: 350, baseType: !173, size: 64, offset: 384)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2309, file: !19, line: 351, baseType: !434, size: 64, offset: 448)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2309, file: !19, line: 353, baseType: !434, size: 64, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2309, file: !19, line: 354, baseType: !212, size: 32, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2309, file: !19, line: 355, baseType: !212, size: 32, offset: 608)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2309, file: !19, line: 356, baseType: !173, size: 64, offset: 640)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2309, file: !19, line: 357, baseType: !173, size: 64, offset: 704)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2309, file: !19, line: 358, baseType: !173, size: 64, offset: 768)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2309, file: !19, line: 359, baseType: !434, size: 64, offset: 832)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2309, file: !19, line: 360, baseType: !212, size: 32, offset: 896)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2276, file: !19, line: 436, baseType: !2328, size: 64, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!212, !288, !2272, !2308}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2276, file: !19, line: 438, baseType: !2305, size: 64, offset: 512)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2276, file: !19, line: 439, baseType: !2333, size: 64, offset: 576)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!212, !288, !2336}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 409, size: 1408, elements: !2338)
!2338 = !{!2339, !2340}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2337, file: !19, line: 410, baseType: !5, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2337, file: !19, line: 411, baseType: !2341, size: 1344, offset: 64)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2342, size: 1344, elements: !347)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 395, size: 448, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2354}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2342, file: !19, line: 396, baseType: !5, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2342, file: !19, line: 397, baseType: !5, size: 32, offset: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2342, file: !19, line: 399, baseType: !5, size: 32, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2342, file: !19, line: 400, baseType: !5, size: 32, offset: 96)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2342, file: !19, line: 401, baseType: !5, size: 32, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2342, file: !19, line: 402, baseType: !5, size: 32, offset: 160)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2342, file: !19, line: 403, baseType: !5, size: 32, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2342, file: !19, line: 404, baseType: !175, size: 64, offset: 256)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2342, file: !19, line: 405, baseType: !2353, size: 64, offset: 320)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !74, line: 126, baseType: !173)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2342, file: !19, line: 406, baseType: !2353, size: 64, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2276, file: !19, line: 440, baseType: !2284, size: 64, offset: 640)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !289, file: !48, line: 1426, baseType: !2357, size: 64, offset: 576)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2359)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !48, line: 49, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !289, file: !48, line: 1427, baseType: !77, size: 64, offset: 640)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !289, file: !48, line: 1428, baseType: !77, size: 64, offset: 704)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !289, file: !48, line: 1429, baseType: !77, size: 64, offset: 768)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !289, file: !48, line: 1430, baseType: !133, size: 64, offset: 832)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !289, file: !48, line: 1431, baseType: !645, size: 256, offset: 896)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !289, file: !48, line: 1432, baseType: !212, size: 32, offset: 1152)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !289, file: !48, line: 1433, baseType: !634, size: 32, offset: 1184)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !289, file: !48, line: 1437, baseType: !2368, size: 64, offset: 1216)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2371)
!2371 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !48, line: 1437, flags: DIFlagFwdDecl)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !289, file: !48, line: 1449, baseType: !2373, size: 64, offset: 1280)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !150, line: 34, size: 64, elements: !2374)
!2374 = !{!2375}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2373, file: !150, line: 35, baseType: !153, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !289, file: !48, line: 1450, baseType: !90, size: 128, offset: 1344)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !289, file: !48, line: 1451, baseType: !2378, size: 64, offset: 1472)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !48, line: 699, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !289, file: !48, line: 1452, baseType: !1440, size: 64, offset: 1536)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !289, file: !48, line: 1453, baseType: !2382, size: 64, offset: 1600)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !48, line: 1453, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !289, file: !48, line: 1454, baseType: !335, size: 128, offset: 1664)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !289, file: !48, line: 1455, baseType: !5, size: 32, offset: 1792)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !289, file: !48, line: 1456, baseType: !2387, size: 2432, offset: 1856)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 518, size: 2432, elements: !2388)
!2388 = !{!2389, !2390, !2391, !2393, !2425}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2387, file: !19, line: 519, baseType: !5, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2387, file: !19, line: 520, baseType: !645, size: 256, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2387, file: !19, line: 521, baseType: !2392, size: 192, offset: 320)
!2392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 192, elements: !347)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2387, file: !19, line: 522, baseType: !2394, size: 1728, offset: 512)
!2394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2395, size: 1728, elements: !347)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !2396)
!2396 = !{!2397, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2395, file: !19, line: 223, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 443, size: 256, elements: !2400)
!2400 = !{!2401, !2402, !2415, !2416}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2399, file: !19, line: 444, baseType: !212, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2399, file: !19, line: 445, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2405)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 310, size: 512, elements: !2406)
!2406 = !{!2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2405, file: !19, line: 311, baseType: !383, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2405, file: !19, line: 312, baseType: !383, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2405, file: !19, line: 313, baseType: !383, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2405, file: !19, line: 314, baseType: !383, size: 64, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2405, file: !19, line: 315, baseType: !2197, size: 64, offset: 256)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2405, file: !19, line: 316, baseType: !2197, size: 64, offset: 320)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2405, file: !19, line: 317, baseType: !2197, size: 64, offset: 384)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2405, file: !19, line: 318, baseType: !2269, size: 64, offset: 448)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2399, file: !19, line: 446, baseType: !326, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2399, file: !19, line: 447, baseType: !2398, size: 64, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2395, file: !19, line: 224, baseType: !212, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2395, file: !19, line: 226, baseType: !90, size: 128, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2395, file: !19, line: 227, baseType: !77, size: 64, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2395, file: !19, line: 228, baseType: !5, size: 32, offset: 320)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2395, file: !19, line: 229, baseType: !5, size: 32, offset: 352)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2395, file: !19, line: 230, baseType: !2233, size: 64, offset: 384)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2395, file: !19, line: 231, baseType: !2233, size: 64, offset: 448)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2395, file: !19, line: 232, baseType: !72, size: 64, offset: 512)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2387, file: !19, line: 523, baseType: !2426, size: 192, offset: 2240)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2403, size: 192, elements: !347)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !289, file: !48, line: 1458, baseType: !2428, size: 2112, offset: 4288)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !48, line: 1410, size: 2112, elements: !2429)
!2429 = !{!2430, !2431, !2432}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2428, file: !48, line: 1411, baseType: !212, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2428, file: !48, line: 1412, baseType: !572, size: 128, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2428, file: !48, line: 1413, baseType: !2433, size: 1920, offset: 192)
!2433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2434, size: 1920, elements: !347)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2435, line: 12, size: 640, elements: !2436)
!2435 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2436 = !{!2437, !2445, !2447, !2452, !2453}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2434, file: !2435, line: 13, baseType: !2438, size: 320)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2439, line: 17, size: 320, elements: !2440)
!2439 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2440 = !{!2441, !2442, !2443, !2444}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2438, file: !2439, line: 18, baseType: !212, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2438, file: !2439, line: 19, baseType: !212, size: 32, offset: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2438, file: !2439, line: 20, baseType: !572, size: 128, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2438, file: !2439, line: 22, baseType: !476, size: 128, align: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2434, file: !2435, line: 14, baseType: !2446, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2434, file: !2435, line: 15, baseType: !2448, size: 64, offset: 384)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2449, line: 16, size: 64, elements: !2450)
!2449 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2450 = !{!2451}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2448, file: !2449, line: 17, baseType: !724, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2434, file: !2435, line: 16, baseType: !572, size: 128, offset: 448)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2434, file: !2435, line: 17, baseType: !634, size: 32, offset: 576)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !289, file: !48, line: 1465, baseType: !72, size: 64, offset: 6400)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !289, file: !48, line: 1468, baseType: !167, size: 32, offset: 6464)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !289, file: !48, line: 1470, baseType: !1110, size: 64, offset: 6528)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !289, file: !48, line: 1471, baseType: !1110, size: 64, offset: 6592)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !289, file: !48, line: 1473, baseType: !169, size: 32, offset: 6656)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !289, file: !48, line: 1474, baseType: !2460, size: 64, offset: 6720)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !48, line: 603, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !289, file: !48, line: 1477, baseType: !2463, size: 256, offset: 6784)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 256, elements: !183)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !289, file: !48, line: 1478, baseType: !2465, size: 128, offset: 7040)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2466, line: 18, baseType: !2467)
!2466 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2466, line: 16, size: 128, elements: !2468)
!2468 = !{!2469}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2467, file: !2466, line: 17, baseType: !2470, size: 128)
!2470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 128, elements: !1249)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !289, file: !48, line: 1480, baseType: !5, size: 32, offset: 7168)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !289, file: !48, line: 1481, baseType: !2136, size: 32, offset: 7200)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !289, file: !48, line: 1487, baseType: !424, size: 192, offset: 7232)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !289, file: !48, line: 1493, baseType: !234, size: 64, offset: 7424)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !289, file: !48, line: 1495, baseType: !214, size: 64, offset: 7488)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !289, file: !48, line: 1500, baseType: !212, size: 32, offset: 7552)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !289, file: !48, line: 1502, baseType: !2478, size: 448, offset: 7616)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2181, line: 60, size: 448, elements: !2479)
!2479 = !{!2480, !2485, !2486, !2487, !2488, !2489, !2490}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2478, file: !2181, line: 61, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!77, !2484, !2179}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2478, file: !2181, line: 63, baseType: !2481, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2478, file: !2181, line: 66, baseType: !504, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2478, file: !2181, line: 67, baseType: !212, size: 32, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2478, file: !2181, line: 68, baseType: !5, size: 32, offset: 224)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2478, file: !2181, line: 71, baseType: !90, size: 128, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2478, file: !2181, line: 77, baseType: !2491, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !289, file: !48, line: 1505, baseType: !428, size: 64, offset: 8064)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !289, file: !48, line: 1508, baseType: !428, size: 64, offset: 8128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !289, file: !48, line: 1511, baseType: !212, size: 32, offset: 8192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !289, file: !48, line: 1514, baseType: !2164, size: 32, offset: 8224)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !289, file: !48, line: 1517, baseType: !2497, size: 64, offset: 8256)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1483, line: 18, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !289, file: !48, line: 1518, baseType: !331, size: 64, offset: 8320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !289, file: !48, line: 1525, baseType: !1227, size: 64, offset: 8384)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !289, file: !48, line: 1532, baseType: !2502, size: 64, offset: 8448)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2503, line: 52, size: 64, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2504 = !{!2505}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2502, file: !2503, line: 53, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2503, line: 40, size: 256, elements: !2508)
!2508 = !{!2509, !2510, !2515}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2507, file: !2503, line: 42, baseType: !196)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2507, file: !2503, line: 44, baseType: !2511, size: 192)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2503, line: 28, size: 192, elements: !2512)
!2512 = !{!2513, !2514}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2511, file: !2503, line: 29, baseType: !90, size: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2511, file: !2503, line: 31, baseType: !504, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2507, file: !2503, line: 49, baseType: !504, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !289, file: !48, line: 1533, baseType: !2502, size: 64, offset: 8512)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !289, file: !48, line: 1534, baseType: !476, size: 128, align: 64, offset: 8576)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !289, file: !48, line: 1535, baseType: !1482, size: 256, offset: 8704)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !289, file: !48, line: 1537, baseType: !424, size: 192, offset: 8960)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !289, file: !48, line: 1542, baseType: !212, size: 32, offset: 9152)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !289, file: !48, line: 1545, baseType: !196, offset: 9184)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !289, file: !48, line: 1546, baseType: !90, size: 128, offset: 9216)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !289, file: !48, line: 1548, baseType: !196, offset: 9344)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !289, file: !48, line: 1549, baseType: !90, size: 128, offset: 9344)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !134, file: !135, line: 104, baseType: !77, size: 64, offset: 896)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !134, file: !135, line: 105, baseType: !72, size: 64, offset: 960)
!2527 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !135, line: 107, baseType: !2528, size: 128, offset: 1024)
!2528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !135, line: 107, size: 128, elements: !2529)
!2529 = !{!2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2528, file: !135, line: 108, baseType: !90, size: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2528, file: !135, line: 109, baseType: !571, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !134, file: !135, line: 111, baseType: !90, size: 128, offset: 1152)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !134, file: !135, line: 112, baseType: !90, size: 128, offset: 1280)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !134, file: !135, line: 120, baseType: !2535, size: 128, offset: 1408)
!2535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !135, line: 116, size: 128, elements: !2536)
!2536 = !{!2537, !2538, !2539}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2535, file: !135, line: 117, baseType: !335, size: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2535, file: !135, line: 118, baseType: !149, size: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2535, file: !135, line: 119, baseType: !476, size: 128, align: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !127, file: !48, line: 1866, baseType: !2541, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!234, !133, !100, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2546, line: 10, size: 128, elements: !2547)
!2546 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2547 = !{!2548, !2552}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2545, file: !2546, line: 11, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !72}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2545, file: !2546, line: 12, baseType: !72, size: 64, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !127, file: !48, line: 1867, baseType: !2554, size: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!212, !100, !212}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !127, file: !48, line: 1868, baseType: !2558, size: 64, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!2561, !100, !212}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !48, line: 581, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !127, file: !48, line: 1870, baseType: !2564, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!212, !133, !260, !212}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !127, file: !48, line: 1872, baseType: !2568, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!212, !100, !133, !104, !279}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !127, file: !48, line: 1873, baseType: !2572, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!212, !133, !100, !133}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !127, file: !48, line: 1874, baseType: !2576, size: 64, offset: 448)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!212, !100, !133}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !127, file: !48, line: 1875, baseType: !2580, size: 64, offset: 512)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!212, !100, !133, !234}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !127, file: !48, line: 1876, baseType: !2584, size: 64, offset: 576)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!212, !100, !133, !104}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !127, file: !48, line: 1877, baseType: !2576, size: 64, offset: 640)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !127, file: !48, line: 1878, baseType: !2589, size: 64, offset: 704)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!212, !100, !133, !104, !293}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !127, file: !48, line: 1879, baseType: !2593, size: 64, offset: 768)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!212, !100, !133, !100, !133, !5}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !127, file: !48, line: 1881, baseType: !2597, size: 64, offset: 832)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!212, !133, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !48, line: 219, size: 640, elements: !2602)
!2602 = !{!2603, !2604, !2605, !2606, !2607, !2608, !2613, !2614, !2615}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2601, file: !48, line: 220, baseType: !5, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2601, file: !48, line: 221, baseType: !104, size: 16, offset: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2601, file: !48, line: 222, baseType: !108, size: 32, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2601, file: !48, line: 223, baseType: !117, size: 32, offset: 96)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2601, file: !48, line: 224, baseType: !298, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2601, file: !48, line: 225, baseType: !2609, size: 128, offset: 192)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1111, line: 13, size: 128, elements: !2610)
!2610 = !{!2611, !2612}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2609, file: !1111, line: 14, baseType: !1110, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2609, file: !1111, line: 15, baseType: !504, size: 64, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2601, file: !48, line: 226, baseType: !2609, size: 128, offset: 320)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2601, file: !48, line: 227, baseType: !2609, size: 128, offset: 448)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2601, file: !48, line: 234, baseType: !496, size: 64, offset: 576)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !127, file: !48, line: 1882, baseType: !2617, size: 64, offset: 896)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!212, !277, !2620, !167, !5}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2622, line: 22, size: 1152, elements: !2623)
!2622 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2623 = !{!2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2621, file: !2622, line: 23, baseType: !167, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2621, file: !2622, line: 24, baseType: !104, size: 16, offset: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2621, file: !2622, line: 25, baseType: !5, size: 32, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2621, file: !2622, line: 26, baseType: !1118, size: 32, offset: 96)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2621, file: !2622, line: 27, baseType: !173, size: 64, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2621, file: !2622, line: 28, baseType: !173, size: 64, offset: 192)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2621, file: !2622, line: 37, baseType: !173, size: 64, offset: 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2621, file: !2622, line: 38, baseType: !293, size: 32, offset: 320)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2621, file: !2622, line: 39, baseType: !293, size: 32, offset: 352)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2621, file: !2622, line: 40, baseType: !108, size: 32, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2621, file: !2622, line: 41, baseType: !117, size: 32, offset: 416)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2621, file: !2622, line: 42, baseType: !298, size: 64, offset: 448)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2621, file: !2622, line: 43, baseType: !2609, size: 128, offset: 512)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2621, file: !2622, line: 44, baseType: !2609, size: 128, offset: 640)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2621, file: !2622, line: 45, baseType: !2609, size: 128, offset: 768)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2621, file: !2622, line: 46, baseType: !2609, size: 128, offset: 896)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2621, file: !2622, line: 47, baseType: !173, size: 64, offset: 1024)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2621, file: !2622, line: 48, baseType: !173, size: 64, offset: 1088)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !127, file: !48, line: 1883, baseType: !2643, size: 64, offset: 960)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!501, !133, !260, !415}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !127, file: !48, line: 1884, baseType: !2647, size: 64, offset: 1024)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!212, !100, !2650, !173, !173}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !48, line: 50, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !127, file: !48, line: 1886, baseType: !2653, size: 64, offset: 1088)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!212, !100, !2656, !212}
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !127, file: !48, line: 1887, baseType: !2658, size: 64, offset: 1152)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!212, !100, !133, !496, !5, !104}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !127, file: !48, line: 1890, baseType: !2584, size: 64, offset: 1216)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !127, file: !48, line: 1891, baseType: !2663, size: 64, offset: 1280)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!212, !100, !2561, !212}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !101, file: !48, line: 623, baseType: !288, size: 64, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !101, file: !48, line: 624, baseType: !96, size: 64, offset: 256)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !101, file: !48, line: 631, baseType: !77, size: 64, offset: 320)
!2669 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !48, line: 639, baseType: !2670, size: 32, offset: 384)
!2670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !48, line: 639, size: 32, elements: !2671)
!2671 = !{!2672, !2674}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2670, file: !48, line: 640, baseType: !2673, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2670, file: !48, line: 641, baseType: !5, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !101, file: !48, line: 643, baseType: !293, size: 32, offset: 416)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !101, file: !48, line: 644, baseType: !298, size: 64, offset: 448)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !101, file: !48, line: 645, baseType: !2609, size: 128, offset: 512)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !101, file: !48, line: 646, baseType: !2609, size: 128, offset: 640)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !101, file: !48, line: 647, baseType: !2609, size: 128, offset: 768)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !101, file: !48, line: 648, baseType: !196, offset: 896)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !101, file: !48, line: 649, baseType: !105, size: 16, offset: 896)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !101, file: !48, line: 650, baseType: !864, size: 8, offset: 912)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !101, file: !48, line: 651, baseType: !864, size: 8, offset: 920)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !101, file: !48, line: 652, baseType: !2353, size: 64, offset: 960)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !101, file: !48, line: 659, baseType: !77, size: 64, offset: 1024)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !101, file: !48, line: 660, baseType: !645, size: 256, offset: 1088)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !101, file: !48, line: 662, baseType: !77, size: 64, offset: 1344)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !101, file: !48, line: 663, baseType: !77, size: 64, offset: 1408)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !101, file: !48, line: 665, baseType: !335, size: 128, offset: 1472)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !101, file: !48, line: 666, baseType: !90, size: 128, offset: 1600)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !101, file: !48, line: 675, baseType: !90, size: 128, offset: 1728)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !101, file: !48, line: 676, baseType: !90, size: 128, offset: 1856)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !101, file: !48, line: 677, baseType: !90, size: 128, offset: 1984)
!2694 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !48, line: 678, baseType: !2695, size: 128, offset: 2112)
!2695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !48, line: 678, size: 128, elements: !2696)
!2696 = !{!2697, !2698}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2695, file: !48, line: 679, baseType: !331, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2695, file: !48, line: 680, baseType: !476, size: 128, align: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !101, file: !48, line: 682, baseType: !430, size: 64, offset: 2240)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !101, file: !48, line: 683, baseType: !430, size: 64, offset: 2304)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !101, file: !48, line: 684, baseType: !634, size: 32, offset: 2368)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !101, file: !48, line: 685, baseType: !634, size: 32, offset: 2400)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !101, file: !48, line: 686, baseType: !634, size: 32, offset: 2432)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !101, file: !48, line: 688, baseType: !634, size: 32, offset: 2464)
!2705 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !48, line: 690, baseType: !2706, size: 64, offset: 2496)
!2706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !48, line: 690, size: 64, elements: !2707)
!2707 = !{!2708, !2709}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2706, file: !48, line: 691, baseType: !487, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2706, file: !48, line: 692, baseType: !362, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !101, file: !48, line: 694, baseType: !2711, size: 64, offset: 2560)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !48, line: 1100, size: 384, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2717}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2712, file: !48, line: 1101, baseType: !196)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2712, file: !48, line: 1102, baseType: !90, size: 128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2712, file: !48, line: 1103, baseType: !90, size: 128, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2712, file: !48, line: 1104, baseType: !90, size: 128, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !101, file: !48, line: 695, baseType: !97, size: 1216, align: 64, offset: 2624)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !101, file: !48, line: 696, baseType: !90, size: 128, offset: 3840)
!2720 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !48, line: 697, baseType: !2721, size: 64, offset: 3968)
!2721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !48, line: 697, size: 64, elements: !2722)
!2722 = !{!2723, !2724, !2725, !3021, !3022}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2721, file: !48, line: 698, baseType: !1623, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2721, file: !48, line: 699, baseType: !2378, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2721, file: !48, line: 700, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2728, line: 14, size: 832, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2729 = !{!2730, !3016, !3017, !3018, !3019, !3020}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2727, file: !2728, line: 15, baseType: !2731, size: 512)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2732, line: 64, size: 512, elements: !2733)
!2732 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2733 = !{!2734, !2735, !2736, !2738, !2778, !2878, !3006, !3011, !3012, !3013, !3014, !3015}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2731, file: !2732, line: 65, baseType: !234, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2731, file: !2732, line: 66, baseType: !90, size: 128, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2731, file: !2732, line: 67, baseType: !2737, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2731, file: !2732, line: 68, baseType: !2739, size: 64, offset: 256)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2732, line: 192, size: 704, elements: !2741)
!2741 = !{!2742, !2743, !2744, !2745}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2740, file: !2732, line: 193, baseType: !90, size: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2740, file: !2732, line: 194, baseType: !196, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2740, file: !2732, line: 195, baseType: !2731, size: 512, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2740, file: !2732, line: 196, baseType: !2746, size: 64, offset: 640)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2748)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2732, line: 156, size: 192, elements: !2749)
!2749 = !{!2750, !2755, !2760}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2748, file: !2732, line: 157, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2752)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!212, !2739, !2737}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2748, file: !2732, line: 158, baseType: !2756, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2757)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!234, !2739, !2737}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2748, file: !2732, line: 159, baseType: !2761, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2762)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!212, !2739, !2737, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2732, line: 148, size: 20736, elements: !2767)
!2767 = !{!2768, !2770, !2772, !2773, !2777}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2766, file: !2732, line: 149, baseType: !2769, size: 192)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 192, elements: !347)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2766, file: !2732, line: 150, baseType: !2771, size: 4096, offset: 192)
!2771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 4096, elements: !1396)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2766, file: !2732, line: 151, baseType: !212, size: 32, offset: 4288)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2766, file: !2732, line: 152, baseType: !2774, size: 16384, offset: 4320)
!2774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 16384, elements: !2775)
!2775 = !{!2776}
!2776 = !DISubrange(count: 2048)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2766, file: !2732, line: 153, baseType: !212, size: 32, offset: 20704)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2731, file: !2732, line: 69, baseType: !2779, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2732, line: 138, size: 448, elements: !2781)
!2781 = !{!2782, !2786, !2805, !2807, !2840, !2868, !2872}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2780, file: !2732, line: 139, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !2737}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2780, file: !2732, line: 140, baseType: !2787, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2789)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2790, line: 230, size: 128, elements: !2791)
!2790 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2791 = !{!2792, !2801}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2789, file: !2790, line: 231, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!501, !2737, !2796, !260}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2790, line: 30, size: 128, elements: !2798)
!2798 = !{!2799, !2800}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2797, file: !2790, line: 31, baseType: !234, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2797, file: !2790, line: 32, baseType: !104, size: 16, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2789, file: !2790, line: 232, baseType: !2802, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!501, !2737, !2796, !234, !415}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2780, file: !2732, line: 141, baseType: !2806, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2780, file: !2732, line: 142, baseType: !2808, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2811)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2790, line: 84, size: 320, elements: !2812)
!2812 = !{!2813, !2814, !2818, !2837, !2838}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2811, file: !2790, line: 85, baseType: !234, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2811, file: !2790, line: 86, baseType: !2815, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!104, !2737, !2796, !212}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2811, file: !2790, line: 88, baseType: !2819, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!104, !2737, !2822, !212}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2790, line: 168, size: 448, elements: !2824)
!2824 = !{!2825, !2826, !2827, !2828, !2832, !2833}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2823, file: !2790, line: 169, baseType: !2797, size: 128)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2823, file: !2790, line: 170, baseType: !415, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2823, file: !2790, line: 171, baseType: !72, size: 64, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2823, file: !2790, line: 172, baseType: !2829, size: 64, offset: 256)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!501, !496, !2737, !2822, !260, !298, !415}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2823, file: !2790, line: 174, baseType: !2829, size: 64, offset: 320)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2823, file: !2790, line: 176, baseType: !2834, size: 64, offset: 384)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!212, !496, !2737, !2822, !588}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2811, file: !2790, line: 90, baseType: !2806, size: 64, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2811, file: !2790, line: 91, baseType: !2839, size: 64, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2780, file: !2732, line: 143, baseType: !2841, size: 64, offset: 256)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!2844, !2737}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2846)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !36, line: 39, size: 384, elements: !2847)
!2847 = !{!2848, !2849, !2853, !2857, !2863, !2867}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2846, file: !36, line: 40, baseType: !35, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2846, file: !36, line: 41, baseType: !2850, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!279}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2846, file: !36, line: 42, baseType: !2854, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!72}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2846, file: !36, line: 43, baseType: !2858, size: 64, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!1653, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !36, line: 19, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2846, file: !36, line: 44, baseType: !2864, size: 64, offset: 256)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!1653}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2846, file: !36, line: 45, baseType: !2549, size: 64, offset: 320)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2780, file: !2732, line: 144, baseType: !2869, size: 64, offset: 320)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!1653, !2737}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2780, file: !2732, line: 145, baseType: !2873, size: 64, offset: 384)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !2737, !2876, !2877}
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2731, file: !2732, line: 70, baseType: !2879, size: 64, offset: 384)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2881, line: 123, size: 1024, elements: !2882)
!2881 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!2882 = !{!2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2999, !3000, !3001, !3002, !3003}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2880, file: !2881, line: 124, baseType: !634, size: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2880, file: !2881, line: 125, baseType: !634, size: 32, offset: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2880, file: !2881, line: 135, baseType: !2879, size: 64, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2880, file: !2881, line: 136, baseType: !234, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2880, file: !2881, line: 138, baseType: !596, size: 192, align: 64, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2880, file: !2881, line: 140, baseType: !1653, size: 64, offset: 384)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2880, file: !2881, line: 141, baseType: !5, size: 32, offset: 448)
!2890 = !DIDerivedType(tag: DW_TAG_member, scope: !2880, file: !2881, line: 142, baseType: !2891, size: 256, offset: 512)
!2891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2880, file: !2881, line: 142, size: 256, elements: !2892)
!2892 = !{!2893, !2939, !2943}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2891, file: !2881, line: 143, baseType: !2894, size: 192)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2881, line: 91, size: 192, elements: !2895)
!2895 = !{!2896, !2897, !2898}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2894, file: !2881, line: 92, baseType: !77, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2894, file: !2881, line: 94, baseType: !613, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2894, file: !2881, line: 100, baseType: !2899, size: 64, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2881, line: 180, size: 704, elements: !2901)
!2901 = !{!2902, !2903, !2904, !2911, !2912, !2913, !2937, !2938}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2900, file: !2881, line: 182, baseType: !2879, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2900, file: !2881, line: 183, baseType: !5, size: 32, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2900, file: !2881, line: 186, baseType: !2905, size: 192, offset: 128)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2906, line: 19, size: 192, elements: !2907)
!2906 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2907 = !{!2908, !2909, !2910}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2905, file: !2906, line: 20, baseType: !1453, size: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2905, file: !2906, line: 21, baseType: !5, size: 32, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2905, file: !2906, line: 22, baseType: !5, size: 32, offset: 160)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2900, file: !2881, line: 187, baseType: !167, size: 32, offset: 320)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2900, file: !2881, line: 188, baseType: !167, size: 32, offset: 352)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2900, file: !2881, line: 189, baseType: !2914, size: 64, offset: 384)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !2881, line: 168, size: 320, elements: !2916)
!2916 = !{!2917, !2921, !2925, !2929, !2933}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2915, file: !2881, line: 169, baseType: !2918, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!212, !409, !2899}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2915, file: !2881, line: 171, baseType: !2922, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!212, !2879, !234, !104}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2915, file: !2881, line: 173, baseType: !2926, size: 64, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!212, !2879}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2915, file: !2881, line: 174, baseType: !2930, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!212, !2879, !2879, !234}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2915, file: !2881, line: 176, baseType: !2934, size: 64, offset: 256)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!212, !409, !2879, !2899}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2900, file: !2881, line: 192, baseType: !90, size: 128, offset: 448)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2900, file: !2881, line: 194, baseType: !572, size: 128, offset: 576)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2891, file: !2881, line: 144, baseType: !2940, size: 64)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2881, line: 103, size: 64, elements: !2941)
!2941 = !{!2942}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2940, file: !2881, line: 104, baseType: !2879, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2891, file: !2881, line: 145, baseType: !2944, size: 256)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2881, line: 107, size: 256, elements: !2945)
!2945 = !{!2946, !2994, !2997, !2998}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2944, file: !2881, line: 108, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2949)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2881, line: 217, size: 768, elements: !2950)
!2950 = !{!2951, !2971, !2975, !2976, !2977, !2978, !2979, !2983, !2984, !2985, !2986, !2990}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2949, file: !2881, line: 222, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!212, !2955}
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2881, line: 197, size: 1088, elements: !2957)
!2957 = !{!2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2956, file: !2881, line: 199, baseType: !2879, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2956, file: !2881, line: 200, baseType: !496, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2956, file: !2881, line: 201, baseType: !409, size: 64, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2956, file: !2881, line: 202, baseType: !72, size: 64, offset: 192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2956, file: !2881, line: 205, baseType: !424, size: 192, offset: 256)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2956, file: !2881, line: 206, baseType: !424, size: 192, offset: 448)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2956, file: !2881, line: 207, baseType: !212, size: 32, offset: 640)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2956, file: !2881, line: 208, baseType: !90, size: 128, offset: 704)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2956, file: !2881, line: 209, baseType: !260, size: 64, offset: 832)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2956, file: !2881, line: 211, baseType: !415, size: 64, offset: 896)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2956, file: !2881, line: 212, baseType: !279, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2956, file: !2881, line: 213, baseType: !279, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2956, file: !2881, line: 214, baseType: !1874, size: 64, offset: 1024)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2949, file: !2881, line: 223, baseType: !2972, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{null, !2955}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2949, file: !2881, line: 236, baseType: !457, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2949, file: !2881, line: 238, baseType: !444, size: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2949, file: !2881, line: 239, baseType: !453, size: 64, offset: 256)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2949, file: !2881, line: 240, baseType: !449, size: 64, offset: 320)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2949, file: !2881, line: 242, baseType: !2980, size: 64, offset: 384)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!501, !2955, !260, !415, !298}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2949, file: !2881, line: 252, baseType: !415, size: 64, offset: 448)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2949, file: !2881, line: 259, baseType: !279, size: 8, offset: 512)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2949, file: !2881, line: 260, baseType: !2980, size: 64, offset: 576)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2949, file: !2881, line: 263, baseType: !2987, size: 64, offset: 640)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!560, !2955, !562}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2949, file: !2881, line: 266, baseType: !2991, size: 64, offset: 704)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!212, !2955, !588}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2944, file: !2881, line: 109, baseType: !2995, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2881, line: 31, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2944, file: !2881, line: 110, baseType: !298, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2944, file: !2881, line: 111, baseType: !2879, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2880, file: !2881, line: 148, baseType: !72, size: 64, offset: 768)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2880, file: !2881, line: 154, baseType: !173, size: 64, offset: 832)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2880, file: !2881, line: 156, baseType: !105, size: 16, offset: 896)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2880, file: !2881, line: 157, baseType: !104, size: 16, offset: 912)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2880, file: !2881, line: 158, baseType: !3004, size: 64, offset: 960)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2881, line: 32, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2731, file: !2732, line: 71, baseType: !3007, size: 32, offset: 448)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3008, line: 19, size: 32, elements: !3009)
!3008 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3009 = !{!3010}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3007, file: !3008, line: 20, baseType: !738, size: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2731, file: !2732, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2731, file: !2732, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2731, file: !2732, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2731, file: !2732, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2731, file: !2732, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2727, file: !2728, line: 16, baseType: !326, size: 64, offset: 512)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2727, file: !2728, line: 17, baseType: !487, size: 64, offset: 576)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2727, file: !2728, line: 18, baseType: !90, size: 128, offset: 640)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2727, file: !2728, line: 19, baseType: !293, size: 32, offset: 768)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2727, file: !2728, line: 20, baseType: !5, size: 32, offset: 800)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2721, file: !48, line: 701, baseType: !260, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2721, file: !48, line: 702, baseType: !5, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !101, file: !48, line: 705, baseType: !169, size: 32, offset: 4032)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !101, file: !48, line: 708, baseType: !169, size: 32, offset: 4064)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !101, file: !48, line: 709, baseType: !2460, size: 64, offset: 4096)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !101, file: !48, line: 720, baseType: !72, size: 64, offset: 4160)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !97, file: !48, line: 453, baseType: !1453, size: 128, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !97, file: !48, line: 454, baseType: !73, size: 32, offset: 192)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !97, file: !48, line: 455, baseType: !634, size: 32, offset: 224)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !97, file: !48, line: 460, baseType: !854, size: 128, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !97, file: !48, line: 461, baseType: !645, size: 256, offset: 384)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !97, file: !48, line: 462, baseType: !77, size: 64, offset: 640)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !97, file: !48, line: 463, baseType: !77, size: 64, offset: 704)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !97, file: !48, line: 464, baseType: !77, size: 64, offset: 768)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !97, file: !48, line: 465, baseType: !3036, size: 64, offset: 832)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3038)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !48, line: 367, size: 1408, elements: !3039)
!3039 = !{!3040, !3044, !3048, !3052, !3056, !3060, !3066, !3070, !3074, !3079, !3083, !3087, !3091, !3092, !3096, !3102, !3103, !3104, !3108, !3113, !3117, !3124}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3038, file: !48, line: 368, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!212, !78, !374}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !3038, file: !48, line: 369, baseType: !3045, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!212, !496, !78}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3038, file: !48, line: 372, baseType: !3049, size: 64, offset: 128)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!212, !96, !374}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !3038, file: !48, line: 375, baseType: !3053, size: 64, offset: 192)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!212, !78}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !3038, file: !48, line: 381, baseType: !3057, size: 64, offset: 256)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!212, !496, !96, !93, !5}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3038, file: !48, line: 383, baseType: !3061, size: 64, offset: 320)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{null, !3064}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !48, line: 290, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3038, file: !48, line: 385, baseType: !3067, size: 64, offset: 384)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!212, !496, !96, !298, !5, !5, !1648, !2065}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3038, file: !48, line: 388, baseType: !3071, size: 64, offset: 448)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!212, !496, !96, !298, !5, !5, !78, !72}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3038, file: !48, line: 393, baseType: !3075, size: 64, offset: 512)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!3078, !96, !3078}
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !74, line: 125, baseType: !173)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !3038, file: !48, line: 394, baseType: !3080, size: 64, offset: 576)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{null, !78, !5, !5}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !3038, file: !48, line: 395, baseType: !3084, size: 64, offset: 640)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!212, !78, !73}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !3038, file: !48, line: 396, baseType: !3088, size: 64, offset: 704)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{null, !78}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3038, file: !48, line: 397, baseType: !510, size: 64, offset: 768)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !3038, file: !48, line: 402, baseType: !3093, size: 64, offset: 832)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!212, !96, !78, !78, !3}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !3038, file: !48, line: 404, baseType: !3097, size: 64, offset: 896)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!279, !78, !3100}
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !3101, line: 305, baseType: !5)
!3101 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !3038, file: !48, line: 405, baseType: !3088, size: 64, offset: 960)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !3038, file: !48, line: 406, baseType: !3053, size: 64, offset: 1024)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3038, file: !48, line: 407, baseType: !3105, size: 64, offset: 1088)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!212, !78, !77, !77}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3038, file: !48, line: 409, baseType: !3109, size: 64, offset: 1152)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !78, !3112, !3112}
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3038, file: !48, line: 410, baseType: !3114, size: 64, offset: 1216)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!212, !96, !78}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3038, file: !48, line: 413, baseType: !3118, size: 64, offset: 1280)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!212, !3121, !496, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !48, line: 61, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3038, file: !48, line: 415, baseType: !3125, size: 64, offset: 1344)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !496}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !48, line: 466, baseType: !77, size: 64, offset: 896)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !97, file: !48, line: 467, baseType: !2164, size: 32, offset: 960)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !97, file: !48, line: 468, baseType: !196, offset: 992)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !97, file: !48, line: 469, baseType: !90, size: 128, offset: 1024)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !97, file: !48, line: 470, baseType: !72, size: 64, offset: 1152)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !87, file: !80, line: 87, baseType: !77, size: 64, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !87, file: !80, line: 94, baseType: !77, size: 64, offset: 256)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 96, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 96, size: 64, elements: !3137)
!3137 = !{!3138}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3136, file: !80, line: 101, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !74, line: 143, baseType: !173)
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 103, baseType: !3141, size: 320)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 103, size: 320, elements: !3142)
!3142 = !{!3143, !3153, !3154, !3155}
!3143 = !DIDerivedType(tag: DW_TAG_member, scope: !3141, file: !80, line: 104, baseType: !3144, size: 128)
!3144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3141, file: !80, line: 104, size: 128, elements: !3145)
!3145 = !{!3146, !3147}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !3144, file: !80, line: 105, baseType: !90, size: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !3144, file: !80, line: 106, baseType: !3148, size: 128)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !80, line: 106, size: 128, elements: !3149)
!3149 = !{!3150, !3151, !3152}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3148, file: !80, line: 107, baseType: !78, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3148, file: !80, line: 109, baseType: !212, size: 32, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !3148, file: !80, line: 110, baseType: !212, size: 32, offset: 96)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !3141, file: !80, line: 117, baseType: !1472, size: 64, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !3141, file: !80, line: 119, baseType: !72, size: 64, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3141, file: !80, line: 120, baseType: !3156, size: 64, offset: 256)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3141, file: !80, line: 120, size: 64, elements: !3157)
!3157 = !{!3158, !3159, !3160}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !3156, file: !80, line: 121, baseType: !72, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !3156, file: !80, line: 122, baseType: !77, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, scope: !3156, file: !80, line: 123, baseType: !3161, size: 32)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3156, file: !80, line: 123, size: 32, elements: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !3161, file: !80, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !3161, file: !80, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3161, file: !80, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 130, baseType: !3167, size: 192)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 130, size: 192, elements: !3168)
!3168 = !{!3169, !3170, !3171, !3172, !3173}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3167, file: !80, line: 131, baseType: !77, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !3167, file: !80, line: 134, baseType: !179, size: 8, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !3167, file: !80, line: 135, baseType: !179, size: 8, offset: 72)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !3167, file: !80, line: 136, baseType: !634, size: 32, offset: 96)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !3167, file: !80, line: 137, baseType: !5, size: 32, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 139, baseType: !3175, size: 256)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 139, size: 256, elements: !3176)
!3176 = !{!3177, !3178, !3179}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !3175, file: !80, line: 140, baseType: !77, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !3175, file: !80, line: 141, baseType: !634, size: 32, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !3175, file: !80, line: 143, baseType: !90, size: 128, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 145, baseType: !3181, size: 256)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 145, size: 256, elements: !3182)
!3182 = !{!3183, !3184, !3185, !3186, !3191}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !3181, file: !80, line: 146, baseType: !77, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !3181, file: !80, line: 147, baseType: !1930, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !3181, file: !80, line: 148, baseType: !77, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, scope: !3181, file: !80, line: 149, baseType: !3187, size: 64, offset: 192)
!3187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3181, file: !80, line: 149, size: 64, elements: !3188)
!3188 = !{!3189, !3190}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !3187, file: !80, line: 150, baseType: !605, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !3187, file: !80, line: 151, baseType: !634, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3181, file: !80, line: 156, baseType: !196, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 159, baseType: !3193, size: 128)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 159, size: 128, elements: !3194)
!3194 = !{!3195, !3259}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3193, file: !80, line: 161, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !12, line: 110, size: 1152, elements: !3198)
!3198 = !{!3199, !3209, !3230, !3231, !3232, !3233, !3234, !3246, !3247, !3248}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3197, file: !12, line: 111, baseType: !3200, size: 384)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !12, line: 19, size: 384, elements: !3201)
!3201 = !{!3202, !3204, !3205, !3206, !3207, !3208}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3200, file: !12, line: 20, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3200, file: !12, line: 21, baseType: !3203, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3200, file: !12, line: 22, baseType: !3203, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3200, file: !12, line: 23, baseType: !77, size: 64, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3200, file: !12, line: 24, baseType: !77, size: 64, offset: 256)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3200, file: !12, line: 25, baseType: !77, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3197, file: !12, line: 112, baseType: !3210, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3212, line: 105, size: 128, elements: !3213)
!3212 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3213 = !{!3214, !3215}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3211, file: !3212, line: 110, baseType: !77, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3211, file: !3212, line: 118, baseType: !3216, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3212, line: 95, size: 448, elements: !3218)
!3218 = !{!3219, !3220, !3225, !3226, !3227, !3228, !3229}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3217, file: !3212, line: 96, baseType: !428, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3217, file: !3212, line: 97, baseType: !3221, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3212, line: 60, baseType: !3223)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !3210}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3217, file: !3212, line: 98, baseType: !3221, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3217, file: !3212, line: 99, baseType: !279, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3217, file: !3212, line: 100, baseType: !279, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3217, file: !3212, line: 101, baseType: !476, size: 128, align: 64, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3217, file: !3212, line: 102, baseType: !3210, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3197, file: !12, line: 113, baseType: !3211, size: 128, offset: 448)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3197, file: !12, line: 114, baseType: !1013, size: 192, offset: 576)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3197, file: !12, line: 115, baseType: !11, size: 32, offset: 768)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3197, file: !12, line: 116, baseType: !5, size: 32, offset: 800)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3197, file: !12, line: 117, baseType: !3235, size: 64, offset: 832)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3237)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !12, line: 67, size: 256, elements: !3238)
!3238 = !{!3239, !3240, !3244, !3245}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3237, file: !12, line: 73, baseType: !3088, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3237, file: !12, line: 78, baseType: !3241, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !3196}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3237, file: !12, line: 83, baseType: !3241, size: 64, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3237, file: !12, line: 89, baseType: !1892, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3197, file: !12, line: 118, baseType: !72, size: 64, offset: 896)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3197, file: !12, line: 119, baseType: !212, size: 32, offset: 960)
!3248 = !DIDerivedType(tag: DW_TAG_member, scope: !3197, file: !12, line: 120, baseType: !3249, size: 128, offset: 1024)
!3249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3197, file: !12, line: 120, size: 128, elements: !3250)
!3250 = !{!3251, !3257}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3249, file: !12, line: 121, baseType: !3252, size: 128)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3253, line: 6, size: 128, elements: !3254)
!3253 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3254 = !{!3255, !3256}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3252, file: !3253, line: 7, baseType: !173, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3252, file: !3253, line: 8, baseType: !173, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3249, file: !12, line: 122, baseType: !3258)
!3258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3252, elements: !1237)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3193, file: !80, line: 162, baseType: !72, size: 64, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !84, file: !80, line: 176, baseType: !476, size: 128, align: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !80, line: 179, baseType: !3262, size: 32, offset: 384)
!3262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !80, line: 179, size: 32, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3262, file: !80, line: 184, baseType: !634, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3262, file: !80, line: 192, baseType: !5, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3262, file: !80, line: 194, baseType: !5, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3262, file: !80, line: 195, baseType: !212, size: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !79, file: !80, line: 199, baseType: !634, size: 32, offset: 416)
!3269 = !{!"rsp"}
!3270 = !{i32 7, !"Dwarf Version", i32 4}
!3271 = !{i32 2, !"Debug Info Version", i32 3}
!3272 = !{i32 1, !"wchar_size", i32 2}
!3273 = !{i32 1, !"Code Model", i32 2}
!3274 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3275 = distinct !DISubprogram(name: "xen_xlate_remap_gfn_array", scope: !1, file: !1, line: 143, type: !3276, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!212, !588, !77, !3278, !212, !403, !1858, !5, !1648}
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "xen_pfn_t", file: !3280, line: 79, baseType: !77)
!3280 = !DIFile(filename: "./arch/x86/include/asm/xen/interface.h", directory: "/home/lizy2001/genbc/linux")
!3281 = !DILocalVariable(name: "vma", arg: 1, scope: !3275, file: !1, line: 143, type: !588)
!3282 = !DILocation(line: 143, column: 54, scope: !3275)
!3283 = !DILocalVariable(name: "addr", arg: 2, scope: !3275, file: !1, line: 144, type: !77)
!3284 = !DILocation(line: 144, column: 24, scope: !3275)
!3285 = !DILocalVariable(name: "gfn", arg: 3, scope: !3275, file: !1, line: 145, type: !3278)
!3286 = !DILocation(line: 145, column: 21, scope: !3275)
!3287 = !DILocalVariable(name: "nr", arg: 4, scope: !3275, file: !1, line: 145, type: !212)
!3288 = !DILocation(line: 145, column: 30, scope: !3275)
!3289 = !DILocalVariable(name: "err_ptr", arg: 5, scope: !3275, file: !1, line: 146, type: !403)
!3290 = !DILocation(line: 146, column: 15, scope: !3275)
!3291 = !DILocalVariable(name: "prot", arg: 6, scope: !3275, file: !1, line: 146, type: !1858)
!3292 = !DILocation(line: 146, column: 33, scope: !3275)
!3293 = !DILocalVariable(name: "domid", arg: 7, scope: !3275, file: !1, line: 147, type: !5)
!3294 = !DILocation(line: 147, column: 19, scope: !3275)
!3295 = !DILocalVariable(name: "pages", arg: 8, scope: !3275, file: !1, line: 148, type: !1648)
!3296 = !DILocation(line: 148, column: 24, scope: !3275)
!3297 = !DILocalVariable(name: "err", scope: !3275, file: !1, line: 150, type: !212)
!3298 = !DILocation(line: 150, column: 6, scope: !3275)
!3299 = !DILocalVariable(name: "data", scope: !3275, file: !1, line: 151, type: !3300)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remap_data", file: !1, line: 64, size: 832, elements: !3301)
!3301 = !{!3302, !3303, !3304, !3305, !3309, !3310, !3311, !3312, !3315, !3316, !3317, !3319, !3322, !3324}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "fgfn", scope: !3300, file: !1, line: 65, baseType: !3278, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_fgfn", scope: !3300, file: !1, line: 66, baseType: !212, size: 32, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "prot", scope: !3300, file: !1, line: 67, baseType: !1858, size: 64, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "domid", scope: !3300, file: !1, line: 68, baseType: !3306, size: 16, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "domid_t", file: !3307, line: 437, baseType: !3308)
!3307 = !DIFile(filename: "./include/xen/interface/xen.h", directory: "/home/lizy2001/genbc/linux")
!3308 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !74, line: 103, baseType: !525)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3300, file: !1, line: 69, baseType: !588, size: 64, offset: 256)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3300, file: !1, line: 70, baseType: !212, size: 32, offset: 320)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3300, file: !1, line: 71, baseType: !1648, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3300, file: !1, line: 72, baseType: !3313, size: 64, offset: 448)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DICompositeType(tag: DW_TAG_structure_type, name: "xen_remap_gfn_info", file: !1, line: 72, flags: DIFlagFwdDecl)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "err_ptr", scope: !3300, file: !1, line: 73, baseType: !403, size: 64, offset: 512)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mapped", scope: !3300, file: !1, line: 74, baseType: !212, size: 32, offset: 576)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "h_errs", scope: !3300, file: !1, line: 77, baseType: !3318, size: 32, offset: 608)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 32, elements: !883)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "h_idxs", scope: !3300, file: !1, line: 78, baseType: !3320, size: 64, offset: 640)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3321, size: 64, elements: !883)
!3321 = !DIDerivedType(tag: DW_TAG_typedef, name: "xen_ulong_t", file: !3280, line: 81, baseType: !77)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "h_gpfns", scope: !3300, file: !1, line: 79, baseType: !3323, size: 64, offset: 704)
!3323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3279, size: 64, elements: !883)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "h_iter", scope: !3300, file: !1, line: 81, baseType: !212, size: 32, offset: 768)
!3325 = !DILocation(line: 151, column: 20, scope: !3275)
!3326 = !DILocalVariable(name: "range", scope: !3275, file: !1, line: 152, type: !77)
!3327 = !DILocation(line: 152, column: 16, scope: !3275)
!3328 = !DILocation(line: 152, column: 24, scope: !3275)
!3329 = !DILocation(line: 152, column: 59, scope: !3275)
!3330 = !DILocation(line: 156, column: 2, scope: !3275)
!3331 = !DILocation(line: 156, column: 2, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !1, line: 156, column: 2)
!3333 = distinct !DILexicalBlock(scope: !3275, file: !1, line: 156, column: 2)
!3334 = !DILocation(line: 156, column: 2, scope: !3333)
!3335 = !DILocation(line: 156, column: 2, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3332, file: !1, line: 156, column: 2)
!3337 = !DILocation(line: 156, column: 2, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3336, file: !1, line: 156, column: 2)
!3339 = !DILocation(line: 156, column: 2, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !1, line: 156, column: 2)
!3341 = !{i32 -2141715340, i32 -2141715311, i32 -2141715265, i32 -2141715207, i32 -2141715153, i32 -2141715099, i32 -2141715044, i32 -2141715013}
!3342 = !DILocation(line: 156, column: 2, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !1, line: 156, column: 2)
!3344 = distinct !DILexicalBlock(scope: !3336, file: !1, line: 156, column: 2)
!3345 = !{i32 -2141714567, i32 -2141714560, i32 -2141714506, i32 -2141714475, i32 -2141714445}
!3346 = !DILocation(line: 156, column: 2, scope: !3344)
!3347 = !DILocation(line: 158, column: 14, scope: !3275)
!3348 = !DILocation(line: 158, column: 7, scope: !3275)
!3349 = !DILocation(line: 158, column: 12, scope: !3275)
!3350 = !DILocation(line: 159, column: 17, scope: !3275)
!3351 = !DILocation(line: 159, column: 7, scope: !3275)
!3352 = !DILocation(line: 159, column: 15, scope: !3275)
!3353 = !DILocation(line: 160, column: 7, scope: !3275)
!3354 = !DILocation(line: 160, column: 15, scope: !3275)
!3355 = !DILocation(line: 161, column: 15, scope: !3275)
!3356 = !DILocation(line: 161, column: 7, scope: !3275)
!3357 = !DILocation(line: 161, column: 13, scope: !3275)
!3358 = !DILocation(line: 162, column: 15, scope: !3275)
!3359 = !DILocation(line: 162, column: 7, scope: !3275)
!3360 = !DILocation(line: 162, column: 13, scope: !3275)
!3361 = !DILocation(line: 163, column: 15, scope: !3275)
!3362 = !DILocation(line: 163, column: 7, scope: !3275)
!3363 = !DILocation(line: 163, column: 13, scope: !3275)
!3364 = !DILocation(line: 164, column: 7, scope: !3275)
!3365 = !DILocation(line: 164, column: 13, scope: !3275)
!3366 = !DILocation(line: 165, column: 17, scope: !3275)
!3367 = !DILocation(line: 165, column: 7, scope: !3275)
!3368 = !DILocation(line: 165, column: 15, scope: !3275)
!3369 = !DILocation(line: 166, column: 7, scope: !3275)
!3370 = !DILocation(line: 166, column: 14, scope: !3275)
!3371 = !DILocation(line: 168, column: 28, scope: !3275)
!3372 = !DILocation(line: 168, column: 33, scope: !3275)
!3373 = !DILocation(line: 168, column: 40, scope: !3275)
!3374 = !DILocation(line: 168, column: 46, scope: !3275)
!3375 = !DILocation(line: 169, column: 21, scope: !3275)
!3376 = !DILocation(line: 168, column: 8, scope: !3275)
!3377 = !DILocation(line: 168, column: 6, scope: !3275)
!3378 = !DILocation(line: 170, column: 9, scope: !3275)
!3379 = !DILocation(line: 170, column: 13, scope: !3275)
!3380 = !DILocation(line: 170, column: 19, scope: !3275)
!3381 = !DILocation(line: 170, column: 30, scope: !3275)
!3382 = !DILocation(line: 170, column: 2, scope: !3275)
!3383 = distinct !DISubprogram(name: "remap_pte_fn", scope: !1, file: !1, line: 96, type: !3384, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!212, !1926, !77, !72}
!3386 = !DILocalVariable(name: "ptep", arg: 1, scope: !3383, file: !1, line: 96, type: !1926)
!3387 = !DILocation(line: 96, column: 32, scope: !3383)
!3388 = !DILocalVariable(name: "addr", arg: 2, scope: !3383, file: !1, line: 96, type: !77)
!3389 = !DILocation(line: 96, column: 52, scope: !3383)
!3390 = !DILocalVariable(name: "data", arg: 3, scope: !3383, file: !1, line: 96, type: !72)
!3391 = !DILocation(line: 96, column: 64, scope: !3383)
!3392 = !DILocalVariable(name: "info", scope: !3383, file: !1, line: 98, type: !3393)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3394 = !DILocation(line: 98, column: 21, scope: !3383)
!3395 = !DILocation(line: 98, column: 28, scope: !3383)
!3396 = !DILocalVariable(name: "page", scope: !3383, file: !1, line: 99, type: !78)
!3397 = !DILocation(line: 99, column: 15, scope: !3383)
!3398 = !DILocation(line: 99, column: 22, scope: !3383)
!3399 = !DILocation(line: 99, column: 28, scope: !3383)
!3400 = !DILocation(line: 99, column: 34, scope: !3383)
!3401 = !DILocation(line: 99, column: 40, scope: !3383)
!3402 = !DILocation(line: 99, column: 45, scope: !3383)
!3403 = !DILocalVariable(name: "pte", scope: !3383, file: !1, line: 100, type: !1919)
!3404 = !DILocation(line: 100, column: 8, scope: !3383)
!3405 = !DILocation(line: 100, column: 36, scope: !3383)
!3406 = !DILocation(line: 100, column: 55, scope: !3383)
!3407 = !DILocation(line: 100, column: 61, scope: !3383)
!3408 = !DILocation(line: 100, column: 28, scope: !3383)
!3409 = !DILocation(line: 100, column: 14, scope: !3383)
!3410 = !DILocalVariable(name: "rc", scope: !3383, file: !1, line: 101, type: !212)
!3411 = !DILocation(line: 101, column: 6, scope: !3383)
!3412 = !DILocalVariable(name: "nr_gfn", scope: !3383, file: !1, line: 101, type: !212)
!3413 = !DILocation(line: 101, column: 10, scope: !3383)
!3414 = !DILocalVariable(name: "i", scope: !3383, file: !1, line: 102, type: !1118)
!3415 = !DILocation(line: 102, column: 11, scope: !3383)
!3416 = !DILocalVariable(name: "xatp", scope: !3383, file: !1, line: 103, type: !3417)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_add_to_physmap_range", file: !3418, line: 194, size: 256, elements: !3419)
!3418 = !DIFile(filename: "./include/xen/interface/memory.h", directory: "/home/lizy2001/genbc/linux")
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3427, !3429}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "domid", scope: !3417, file: !3418, line: 197, baseType: !3306, size: 16)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !3417, file: !3418, line: 198, baseType: !3308, size: 16, offset: 16)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3417, file: !3418, line: 201, baseType: !3308, size: 16, offset: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "foreign_domid", scope: !3417, file: !3418, line: 202, baseType: !3306, size: 16, offset: 48)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "idxs", scope: !3417, file: !3418, line: 205, baseType: !3425, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_xen_ulong_t", file: !3280, line: 95, baseType: !3426)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "gpfns", scope: !3417, file: !3418, line: 208, baseType: !3428, size: 64, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_xen_pfn_t", file: !3280, line: 94, baseType: !3278)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "errs", scope: !3417, file: !3418, line: 213, baseType: !3430, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_int", file: !3280, line: 90, baseType: !403)
!3431 = !DILocation(line: 103, column: 34, scope: !3383)
!3432 = !DILocation(line: 103, column: 41, scope: !3383)
!3433 = !DILocation(line: 105, column: 20, scope: !3383)
!3434 = !DILocation(line: 105, column: 26, scope: !3383)
!3435 = !DILocalVariable(name: "__UNIQUE_ID___x227", scope: !3436, file: !1, line: 109, type: !212)
!3436 = distinct !DILexicalBlock(scope: !3383, file: !1, line: 109, column: 11)
!3437 = !DILocation(line: 109, column: 11, scope: !3436)
!3438 = !DILocalVariable(name: "__UNIQUE_ID___y228", scope: !3436, file: !1, line: 109, type: !212)
!3439 = !DILocation(line: 109, column: 9, scope: !3383)
!3440 = !DILocation(line: 110, column: 19, scope: !3383)
!3441 = !DILocation(line: 110, column: 2, scope: !3383)
!3442 = !DILocation(line: 110, column: 8, scope: !3383)
!3443 = !DILocation(line: 110, column: 16, scope: !3383)
!3444 = !DILocation(line: 112, column: 2, scope: !3383)
!3445 = !DILocation(line: 112, column: 8, scope: !3383)
!3446 = !DILocation(line: 112, column: 15, scope: !3383)
!3447 = !DILocation(line: 113, column: 26, scope: !3383)
!3448 = !DILocation(line: 113, column: 49, scope: !3383)
!3449 = !DILocation(line: 113, column: 2, scope: !3383)
!3450 = !DILocation(line: 114, column: 2, scope: !3383)
!3451 = !DILocation(line: 114, column: 2, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !1, line: 114, column: 2)
!3453 = distinct !DILexicalBlock(scope: !3383, file: !1, line: 114, column: 2)
!3454 = !DILocation(line: 114, column: 2, scope: !3453)
!3455 = !DILocation(line: 114, column: 2, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3452, file: !1, line: 114, column: 2)
!3457 = !DILocation(line: 114, column: 2, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3456, file: !1, line: 114, column: 2)
!3459 = !DILocation(line: 114, column: 2, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3456, file: !1, line: 114, column: 2)
!3461 = !{i32 -2141717173, i32 -2141717144, i32 -2141717098, i32 -2141717040, i32 -2141716986, i32 -2141716932, i32 -2141716877, i32 -2141716846}
!3462 = !DILocation(line: 114, column: 2, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !1, line: 114, column: 2)
!3464 = distinct !DILexicalBlock(scope: !3456, file: !1, line: 114, column: 2)
!3465 = !{i32 -2141716400, i32 -2141716393, i32 -2141716339, i32 -2141716308, i32 -2141716278}
!3466 = !DILocation(line: 114, column: 2, scope: !3464)
!3467 = !DILocation(line: 116, column: 2, scope: !3383)
!3468 = !DILocation(line: 116, column: 2, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3383, file: !1, line: 116, column: 2)
!3470 = !DILocation(line: 117, column: 2, scope: !3383)
!3471 = !DILocation(line: 117, column: 2, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3383, file: !1, line: 117, column: 2)
!3473 = !DILocation(line: 118, column: 2, scope: !3383)
!3474 = !DILocation(line: 118, column: 2, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3383, file: !1, line: 118, column: 2)
!3476 = !DILocation(line: 119, column: 14, scope: !3383)
!3477 = !DILocation(line: 119, column: 7, scope: !3383)
!3478 = !DILocation(line: 119, column: 12, scope: !3383)
!3479 = !DILocation(line: 121, column: 57, scope: !3383)
!3480 = !DILocation(line: 121, column: 7, scope: !3383)
!3481 = !DILocation(line: 121, column: 5, scope: !3383)
!3482 = !DILocation(line: 124, column: 9, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3383, file: !1, line: 124, column: 2)
!3484 = !DILocation(line: 124, column: 7, scope: !3483)
!3485 = !DILocation(line: 124, column: 14, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3483, file: !1, line: 124, column: 2)
!3487 = !DILocation(line: 124, column: 18, scope: !3486)
!3488 = !DILocation(line: 124, column: 16, scope: !3486)
!3489 = !DILocation(line: 124, column: 2, scope: !3483)
!3490 = !DILocalVariable(name: "err", scope: !3491, file: !1, line: 125, type: !212)
!3491 = distinct !DILexicalBlock(scope: !3486, file: !1, line: 124, column: 31)
!3492 = !DILocation(line: 125, column: 7, scope: !3491)
!3493 = !DILocation(line: 125, column: 14, scope: !3491)
!3494 = !DILocation(line: 125, column: 17, scope: !3491)
!3495 = !DILocation(line: 125, column: 13, scope: !3491)
!3496 = !DILocation(line: 125, column: 24, scope: !3491)
!3497 = !DILocation(line: 125, column: 29, scope: !3491)
!3498 = !DILocation(line: 125, column: 35, scope: !3491)
!3499 = !DILocation(line: 125, column: 42, scope: !3491)
!3500 = !DILocation(line: 127, column: 24, scope: !3491)
!3501 = !DILocation(line: 127, column: 5, scope: !3491)
!3502 = !DILocation(line: 127, column: 11, scope: !3491)
!3503 = !DILocation(line: 127, column: 18, scope: !3491)
!3504 = !DILocation(line: 127, column: 22, scope: !3491)
!3505 = !DILocation(line: 128, column: 8, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3491, file: !1, line: 128, column: 7)
!3507 = !DILocation(line: 128, column: 7, scope: !3491)
!3508 = !DILocation(line: 129, column: 4, scope: !3506)
!3509 = !DILocation(line: 129, column: 10, scope: !3506)
!3510 = !DILocation(line: 129, column: 16, scope: !3506)
!3511 = !DILocation(line: 130, column: 2, scope: !3491)
!3512 = !DILocation(line: 124, column: 27, scope: !3486)
!3513 = !DILocation(line: 124, column: 2, scope: !3486)
!3514 = distinct !{!3514, !3489, !3515}
!3515 = !DILocation(line: 130, column: 2, scope: !3483)
!3516 = !DILocation(line: 137, column: 7, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3383, file: !1, line: 137, column: 6)
!3518 = !DILocation(line: 137, column: 6, scope: !3383)
!3519 = !DILocation(line: 138, column: 14, scope: !3517)
!3520 = !DILocation(line: 138, column: 20, scope: !3517)
!3521 = !DILocation(line: 138, column: 25, scope: !3517)
!3522 = !DILocation(line: 138, column: 32, scope: !3517)
!3523 = !DILocation(line: 138, column: 38, scope: !3517)
!3524 = !DILocation(line: 138, column: 3, scope: !3517)
!3525 = !DILocation(line: 140, column: 2, scope: !3383)
!3526 = distinct !DISubprogram(name: "xen_xlate_unmap_gfn_range", scope: !1, file: !1, line: 183, type: !3527, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!212, !588, !212, !1648}
!3529 = !DILocalVariable(name: "vma", arg: 1, scope: !3526, file: !1, line: 183, type: !588)
!3530 = !DILocation(line: 183, column: 54, scope: !3526)
!3531 = !DILocalVariable(name: "nr", arg: 2, scope: !3526, file: !1, line: 184, type: !212)
!3532 = !DILocation(line: 184, column: 14, scope: !3526)
!3533 = !DILocalVariable(name: "pages", arg: 3, scope: !3526, file: !1, line: 184, type: !1648)
!3534 = !DILocation(line: 184, column: 32, scope: !3526)
!3535 = !DILocation(line: 186, column: 19, scope: !3526)
!3536 = !DILocation(line: 186, column: 26, scope: !3526)
!3537 = !DILocation(line: 186, column: 2, scope: !3526)
!3538 = !DILocation(line: 188, column: 2, scope: !3526)
!3539 = distinct !DISubprogram(name: "xen_for_each_gfn", scope: !1, file: !1, line: 48, type: !3540, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{null, !1648, !5, !3542, !72}
!3542 = !DIDerivedType(tag: DW_TAG_typedef, name: "xen_gfn_fn_t", file: !1, line: 45, baseType: !3543)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{null, !77, !72}
!3546 = !DILocalVariable(name: "pages", arg: 1, scope: !3539, file: !1, line: 48, type: !1648)
!3547 = !DILocation(line: 48, column: 44, scope: !3539)
!3548 = !DILocalVariable(name: "nr_gfn", arg: 2, scope: !3539, file: !1, line: 48, type: !5)
!3549 = !DILocation(line: 48, column: 60, scope: !3539)
!3550 = !DILocalVariable(name: "fn", arg: 3, scope: !3539, file: !1, line: 49, type: !3542)
!3551 = !DILocation(line: 49, column: 22, scope: !3539)
!3552 = !DILocalVariable(name: "data", arg: 4, scope: !3539, file: !1, line: 49, type: !72)
!3553 = !DILocation(line: 49, column: 32, scope: !3539)
!3554 = !DILocalVariable(name: "xen_pfn", scope: !3539, file: !1, line: 51, type: !77)
!3555 = !DILocation(line: 51, column: 16, scope: !3539)
!3556 = !DILocalVariable(name: "page", scope: !3539, file: !1, line: 52, type: !78)
!3557 = !DILocation(line: 52, column: 15, scope: !3539)
!3558 = !DILocalVariable(name: "i", scope: !3539, file: !1, line: 53, type: !212)
!3559 = !DILocation(line: 53, column: 6, scope: !3539)
!3560 = !DILocation(line: 55, column: 9, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3539, file: !1, line: 55, column: 2)
!3562 = !DILocation(line: 55, column: 7, scope: !3561)
!3563 = !DILocation(line: 55, column: 14, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3561, file: !1, line: 55, column: 2)
!3565 = !DILocation(line: 55, column: 18, scope: !3564)
!3566 = !DILocation(line: 55, column: 16, scope: !3564)
!3567 = !DILocation(line: 55, column: 2, scope: !3561)
!3568 = !DILocation(line: 56, column: 8, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !1, line: 56, column: 7)
!3570 = distinct !DILexicalBlock(scope: !3564, file: !1, line: 55, column: 31)
!3571 = !DILocation(line: 56, column: 10, scope: !3569)
!3572 = !DILocation(line: 56, column: 30, scope: !3569)
!3573 = !DILocation(line: 56, column: 7, scope: !3570)
!3574 = !DILocation(line: 57, column: 11, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3569, file: !1, line: 56, column: 36)
!3576 = !DILocation(line: 57, column: 17, scope: !3575)
!3577 = !DILocation(line: 57, column: 19, scope: !3575)
!3578 = !DILocation(line: 57, column: 9, scope: !3575)
!3579 = !DILocation(line: 58, column: 14, scope: !3575)
!3580 = !DILocation(line: 58, column: 12, scope: !3575)
!3581 = !DILocation(line: 59, column: 3, scope: !3575)
!3582 = !DILocation(line: 60, column: 3, scope: !3570)
!3583 = !DILocation(line: 60, column: 24, scope: !3570)
!3584 = !DILocation(line: 60, column: 6, scope: !3570)
!3585 = !DILocation(line: 60, column: 29, scope: !3570)
!3586 = !DILocation(line: 61, column: 2, scope: !3570)
!3587 = !DILocation(line: 55, column: 27, scope: !3564)
!3588 = !DILocation(line: 55, column: 2, scope: !3564)
!3589 = distinct !{!3589, !3567, !3590}
!3590 = !DILocation(line: 61, column: 2, scope: !3561)
!3591 = !DILocation(line: 62, column: 1, scope: !3539)
!3592 = distinct !DISubprogram(name: "unmap_gfn", scope: !1, file: !1, line: 174, type: !3544, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3593 = !DILocalVariable(name: "gfn", arg: 1, scope: !3592, file: !1, line: 174, type: !77)
!3594 = !DILocation(line: 174, column: 37, scope: !3592)
!3595 = !DILocalVariable(name: "data", arg: 2, scope: !3592, file: !1, line: 174, type: !72)
!3596 = !DILocation(line: 174, column: 48, scope: !3592)
!3597 = !DILocalVariable(name: "xrp", scope: !3592, file: !1, line: 176, type: !3598)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_remove_from_physmap", file: !3418, line: 253, size: 128, elements: !3599)
!3599 = !{!3600, !3601}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "domid", scope: !3598, file: !3418, line: 255, baseType: !3306, size: 16)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "gpfn", scope: !3598, file: !3418, line: 258, baseType: !3279, size: 64, offset: 64)
!3602 = !DILocation(line: 176, column: 33, scope: !3592)
!3603 = !DILocation(line: 178, column: 6, scope: !3592)
!3604 = !DILocation(line: 178, column: 12, scope: !3592)
!3605 = !DILocation(line: 179, column: 13, scope: !3592)
!3606 = !DILocation(line: 179, column: 6, scope: !3592)
!3607 = !DILocation(line: 179, column: 11, scope: !3592)
!3608 = !DILocation(line: 180, column: 57, scope: !3592)
!3609 = !DILocation(line: 180, column: 8, scope: !3592)
!3610 = !DILocation(line: 181, column: 1, scope: !3592)
!3611 = distinct !DISubprogram(name: "xen_xlate_map_ballooned_pages", scope: !1, file: !1, line: 214, type: !3612, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!212, !3614, !2065, !77}
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3615 = !DILocalVariable(name: "gfns", arg: 1, scope: !3611, file: !1, line: 214, type: !3614)
!3616 = !DILocation(line: 214, column: 54, scope: !3611)
!3617 = !DILocalVariable(name: "virt", arg: 2, scope: !3611, file: !1, line: 214, type: !2065)
!3618 = !DILocation(line: 214, column: 67, scope: !3611)
!3619 = !DILocalVariable(name: "nr_grant_frames", arg: 3, scope: !3611, file: !1, line: 215, type: !77)
!3620 = !DILocation(line: 215, column: 21, scope: !3611)
!3621 = !DILocalVariable(name: "pages", scope: !3611, file: !1, line: 217, type: !1648)
!3622 = !DILocation(line: 217, column: 16, scope: !3611)
!3623 = !DILocalVariable(name: "pfns", scope: !3611, file: !1, line: 218, type: !3278)
!3624 = !DILocation(line: 218, column: 13, scope: !3611)
!3625 = !DILocalVariable(name: "vaddr", scope: !3611, file: !1, line: 219, type: !72)
!3626 = !DILocation(line: 219, column: 8, scope: !3611)
!3627 = !DILocalVariable(name: "data", scope: !3611, file: !1, line: 220, type: !3628)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "map_balloon_pages", file: !1, line: 192, size: 128, elements: !3629)
!3629 = !{!3630, !3631}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "pfns", scope: !3628, file: !1, line: 193, baseType: !3278, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3628, file: !1, line: 194, baseType: !5, size: 32, offset: 64)
!3632 = !DILocation(line: 220, column: 27, scope: !3611)
!3633 = !DILocalVariable(name: "rc", scope: !3611, file: !1, line: 221, type: !212)
!3634 = !DILocation(line: 221, column: 6, scope: !3611)
!3635 = !DILocalVariable(name: "nr_pages", scope: !3611, file: !1, line: 222, type: !77)
!3636 = !DILocation(line: 222, column: 16, scope: !3611)
!3637 = !DILocation(line: 224, column: 2, scope: !3611)
!3638 = !DILocation(line: 224, column: 2, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !1, line: 224, column: 2)
!3640 = distinct !DILexicalBlock(scope: !3611, file: !1, line: 224, column: 2)
!3641 = !DILocation(line: 224, column: 2, scope: !3640)
!3642 = !DILocation(line: 224, column: 2, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3639, file: !1, line: 224, column: 2)
!3644 = !DILocation(line: 224, column: 2, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3643, file: !1, line: 224, column: 2)
!3646 = !DILocation(line: 224, column: 2, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3643, file: !1, line: 224, column: 2)
!3648 = !{i32 -2141713719, i32 -2141713690, i32 -2141713644, i32 -2141713586, i32 -2141713532, i32 -2141713478, i32 -2141713423, i32 -2141713392}
!3649 = !DILocation(line: 224, column: 2, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !1, line: 224, column: 2)
!3651 = distinct !DILexicalBlock(scope: !3643, file: !1, line: 224, column: 2)
!3652 = !{i32 -2141712946, i32 -2141712939, i32 -2141712885, i32 -2141712854, i32 -2141712824}
!3653 = !DILocation(line: 224, column: 2, scope: !3651)
!3654 = !DILocation(line: 225, column: 13, scope: !3611)
!3655 = !DILocation(line: 225, column: 11, scope: !3611)
!3656 = !DILocation(line: 226, column: 18, scope: !3611)
!3657 = !DILocation(line: 226, column: 10, scope: !3611)
!3658 = !DILocation(line: 226, column: 8, scope: !3611)
!3659 = !DILocation(line: 227, column: 7, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3611, file: !1, line: 227, column: 6)
!3661 = !DILocation(line: 227, column: 6, scope: !3611)
!3662 = !DILocation(line: 228, column: 3, scope: !3660)
!3663 = !DILocation(line: 230, column: 17, scope: !3611)
!3664 = !DILocation(line: 230, column: 9, scope: !3611)
!3665 = !DILocation(line: 230, column: 7, scope: !3611)
!3666 = !DILocation(line: 231, column: 7, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3611, file: !1, line: 231, column: 6)
!3668 = !DILocation(line: 231, column: 6, scope: !3611)
!3669 = !DILocation(line: 232, column: 9, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3667, file: !1, line: 231, column: 13)
!3671 = !DILocation(line: 232, column: 3, scope: !3670)
!3672 = !DILocation(line: 233, column: 3, scope: !3670)
!3673 = !DILocation(line: 235, column: 35, scope: !3611)
!3674 = !DILocation(line: 235, column: 45, scope: !3611)
!3675 = !DILocation(line: 235, column: 7, scope: !3611)
!3676 = !DILocation(line: 235, column: 5, scope: !3611)
!3677 = !DILocation(line: 236, column: 6, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3611, file: !1, line: 236, column: 6)
!3679 = !DILocation(line: 236, column: 6, scope: !3611)
!3680 = !DILocation(line: 237, column: 3, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3678, file: !1, line: 236, column: 10)
!3682 = !DILocation(line: 239, column: 9, scope: !3681)
!3683 = !DILocation(line: 239, column: 3, scope: !3681)
!3684 = !DILocation(line: 240, column: 9, scope: !3681)
!3685 = !DILocation(line: 240, column: 3, scope: !3681)
!3686 = !DILocation(line: 241, column: 10, scope: !3681)
!3687 = !DILocation(line: 241, column: 3, scope: !3681)
!3688 = !DILocation(line: 244, column: 14, scope: !3611)
!3689 = !DILocation(line: 244, column: 7, scope: !3611)
!3690 = !DILocation(line: 244, column: 12, scope: !3611)
!3691 = !DILocation(line: 245, column: 7, scope: !3611)
!3692 = !DILocation(line: 245, column: 11, scope: !3611)
!3693 = !DILocation(line: 246, column: 19, scope: !3611)
!3694 = !DILocation(line: 246, column: 26, scope: !3611)
!3695 = !DILocation(line: 246, column: 62, scope: !3611)
!3696 = !DILocation(line: 246, column: 2, scope: !3611)
!3697 = !DILocation(line: 248, column: 15, scope: !3611)
!3698 = !DILocation(line: 248, column: 22, scope: !3611)
!3699 = !DILocation(line: 248, column: 35, scope: !3611)
!3700 = !DILocation(line: 248, column: 10, scope: !3611)
!3701 = !DILocation(line: 248, column: 8, scope: !3611)
!3702 = !DILocation(line: 249, column: 7, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3611, file: !1, line: 249, column: 6)
!3704 = !DILocation(line: 249, column: 6, scope: !3611)
!3705 = !DILocation(line: 250, column: 3, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3703, file: !1, line: 249, column: 14)
!3707 = !DILocation(line: 252, column: 30, scope: !3706)
!3708 = !DILocation(line: 252, column: 40, scope: !3706)
!3709 = !DILocation(line: 252, column: 3, scope: !3706)
!3710 = !DILocation(line: 253, column: 9, scope: !3706)
!3711 = !DILocation(line: 253, column: 3, scope: !3706)
!3712 = !DILocation(line: 254, column: 9, scope: !3706)
!3713 = !DILocation(line: 254, column: 3, scope: !3706)
!3714 = !DILocation(line: 255, column: 3, scope: !3706)
!3715 = !DILocation(line: 257, column: 8, scope: !3611)
!3716 = !DILocation(line: 257, column: 2, scope: !3611)
!3717 = !DILocation(line: 259, column: 10, scope: !3611)
!3718 = !DILocation(line: 259, column: 3, scope: !3611)
!3719 = !DILocation(line: 259, column: 8, scope: !3611)
!3720 = !DILocation(line: 260, column: 10, scope: !3611)
!3721 = !DILocation(line: 260, column: 3, scope: !3611)
!3722 = !DILocation(line: 260, column: 8, scope: !3611)
!3723 = !DILocation(line: 262, column: 2, scope: !3611)
!3724 = !DILocation(line: 263, column: 1, scope: !3611)
!3725 = distinct !DISubprogram(name: "kcalloc", scope: !65, file: !65, line: 601, type: !3726, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!72, !415, !415, !73}
!3728 = !DILocalVariable(name: "n", arg: 1, scope: !3725, file: !65, line: 601, type: !415)
!3729 = !DILocation(line: 601, column: 36, scope: !3725)
!3730 = !DILocalVariable(name: "size", arg: 2, scope: !3725, file: !65, line: 601, type: !415)
!3731 = !DILocation(line: 601, column: 46, scope: !3725)
!3732 = !DILocalVariable(name: "flags", arg: 3, scope: !3725, file: !65, line: 601, type: !73)
!3733 = !DILocation(line: 601, column: 58, scope: !3725)
!3734 = !DILocation(line: 603, column: 23, scope: !3725)
!3735 = !DILocation(line: 603, column: 26, scope: !3725)
!3736 = !DILocation(line: 603, column: 32, scope: !3725)
!3737 = !DILocation(line: 603, column: 38, scope: !3725)
!3738 = !DILocation(line: 603, column: 9, scope: !3725)
!3739 = !DILocation(line: 603, column: 2, scope: !3725)
!3740 = distinct !DISubprogram(name: "setup_balloon_gfn", scope: !1, file: !1, line: 197, type: !3544, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3741 = !DILocalVariable(name: "gfn", arg: 1, scope: !3740, file: !1, line: 197, type: !77)
!3742 = !DILocation(line: 197, column: 45, scope: !3740)
!3743 = !DILocalVariable(name: "data", arg: 2, scope: !3740, file: !1, line: 197, type: !72)
!3744 = !DILocation(line: 197, column: 56, scope: !3740)
!3745 = !DILocalVariable(name: "info", scope: !3740, file: !1, line: 199, type: !3746)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3747 = !DILocation(line: 199, column: 28, scope: !3740)
!3748 = !DILocation(line: 199, column: 35, scope: !3740)
!3749 = !DILocation(line: 201, column: 28, scope: !3740)
!3750 = !DILocation(line: 201, column: 2, scope: !3740)
!3751 = !DILocation(line: 201, column: 8, scope: !3740)
!3752 = !DILocation(line: 201, column: 13, scope: !3740)
!3753 = !DILocation(line: 201, column: 19, scope: !3740)
!3754 = !DILocation(line: 201, column: 22, scope: !3740)
!3755 = !DILocation(line: 201, column: 26, scope: !3740)
!3756 = !DILocation(line: 202, column: 1, scope: !3740)
!3757 = distinct !DISubprogram(name: "xen_remap_vma_range", scope: !1, file: !1, line: 286, type: !3758, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!212, !588, !77, !77}
!3760 = !DILocalVariable(name: "vma", arg: 1, scope: !3757, file: !1, line: 286, type: !588)
!3761 = !DILocation(line: 286, column: 48, scope: !3757)
!3762 = !DILocalVariable(name: "addr", arg: 2, scope: !3757, file: !1, line: 286, type: !77)
!3763 = !DILocation(line: 286, column: 67, scope: !3757)
!3764 = !DILocalVariable(name: "len", arg: 3, scope: !3757, file: !1, line: 286, type: !77)
!3765 = !DILocation(line: 286, column: 87, scope: !3757)
!3766 = !DILocalVariable(name: "r", scope: !3757, file: !1, line: 288, type: !3767)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remap_pfn", file: !1, line: 266, size: 256, elements: !3768)
!3768 = !{!3769, !3770, !3771, !3772}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3767, file: !1, line: 267, baseType: !605, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3767, file: !1, line: 268, baseType: !1648, size: 64, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "prot", scope: !3767, file: !1, line: 269, baseType: !1858, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !3767, file: !1, line: 270, baseType: !77, size: 64, offset: 192)
!3773 = !DILocation(line: 288, column: 19, scope: !3757)
!3774 = !DILocation(line: 288, column: 23, scope: !3757)
!3775 = !DILocation(line: 289, column: 9, scope: !3757)
!3776 = !DILocation(line: 289, column: 14, scope: !3757)
!3777 = !DILocation(line: 290, column: 12, scope: !3757)
!3778 = !DILocation(line: 290, column: 17, scope: !3757)
!3779 = !DILocation(line: 291, column: 11, scope: !3757)
!3780 = !DILocation(line: 291, column: 16, scope: !3757)
!3781 = !DILocation(line: 294, column: 29, scope: !3757)
!3782 = !DILocation(line: 294, column: 34, scope: !3757)
!3783 = !DILocation(line: 294, column: 41, scope: !3757)
!3784 = !DILocation(line: 294, column: 47, scope: !3757)
!3785 = !DILocation(line: 294, column: 66, scope: !3757)
!3786 = !DILocation(line: 294, column: 9, scope: !3757)
!3787 = !DILocation(line: 294, column: 2, scope: !3757)
!3788 = distinct !DISubprogram(name: "remap_pfn_fn", scope: !1, file: !1, line: 273, type: !3384, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3789 = !DILocalVariable(name: "ptep", arg: 1, scope: !3788, file: !1, line: 273, type: !1926)
!3790 = !DILocation(line: 273, column: 32, scope: !3788)
!3791 = !DILocalVariable(name: "addr", arg: 2, scope: !3788, file: !1, line: 273, type: !77)
!3792 = !DILocation(line: 273, column: 52, scope: !3788)
!3793 = !DILocalVariable(name: "data", arg: 3, scope: !3788, file: !1, line: 273, type: !72)
!3794 = !DILocation(line: 273, column: 64, scope: !3788)
!3795 = !DILocalVariable(name: "r", scope: !3788, file: !1, line: 275, type: !3796)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3797 = !DILocation(line: 275, column: 20, scope: !3788)
!3798 = !DILocation(line: 275, column: 24, scope: !3788)
!3799 = !DILocalVariable(name: "page", scope: !3788, file: !1, line: 276, type: !78)
!3800 = !DILocation(line: 276, column: 15, scope: !3788)
!3801 = !DILocation(line: 276, column: 22, scope: !3788)
!3802 = !DILocation(line: 276, column: 25, scope: !3788)
!3803 = !DILocation(line: 276, column: 31, scope: !3788)
!3804 = !DILocation(line: 276, column: 34, scope: !3788)
!3805 = !DILocalVariable(name: "pte", scope: !3788, file: !1, line: 277, type: !1919)
!3806 = !DILocation(line: 277, column: 8, scope: !3788)
!3807 = !DILocation(line: 277, column: 36, scope: !3788)
!3808 = !DILocation(line: 277, column: 55, scope: !3788)
!3809 = !DILocation(line: 277, column: 58, scope: !3788)
!3810 = !DILocation(line: 277, column: 28, scope: !3788)
!3811 = !DILocation(line: 277, column: 14, scope: !3788)
!3812 = !DILocation(line: 279, column: 13, scope: !3788)
!3813 = !DILocation(line: 279, column: 16, scope: !3788)
!3814 = !DILocation(line: 279, column: 20, scope: !3788)
!3815 = !DILocation(line: 279, column: 26, scope: !3788)
!3816 = !DILocation(line: 279, column: 2, scope: !3788)
!3817 = !DILocation(line: 280, column: 2, scope: !3788)
!3818 = !DILocation(line: 280, column: 5, scope: !3788)
!3819 = !DILocation(line: 280, column: 6, scope: !3788)
!3820 = !DILocation(line: 282, column: 2, scope: !3788)
!3821 = distinct !DISubprogram(name: "pte_mkspecial", scope: !3822, file: !3822, line: 389, type: !3823, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3822 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/lizy2001/genbc/linux")
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!1919, !1919}
!3825 = !DILocalVariable(name: "pte", arg: 1, scope: !3821, file: !3822, line: 389, type: !1919)
!3826 = !DILocation(line: 389, column: 41, scope: !3821)
!3827 = !DILocation(line: 391, column: 9, scope: !3821)
!3828 = !DILocation(line: 391, column: 2, scope: !3821)
!3829 = distinct !DISubprogram(name: "pfn_pte", scope: !3822, file: !3822, line: 603, type: !3830, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!1919, !77, !1858}
!3832 = !DILocalVariable(name: "page_nr", arg: 1, scope: !3829, file: !3822, line: 603, type: !77)
!3833 = !DILocation(line: 603, column: 43, scope: !3829)
!3834 = !DILocalVariable(name: "pgprot", arg: 2, scope: !3829, file: !3822, line: 603, type: !1858)
!3835 = !DILocation(line: 603, column: 61, scope: !3829)
!3836 = !DILocalVariable(name: "pfn", scope: !3829, file: !3822, line: 605, type: !1651)
!3837 = !DILocation(line: 605, column: 14, scope: !3829)
!3838 = !DILocation(line: 605, column: 33, scope: !3829)
!3839 = !DILocation(line: 605, column: 41, scope: !3829)
!3840 = !DILocation(line: 606, column: 23, scope: !3829)
!3841 = !DILocation(line: 606, column: 9, scope: !3829)
!3842 = !DILocation(line: 606, column: 6, scope: !3829)
!3843 = !DILocation(line: 607, column: 6, scope: !3829)
!3844 = !DILocation(line: 608, column: 15, scope: !3829)
!3845 = !DILocation(line: 608, column: 21, scope: !3829)
!3846 = !DILocation(line: 608, column: 19, scope: !3829)
!3847 = !DILocation(line: 608, column: 9, scope: !3829)
!3848 = !DILocation(line: 608, column: 2, scope: !3829)
!3849 = distinct !DISubprogram(name: "setup_hparams", scope: !1, file: !1, line: 84, type: !3544, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3850 = !DILocalVariable(name: "gfn", arg: 1, scope: !3849, file: !1, line: 84, type: !77)
!3851 = !DILocation(line: 84, column: 41, scope: !3849)
!3852 = !DILocalVariable(name: "data", arg: 2, scope: !3849, file: !1, line: 84, type: !72)
!3853 = !DILocation(line: 84, column: 52, scope: !3849)
!3854 = !DILocalVariable(name: "info", scope: !3849, file: !1, line: 86, type: !3393)
!3855 = !DILocation(line: 86, column: 21, scope: !3849)
!3856 = !DILocation(line: 86, column: 28, scope: !3849)
!3857 = !DILocation(line: 88, column: 32, scope: !3849)
!3858 = !DILocation(line: 88, column: 38, scope: !3849)
!3859 = !DILocation(line: 88, column: 31, scope: !3849)
!3860 = !DILocation(line: 88, column: 2, scope: !3849)
!3861 = !DILocation(line: 88, column: 8, scope: !3849)
!3862 = !DILocation(line: 88, column: 15, scope: !3849)
!3863 = !DILocation(line: 88, column: 21, scope: !3849)
!3864 = !DILocation(line: 88, column: 29, scope: !3849)
!3865 = !DILocation(line: 89, column: 32, scope: !3849)
!3866 = !DILocation(line: 89, column: 2, scope: !3849)
!3867 = !DILocation(line: 89, column: 8, scope: !3849)
!3868 = !DILocation(line: 89, column: 16, scope: !3849)
!3869 = !DILocation(line: 89, column: 22, scope: !3849)
!3870 = !DILocation(line: 89, column: 30, scope: !3849)
!3871 = !DILocation(line: 90, column: 2, scope: !3849)
!3872 = !DILocation(line: 90, column: 8, scope: !3849)
!3873 = !DILocation(line: 90, column: 15, scope: !3849)
!3874 = !DILocation(line: 90, column: 21, scope: !3849)
!3875 = !DILocation(line: 90, column: 29, scope: !3849)
!3876 = !DILocation(line: 92, column: 2, scope: !3849)
!3877 = !DILocation(line: 92, column: 8, scope: !3849)
!3878 = !DILocation(line: 92, column: 14, scope: !3849)
!3879 = !DILocation(line: 93, column: 2, scope: !3849)
!3880 = !DILocation(line: 93, column: 8, scope: !3849)
!3881 = !DILocation(line: 93, column: 12, scope: !3849)
!3882 = !DILocation(line: 94, column: 1, scope: !3849)
!3883 = distinct !DISubprogram(name: "HYPERVISOR_memory_op", scope: !3884, file: !3884, line: 332, type: !3885, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3884 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!504, !5, !72}
!3887 = !DILocalVariable(name: "cmd", arg: 1, scope: !3883, file: !3884, line: 332, type: !5)
!3888 = !DILocation(line: 332, column: 35, scope: !3883)
!3889 = !DILocalVariable(name: "arg", arg: 2, scope: !3883, file: !3884, line: 332, type: !72)
!3890 = !DILocation(line: 332, column: 46, scope: !3883)
!3891 = !DILocalVariable(name: "__res", scope: !3892, file: !3884, line: 334, type: !77)
!3892 = distinct !DILexicalBlock(scope: !3883, file: !3884, line: 334, column: 9)
!3893 = !DILocation(line: 334, column: 9, scope: !3892)
!3894 = !DILocalVariable(name: "__arg1", scope: !3892, file: !3884, line: 334, type: !77)
!3895 = !DILocalVariable(name: "__arg2", scope: !3892, file: !3884, line: 334, type: !77)
!3896 = !DILocalVariable(name: "__arg3", scope: !3892, file: !3884, line: 334, type: !77)
!3897 = !DILocalVariable(name: "__arg4", scope: !3892, file: !3884, line: 334, type: !77)
!3898 = !DILocalVariable(name: "__arg5", scope: !3892, file: !3884, line: 334, type: !77)
!3899 = !{i32 -2142067352}
!3900 = !DILocation(line: 334, column: 2, scope: !3883)
!3901 = distinct !DISubprogram(name: "set_pte_at", scope: !3822, file: !3822, line: 1035, type: !3902, scopeLine: 1037, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{null, !605, !77, !1926, !1919}
!3904 = !DILocalVariable(name: "mm", arg: 1, scope: !3901, file: !3822, line: 1035, type: !605)
!3905 = !DILocation(line: 1035, column: 49, scope: !3901)
!3906 = !DILocalVariable(name: "addr", arg: 2, scope: !3901, file: !3822, line: 1035, type: !77)
!3907 = !DILocation(line: 1035, column: 67, scope: !3901)
!3908 = !DILocalVariable(name: "ptep", arg: 3, scope: !3901, file: !3822, line: 1036, type: !1926)
!3909 = !DILocation(line: 1036, column: 17, scope: !3901)
!3910 = !DILocalVariable(name: "pte", arg: 4, scope: !3901, file: !3822, line: 1036, type: !1919)
!3911 = !DILocation(line: 1036, column: 29, scope: !3901)
!3912 = !DILocation(line: 1038, column: 10, scope: !3901)
!3913 = !DILocation(line: 1038, column: 2, scope: !3901)
!3914 = !DILocation(line: 1039, column: 1, scope: !3901)
!3915 = distinct !DISubprogram(name: "pte_set_flags", scope: !3822, file: !3822, line: 303, type: !3916, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!1919, !1919, !75}
!3918 = !DILocalVariable(name: "pte", arg: 1, scope: !3915, file: !3822, line: 303, type: !1919)
!3919 = !DILocation(line: 303, column: 41, scope: !3915)
!3920 = !DILocalVariable(name: "set", arg: 2, scope: !3915, file: !3822, line: 303, type: !75)
!3921 = !DILocation(line: 303, column: 55, scope: !3915)
!3922 = !DILocalVariable(name: "v", scope: !3915, file: !3822, line: 305, type: !75)
!3923 = !DILocation(line: 305, column: 11, scope: !3915)
!3924 = !DILocation(line: 305, column: 15, scope: !3915)
!3925 = !DILocation(line: 307, column: 25, scope: !3915)
!3926 = !DILocation(line: 307, column: 29, scope: !3915)
!3927 = !DILocation(line: 307, column: 27, scope: !3915)
!3928 = !DILocation(line: 307, column: 9, scope: !3915)
!3929 = !DILocation(line: 307, column: 2, scope: !3915)
!3930 = distinct !DISubprogram(name: "native_pte_val", scope: !628, file: !628, line: 467, type: !3931, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!75, !1919}
!3933 = !DILocalVariable(name: "pte", arg: 1, scope: !3930, file: !628, line: 467, type: !1919)
!3934 = !DILocation(line: 467, column: 45, scope: !3930)
!3935 = !DILocation(line: 469, column: 13, scope: !3930)
!3936 = !DILocation(line: 469, column: 2, scope: !3930)
!3937 = distinct !DISubprogram(name: "native_make_pte", scope: !628, file: !628, line: 462, type: !3938, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!1919, !75}
!3940 = !DILocalVariable(name: "val", arg: 1, scope: !3937, file: !628, line: 462, type: !75)
!3941 = !DILocation(line: 462, column: 46, scope: !3937)
!3942 = !DILocation(line: 464, column: 17, scope: !3937)
!3943 = !DILocation(line: 464, column: 26, scope: !3937)
!3944 = !DILocation(line: 464, column: 2, scope: !3937)
!3945 = distinct !DISubprogram(name: "protnone_mask", scope: !3946, file: !3946, line: 22, type: !3947, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3946 = !DIFile(filename: "./arch/x86/include/asm/pgtable-invert.h", directory: "/home/lizy2001/genbc/linux")
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!173, !173}
!3949 = !DILocalVariable(name: "val", arg: 1, scope: !3945, file: !3946, line: 22, type: !173)
!3950 = !DILocation(line: 22, column: 37, scope: !3945)
!3951 = !DILocation(line: 24, column: 28, scope: !3945)
!3952 = !DILocation(line: 24, column: 9, scope: !3945)
!3953 = !DILocation(line: 24, column: 2, scope: !3945)
!3954 = distinct !DISubprogram(name: "__pte", scope: !3955, file: !3955, line: 372, type: !3938, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3955 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!3956 = !DILocalVariable(name: "val", arg: 1, scope: !3954, file: !3955, line: 372, type: !75)
!3957 = !DILocation(line: 372, column: 36, scope: !3954)
!3958 = !DILocation(line: 374, column: 17, scope: !3954)
!3959 = !DILocalVariable(name: "__ret", scope: !3960, file: !3955, line: 374, type: !75)
!3960 = distinct !DILexicalBlock(scope: !3954, file: !3955, line: 374, column: 19)
!3961 = !DILocation(line: 374, column: 19, scope: !3960)
!3962 = !DILocalVariable(name: "__edi", scope: !3960, file: !3955, line: 374, type: !77)
!3963 = !DILocalVariable(name: "__esi", scope: !3960, file: !3955, line: 374, type: !77)
!3964 = !DILocalVariable(name: "__edx", scope: !3960, file: !3955, line: 374, type: !77)
!3965 = !DILocalVariable(name: "__ecx", scope: !3960, file: !3955, line: 374, type: !77)
!3966 = !DILocalVariable(name: "__eax", scope: !3960, file: !3955, line: 374, type: !77)
!3967 = !DILocation(line: 374, column: 19, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !3955, line: 374, column: 19)
!3969 = distinct !DILexicalBlock(scope: !3960, file: !3955, line: 374, column: 19)
!3970 = !{i32 -2145708858, i32 -2145706495, i32 -2145706261, i32 -2145706210, i32 -2145706182, i32 -2145706157, i32 -2145706473, i32 -2145706460, i32 -2145706022, i32 -2145705903, i32 -2145706368, i32 -2145706341, i32 -2145706313, i32 -2145706283}
!3971 = !DILocalVariable(name: "__mask", scope: !3972, file: !3955, line: 374, type: !77)
!3972 = distinct !DILexicalBlock(scope: !3968, file: !3955, line: 374, column: 19)
!3973 = !DILocation(line: 374, column: 19, scope: !3972)
!3974 = !DILocation(line: 374, column: 19, scope: !3969)
!3975 = !DILocation(line: 374, column: 2, scope: !3954)
!3976 = distinct !DISubprogram(name: "check_pgprot", scope: !3822, file: !3822, line: 586, type: !3977, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!1862, !1858}
!3979 = !DILocalVariable(name: "pgprot", arg: 1, scope: !3976, file: !3822, line: 586, type: !1858)
!3980 = !DILocation(line: 586, column: 49, scope: !3976)
!3981 = !DILocalVariable(name: "massaged_val", scope: !3976, file: !3822, line: 588, type: !1862)
!3982 = !DILocation(line: 588, column: 14, scope: !3976)
!3983 = !DILocation(line: 588, column: 29, scope: !3976)
!3984 = !DILocation(line: 600, column: 9, scope: !3976)
!3985 = !DILocation(line: 600, column: 2, scope: !3976)
!3986 = distinct !DISubprogram(name: "__pte_needs_invert", scope: !3946, file: !3946, line: 16, type: !3987, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!279, !173}
!3989 = !DILocalVariable(name: "val", arg: 1, scope: !3986, file: !3946, line: 16, type: !173)
!3990 = !DILocation(line: 16, column: 43, scope: !3986)
!3991 = !DILocation(line: 18, column: 9, scope: !3986)
!3992 = !DILocation(line: 18, column: 13, scope: !3986)
!3993 = !DILocation(line: 18, column: 18, scope: !3986)
!3994 = !DILocation(line: 18, column: 22, scope: !3986)
!3995 = !DILocation(line: 18, column: 16, scope: !3986)
!3996 = !DILocation(line: 0, scope: !3986)
!3997 = !DILocation(line: 18, column: 2, scope: !3986)
!3998 = distinct !DISubprogram(name: "massage_pgprot", scope: !3822, file: !3822, line: 576, type: !3977, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3999 = !DILocalVariable(name: "pgprot", arg: 1, scope: !3998, file: !3822, line: 576, type: !1858)
!4000 = !DILocation(line: 576, column: 51, scope: !3998)
!4001 = !DILocalVariable(name: "protval", scope: !3998, file: !3822, line: 578, type: !1862)
!4002 = !DILocation(line: 578, column: 14, scope: !3998)
!4003 = !DILocation(line: 578, column: 24, scope: !3998)
!4004 = !DILocation(line: 580, column: 6, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3998, file: !3822, line: 580, column: 6)
!4006 = !DILocation(line: 580, column: 14, scope: !4005)
!4007 = !DILocation(line: 580, column: 6, scope: !3998)
!4008 = !DILocation(line: 581, column: 14, scope: !4005)
!4009 = !DILocation(line: 581, column: 11, scope: !4005)
!4010 = !DILocation(line: 581, column: 3, scope: !4005)
!4011 = !DILocation(line: 583, column: 9, scope: !3998)
!4012 = !DILocation(line: 583, column: 2, scope: !3998)
!4013 = distinct !DISubprogram(name: "set_pte", scope: !3955, file: !3955, line: 410, type: !4014, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{null, !1926, !1919}
!4016 = !DILocalVariable(name: "ptep", arg: 1, scope: !4013, file: !3955, line: 410, type: !1926)
!4017 = !DILocation(line: 410, column: 35, scope: !4013)
!4018 = !DILocalVariable(name: "pte", arg: 2, scope: !4013, file: !3955, line: 410, type: !1919)
!4019 = !DILocation(line: 410, column: 47, scope: !4013)
!4020 = !DILocalVariable(name: "__edi", scope: !4021, file: !3955, line: 412, type: !77)
!4021 = distinct !DILexicalBlock(scope: !4013, file: !3955, line: 412, column: 2)
!4022 = !DILocation(line: 412, column: 2, scope: !4021)
!4023 = !DILocalVariable(name: "__esi", scope: !4021, file: !3955, line: 412, type: !77)
!4024 = !DILocalVariable(name: "__edx", scope: !4021, file: !3955, line: 412, type: !77)
!4025 = !DILocalVariable(name: "__ecx", scope: !4021, file: !3955, line: 412, type: !77)
!4026 = !DILocalVariable(name: "__eax", scope: !4021, file: !3955, line: 412, type: !77)
!4027 = !{i32 -2145679032, i32 -2145678087, i32 -2145677853, i32 -2145677802, i32 -2145677774, i32 -2145677749, i32 -2145678065, i32 -2145678052, i32 -2145677614, i32 -2145677495, i32 -2145677960, i32 -2145677933, i32 -2145677905, i32 -2145677875}
!4028 = !DILocation(line: 413, column: 1, scope: !4013)
!4029 = distinct !DISubprogram(name: "pfn_to_gfn", scope: !4030, file: !4030, line: 251, type: !4031, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4030 = !DIFile(filename: "./arch/x86/include/asm/xen/page.h", directory: "/home/lizy2001/genbc/linux")
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!77, !77}
!4033 = !DILocalVariable(name: "pfn", arg: 1, scope: !4029, file: !4030, line: 251, type: !77)
!4034 = !DILocation(line: 251, column: 54, scope: !4029)
!4035 = !DILocation(line: 253, column: 6, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4029, file: !4030, line: 253, column: 6)
!4037 = !DILocation(line: 253, column: 6, scope: !4029)
!4038 = !DILocation(line: 254, column: 10, scope: !4036)
!4039 = !DILocation(line: 254, column: 3, scope: !4036)
!4040 = !DILocation(line: 256, column: 21, scope: !4036)
!4041 = !DILocation(line: 256, column: 10, scope: !4036)
!4042 = !DILocation(line: 256, column: 3, scope: !4036)
!4043 = !DILocation(line: 257, column: 1, scope: !4029)
!4044 = distinct !DISubprogram(name: "xen_feature", scope: !4045, file: !4045, line: 19, type: !2098, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4045 = !DIFile(filename: "./include/xen/features.h", directory: "/home/lizy2001/genbc/linux")
!4046 = !DILocalVariable(name: "flag", arg: 1, scope: !4044, file: !4045, line: 19, type: !212)
!4047 = !DILocation(line: 19, column: 35, scope: !4044)
!4048 = !DILocation(line: 21, column: 22, scope: !4044)
!4049 = !DILocation(line: 21, column: 9, scope: !4044)
!4050 = !DILocation(line: 21, column: 2, scope: !4044)
!4051 = distinct !DISubprogram(name: "pfn_to_mfn", scope: !4030, file: !4030, line: 164, type: !4031, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4052 = !DILocalVariable(name: "pfn", arg: 1, scope: !4051, file: !4030, line: 164, type: !77)
!4053 = !DILocation(line: 164, column: 54, scope: !4051)
!4054 = !DILocalVariable(name: "mfn", scope: !4051, file: !4030, line: 166, type: !77)
!4055 = !DILocation(line: 166, column: 16, scope: !4051)
!4056 = !DILocation(line: 173, column: 6, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4051, file: !4030, line: 173, column: 6)
!4058 = !DILocation(line: 173, column: 6, scope: !4051)
!4059 = !DILocation(line: 174, column: 10, scope: !4057)
!4060 = !DILocation(line: 174, column: 3, scope: !4057)
!4061 = !DILocation(line: 176, column: 21, scope: !4051)
!4062 = !DILocation(line: 176, column: 8, scope: !4051)
!4063 = !DILocation(line: 176, column: 6, scope: !4051)
!4064 = !DILocation(line: 178, column: 6, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4051, file: !4030, line: 178, column: 6)
!4066 = !DILocation(line: 178, column: 10, scope: !4065)
!4067 = !DILocation(line: 178, column: 6, scope: !4051)
!4068 = !DILocation(line: 179, column: 7, scope: !4065)
!4069 = !DILocation(line: 179, column: 3, scope: !4065)
!4070 = !DILocation(line: 181, column: 9, scope: !4051)
!4071 = !DILocation(line: 181, column: 2, scope: !4051)
!4072 = !DILocation(line: 182, column: 1, scope: !4051)
!4073 = distinct !DISubprogram(name: "__pfn_to_mfn", scope: !4030, file: !4030, line: 141, type: !4031, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4074 = !DILocalVariable(name: "pfn", arg: 1, scope: !4073, file: !4030, line: 141, type: !77)
!4075 = !DILocation(line: 141, column: 56, scope: !4073)
!4076 = !DILocalVariable(name: "mfn", scope: !4073, file: !4030, line: 143, type: !77)
!4077 = !DILocation(line: 143, column: 16, scope: !4073)
!4078 = !DILocation(line: 145, column: 6, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4073, file: !4030, line: 145, column: 6)
!4080 = !DILocation(line: 145, column: 12, scope: !4079)
!4081 = !DILocation(line: 145, column: 10, scope: !4079)
!4082 = !DILocation(line: 145, column: 6, scope: !4073)
!4083 = !DILocation(line: 146, column: 9, scope: !4079)
!4084 = !DILocation(line: 146, column: 22, scope: !4079)
!4085 = !DILocation(line: 146, column: 7, scope: !4079)
!4086 = !DILocation(line: 146, column: 3, scope: !4079)
!4087 = !DILocation(line: 147, column: 11, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4079, file: !4030, line: 147, column: 11)
!4089 = !DILocation(line: 147, column: 11, scope: !4079)
!4090 = !DILocation(line: 148, column: 30, scope: !4088)
!4091 = !DILocation(line: 148, column: 10, scope: !4088)
!4092 = !DILocation(line: 148, column: 3, scope: !4088)
!4093 = !DILocation(line: 150, column: 10, scope: !4088)
!4094 = !DILocation(line: 150, column: 3, scope: !4088)
!4095 = !DILocation(line: 152, column: 6, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4073, file: !4030, line: 152, column: 6)
!4097 = !DILocation(line: 152, column: 6, scope: !4073)
!4098 = !DILocation(line: 153, column: 30, scope: !4096)
!4099 = !DILocation(line: 153, column: 10, scope: !4096)
!4100 = !DILocation(line: 153, column: 3, scope: !4096)
!4101 = !DILocation(line: 155, column: 9, scope: !4073)
!4102 = !DILocation(line: 155, column: 2, scope: !4073)
!4103 = !DILocation(line: 156, column: 1, scope: !4073)
!4104 = distinct !DISubprogram(name: "kmalloc_array", scope: !65, file: !65, line: 584, type: !3726, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4105 = !DILocalVariable(name: "s", arg: 1, scope: !4106, file: !65, line: 445, type: !1472)
!4106 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !65, file: !65, line: 445, type: !4107, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!72, !1472, !73, !415}
!4109 = !DILocation(line: 445, column: 72, scope: !4106, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 552, column: 10, scope: !4111, inlinedAt: !4116)
!4111 = distinct !DILexicalBlock(scope: !4112, file: !65, line: 540, column: 34)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !65, line: 540, column: 6)
!4113 = distinct !DISubprogram(name: "kmalloc", scope: !65, file: !65, line: 538, type: !4114, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!72, !415, !73}
!4116 = distinct !DILocation(line: 591, column: 10, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4104, file: !65, line: 590, column: 6)
!4118 = !DILocalVariable(name: "flags", arg: 2, scope: !4106, file: !65, line: 446, type: !73)
!4119 = !DILocation(line: 446, column: 9, scope: !4106, inlinedAt: !4110)
!4120 = !DILocalVariable(name: "size", arg: 3, scope: !4106, file: !65, line: 446, type: !415)
!4121 = !DILocation(line: 446, column: 23, scope: !4106, inlinedAt: !4110)
!4122 = !DILocalVariable(name: "ret", scope: !4106, file: !65, line: 448, type: !72)
!4123 = !DILocation(line: 448, column: 8, scope: !4106, inlinedAt: !4110)
!4124 = !DILocalVariable(name: "flags", arg: 1, scope: !4125, file: !65, line: 318, type: !73)
!4125 = distinct !DISubprogram(name: "kmalloc_type", scope: !65, file: !65, line: 318, type: !4126, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!64, !73}
!4128 = !DILocation(line: 318, column: 67, scope: !4125, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 553, column: 20, scope: !4111, inlinedAt: !4116)
!4130 = !DILocalVariable(name: "size", arg: 1, scope: !4131, file: !65, line: 346, type: !415)
!4131 = distinct !DISubprogram(name: "kmalloc_index", scope: !65, file: !65, line: 346, type: !4132, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!5, !415}
!4134 = !DILocation(line: 346, column: 58, scope: !4131, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 547, column: 11, scope: !4111, inlinedAt: !4116)
!4136 = !DILocalVariable(name: "size", arg: 1, scope: !4137, file: !65, line: 472, type: !415)
!4137 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !65, file: !65, line: 472, type: !4138, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!72, !415, !73, !5}
!4140 = !DILocation(line: 472, column: 28, scope: !4137, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 481, column: 9, scope: !4142, inlinedAt: !4143)
!4142 = distinct !DISubprogram(name: "kmalloc_large", scope: !65, file: !65, line: 478, type: !4114, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4143 = distinct !DILocation(line: 545, column: 11, scope: !4144, inlinedAt: !4116)
!4144 = distinct !DILexicalBlock(scope: !4111, file: !65, line: 544, column: 7)
!4145 = !DILocalVariable(name: "flags", arg: 2, scope: !4137, file: !65, line: 472, type: !73)
!4146 = !DILocation(line: 472, column: 40, scope: !4137, inlinedAt: !4141)
!4147 = !DILocalVariable(name: "order", arg: 3, scope: !4137, file: !65, line: 472, type: !5)
!4148 = !DILocation(line: 472, column: 60, scope: !4137, inlinedAt: !4141)
!4149 = !DILocalVariable(name: "size", arg: 1, scope: !4142, file: !65, line: 478, type: !415)
!4150 = !DILocation(line: 478, column: 51, scope: !4142, inlinedAt: !4143)
!4151 = !DILocalVariable(name: "flags", arg: 2, scope: !4142, file: !65, line: 478, type: !73)
!4152 = !DILocation(line: 478, column: 63, scope: !4142, inlinedAt: !4143)
!4153 = !DILocalVariable(name: "order", scope: !4142, file: !65, line: 480, type: !5)
!4154 = !DILocation(line: 480, column: 15, scope: !4142, inlinedAt: !4143)
!4155 = !DILocalVariable(name: "size", arg: 1, scope: !4113, file: !65, line: 538, type: !415)
!4156 = !DILocation(line: 538, column: 45, scope: !4113, inlinedAt: !4116)
!4157 = !DILocalVariable(name: "flags", arg: 2, scope: !4113, file: !65, line: 538, type: !73)
!4158 = !DILocation(line: 538, column: 57, scope: !4113, inlinedAt: !4116)
!4159 = !DILocalVariable(name: "index", scope: !4111, file: !65, line: 542, type: !5)
!4160 = !DILocation(line: 542, column: 16, scope: !4111, inlinedAt: !4116)
!4161 = !DILocalVariable(name: "n", arg: 1, scope: !4104, file: !65, line: 584, type: !415)
!4162 = !DILocation(line: 584, column: 42, scope: !4104)
!4163 = !DILocalVariable(name: "size", arg: 2, scope: !4104, file: !65, line: 584, type: !415)
!4164 = !DILocation(line: 584, column: 52, scope: !4104)
!4165 = !DILocalVariable(name: "flags", arg: 3, scope: !4104, file: !65, line: 584, type: !73)
!4166 = !DILocation(line: 584, column: 64, scope: !4104)
!4167 = !DILocalVariable(name: "bytes", scope: !4104, file: !65, line: 586, type: !415)
!4168 = !DILocation(line: 586, column: 9, scope: !4104)
!4169 = !DILocalVariable(name: "__a", scope: !4170, file: !65, line: 588, type: !415)
!4170 = distinct !DILexicalBlock(scope: !4171, file: !65, line: 588, column: 6)
!4171 = distinct !DILexicalBlock(scope: !4104, file: !65, line: 588, column: 6)
!4172 = !DILocation(line: 588, column: 6, scope: !4170)
!4173 = !DILocalVariable(name: "__b", scope: !4170, file: !65, line: 588, type: !415)
!4174 = !DILocalVariable(name: "__d", scope: !4170, file: !65, line: 588, type: !4175)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!4176 = !DILocation(line: 588, column: 6, scope: !4171)
!4177 = !DILocation(line: 588, column: 6, scope: !4104)
!4178 = !DILocation(line: 589, column: 3, scope: !4171)
!4179 = !DILocation(line: 590, column: 27, scope: !4117)
!4180 = !DILocation(line: 590, column: 6, scope: !4117)
!4181 = !DILocation(line: 590, column: 30, scope: !4117)
!4182 = !DILocation(line: 590, column: 54, scope: !4117)
!4183 = !DILocation(line: 590, column: 33, scope: !4117)
!4184 = !DILocation(line: 590, column: 6, scope: !4104)
!4185 = !DILocation(line: 591, column: 18, scope: !4117)
!4186 = !DILocation(line: 591, column: 25, scope: !4117)
!4187 = !DILocation(line: 540, column: 27, scope: !4112, inlinedAt: !4116)
!4188 = !DILocation(line: 540, column: 6, scope: !4112, inlinedAt: !4116)
!4189 = !DILocation(line: 540, column: 6, scope: !4113, inlinedAt: !4116)
!4190 = !DILocation(line: 544, column: 7, scope: !4144, inlinedAt: !4116)
!4191 = !DILocation(line: 544, column: 12, scope: !4144, inlinedAt: !4116)
!4192 = !DILocation(line: 544, column: 7, scope: !4111, inlinedAt: !4116)
!4193 = !DILocation(line: 545, column: 25, scope: !4144, inlinedAt: !4116)
!4194 = !DILocation(line: 545, column: 31, scope: !4144, inlinedAt: !4116)
!4195 = !DILocation(line: 480, column: 33, scope: !4142, inlinedAt: !4143)
!4196 = !DILocation(line: 480, column: 23, scope: !4142, inlinedAt: !4143)
!4197 = !DILocation(line: 481, column: 29, scope: !4142, inlinedAt: !4143)
!4198 = !DILocation(line: 481, column: 35, scope: !4142, inlinedAt: !4143)
!4199 = !DILocation(line: 481, column: 42, scope: !4142, inlinedAt: !4143)
!4200 = !DILocation(line: 474, column: 23, scope: !4137, inlinedAt: !4141)
!4201 = !DILocation(line: 474, column: 29, scope: !4137, inlinedAt: !4141)
!4202 = !DILocation(line: 474, column: 36, scope: !4137, inlinedAt: !4141)
!4203 = !DILocation(line: 474, column: 9, scope: !4137, inlinedAt: !4141)
!4204 = !DILocation(line: 545, column: 4, scope: !4144, inlinedAt: !4116)
!4205 = !DILocation(line: 547, column: 25, scope: !4111, inlinedAt: !4116)
!4206 = !DILocation(line: 348, column: 7, scope: !4207, inlinedAt: !4135)
!4207 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 348, column: 6)
!4208 = !DILocation(line: 348, column: 6, scope: !4131, inlinedAt: !4135)
!4209 = !DILocation(line: 349, column: 3, scope: !4207, inlinedAt: !4135)
!4210 = !DILocation(line: 351, column: 6, scope: !4211, inlinedAt: !4135)
!4211 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 351, column: 6)
!4212 = !DILocation(line: 351, column: 11, scope: !4211, inlinedAt: !4135)
!4213 = !DILocation(line: 351, column: 6, scope: !4131, inlinedAt: !4135)
!4214 = !DILocation(line: 352, column: 3, scope: !4211, inlinedAt: !4135)
!4215 = !DILocation(line: 354, column: 32, scope: !4216, inlinedAt: !4135)
!4216 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 354, column: 6)
!4217 = !DILocation(line: 354, column: 37, scope: !4216, inlinedAt: !4135)
!4218 = !DILocation(line: 354, column: 42, scope: !4216, inlinedAt: !4135)
!4219 = !DILocation(line: 354, column: 45, scope: !4216, inlinedAt: !4135)
!4220 = !DILocation(line: 354, column: 50, scope: !4216, inlinedAt: !4135)
!4221 = !DILocation(line: 354, column: 6, scope: !4131, inlinedAt: !4135)
!4222 = !DILocation(line: 355, column: 3, scope: !4216, inlinedAt: !4135)
!4223 = !DILocation(line: 356, column: 32, scope: !4224, inlinedAt: !4135)
!4224 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 356, column: 6)
!4225 = !DILocation(line: 356, column: 37, scope: !4224, inlinedAt: !4135)
!4226 = !DILocation(line: 356, column: 43, scope: !4224, inlinedAt: !4135)
!4227 = !DILocation(line: 356, column: 46, scope: !4224, inlinedAt: !4135)
!4228 = !DILocation(line: 356, column: 51, scope: !4224, inlinedAt: !4135)
!4229 = !DILocation(line: 356, column: 6, scope: !4131, inlinedAt: !4135)
!4230 = !DILocation(line: 357, column: 3, scope: !4224, inlinedAt: !4135)
!4231 = !DILocation(line: 358, column: 6, scope: !4232, inlinedAt: !4135)
!4232 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 358, column: 6)
!4233 = !DILocation(line: 358, column: 11, scope: !4232, inlinedAt: !4135)
!4234 = !DILocation(line: 358, column: 6, scope: !4131, inlinedAt: !4135)
!4235 = !DILocation(line: 358, column: 26, scope: !4232, inlinedAt: !4135)
!4236 = !DILocation(line: 359, column: 6, scope: !4237, inlinedAt: !4135)
!4237 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 359, column: 6)
!4238 = !DILocation(line: 359, column: 11, scope: !4237, inlinedAt: !4135)
!4239 = !DILocation(line: 359, column: 6, scope: !4131, inlinedAt: !4135)
!4240 = !DILocation(line: 359, column: 26, scope: !4237, inlinedAt: !4135)
!4241 = !DILocation(line: 360, column: 6, scope: !4242, inlinedAt: !4135)
!4242 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 360, column: 6)
!4243 = !DILocation(line: 360, column: 11, scope: !4242, inlinedAt: !4135)
!4244 = !DILocation(line: 360, column: 6, scope: !4131, inlinedAt: !4135)
!4245 = !DILocation(line: 360, column: 26, scope: !4242, inlinedAt: !4135)
!4246 = !DILocation(line: 361, column: 6, scope: !4247, inlinedAt: !4135)
!4247 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 361, column: 6)
!4248 = !DILocation(line: 361, column: 11, scope: !4247, inlinedAt: !4135)
!4249 = !DILocation(line: 361, column: 6, scope: !4131, inlinedAt: !4135)
!4250 = !DILocation(line: 361, column: 26, scope: !4247, inlinedAt: !4135)
!4251 = !DILocation(line: 362, column: 6, scope: !4252, inlinedAt: !4135)
!4252 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 362, column: 6)
!4253 = !DILocation(line: 362, column: 11, scope: !4252, inlinedAt: !4135)
!4254 = !DILocation(line: 362, column: 6, scope: !4131, inlinedAt: !4135)
!4255 = !DILocation(line: 362, column: 26, scope: !4252, inlinedAt: !4135)
!4256 = !DILocation(line: 363, column: 6, scope: !4257, inlinedAt: !4135)
!4257 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 363, column: 6)
!4258 = !DILocation(line: 363, column: 11, scope: !4257, inlinedAt: !4135)
!4259 = !DILocation(line: 363, column: 6, scope: !4131, inlinedAt: !4135)
!4260 = !DILocation(line: 363, column: 26, scope: !4257, inlinedAt: !4135)
!4261 = !DILocation(line: 364, column: 6, scope: !4262, inlinedAt: !4135)
!4262 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 364, column: 6)
!4263 = !DILocation(line: 364, column: 11, scope: !4262, inlinedAt: !4135)
!4264 = !DILocation(line: 364, column: 6, scope: !4131, inlinedAt: !4135)
!4265 = !DILocation(line: 364, column: 26, scope: !4262, inlinedAt: !4135)
!4266 = !DILocation(line: 365, column: 6, scope: !4267, inlinedAt: !4135)
!4267 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 365, column: 6)
!4268 = !DILocation(line: 365, column: 11, scope: !4267, inlinedAt: !4135)
!4269 = !DILocation(line: 365, column: 6, scope: !4131, inlinedAt: !4135)
!4270 = !DILocation(line: 365, column: 26, scope: !4267, inlinedAt: !4135)
!4271 = !DILocation(line: 366, column: 6, scope: !4272, inlinedAt: !4135)
!4272 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 366, column: 6)
!4273 = !DILocation(line: 366, column: 11, scope: !4272, inlinedAt: !4135)
!4274 = !DILocation(line: 366, column: 6, scope: !4131, inlinedAt: !4135)
!4275 = !DILocation(line: 366, column: 26, scope: !4272, inlinedAt: !4135)
!4276 = !DILocation(line: 367, column: 6, scope: !4277, inlinedAt: !4135)
!4277 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 367, column: 6)
!4278 = !DILocation(line: 367, column: 11, scope: !4277, inlinedAt: !4135)
!4279 = !DILocation(line: 367, column: 6, scope: !4131, inlinedAt: !4135)
!4280 = !DILocation(line: 367, column: 26, scope: !4277, inlinedAt: !4135)
!4281 = !DILocation(line: 368, column: 6, scope: !4282, inlinedAt: !4135)
!4282 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 368, column: 6)
!4283 = !DILocation(line: 368, column: 11, scope: !4282, inlinedAt: !4135)
!4284 = !DILocation(line: 368, column: 6, scope: !4131, inlinedAt: !4135)
!4285 = !DILocation(line: 368, column: 26, scope: !4282, inlinedAt: !4135)
!4286 = !DILocation(line: 369, column: 6, scope: !4287, inlinedAt: !4135)
!4287 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 369, column: 6)
!4288 = !DILocation(line: 369, column: 11, scope: !4287, inlinedAt: !4135)
!4289 = !DILocation(line: 369, column: 6, scope: !4131, inlinedAt: !4135)
!4290 = !DILocation(line: 369, column: 26, scope: !4287, inlinedAt: !4135)
!4291 = !DILocation(line: 370, column: 6, scope: !4292, inlinedAt: !4135)
!4292 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 370, column: 6)
!4293 = !DILocation(line: 370, column: 11, scope: !4292, inlinedAt: !4135)
!4294 = !DILocation(line: 370, column: 6, scope: !4131, inlinedAt: !4135)
!4295 = !DILocation(line: 370, column: 26, scope: !4292, inlinedAt: !4135)
!4296 = !DILocation(line: 371, column: 6, scope: !4297, inlinedAt: !4135)
!4297 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 371, column: 6)
!4298 = !DILocation(line: 371, column: 11, scope: !4297, inlinedAt: !4135)
!4299 = !DILocation(line: 371, column: 6, scope: !4131, inlinedAt: !4135)
!4300 = !DILocation(line: 371, column: 26, scope: !4297, inlinedAt: !4135)
!4301 = !DILocation(line: 372, column: 6, scope: !4302, inlinedAt: !4135)
!4302 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 372, column: 6)
!4303 = !DILocation(line: 372, column: 11, scope: !4302, inlinedAt: !4135)
!4304 = !DILocation(line: 372, column: 6, scope: !4131, inlinedAt: !4135)
!4305 = !DILocation(line: 372, column: 26, scope: !4302, inlinedAt: !4135)
!4306 = !DILocation(line: 373, column: 6, scope: !4307, inlinedAt: !4135)
!4307 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 373, column: 6)
!4308 = !DILocation(line: 373, column: 11, scope: !4307, inlinedAt: !4135)
!4309 = !DILocation(line: 373, column: 6, scope: !4131, inlinedAt: !4135)
!4310 = !DILocation(line: 373, column: 26, scope: !4307, inlinedAt: !4135)
!4311 = !DILocation(line: 374, column: 6, scope: !4312, inlinedAt: !4135)
!4312 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 374, column: 6)
!4313 = !DILocation(line: 374, column: 11, scope: !4312, inlinedAt: !4135)
!4314 = !DILocation(line: 374, column: 6, scope: !4131, inlinedAt: !4135)
!4315 = !DILocation(line: 374, column: 26, scope: !4312, inlinedAt: !4135)
!4316 = !DILocation(line: 375, column: 6, scope: !4317, inlinedAt: !4135)
!4317 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 375, column: 6)
!4318 = !DILocation(line: 375, column: 11, scope: !4317, inlinedAt: !4135)
!4319 = !DILocation(line: 375, column: 6, scope: !4131, inlinedAt: !4135)
!4320 = !DILocation(line: 375, column: 27, scope: !4317, inlinedAt: !4135)
!4321 = !DILocation(line: 376, column: 6, scope: !4322, inlinedAt: !4135)
!4322 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 376, column: 6)
!4323 = !DILocation(line: 376, column: 11, scope: !4322, inlinedAt: !4135)
!4324 = !DILocation(line: 376, column: 6, scope: !4131, inlinedAt: !4135)
!4325 = !DILocation(line: 376, column: 32, scope: !4322, inlinedAt: !4135)
!4326 = !DILocation(line: 377, column: 6, scope: !4327, inlinedAt: !4135)
!4327 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 377, column: 6)
!4328 = !DILocation(line: 377, column: 11, scope: !4327, inlinedAt: !4135)
!4329 = !DILocation(line: 377, column: 6, scope: !4131, inlinedAt: !4135)
!4330 = !DILocation(line: 377, column: 32, scope: !4327, inlinedAt: !4135)
!4331 = !DILocation(line: 378, column: 6, scope: !4332, inlinedAt: !4135)
!4332 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 378, column: 6)
!4333 = !DILocation(line: 378, column: 11, scope: !4332, inlinedAt: !4135)
!4334 = !DILocation(line: 378, column: 6, scope: !4131, inlinedAt: !4135)
!4335 = !DILocation(line: 378, column: 32, scope: !4332, inlinedAt: !4135)
!4336 = !DILocation(line: 379, column: 6, scope: !4337, inlinedAt: !4135)
!4337 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 379, column: 6)
!4338 = !DILocation(line: 379, column: 11, scope: !4337, inlinedAt: !4135)
!4339 = !DILocation(line: 379, column: 6, scope: !4131, inlinedAt: !4135)
!4340 = !DILocation(line: 379, column: 33, scope: !4337, inlinedAt: !4135)
!4341 = !DILocation(line: 380, column: 6, scope: !4342, inlinedAt: !4135)
!4342 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 380, column: 6)
!4343 = !DILocation(line: 380, column: 11, scope: !4342, inlinedAt: !4135)
!4344 = !DILocation(line: 380, column: 6, scope: !4131, inlinedAt: !4135)
!4345 = !DILocation(line: 380, column: 33, scope: !4342, inlinedAt: !4135)
!4346 = !DILocation(line: 381, column: 6, scope: !4347, inlinedAt: !4135)
!4347 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 381, column: 6)
!4348 = !DILocation(line: 381, column: 11, scope: !4347, inlinedAt: !4135)
!4349 = !DILocation(line: 381, column: 6, scope: !4131, inlinedAt: !4135)
!4350 = !DILocation(line: 381, column: 33, scope: !4347, inlinedAt: !4135)
!4351 = !DILocation(line: 382, column: 2, scope: !4352, inlinedAt: !4135)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !65, line: 382, column: 2)
!4353 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 382, column: 2)
!4354 = !{i32 -2142677411, i32 -2142677382, i32 -2142677336, i32 -2142677278, i32 -2142677224, i32 -2142677170, i32 -2142677115, i32 -2142677084}
!4355 = !DILocation(line: 382, column: 2, scope: !4356, inlinedAt: !4135)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !65, line: 382, column: 2)
!4357 = distinct !DILexicalBlock(scope: !4353, file: !65, line: 382, column: 2)
!4358 = !{i32 -2142676641, i32 -2142676634, i32 -2142676580, i32 -2142676549, i32 -2142676519}
!4359 = !DILocation(line: 382, column: 2, scope: !4357, inlinedAt: !4135)
!4360 = !DILocation(line: 386, column: 1, scope: !4131, inlinedAt: !4135)
!4361 = !DILocation(line: 547, column: 9, scope: !4111, inlinedAt: !4116)
!4362 = !DILocation(line: 549, column: 8, scope: !4363, inlinedAt: !4116)
!4363 = distinct !DILexicalBlock(scope: !4111, file: !65, line: 549, column: 7)
!4364 = !DILocation(line: 549, column: 7, scope: !4111, inlinedAt: !4116)
!4365 = !DILocation(line: 550, column: 4, scope: !4363, inlinedAt: !4116)
!4366 = !DILocation(line: 553, column: 33, scope: !4111, inlinedAt: !4116)
!4367 = !DILocation(line: 325, column: 6, scope: !4368, inlinedAt: !4129)
!4368 = distinct !DILexicalBlock(scope: !4125, file: !65, line: 325, column: 6)
!4369 = !DILocation(line: 325, column: 6, scope: !4125, inlinedAt: !4129)
!4370 = !DILocation(line: 326, column: 3, scope: !4368, inlinedAt: !4129)
!4371 = !DILocation(line: 332, column: 9, scope: !4125, inlinedAt: !4129)
!4372 = !DILocation(line: 332, column: 15, scope: !4125, inlinedAt: !4129)
!4373 = !DILocation(line: 332, column: 2, scope: !4125, inlinedAt: !4129)
!4374 = !DILocation(line: 336, column: 1, scope: !4125, inlinedAt: !4129)
!4375 = !DILocation(line: 553, column: 5, scope: !4111, inlinedAt: !4116)
!4376 = !DILocation(line: 553, column: 41, scope: !4111, inlinedAt: !4116)
!4377 = !DILocation(line: 554, column: 5, scope: !4111, inlinedAt: !4116)
!4378 = !DILocation(line: 554, column: 12, scope: !4111, inlinedAt: !4116)
!4379 = !DILocation(line: 448, column: 31, scope: !4106, inlinedAt: !4110)
!4380 = !DILocation(line: 448, column: 34, scope: !4106, inlinedAt: !4110)
!4381 = !DILocation(line: 448, column: 14, scope: !4106, inlinedAt: !4110)
!4382 = !DILocation(line: 450, column: 22, scope: !4106, inlinedAt: !4110)
!4383 = !DILocation(line: 450, column: 25, scope: !4106, inlinedAt: !4110)
!4384 = !DILocation(line: 450, column: 30, scope: !4106, inlinedAt: !4110)
!4385 = !DILocation(line: 450, column: 36, scope: !4106, inlinedAt: !4110)
!4386 = !DILocation(line: 450, column: 8, scope: !4106, inlinedAt: !4110)
!4387 = !DILocation(line: 450, column: 6, scope: !4106, inlinedAt: !4110)
!4388 = !DILocation(line: 451, column: 9, scope: !4106, inlinedAt: !4110)
!4389 = !DILocation(line: 552, column: 3, scope: !4111, inlinedAt: !4116)
!4390 = !DILocation(line: 557, column: 19, scope: !4113, inlinedAt: !4116)
!4391 = !DILocation(line: 557, column: 25, scope: !4113, inlinedAt: !4116)
!4392 = !DILocation(line: 557, column: 9, scope: !4113, inlinedAt: !4116)
!4393 = !DILocation(line: 557, column: 2, scope: !4113, inlinedAt: !4116)
!4394 = !DILocation(line: 558, column: 1, scope: !4113, inlinedAt: !4116)
!4395 = !DILocation(line: 591, column: 3, scope: !4117)
!4396 = !DILocation(line: 592, column: 19, scope: !4104)
!4397 = !DILocation(line: 592, column: 26, scope: !4104)
!4398 = !DILocation(line: 592, column: 9, scope: !4104)
!4399 = !DILocation(line: 592, column: 2, scope: !4104)
!4400 = !DILocation(line: 593, column: 1, scope: !4104)
!4401 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4402, file: !4402, line: 52, type: !4403, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4402 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!279, !279}
!4405 = !DILocalVariable(name: "overflow", arg: 1, scope: !4401, file: !4402, line: 52, type: !279)
!4406 = !DILocation(line: 52, column: 60, scope: !4401)
!4407 = !DILocation(line: 54, column: 9, scope: !4401)
!4408 = !DILocation(line: 54, column: 2, scope: !4401)
!4409 = distinct !DISubprogram(name: "get_order", scope: !4410, file: !4410, line: 29, type: !4411, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4410 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!212, !77}
!4413 = !DILocalVariable(name: "x", arg: 1, scope: !4414, file: !4415, line: 366, type: !174)
!4414 = distinct !DISubprogram(name: "fls64", scope: !4415, file: !4415, line: 366, type: !4416, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4415 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!212, !174}
!4418 = !DILocation(line: 366, column: 40, scope: !4414, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 46, column: 9, scope: !4409)
!4420 = !DILocalVariable(name: "bitpos", scope: !4414, file: !4415, line: 368, type: !212)
!4421 = !DILocation(line: 368, column: 6, scope: !4414, inlinedAt: !4419)
!4422 = !DILocalVariable(name: "size", arg: 1, scope: !4409, file: !4410, line: 29, type: !77)
!4423 = !DILocation(line: 29, column: 63, scope: !4409)
!4424 = !DILocation(line: 31, column: 27, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4409, file: !4410, line: 31, column: 6)
!4426 = !DILocation(line: 31, column: 6, scope: !4425)
!4427 = !DILocation(line: 31, column: 6, scope: !4409)
!4428 = !DILocation(line: 32, column: 8, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4430, file: !4410, line: 32, column: 7)
!4430 = distinct !DILexicalBlock(scope: !4425, file: !4410, line: 31, column: 34)
!4431 = !DILocation(line: 32, column: 7, scope: !4430)
!4432 = !DILocation(line: 33, column: 4, scope: !4429)
!4433 = !DILocation(line: 35, column: 7, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4430, file: !4410, line: 35, column: 7)
!4435 = !DILocation(line: 35, column: 12, scope: !4434)
!4436 = !DILocation(line: 35, column: 7, scope: !4430)
!4437 = !DILocation(line: 36, column: 4, scope: !4434)
!4438 = !DILocation(line: 38, column: 10, scope: !4430)
!4439 = !DILocation(line: 38, column: 28, scope: !4430)
!4440 = !DILocation(line: 38, column: 41, scope: !4430)
!4441 = !DILocation(line: 38, column: 3, scope: !4430)
!4442 = !DILocation(line: 41, column: 6, scope: !4409)
!4443 = !DILocation(line: 42, column: 7, scope: !4409)
!4444 = !DILocation(line: 46, column: 15, scope: !4409)
!4445 = !DILocation(line: 374, column: 2, scope: !4414, inlinedAt: !4419)
!4446 = !DILocation(line: 376, column: 14, scope: !4414, inlinedAt: !4419)
!4447 = !{i32 247007}
!4448 = !DILocation(line: 377, column: 9, scope: !4414, inlinedAt: !4419)
!4449 = !DILocation(line: 377, column: 16, scope: !4414, inlinedAt: !4419)
!4450 = !DILocation(line: 46, column: 2, scope: !4409)
!4451 = !DILocation(line: 48, column: 1, scope: !4409)
!4452 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4453, file: !4453, line: 30, type: !4454, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4453 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!212, !173}
!4456 = !DILocation(line: 366, column: 40, scope: !4414, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 32, column: 9, scope: !4452)
!4458 = !DILocation(line: 368, column: 6, scope: !4414, inlinedAt: !4457)
!4459 = !DILocalVariable(name: "n", arg: 1, scope: !4452, file: !4453, line: 30, type: !173)
!4460 = !DILocation(line: 30, column: 21, scope: !4452)
!4461 = !DILocation(line: 32, column: 15, scope: !4452)
!4462 = !DILocation(line: 374, column: 2, scope: !4414, inlinedAt: !4457)
!4463 = !DILocation(line: 376, column: 14, scope: !4414, inlinedAt: !4457)
!4464 = !DILocation(line: 377, column: 9, scope: !4414, inlinedAt: !4457)
!4465 = !DILocation(line: 377, column: 16, scope: !4414, inlinedAt: !4457)
!4466 = !DILocation(line: 32, column: 18, scope: !4452)
!4467 = !DILocation(line: 32, column: 2, scope: !4452)
!4468 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4469, file: !4469, line: 137, type: !4470, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4469 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!72, !1472, !1653, !415, !73}
!4472 = !DILocalVariable(name: "s", arg: 1, scope: !4468, file: !4469, line: 137, type: !1472)
!4473 = !DILocation(line: 137, column: 54, scope: !4468)
!4474 = !DILocalVariable(name: "object", arg: 2, scope: !4468, file: !4469, line: 137, type: !1653)
!4475 = !DILocation(line: 137, column: 69, scope: !4468)
!4476 = !DILocalVariable(name: "size", arg: 3, scope: !4468, file: !4469, line: 138, type: !415)
!4477 = !DILocation(line: 138, column: 12, scope: !4468)
!4478 = !DILocalVariable(name: "flags", arg: 4, scope: !4468, file: !4469, line: 138, type: !73)
!4479 = !DILocation(line: 138, column: 24, scope: !4468)
!4480 = !DILocation(line: 140, column: 17, scope: !4468)
!4481 = !DILocation(line: 140, column: 2, scope: !4468)
