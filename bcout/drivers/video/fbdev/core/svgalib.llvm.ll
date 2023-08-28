; ModuleID = '../bcout/drivers/video/fbdev/core/svgalib.llvm.bc'
source_filename = "drivers/video/fbdev/core/svgalib.c"
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
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
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
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
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
%struct.pid_namespace = type { %struct.kref, %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kref = type { %struct.refcount_struct }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
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
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.vga_regset = type { i8, i8, i8 }
%struct.fb_info = type { %struct.atomic_t, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, %struct.fb_videomode*, %struct.backlight_device*, %struct.mutex, [128 x i8], %struct.delayed_work, %struct.fb_deferred_io*, %struct.fb_ops*, %struct.device*, %struct.device*, i32, %struct.fb_tile_ops*, %union.anon.65, i64, i8*, i32, i8*, i8*, %struct.apertures_struct*, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i64, i32, i32, i32, i32, i16, i16, i16, i32, i64, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, %struct.fb_videomode*, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct.fb_info*, i8*, i8*, i32)*, void (%struct.fb_info*, i8*, i8*, i32)* }
%struct.fb_cmap = type { i32, i32, i16*, i16*, i16*, i16* }
%struct.fb_videomode = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, %struct.backlight_ops*, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_ops = type { i32, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*, %struct.fb_info*)* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
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
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.fb_deferred_io = type { i64, %struct.mutex, %struct.list_head, void (%struct.fb_info*)*, void (%struct.fb_info*, %struct.list_head*)* }
%struct.fb_ops = type { %struct.module*, i32 (%struct.fb_info*, i32)*, i32 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_copyarea*)*, void (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, %struct.vm_area_struct*)*, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, void (%struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)* }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, i8*, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, i8*, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_blit_caps = type { i32, i32, i32, i32 }
%struct.fb_tile_ops = type { {}*, void (%struct.fb_info*, %struct.fb_tilearea*)*, void (%struct.fb_info*, %struct.fb_tilerect*)*, void (%struct.fb_info*, %struct.fb_tileblit*)*, void (%struct.fb_info*, %struct.fb_tilecursor*)*, i32 (%struct.fb_info*)* }
%struct.fb_tilearea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_tilerect = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_tileblit = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.fb_tilecursor = type { i32, i32, i32, i32, i32, i32 }
%union.anon.65 = type { i8* }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i64, i64 }
%struct.fb_tilemap = type { i32, i32, i32, i32, i8* }
%struct.svga_pll = type { i16, i16, i16, i16, i16, i16, i32, i32, i32 }
%struct.svga_timing_regs = type { %struct.vga_regset*, %struct.vga_regset*, %struct.vga_regset*, %struct.vga_regset*, %struct.vga_regset*, %struct.vga_regset*, %struct.vga_regset*, %struct.vga_regset*, %struct.vga_regset*, %struct.vga_regset*, %struct.vga_regset*, %struct.vga_regset* }
%struct.svga_fb_format = type { i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [79 x i8] c"\013fb%d: unsupported font parameters: width %d, height %d, depth %d, length %d\0A\00", align 1
@__UNIQUE_ID_author244 = internal constant [55 x i8] c"svgalib.author=Ondrej Zajicek <santiago@crfreenet.org>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description245 = internal constant [74 x i8] c"svgalib.description=Common utility functions for VGA-based graphics cards\00", section ".modinfo", align 1, !dbg !138
@__UNIQUE_ID_file246 = internal constant [46 x i8] c"svgalib.file=drivers/video/fbdev/core/svgalib\00", section ".modinfo", align 1, !dbg !145
@__UNIQUE_ID_license247 = internal constant [20 x i8] c"svgalib.license=GPL\00", section ".modinfo", align 1, !dbg !150
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__UNIQUE_ID_author244, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @__UNIQUE_ID_description245, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_file246, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license247, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_wcrt_multi(i8* %regbase, %struct.vga_regset* %regset, i32 %value) #0 !dbg !163 {
entry:
  %regbase.addr = alloca i8*, align 8
  %regset.addr = alloca %struct.vga_regset*, align 8
  %value.addr = alloca i32, align 4
  %regval = alloca i8, align 1
  %bitval = alloca i8, align 1
  %bitnum = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !175, metadata !DIExpression()), !dbg !176
  store %struct.vga_regset* %regset, %struct.vga_regset** %regset.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vga_regset** %regset.addr, metadata !177, metadata !DIExpression()), !dbg !178
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i8* %regval, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i8* %bitval, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i8* %bitnum, metadata !185, metadata !DIExpression()), !dbg !186
  br label %while.cond, !dbg !187

while.cond:                                       ; preds = %while.end, %entry
  %0 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !188
  %regnum = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %0, i32 0, i32 0, !dbg !189
  %1 = load i8, i8* %regnum, align 1, !dbg !189
  %conv = zext i8 %1 to i32, !dbg !188
  %cmp = icmp ne i32 %conv, 255, !dbg !190
  br i1 %cmp, label %while.body, label %while.end19, !dbg !187

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !191
  %3 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !193
  %regnum2 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %3, i32 0, i32 0, !dbg !194
  %4 = load i8, i8* %regnum2, align 1, !dbg !194
  %call = call zeroext i8 @vga_rcrt(i8* %2, i8 zeroext %4) #4, !dbg !195
  store i8 %call, i8* %regval, align 1, !dbg !196
  %5 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !197
  %lowbit = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %5, i32 0, i32 1, !dbg !198
  %6 = load i8, i8* %lowbit, align 1, !dbg !198
  store i8 %6, i8* %bitnum, align 1, !dbg !199
  br label %while.cond3, !dbg !200

while.cond3:                                      ; preds = %if.end, %while.body
  %7 = load i8, i8* %bitnum, align 1, !dbg !201
  %conv4 = zext i8 %7 to i32, !dbg !201
  %8 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !202
  %highbit = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %8, i32 0, i32 2, !dbg !203
  %9 = load i8, i8* %highbit, align 1, !dbg !203
  %conv5 = zext i8 %9 to i32, !dbg !202
  %cmp6 = icmp sle i32 %conv4, %conv5, !dbg !204
  br i1 %cmp6, label %while.body8, label %while.end, !dbg !200

while.body8:                                      ; preds = %while.cond3
  %10 = load i8, i8* %bitnum, align 1, !dbg !205
  %conv9 = zext i8 %10 to i32, !dbg !205
  %shl = shl i32 1, %conv9, !dbg !207
  %conv10 = trunc i32 %shl to i8, !dbg !208
  store i8 %conv10, i8* %bitval, align 1, !dbg !209
  %11 = load i8, i8* %regval, align 1, !dbg !210
  %conv11 = zext i8 %11 to i32, !dbg !210
  %12 = load i8, i8* %bitval, align 1, !dbg !211
  %conv12 = zext i8 %12 to i32, !dbg !211
  %neg = xor i32 %conv12, -1, !dbg !212
  %and = and i32 %conv11, %neg, !dbg !213
  %conv13 = trunc i32 %and to i8, !dbg !210
  store i8 %conv13, i8* %regval, align 1, !dbg !214
  %13 = load i32, i32* %value.addr, align 4, !dbg !215
  %and14 = and i32 %13, 1, !dbg !217
  %tobool = icmp ne i32 %and14, 0, !dbg !217
  br i1 %tobool, label %if.then, label %if.end, !dbg !218

if.then:                                          ; preds = %while.body8
  %14 = load i8, i8* %regval, align 1, !dbg !219
  %conv15 = zext i8 %14 to i32, !dbg !219
  %15 = load i8, i8* %bitval, align 1, !dbg !220
  %conv16 = zext i8 %15 to i32, !dbg !220
  %or = or i32 %conv15, %conv16, !dbg !221
  %conv17 = trunc i32 %or to i8, !dbg !219
  store i8 %conv17, i8* %regval, align 1, !dbg !222
  br label %if.end, !dbg !223

if.end:                                           ; preds = %if.then, %while.body8
  %16 = load i8, i8* %bitnum, align 1, !dbg !224
  %inc = add i8 %16, 1, !dbg !224
  store i8 %inc, i8* %bitnum, align 1, !dbg !224
  %17 = load i32, i32* %value.addr, align 4, !dbg !225
  %shr = lshr i32 %17, 1, !dbg !226
  store i32 %shr, i32* %value.addr, align 4, !dbg !227
  br label %while.cond3, !dbg !200, !llvm.loop !228

while.end:                                        ; preds = %while.cond3
  %18 = load i8*, i8** %regbase.addr, align 8, !dbg !230
  %19 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !231
  %regnum18 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %19, i32 0, i32 0, !dbg !232
  %20 = load i8, i8* %regnum18, align 1, !dbg !232
  %21 = load i8, i8* %regval, align 1, !dbg !233
  call void @vga_wcrt(i8* %18, i8 zeroext %20, i8 zeroext %21) #4, !dbg !234
  %22 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !235
  %incdec.ptr = getelementptr %struct.vga_regset, %struct.vga_regset* %22, i32 1, !dbg !235
  store %struct.vga_regset* %incdec.ptr, %struct.vga_regset** %regset.addr, align 8, !dbg !235
  br label %while.cond, !dbg !187, !llvm.loop !236

while.end19:                                      ; preds = %while.cond
  ret void, !dbg !238
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_rcrt(i8* %regbase, i8 zeroext %reg) #0 !dbg !239 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !243, metadata !DIExpression()), !dbg !244
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !247
  %1 = load i8, i8* %reg.addr, align 1, !dbg !248
  call void @vga_w(i8* %0, i16 zeroext 980, i8 zeroext %1) #4, !dbg !249
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !250
  %call = call zeroext i8 @vga_r(i8* %2, i16 zeroext 981) #4, !dbg !251
  ret i8 %call, !dbg !252
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_wcrt(i8* %regbase, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !253 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !256, metadata !DIExpression()), !dbg !257
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !258, metadata !DIExpression()), !dbg !259
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !262
  %1 = load i8, i8* %reg.addr, align 1, !dbg !263
  %2 = load i8, i8* %val.addr, align 1, !dbg !264
  call void @vga_w_fast(i8* %0, i16 zeroext 980, i8 zeroext %1, i8 zeroext %2) #4, !dbg !265
  ret void, !dbg !266
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_wseq_multi(i8* %regbase, %struct.vga_regset* %regset, i32 %value) #0 !dbg !267 {
entry:
  %regbase.addr = alloca i8*, align 8
  %regset.addr = alloca %struct.vga_regset*, align 8
  %value.addr = alloca i32, align 4
  %regval = alloca i8, align 1
  %bitval = alloca i8, align 1
  %bitnum = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !268, metadata !DIExpression()), !dbg !269
  store %struct.vga_regset* %regset, %struct.vga_regset** %regset.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vga_regset** %regset.addr, metadata !270, metadata !DIExpression()), !dbg !271
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata i8* %regval, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata i8* %bitval, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata i8* %bitnum, metadata !278, metadata !DIExpression()), !dbg !279
  br label %while.cond, !dbg !280

while.cond:                                       ; preds = %while.end, %entry
  %0 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !281
  %regnum = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %0, i32 0, i32 0, !dbg !282
  %1 = load i8, i8* %regnum, align 1, !dbg !282
  %conv = zext i8 %1 to i32, !dbg !281
  %cmp = icmp ne i32 %conv, 255, !dbg !283
  br i1 %cmp, label %while.body, label %while.end19, !dbg !280

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !284
  %3 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !286
  %regnum2 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %3, i32 0, i32 0, !dbg !287
  %4 = load i8, i8* %regnum2, align 1, !dbg !287
  %call = call zeroext i8 @vga_rseq(i8* %2, i8 zeroext %4) #4, !dbg !288
  store i8 %call, i8* %regval, align 1, !dbg !289
  %5 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !290
  %lowbit = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %5, i32 0, i32 1, !dbg !291
  %6 = load i8, i8* %lowbit, align 1, !dbg !291
  store i8 %6, i8* %bitnum, align 1, !dbg !292
  br label %while.cond3, !dbg !293

while.cond3:                                      ; preds = %if.end, %while.body
  %7 = load i8, i8* %bitnum, align 1, !dbg !294
  %conv4 = zext i8 %7 to i32, !dbg !294
  %8 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !295
  %highbit = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %8, i32 0, i32 2, !dbg !296
  %9 = load i8, i8* %highbit, align 1, !dbg !296
  %conv5 = zext i8 %9 to i32, !dbg !295
  %cmp6 = icmp sle i32 %conv4, %conv5, !dbg !297
  br i1 %cmp6, label %while.body8, label %while.end, !dbg !293

while.body8:                                      ; preds = %while.cond3
  %10 = load i8, i8* %bitnum, align 1, !dbg !298
  %conv9 = zext i8 %10 to i32, !dbg !298
  %shl = shl i32 1, %conv9, !dbg !300
  %conv10 = trunc i32 %shl to i8, !dbg !301
  store i8 %conv10, i8* %bitval, align 1, !dbg !302
  %11 = load i8, i8* %regval, align 1, !dbg !303
  %conv11 = zext i8 %11 to i32, !dbg !303
  %12 = load i8, i8* %bitval, align 1, !dbg !304
  %conv12 = zext i8 %12 to i32, !dbg !304
  %neg = xor i32 %conv12, -1, !dbg !305
  %and = and i32 %conv11, %neg, !dbg !306
  %conv13 = trunc i32 %and to i8, !dbg !303
  store i8 %conv13, i8* %regval, align 1, !dbg !307
  %13 = load i32, i32* %value.addr, align 4, !dbg !308
  %and14 = and i32 %13, 1, !dbg !310
  %tobool = icmp ne i32 %and14, 0, !dbg !310
  br i1 %tobool, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %while.body8
  %14 = load i8, i8* %regval, align 1, !dbg !312
  %conv15 = zext i8 %14 to i32, !dbg !312
  %15 = load i8, i8* %bitval, align 1, !dbg !313
  %conv16 = zext i8 %15 to i32, !dbg !313
  %or = or i32 %conv15, %conv16, !dbg !314
  %conv17 = trunc i32 %or to i8, !dbg !312
  store i8 %conv17, i8* %regval, align 1, !dbg !315
  br label %if.end, !dbg !316

if.end:                                           ; preds = %if.then, %while.body8
  %16 = load i8, i8* %bitnum, align 1, !dbg !317
  %inc = add i8 %16, 1, !dbg !317
  store i8 %inc, i8* %bitnum, align 1, !dbg !317
  %17 = load i32, i32* %value.addr, align 4, !dbg !318
  %shr = lshr i32 %17, 1, !dbg !319
  store i32 %shr, i32* %value.addr, align 4, !dbg !320
  br label %while.cond3, !dbg !293, !llvm.loop !321

while.end:                                        ; preds = %while.cond3
  %18 = load i8*, i8** %regbase.addr, align 8, !dbg !323
  %19 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !324
  %regnum18 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %19, i32 0, i32 0, !dbg !325
  %20 = load i8, i8* %regnum18, align 1, !dbg !325
  %21 = load i8, i8* %regval, align 1, !dbg !326
  call void @vga_wseq(i8* %18, i8 zeroext %20, i8 zeroext %21) #4, !dbg !327
  %22 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !328
  %incdec.ptr = getelementptr %struct.vga_regset, %struct.vga_regset* %22, i32 1, !dbg !328
  store %struct.vga_regset* %incdec.ptr, %struct.vga_regset** %regset.addr, align 8, !dbg !328
  br label %while.cond, !dbg !280, !llvm.loop !329

while.end19:                                      ; preds = %while.cond
  ret void, !dbg !331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_rseq(i8* %regbase, i8 zeroext %reg) #0 !dbg !332 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !333, metadata !DIExpression()), !dbg !334
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !337
  %1 = load i8, i8* %reg.addr, align 1, !dbg !338
  call void @vga_w(i8* %0, i16 zeroext 964, i8 zeroext %1) #4, !dbg !339
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !340
  %call = call zeroext i8 @vga_r(i8* %2, i16 zeroext 965) #4, !dbg !341
  ret i8 %call, !dbg !342
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_wseq(i8* %regbase, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !343 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !344, metadata !DIExpression()), !dbg !345
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !346, metadata !DIExpression()), !dbg !347
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !350
  %1 = load i8, i8* %reg.addr, align 1, !dbg !351
  %2 = load i8, i8* %val.addr, align 1, !dbg !352
  call void @vga_w_fast(i8* %0, i16 zeroext 964, i8 zeroext %1, i8 zeroext %2) #4, !dbg !353
  ret void, !dbg !354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_set_default_gfx_regs(i8* %regbase) #0 !dbg !355 {
entry:
  %regbase.addr = alloca i8*, align 8
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !360
  call void @vga_wgfx(i8* %0, i8 zeroext 0, i8 zeroext 0) #4, !dbg !361
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !362
  call void @vga_wgfx(i8* %1, i8 zeroext 1, i8 zeroext 0) #4, !dbg !363
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !364
  call void @vga_wgfx(i8* %2, i8 zeroext 2, i8 zeroext 0) #4, !dbg !365
  %3 = load i8*, i8** %regbase.addr, align 8, !dbg !366
  call void @vga_wgfx(i8* %3, i8 zeroext 3, i8 zeroext 0) #4, !dbg !367
  %4 = load i8*, i8** %regbase.addr, align 8, !dbg !368
  call void @vga_wgfx(i8* %4, i8 zeroext 4, i8 zeroext 0) #4, !dbg !369
  %5 = load i8*, i8** %regbase.addr, align 8, !dbg !370
  call void @vga_wgfx(i8* %5, i8 zeroext 5, i8 zeroext 0) #4, !dbg !371
  %6 = load i8*, i8** %regbase.addr, align 8, !dbg !372
  call void @vga_wgfx(i8* %6, i8 zeroext 6, i8 zeroext 5) #4, !dbg !373
  %7 = load i8*, i8** %regbase.addr, align 8, !dbg !374
  call void @vga_wgfx(i8* %7, i8 zeroext 7, i8 zeroext 15) #4, !dbg !375
  %8 = load i8*, i8** %regbase.addr, align 8, !dbg !376
  call void @vga_wgfx(i8* %8, i8 zeroext 8, i8 zeroext -1) #4, !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_wgfx(i8* %regbase, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !379 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !380, metadata !DIExpression()), !dbg !381
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !382, metadata !DIExpression()), !dbg !383
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !384, metadata !DIExpression()), !dbg !385
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !386
  %1 = load i8, i8* %reg.addr, align 1, !dbg !387
  %2 = load i8, i8* %val.addr, align 1, !dbg !388
  call void @vga_w_fast(i8* %0, i16 zeroext 974, i8 zeroext %1, i8 zeroext %2) #4, !dbg !389
  ret void, !dbg !390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_set_default_atc_regs(i8* %regbase) #0 !dbg !391 {
entry:
  %regbase.addr = alloca i8*, align 8
  %count = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata i8* %count, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !396
  %call = call zeroext i8 @vga_r(i8* %0, i16 zeroext 986) #4, !dbg !397
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !398
  call void @vga_w(i8* %1, i16 zeroext 960, i8 zeroext 0) #4, !dbg !399
  store i8 0, i8* %count, align 1, !dbg !400
  br label %for.cond, !dbg !402

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, i8* %count, align 1, !dbg !403
  %conv = zext i8 %2 to i32, !dbg !403
  %cmp = icmp sle i32 %conv, 15, !dbg !405
  br i1 %cmp, label %for.body, label %for.end, !dbg !406

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %regbase.addr, align 8, !dbg !407
  %4 = load i8, i8* %count, align 1, !dbg !408
  %5 = load i8, i8* %count, align 1, !dbg !409
  call void @svga_wattr(i8* %3, i8 zeroext %4, i8 zeroext %5) #4, !dbg !410
  br label %for.inc, !dbg !410

for.inc:                                          ; preds = %for.body
  %6 = load i8, i8* %count, align 1, !dbg !411
  %inc = add i8 %6, 1, !dbg !411
  store i8 %inc, i8* %count, align 1, !dbg !411
  br label %for.cond, !dbg !412, !llvm.loop !413

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %regbase.addr, align 8, !dbg !415
  call void @svga_wattr(i8* %7, i8 zeroext 16, i8 zeroext 1) #4, !dbg !416
  %8 = load i8*, i8** %regbase.addr, align 8, !dbg !417
  call void @svga_wattr(i8* %8, i8 zeroext 17, i8 zeroext 0) #4, !dbg !418
  %9 = load i8*, i8** %regbase.addr, align 8, !dbg !419
  call void @svga_wattr(i8* %9, i8 zeroext 18, i8 zeroext 15) #4, !dbg !420
  %10 = load i8*, i8** %regbase.addr, align 8, !dbg !421
  call void @svga_wattr(i8* %10, i8 zeroext 19, i8 zeroext 0) #4, !dbg !422
  %11 = load i8*, i8** %regbase.addr, align 8, !dbg !423
  call void @svga_wattr(i8* %11, i8 zeroext 20, i8 zeroext 0) #4, !dbg !424
  %12 = load i8*, i8** %regbase.addr, align 8, !dbg !425
  %call2 = call zeroext i8 @vga_r(i8* %12, i16 zeroext 986) #4, !dbg !426
  %13 = load i8*, i8** %regbase.addr, align 8, !dbg !427
  call void @vga_w(i8* %13, i16 zeroext 960, i8 zeroext 32) #4, !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_r(i8* %regbase, i16 zeroext %port) #0 !dbg !430 {
entry:
  %retval = alloca i8, align 1
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !433, metadata !DIExpression()), !dbg !434
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !437
  %tobool = icmp ne i8* %0, null, !dbg !437
  br i1 %tobool, label %if.then, label %if.else, !dbg !439

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !440
  %2 = load i16, i16* %port.addr, align 2, !dbg !441
  %call = call zeroext i8 @vga_mm_r(i8* %1, i16 zeroext %2) #4, !dbg !442
  store i8 %call, i8* %retval, align 1, !dbg !443
  br label %return, !dbg !443

if.else:                                          ; preds = %entry
  %3 = load i16, i16* %port.addr, align 2, !dbg !444
  %call1 = call zeroext i8 @vga_io_r(i16 zeroext %3) #4, !dbg !445
  store i8 %call1, i8* %retval, align 1, !dbg !446
  br label %return, !dbg !446

return:                                           ; preds = %if.else, %if.then
  %4 = load i8, i8* %retval, align 1, !dbg !447
  ret i8 %4, !dbg !447
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_w(i8* %regbase, i16 zeroext %port, i8 zeroext %val) #0 !dbg !448 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !451, metadata !DIExpression()), !dbg !452
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !453, metadata !DIExpression()), !dbg !454
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !457
  %tobool = icmp ne i8* %0, null, !dbg !457
  br i1 %tobool, label %if.then, label %if.else, !dbg !459

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !460
  %2 = load i16, i16* %port.addr, align 2, !dbg !461
  %3 = load i8, i8* %val.addr, align 1, !dbg !462
  call void @vga_mm_w(i8* %1, i16 zeroext %2, i8 zeroext %3) #4, !dbg !463
  br label %if.end, !dbg !463

if.else:                                          ; preds = %entry
  %4 = load i16, i16* %port.addr, align 2, !dbg !464
  %5 = load i8, i8* %val.addr, align 1, !dbg !465
  call void @vga_io_w(i16 zeroext %4, i8 zeroext %5) #4, !dbg !466
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !467
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @svga_wattr(i8* %regbase, i8 zeroext %index, i8 zeroext %data) #0 !dbg !468 {
entry:
  %regbase.addr = alloca i8*, align 8
  %index.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !471, metadata !DIExpression()), !dbg !472
  store i8 %index, i8* %index.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %index.addr, metadata !473, metadata !DIExpression()), !dbg !474
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !475, metadata !DIExpression()), !dbg !476
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !477
  %call = call zeroext i8 @vga_r(i8* %0, i16 zeroext 986) #4, !dbg !478
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !479
  %2 = load i8, i8* %index.addr, align 1, !dbg !480
  call void @vga_w(i8* %1, i16 zeroext 960, i8 zeroext %2) #4, !dbg !481
  %3 = load i8*, i8** %regbase.addr, align 8, !dbg !482
  %4 = load i8, i8* %data.addr, align 1, !dbg !483
  call void @vga_w(i8* %3, i16 zeroext 960, i8 zeroext %4) #4, !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_set_default_seq_regs(i8* %regbase) #0 !dbg !486 {
entry:
  %regbase.addr = alloca i8*, align 8
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !487, metadata !DIExpression()), !dbg !488
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !489
  call void @vga_wseq(i8* %0, i8 zeroext 1, i8 zeroext 1) #4, !dbg !490
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !491
  call void @vga_wseq(i8* %1, i8 zeroext 2, i8 zeroext 15) #4, !dbg !492
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !493
  call void @vga_wseq(i8* %2, i8 zeroext 3, i8 zeroext 0) #4, !dbg !494
  %3 = load i8*, i8** %regbase.addr, align 8, !dbg !495
  call void @vga_wseq(i8* %3, i8 zeroext 4, i8 zeroext 6) #4, !dbg !496
  ret void, !dbg !497
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_set_default_crt_regs(i8* %regbase) #0 !dbg !498 {
entry:
  %regbase.addr = alloca i8*, align 8
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !501
  call void @svga_wcrt_mask(i8* %0, i8 zeroext 3, i8 zeroext -128, i8 zeroext -128) #4, !dbg !502
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !503
  call void @vga_wcrt(i8* %1, i8 zeroext 8, i8 zeroext 0) #4, !dbg !504
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !505
  call void @svga_wcrt_mask(i8* %2, i8 zeroext 9, i8 zeroext 0, i8 zeroext 31) #4, !dbg !506
  %3 = load i8*, i8** %regbase.addr, align 8, !dbg !507
  call void @vga_wcrt(i8* %3, i8 zeroext 20, i8 zeroext 0) #4, !dbg !508
  %4 = load i8*, i8** %regbase.addr, align 8, !dbg !509
  call void @vga_wcrt(i8* %4, i8 zeroext 23, i8 zeroext -29) #4, !dbg !510
  ret void, !dbg !511
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @svga_wcrt_mask(i8* %regbase, i8 zeroext %index, i8 zeroext %data, i8 zeroext %mask) #0 !dbg !512 {
entry:
  %regbase.addr = alloca i8*, align 8
  %index.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %mask.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !515, metadata !DIExpression()), !dbg !516
  store i8 %index, i8* %index.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %index.addr, metadata !517, metadata !DIExpression()), !dbg !518
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !519, metadata !DIExpression()), !dbg !520
  store i8 %mask, i8* %mask.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mask.addr, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !523
  %1 = load i8, i8* %index.addr, align 1, !dbg !524
  %2 = load i8, i8* %data.addr, align 1, !dbg !525
  %conv = zext i8 %2 to i32, !dbg !525
  %3 = load i8, i8* %mask.addr, align 1, !dbg !526
  %conv1 = zext i8 %3 to i32, !dbg !526
  %and = and i32 %conv, %conv1, !dbg !527
  %4 = load i8*, i8** %regbase.addr, align 8, !dbg !528
  %5 = load i8, i8* %index.addr, align 1, !dbg !529
  %call = call zeroext i8 @vga_rcrt(i8* %4, i8 zeroext %5) #4, !dbg !530
  %conv2 = zext i8 %call to i32, !dbg !530
  %6 = load i8, i8* %mask.addr, align 1, !dbg !531
  %conv3 = zext i8 %6 to i32, !dbg !531
  %neg = xor i32 %conv3, -1, !dbg !532
  %and4 = and i32 %conv2, %neg, !dbg !533
  %or = or i32 %and, %and4, !dbg !534
  %conv5 = trunc i32 %or to i8, !dbg !535
  call void @vga_wcrt(i8* %0, i8 zeroext %1, i8 zeroext %conv5) #4, !dbg !536
  ret void, !dbg !537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_set_textmode_vga_regs(i8* %regbase) #0 !dbg !538 {
entry:
  %regbase.addr = alloca i8*, align 8
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !539, metadata !DIExpression()), !dbg !540
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !541
  call void @vga_wseq(i8* %0, i8 zeroext 4, i8 zeroext 2) #4, !dbg !542
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !543
  call void @vga_wseq(i8* %1, i8 zeroext 2, i8 zeroext 3) #4, !dbg !544
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !545
  call void @vga_wcrt(i8* %2, i8 zeroext 9, i8 zeroext 15) #4, !dbg !546
  %3 = load i8*, i8** %regbase.addr, align 8, !dbg !547
  call void @vga_wcrt(i8* %3, i8 zeroext 20, i8 zeroext 31) #4, !dbg !548
  %4 = load i8*, i8** %regbase.addr, align 8, !dbg !549
  call void @svga_wcrt_mask(i8* %4, i8 zeroext 23, i8 zeroext 35, i8 zeroext 127) #4, !dbg !550
  %5 = load i8*, i8** %regbase.addr, align 8, !dbg !551
  call void @vga_wcrt(i8* %5, i8 zeroext 10, i8 zeroext 13) #4, !dbg !552
  %6 = load i8*, i8** %regbase.addr, align 8, !dbg !553
  call void @vga_wcrt(i8* %6, i8 zeroext 11, i8 zeroext 14) #4, !dbg !554
  %7 = load i8*, i8** %regbase.addr, align 8, !dbg !555
  call void @vga_wcrt(i8* %7, i8 zeroext 14, i8 zeroext 0) #4, !dbg !556
  %8 = load i8*, i8** %regbase.addr, align 8, !dbg !557
  call void @vga_wcrt(i8* %8, i8 zeroext 15, i8 zeroext 0) #4, !dbg !558
  %9 = load i8*, i8** %regbase.addr, align 8, !dbg !559
  call void @vga_wgfx(i8* %9, i8 zeroext 5, i8 zeroext 16) #4, !dbg !560
  %10 = load i8*, i8** %regbase.addr, align 8, !dbg !561
  call void @vga_wgfx(i8* %10, i8 zeroext 6, i8 zeroext 14) #4, !dbg !562
  %11 = load i8*, i8** %regbase.addr, align 8, !dbg !563
  call void @vga_wgfx(i8* %11, i8 zeroext 7, i8 zeroext 0) #4, !dbg !564
  %12 = load i8*, i8** %regbase.addr, align 8, !dbg !565
  %call = call zeroext i8 @vga_r(i8* %12, i16 zeroext 986) #4, !dbg !566
  %13 = load i8*, i8** %regbase.addr, align 8, !dbg !567
  call void @vga_w(i8* %13, i16 zeroext 960, i8 zeroext 0) #4, !dbg !568
  %14 = load i8*, i8** %regbase.addr, align 8, !dbg !569
  call void @svga_wattr(i8* %14, i8 zeroext 16, i8 zeroext 12) #4, !dbg !570
  %15 = load i8*, i8** %regbase.addr, align 8, !dbg !571
  call void @svga_wattr(i8* %15, i8 zeroext 19, i8 zeroext 8) #4, !dbg !572
  %16 = load i8*, i8** %regbase.addr, align 8, !dbg !573
  %call1 = call zeroext i8 @vga_r(i8* %16, i16 zeroext 986) #4, !dbg !574
  %17 = load i8*, i8** %regbase.addr, align 8, !dbg !575
  call void @vga_w(i8* %17, i16 zeroext 960, i8 zeroext 32) #4, !dbg !576
  ret void, !dbg !577
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_settile(%struct.fb_info* %info, %struct.fb_tilemap* %map) #0 !dbg !578 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %map.addr = alloca %struct.fb_tilemap*, align 8
  %font = alloca i8*, align 8
  %fb = alloca i8*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !4790, metadata !DIExpression()), !dbg !4791
  store %struct.fb_tilemap* %map, %struct.fb_tilemap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_tilemap** %map.addr, metadata !4792, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.declare(metadata i8** %font, metadata !4794, metadata !DIExpression()), !dbg !4797
  %0 = load %struct.fb_tilemap*, %struct.fb_tilemap** %map.addr, align 8, !dbg !4798
  %data = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %0, i32 0, i32 4, !dbg !4799
  %1 = load i8*, i8** %data, align 8, !dbg !4799
  store i8* %1, i8** %font, align 8, !dbg !4797
  call void @llvm.dbg.declare(metadata i8** %fb, metadata !4800, metadata !DIExpression()), !dbg !4801
  %2 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !4802
  %3 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 25, !dbg !4803
  %screen_base = bitcast %union.anon.65* %3 to i8**, !dbg !4803
  %4 = load i8*, i8** %screen_base, align 8, !dbg !4803
  store i8* %4, i8** %fb, align 8, !dbg !4801
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4804, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.declare(metadata i32* %c, metadata !4806, metadata !DIExpression()), !dbg !4807
  %5 = load %struct.fb_tilemap*, %struct.fb_tilemap** %map.addr, align 8, !dbg !4808
  %width = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %5, i32 0, i32 0, !dbg !4810
  %6 = load i32, i32* %width, align 8, !dbg !4810
  %cmp = icmp ne i32 %6, 8, !dbg !4811
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4812

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.fb_tilemap*, %struct.fb_tilemap** %map.addr, align 8, !dbg !4813
  %height = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %7, i32 0, i32 1, !dbg !4814
  %8 = load i32, i32* %height, align 4, !dbg !4814
  %cmp1 = icmp ne i32 %8, 16, !dbg !4815
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !4816

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %9 = load %struct.fb_tilemap*, %struct.fb_tilemap** %map.addr, align 8, !dbg !4817
  %depth = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %9, i32 0, i32 2, !dbg !4818
  %10 = load i32, i32* %depth, align 8, !dbg !4818
  %cmp3 = icmp ne i32 %10, 1, !dbg !4819
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !4820

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %11 = load %struct.fb_tilemap*, %struct.fb_tilemap** %map.addr, align 8, !dbg !4821
  %length = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %11, i32 0, i32 3, !dbg !4822
  %12 = load i32, i32* %length, align 4, !dbg !4822
  %cmp5 = icmp ne i32 %12, 256, !dbg !4823
  br i1 %cmp5, label %if.then, label %if.end, !dbg !4824

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %13 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !4825
  %node = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 1, !dbg !4825
  %14 = load i32, i32* %node, align 4, !dbg !4825
  %15 = load %struct.fb_tilemap*, %struct.fb_tilemap** %map.addr, align 8, !dbg !4825
  %width6 = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %15, i32 0, i32 0, !dbg !4825
  %16 = load i32, i32* %width6, align 8, !dbg !4825
  %17 = load %struct.fb_tilemap*, %struct.fb_tilemap** %map.addr, align 8, !dbg !4825
  %height7 = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %17, i32 0, i32 1, !dbg !4825
  %18 = load i32, i32* %height7, align 4, !dbg !4825
  %19 = load %struct.fb_tilemap*, %struct.fb_tilemap** %map.addr, align 8, !dbg !4825
  %depth8 = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %19, i32 0, i32 2, !dbg !4825
  %20 = load i32, i32* %depth8, align 8, !dbg !4825
  %21 = load %struct.fb_tilemap*, %struct.fb_tilemap** %map.addr, align 8, !dbg !4825
  %length9 = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %21, i32 0, i32 3, !dbg !4825
  %22 = load i32, i32* %length9, align 4, !dbg !4825
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %18, i32 %20, i32 %22) #5, !dbg !4825
  br label %for.end23, !dbg !4827

if.end:                                           ; preds = %lor.lhs.false4
  %23 = load i8*, i8** %fb, align 8, !dbg !4828
  %add.ptr = getelementptr i8, i8* %23, i64 2, !dbg !4828
  store i8* %add.ptr, i8** %fb, align 8, !dbg !4828
  store i32 0, i32* %c, align 4, !dbg !4829
  br label %for.cond, !dbg !4831

for.cond:                                         ; preds = %for.inc21, %if.end
  %24 = load i32, i32* %c, align 4, !dbg !4832
  %25 = load %struct.fb_tilemap*, %struct.fb_tilemap** %map.addr, align 8, !dbg !4834
  %length10 = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %25, i32 0, i32 3, !dbg !4835
  %26 = load i32, i32* %length10, align 4, !dbg !4835
  %cmp11 = icmp ult i32 %24, %26, !dbg !4836
  br i1 %cmp11, label %for.body, label %for.end23, !dbg !4837

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !4838
  br label %for.cond12, !dbg !4841

for.cond12:                                       ; preds = %for.inc, %for.body
  %27 = load i32, i32* %i, align 4, !dbg !4842
  %28 = load %struct.fb_tilemap*, %struct.fb_tilemap** %map.addr, align 8, !dbg !4844
  %height13 = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %28, i32 0, i32 1, !dbg !4845
  %29 = load i32, i32* %height13, align 4, !dbg !4845
  %cmp14 = icmp ult i32 %27, %29, !dbg !4846
  br i1 %cmp14, label %for.body15, label %for.end, !dbg !4847

for.body15:                                       ; preds = %for.cond12
  %30 = load i8*, i8** %font, align 8, !dbg !4848
  %31 = load i32, i32* %i, align 4, !dbg !4850
  %idxprom = sext i32 %31 to i64, !dbg !4848
  %arrayidx = getelementptr i8, i8* %30, i64 %idxprom, !dbg !4848
  %32 = load i8, i8* %arrayidx, align 1, !dbg !4848
  %33 = load i8*, i8** %fb, align 8, !dbg !4851
  %34 = load i32, i32* %i, align 4, !dbg !4852
  %mul = mul i32 %34, 4, !dbg !4853
  %idx.ext = sext i32 %mul to i64, !dbg !4854
  %add.ptr16 = getelementptr i8, i8* %33, i64 %idx.ext, !dbg !4854
  call void @__writeb(i8 zeroext %32, i8* %add.ptr16) #4, !dbg !4855
  br label %for.inc, !dbg !4856

for.inc:                                          ; preds = %for.body15
  %35 = load i32, i32* %i, align 4, !dbg !4857
  %inc = add i32 %35, 1, !dbg !4857
  store i32 %inc, i32* %i, align 4, !dbg !4857
  br label %for.cond12, !dbg !4858, !llvm.loop !4859

for.end:                                          ; preds = %for.cond12
  %36 = load i8*, i8** %fb, align 8, !dbg !4861
  %add.ptr17 = getelementptr i8, i8* %36, i64 128, !dbg !4861
  store i8* %add.ptr17, i8** %fb, align 8, !dbg !4861
  %37 = load %struct.fb_tilemap*, %struct.fb_tilemap** %map.addr, align 8, !dbg !4862
  %height18 = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %37, i32 0, i32 1, !dbg !4863
  %38 = load i32, i32* %height18, align 4, !dbg !4863
  %39 = load i8*, i8** %font, align 8, !dbg !4864
  %idx.ext19 = zext i32 %38 to i64, !dbg !4864
  %add.ptr20 = getelementptr i8, i8* %39, i64 %idx.ext19, !dbg !4864
  store i8* %add.ptr20, i8** %font, align 8, !dbg !4864
  br label %for.inc21, !dbg !4865

for.inc21:                                        ; preds = %for.end
  %40 = load i32, i32* %c, align 4, !dbg !4866
  %inc22 = add i32 %40, 1, !dbg !4866
  store i32 %inc22, i32* %c, align 4, !dbg !4866
  br label %for.cond, !dbg !4867, !llvm.loop !4868

for.end23:                                        ; preds = %if.then, %for.cond
  ret void, !dbg !4870
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writeb(i8 zeroext %val, i8* %addr) #0 !dbg !4871 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4879, metadata !DIExpression()), !dbg !4878
  %0 = load i8, i8* %val.addr, align 1, !dbg !4878
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4878
  call void asm sideeffect "movb $0,$1", "q,*m,~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #6, !dbg !4878, !srcloc !4880
  ret void, !dbg !4878
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_tilecopy(%struct.fb_info* %info, %struct.fb_tilearea* %area) #0 !dbg !4881 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %area.addr = alloca %struct.fb_tilearea*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %colstride = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %fb = alloca i16*, align 8
  %src = alloca i16*, align 8
  %dst = alloca i16*, align 8
  %src2 = alloca i16*, align 8
  %dst2 = alloca i16*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !4882, metadata !DIExpression()), !dbg !4883
  store %struct.fb_tilearea* %area, %struct.fb_tilearea** %area.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_tilearea** %area.addr, metadata !4884, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.declare(metadata i32* %dx, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.declare(metadata i32* %dy, metadata !4888, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.declare(metadata i32* %colstride, metadata !4890, metadata !DIExpression()), !dbg !4891
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !4892
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 7, !dbg !4893
  %type_aux = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 4, !dbg !4894
  %1 = load i32, i32* %type_aux, align 8, !dbg !4894
  %and = and i32 %1, 7, !dbg !4895
  %shl = shl i32 1, %and, !dbg !4896
  store i32 %shl, i32* %colstride, align 4, !dbg !4891
  call void @llvm.dbg.declare(metadata i32* %rowstride, metadata !4897, metadata !DIExpression()), !dbg !4898
  %2 = load i32, i32* %colstride, align 4, !dbg !4899
  %3 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !4900
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 6, !dbg !4901
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 2, !dbg !4902
  %4 = load i32, i32* %xres_virtual, align 8, !dbg !4902
  %div = udiv i32 %4, 8, !dbg !4903
  %mul = mul i32 %2, %div, !dbg !4904
  store i32 %mul, i32* %rowstride, align 4, !dbg !4898
  call void @llvm.dbg.declare(metadata i16** %fb, metadata !4905, metadata !DIExpression()), !dbg !4906
  %5 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !4907
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 25, !dbg !4908
  %screen_base = bitcast %union.anon.65* %6 to i8**, !dbg !4908
  %7 = load i8*, i8** %screen_base, align 8, !dbg !4908
  %8 = bitcast i8* %7 to i16*, !dbg !4909
  store i16* %8, i16** %fb, align 8, !dbg !4906
  call void @llvm.dbg.declare(metadata i16** %src, metadata !4910, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.declare(metadata i16** %dst, metadata !4912, metadata !DIExpression()), !dbg !4913
  %9 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4914
  %sy = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %9, i32 0, i32 1, !dbg !4916
  %10 = load i32, i32* %sy, align 4, !dbg !4916
  %11 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4917
  %dy1 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %11, i32 0, i32 3, !dbg !4918
  %12 = load i32, i32* %dy1, align 4, !dbg !4918
  %cmp = icmp ugt i32 %10, %12, !dbg !4919
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4920

lor.lhs.false:                                    ; preds = %entry
  %13 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4921
  %sy2 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %13, i32 0, i32 1, !dbg !4922
  %14 = load i32, i32* %sy2, align 4, !dbg !4922
  %15 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4923
  %dy3 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %15, i32 0, i32 3, !dbg !4924
  %16 = load i32, i32* %dy3, align 4, !dbg !4924
  %cmp4 = icmp eq i32 %14, %16, !dbg !4925
  br i1 %cmp4, label %land.lhs.true, label %if.else, !dbg !4926

land.lhs.true:                                    ; preds = %lor.lhs.false
  %17 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4927
  %sx = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %17, i32 0, i32 0, !dbg !4928
  %18 = load i32, i32* %sx, align 4, !dbg !4928
  %19 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4929
  %dx5 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %19, i32 0, i32 2, !dbg !4930
  %20 = load i32, i32* %dx5, align 4, !dbg !4930
  %cmp6 = icmp ugt i32 %18, %20, !dbg !4931
  br i1 %cmp6, label %if.then, label %if.else, !dbg !4932

if.then:                                          ; preds = %land.lhs.true, %entry
  %21 = load i16*, i16** %fb, align 8, !dbg !4933
  %22 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4935
  %sx7 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %22, i32 0, i32 0, !dbg !4936
  %23 = load i32, i32* %sx7, align 4, !dbg !4936
  %24 = load i32, i32* %colstride, align 4, !dbg !4937
  %mul8 = mul i32 %23, %24, !dbg !4938
  %idx.ext = zext i32 %mul8 to i64, !dbg !4939
  %add.ptr = getelementptr i16, i16* %21, i64 %idx.ext, !dbg !4939
  %25 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4940
  %sy9 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %25, i32 0, i32 1, !dbg !4941
  %26 = load i32, i32* %sy9, align 4, !dbg !4941
  %27 = load i32, i32* %rowstride, align 4, !dbg !4942
  %mul10 = mul i32 %26, %27, !dbg !4943
  %idx.ext11 = zext i32 %mul10 to i64, !dbg !4944
  %add.ptr12 = getelementptr i16, i16* %add.ptr, i64 %idx.ext11, !dbg !4944
  store i16* %add.ptr12, i16** %src, align 8, !dbg !4945
  %28 = load i16*, i16** %fb, align 8, !dbg !4946
  %29 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4947
  %dx13 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %29, i32 0, i32 2, !dbg !4948
  %30 = load i32, i32* %dx13, align 4, !dbg !4948
  %31 = load i32, i32* %colstride, align 4, !dbg !4949
  %mul14 = mul i32 %30, %31, !dbg !4950
  %idx.ext15 = zext i32 %mul14 to i64, !dbg !4951
  %add.ptr16 = getelementptr i16, i16* %28, i64 %idx.ext15, !dbg !4951
  %32 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4952
  %dy17 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %32, i32 0, i32 3, !dbg !4953
  %33 = load i32, i32* %dy17, align 4, !dbg !4953
  %34 = load i32, i32* %rowstride, align 4, !dbg !4954
  %mul18 = mul i32 %33, %34, !dbg !4955
  %idx.ext19 = zext i32 %mul18 to i64, !dbg !4956
  %add.ptr20 = getelementptr i16, i16* %add.ptr16, i64 %idx.ext19, !dbg !4956
  store i16* %add.ptr20, i16** %dst, align 8, !dbg !4957
  br label %if.end, !dbg !4958

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %35 = load i16*, i16** %fb, align 8, !dbg !4959
  %36 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4961
  %sx21 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %36, i32 0, i32 0, !dbg !4962
  %37 = load i32, i32* %sx21, align 4, !dbg !4962
  %38 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4963
  %width = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %38, i32 0, i32 4, !dbg !4964
  %39 = load i32, i32* %width, align 4, !dbg !4964
  %add = add i32 %37, %39, !dbg !4965
  %sub = sub i32 %add, 1, !dbg !4966
  %40 = load i32, i32* %colstride, align 4, !dbg !4967
  %mul22 = mul i32 %sub, %40, !dbg !4968
  %idx.ext23 = zext i32 %mul22 to i64, !dbg !4969
  %add.ptr24 = getelementptr i16, i16* %35, i64 %idx.ext23, !dbg !4969
  %41 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4970
  %sy25 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %41, i32 0, i32 1, !dbg !4971
  %42 = load i32, i32* %sy25, align 4, !dbg !4971
  %43 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4972
  %height = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %43, i32 0, i32 5, !dbg !4973
  %44 = load i32, i32* %height, align 4, !dbg !4973
  %add26 = add i32 %42, %44, !dbg !4974
  %sub27 = sub i32 %add26, 1, !dbg !4975
  %45 = load i32, i32* %rowstride, align 4, !dbg !4976
  %mul28 = mul i32 %sub27, %45, !dbg !4977
  %idx.ext29 = zext i32 %mul28 to i64, !dbg !4978
  %add.ptr30 = getelementptr i16, i16* %add.ptr24, i64 %idx.ext29, !dbg !4978
  store i16* %add.ptr30, i16** %src, align 8, !dbg !4979
  %46 = load i16*, i16** %fb, align 8, !dbg !4980
  %47 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4981
  %dx31 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %47, i32 0, i32 2, !dbg !4982
  %48 = load i32, i32* %dx31, align 4, !dbg !4982
  %49 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4983
  %width32 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %49, i32 0, i32 4, !dbg !4984
  %50 = load i32, i32* %width32, align 4, !dbg !4984
  %add33 = add i32 %48, %50, !dbg !4985
  %sub34 = sub i32 %add33, 1, !dbg !4986
  %51 = load i32, i32* %colstride, align 4, !dbg !4987
  %mul35 = mul i32 %sub34, %51, !dbg !4988
  %idx.ext36 = zext i32 %mul35 to i64, !dbg !4989
  %add.ptr37 = getelementptr i16, i16* %46, i64 %idx.ext36, !dbg !4989
  %52 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4990
  %dy38 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %52, i32 0, i32 3, !dbg !4991
  %53 = load i32, i32* %dy38, align 4, !dbg !4991
  %54 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !4992
  %height39 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %54, i32 0, i32 5, !dbg !4993
  %55 = load i32, i32* %height39, align 4, !dbg !4993
  %add40 = add i32 %53, %55, !dbg !4994
  %sub41 = sub i32 %add40, 1, !dbg !4995
  %56 = load i32, i32* %rowstride, align 4, !dbg !4996
  %mul42 = mul i32 %sub41, %56, !dbg !4997
  %idx.ext43 = zext i32 %mul42 to i64, !dbg !4998
  %add.ptr44 = getelementptr i16, i16* %add.ptr37, i64 %idx.ext43, !dbg !4998
  store i16* %add.ptr44, i16** %dst, align 8, !dbg !4999
  %57 = load i32, i32* %colstride, align 4, !dbg !5000
  %sub45 = sub i32 0, %57, !dbg !5001
  store i32 %sub45, i32* %colstride, align 4, !dbg !5002
  %58 = load i32, i32* %rowstride, align 4, !dbg !5003
  %sub46 = sub i32 0, %58, !dbg !5004
  store i32 %sub46, i32* %rowstride, align 4, !dbg !5005
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %dy, align 4, !dbg !5006
  br label %for.cond, !dbg !5008

for.cond:                                         ; preds = %for.inc61, %if.end
  %59 = load i32, i32* %dy, align 4, !dbg !5009
  %60 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !5011
  %height47 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %60, i32 0, i32 5, !dbg !5012
  %61 = load i32, i32* %height47, align 4, !dbg !5012
  %cmp48 = icmp ult i32 %59, %61, !dbg !5013
  br i1 %cmp48, label %for.body, label %for.end63, !dbg !5014

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i16** %src2, metadata !5015, metadata !DIExpression()), !dbg !5017
  %62 = load i16*, i16** %src, align 8, !dbg !5018
  store i16* %62, i16** %src2, align 8, !dbg !5017
  call void @llvm.dbg.declare(metadata i16** %dst2, metadata !5019, metadata !DIExpression()), !dbg !5020
  %63 = load i16*, i16** %dst, align 8, !dbg !5021
  store i16* %63, i16** %dst2, align 8, !dbg !5020
  store i32 0, i32* %dx, align 4, !dbg !5022
  br label %for.cond49, !dbg !5024

for.cond49:                                       ; preds = %for.inc, %for.body
  %64 = load i32, i32* %dx, align 4, !dbg !5025
  %65 = load %struct.fb_tilearea*, %struct.fb_tilearea** %area.addr, align 8, !dbg !5027
  %width50 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %65, i32 0, i32 4, !dbg !5028
  %66 = load i32, i32* %width50, align 4, !dbg !5028
  %cmp51 = icmp ult i32 %64, %66, !dbg !5029
  br i1 %cmp51, label %for.body52, label %for.end, !dbg !5030

for.body52:                                       ; preds = %for.cond49
  %67 = load i16*, i16** %src2, align 8, !dbg !5031
  %68 = bitcast i16* %67 to i8*, !dbg !5031
  %call = call zeroext i16 @__readw(i8* %68) #4, !dbg !5033
  %69 = load i16*, i16** %dst2, align 8, !dbg !5034
  %70 = bitcast i16* %69 to i8*, !dbg !5034
  call void @__writew(i16 zeroext %call, i8* %70) #4, !dbg !5035
  %71 = load i32, i32* %colstride, align 4, !dbg !5036
  %72 = load i16*, i16** %src2, align 8, !dbg !5037
  %idx.ext53 = sext i32 %71 to i64, !dbg !5037
  %add.ptr54 = getelementptr i16, i16* %72, i64 %idx.ext53, !dbg !5037
  store i16* %add.ptr54, i16** %src2, align 8, !dbg !5037
  %73 = load i32, i32* %colstride, align 4, !dbg !5038
  %74 = load i16*, i16** %dst2, align 8, !dbg !5039
  %idx.ext55 = sext i32 %73 to i64, !dbg !5039
  %add.ptr56 = getelementptr i16, i16* %74, i64 %idx.ext55, !dbg !5039
  store i16* %add.ptr56, i16** %dst2, align 8, !dbg !5039
  br label %for.inc, !dbg !5040

for.inc:                                          ; preds = %for.body52
  %75 = load i32, i32* %dx, align 4, !dbg !5041
  %inc = add i32 %75, 1, !dbg !5041
  store i32 %inc, i32* %dx, align 4, !dbg !5041
  br label %for.cond49, !dbg !5042, !llvm.loop !5043

for.end:                                          ; preds = %for.cond49
  %76 = load i32, i32* %rowstride, align 4, !dbg !5045
  %77 = load i16*, i16** %src, align 8, !dbg !5046
  %idx.ext57 = sext i32 %76 to i64, !dbg !5046
  %add.ptr58 = getelementptr i16, i16* %77, i64 %idx.ext57, !dbg !5046
  store i16* %add.ptr58, i16** %src, align 8, !dbg !5046
  %78 = load i32, i32* %rowstride, align 4, !dbg !5047
  %79 = load i16*, i16** %dst, align 8, !dbg !5048
  %idx.ext59 = sext i32 %78 to i64, !dbg !5048
  %add.ptr60 = getelementptr i16, i16* %79, i64 %idx.ext59, !dbg !5048
  store i16* %add.ptr60, i16** %dst, align 8, !dbg !5048
  br label %for.inc61, !dbg !5049

for.inc61:                                        ; preds = %for.end
  %80 = load i32, i32* %dy, align 4, !dbg !5050
  %inc62 = add i32 %80, 1, !dbg !5050
  store i32 %inc62, i32* %dy, align 4, !dbg !5050
  br label %for.cond, !dbg !5051, !llvm.loop !5052

for.end63:                                        ; preds = %for.cond
  ret void, !dbg !5054
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writew(i16 zeroext %val, i8* %addr) #0 !dbg !5055 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca i8*, align 8
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !5058, metadata !DIExpression()), !dbg !5059
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5060, metadata !DIExpression()), !dbg !5059
  %0 = load i16, i16* %val.addr, align 2, !dbg !5059
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5059
  %2 = bitcast i8* %1 to i16*, !dbg !5059
  call void asm sideeffect "movw $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %2) #6, !dbg !5059, !srcloc !5061
  ret void, !dbg !5059
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @__readw(i8* %addr) #0 !dbg !5062 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i16, align 2
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5067, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !5069, metadata !DIExpression()), !dbg !5068
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5068
  %1 = bitcast i8* %0 to i16*, !dbg !5068
  %2 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i16* %1) #6, !dbg !5068, !srcloc !5070
  store i16 %2, i16* %ret, align 2, !dbg !5068
  %3 = load i16, i16* %ret, align 2, !dbg !5068
  ret i16 %3, !dbg !5068
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_tilefill(%struct.fb_info* %info, %struct.fb_tilerect* %rect) #0 !dbg !5071 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %rect.addr = alloca %struct.fb_tilerect*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %colstride = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %attr = alloca i32, align 4
  %fb = alloca i8*, align 8
  %fb2 = alloca i8*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5072, metadata !DIExpression()), !dbg !5073
  store %struct.fb_tilerect* %rect, %struct.fb_tilerect** %rect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_tilerect** %rect.addr, metadata !5074, metadata !DIExpression()), !dbg !5075
  call void @llvm.dbg.declare(metadata i32* %dx, metadata !5076, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.declare(metadata i32* %dy, metadata !5078, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.declare(metadata i32* %colstride, metadata !5080, metadata !DIExpression()), !dbg !5081
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5082
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 7, !dbg !5083
  %type_aux = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 4, !dbg !5084
  %1 = load i32, i32* %type_aux, align 8, !dbg !5084
  %and = and i32 %1, 7, !dbg !5085
  %shl = shl i32 2, %and, !dbg !5086
  store i32 %shl, i32* %colstride, align 4, !dbg !5081
  call void @llvm.dbg.declare(metadata i32* %rowstride, metadata !5087, metadata !DIExpression()), !dbg !5088
  %2 = load i32, i32* %colstride, align 4, !dbg !5089
  %3 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5090
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 6, !dbg !5091
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 2, !dbg !5092
  %4 = load i32, i32* %xres_virtual, align 8, !dbg !5092
  %div = udiv i32 %4, 8, !dbg !5093
  %mul = mul i32 %2, %div, !dbg !5094
  store i32 %mul, i32* %rowstride, align 4, !dbg !5088
  call void @llvm.dbg.declare(metadata i32* %attr, metadata !5095, metadata !DIExpression()), !dbg !5096
  %5 = load %struct.fb_tilerect*, %struct.fb_tilerect** %rect.addr, align 8, !dbg !5097
  %bg = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %5, i32 0, i32 6, !dbg !5098
  %6 = load i32, i32* %bg, align 4, !dbg !5098
  %and1 = and i32 15, %6, !dbg !5099
  %shl2 = shl i32 %and1, 4, !dbg !5100
  %7 = load %struct.fb_tilerect*, %struct.fb_tilerect** %rect.addr, align 8, !dbg !5101
  %fg = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %7, i32 0, i32 5, !dbg !5102
  %8 = load i32, i32* %fg, align 4, !dbg !5102
  %and3 = and i32 15, %8, !dbg !5103
  %or = or i32 %shl2, %and3, !dbg !5104
  store i32 %or, i32* %attr, align 4, !dbg !5096
  call void @llvm.dbg.declare(metadata i8** %fb, metadata !5105, metadata !DIExpression()), !dbg !5106
  %9 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5107
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 25, !dbg !5108
  %screen_base = bitcast %union.anon.65* %10 to i8**, !dbg !5108
  %11 = load i8*, i8** %screen_base, align 8, !dbg !5108
  store i8* %11, i8** %fb, align 8, !dbg !5106
  %12 = load %struct.fb_tilerect*, %struct.fb_tilerect** %rect.addr, align 8, !dbg !5109
  %sx = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %12, i32 0, i32 0, !dbg !5110
  %13 = load i32, i32* %sx, align 4, !dbg !5110
  %14 = load i32, i32* %colstride, align 4, !dbg !5111
  %mul4 = mul i32 %13, %14, !dbg !5112
  %15 = load %struct.fb_tilerect*, %struct.fb_tilerect** %rect.addr, align 8, !dbg !5113
  %sy = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %15, i32 0, i32 1, !dbg !5114
  %16 = load i32, i32* %sy, align 4, !dbg !5114
  %17 = load i32, i32* %rowstride, align 4, !dbg !5115
  %mul5 = mul i32 %16, %17, !dbg !5116
  %add = add i32 %mul4, %mul5, !dbg !5117
  %18 = load i8*, i8** %fb, align 8, !dbg !5118
  %idx.ext = zext i32 %add to i64, !dbg !5118
  %add.ptr = getelementptr i8, i8* %18, i64 %idx.ext, !dbg !5118
  store i8* %add.ptr, i8** %fb, align 8, !dbg !5118
  store i32 0, i32* %dy, align 4, !dbg !5119
  br label %for.cond, !dbg !5121

for.cond:                                         ; preds = %for.inc15, %entry
  %19 = load i32, i32* %dy, align 4, !dbg !5122
  %20 = load %struct.fb_tilerect*, %struct.fb_tilerect** %rect.addr, align 8, !dbg !5124
  %height = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %20, i32 0, i32 3, !dbg !5125
  %21 = load i32, i32* %height, align 4, !dbg !5125
  %cmp = icmp ult i32 %19, %21, !dbg !5126
  br i1 %cmp, label %for.body, label %for.end17, !dbg !5127

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %fb2, metadata !5128, metadata !DIExpression()), !dbg !5130
  %22 = load i8*, i8** %fb, align 8, !dbg !5131
  store i8* %22, i8** %fb2, align 8, !dbg !5130
  store i32 0, i32* %dx, align 4, !dbg !5132
  br label %for.cond6, !dbg !5134

for.cond6:                                        ; preds = %for.inc, %for.body
  %23 = load i32, i32* %dx, align 4, !dbg !5135
  %24 = load %struct.fb_tilerect*, %struct.fb_tilerect** %rect.addr, align 8, !dbg !5137
  %width = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %24, i32 0, i32 2, !dbg !5138
  %25 = load i32, i32* %width, align 4, !dbg !5138
  %cmp7 = icmp ult i32 %23, %25, !dbg !5139
  br i1 %cmp7, label %for.body8, label %for.end, !dbg !5140

for.body8:                                        ; preds = %for.cond6
  %26 = load %struct.fb_tilerect*, %struct.fb_tilerect** %rect.addr, align 8, !dbg !5141
  %index = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %26, i32 0, i32 4, !dbg !5143
  %27 = load i32, i32* %index, align 4, !dbg !5143
  %conv = trunc i32 %27 to i8, !dbg !5141
  %28 = load i8*, i8** %fb2, align 8, !dbg !5144
  call void @__writeb(i8 zeroext %conv, i8* %28) #4, !dbg !5145
  %29 = load i32, i32* %attr, align 4, !dbg !5146
  %conv9 = trunc i32 %29 to i8, !dbg !5146
  %30 = load i8*, i8** %fb2, align 8, !dbg !5147
  %add.ptr10 = getelementptr i8, i8* %30, i64 1, !dbg !5148
  call void @__writeb(i8 zeroext %conv9, i8* %add.ptr10) #4, !dbg !5149
  %31 = load i32, i32* %colstride, align 4, !dbg !5150
  %32 = load i8*, i8** %fb2, align 8, !dbg !5151
  %idx.ext11 = sext i32 %31 to i64, !dbg !5151
  %add.ptr12 = getelementptr i8, i8* %32, i64 %idx.ext11, !dbg !5151
  store i8* %add.ptr12, i8** %fb2, align 8, !dbg !5151
  br label %for.inc, !dbg !5152

for.inc:                                          ; preds = %for.body8
  %33 = load i32, i32* %dx, align 4, !dbg !5153
  %inc = add i32 %33, 1, !dbg !5153
  store i32 %inc, i32* %dx, align 4, !dbg !5153
  br label %for.cond6, !dbg !5154, !llvm.loop !5155

for.end:                                          ; preds = %for.cond6
  %34 = load i32, i32* %rowstride, align 4, !dbg !5157
  %35 = load i8*, i8** %fb, align 8, !dbg !5158
  %idx.ext13 = sext i32 %34 to i64, !dbg !5158
  %add.ptr14 = getelementptr i8, i8* %35, i64 %idx.ext13, !dbg !5158
  store i8* %add.ptr14, i8** %fb, align 8, !dbg !5158
  br label %for.inc15, !dbg !5159

for.inc15:                                        ; preds = %for.end
  %36 = load i32, i32* %dy, align 4, !dbg !5160
  %inc16 = add i32 %36, 1, !dbg !5160
  store i32 %inc16, i32* %dy, align 4, !dbg !5160
  br label %for.cond, !dbg !5161, !llvm.loop !5162

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !5164
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_tileblit(%struct.fb_info* %info, %struct.fb_tileblit* %blit) #0 !dbg !5165 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %blit.addr = alloca %struct.fb_tileblit*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %i = alloca i32, align 4
  %colstride = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %attr = alloca i32, align 4
  %fb = alloca i8*, align 8
  %fb2 = alloca i8*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5166, metadata !DIExpression()), !dbg !5167
  store %struct.fb_tileblit* %blit, %struct.fb_tileblit** %blit.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_tileblit** %blit.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  call void @llvm.dbg.declare(metadata i32* %dx, metadata !5170, metadata !DIExpression()), !dbg !5171
  call void @llvm.dbg.declare(metadata i32* %dy, metadata !5172, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5174, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.declare(metadata i32* %colstride, metadata !5176, metadata !DIExpression()), !dbg !5177
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5178
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 7, !dbg !5179
  %type_aux = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 4, !dbg !5180
  %1 = load i32, i32* %type_aux, align 8, !dbg !5180
  %and = and i32 %1, 7, !dbg !5181
  %shl = shl i32 2, %and, !dbg !5182
  store i32 %shl, i32* %colstride, align 4, !dbg !5177
  call void @llvm.dbg.declare(metadata i32* %rowstride, metadata !5183, metadata !DIExpression()), !dbg !5184
  %2 = load i32, i32* %colstride, align 4, !dbg !5185
  %3 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5186
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 6, !dbg !5187
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 2, !dbg !5188
  %4 = load i32, i32* %xres_virtual, align 8, !dbg !5188
  %div = udiv i32 %4, 8, !dbg !5189
  %mul = mul i32 %2, %div, !dbg !5190
  store i32 %mul, i32* %rowstride, align 4, !dbg !5184
  call void @llvm.dbg.declare(metadata i32* %attr, metadata !5191, metadata !DIExpression()), !dbg !5192
  %5 = load %struct.fb_tileblit*, %struct.fb_tileblit** %blit.addr, align 8, !dbg !5193
  %bg = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %5, i32 0, i32 5, !dbg !5194
  %6 = load i32, i32* %bg, align 4, !dbg !5194
  %and1 = and i32 15, %6, !dbg !5195
  %shl2 = shl i32 %and1, 4, !dbg !5196
  %7 = load %struct.fb_tileblit*, %struct.fb_tileblit** %blit.addr, align 8, !dbg !5197
  %fg = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %7, i32 0, i32 4, !dbg !5198
  %8 = load i32, i32* %fg, align 8, !dbg !5198
  %and3 = and i32 15, %8, !dbg !5199
  %or = or i32 %shl2, %and3, !dbg !5200
  store i32 %or, i32* %attr, align 4, !dbg !5192
  call void @llvm.dbg.declare(metadata i8** %fb, metadata !5201, metadata !DIExpression()), !dbg !5202
  %9 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5203
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 25, !dbg !5204
  %screen_base = bitcast %union.anon.65* %10 to i8**, !dbg !5204
  %11 = load i8*, i8** %screen_base, align 8, !dbg !5204
  store i8* %11, i8** %fb, align 8, !dbg !5202
  %12 = load %struct.fb_tileblit*, %struct.fb_tileblit** %blit.addr, align 8, !dbg !5205
  %sx = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %12, i32 0, i32 0, !dbg !5206
  %13 = load i32, i32* %sx, align 8, !dbg !5206
  %14 = load i32, i32* %colstride, align 4, !dbg !5207
  %mul4 = mul i32 %13, %14, !dbg !5208
  %15 = load %struct.fb_tileblit*, %struct.fb_tileblit** %blit.addr, align 8, !dbg !5209
  %sy = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %15, i32 0, i32 1, !dbg !5210
  %16 = load i32, i32* %sy, align 4, !dbg !5210
  %17 = load i32, i32* %rowstride, align 4, !dbg !5211
  %mul5 = mul i32 %16, %17, !dbg !5212
  %add = add i32 %mul4, %mul5, !dbg !5213
  %18 = load i8*, i8** %fb, align 8, !dbg !5214
  %idx.ext = zext i32 %add to i64, !dbg !5214
  %add.ptr = getelementptr i8, i8* %18, i64 %idx.ext, !dbg !5214
  store i8* %add.ptr, i8** %fb, align 8, !dbg !5214
  store i32 0, i32* %i, align 4, !dbg !5215
  store i32 0, i32* %dy, align 4, !dbg !5216
  br label %for.cond, !dbg !5218

for.cond:                                         ; preds = %for.inc18, %entry
  %19 = load i32, i32* %dy, align 4, !dbg !5219
  %20 = load %struct.fb_tileblit*, %struct.fb_tileblit** %blit.addr, align 8, !dbg !5221
  %height = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %20, i32 0, i32 3, !dbg !5222
  %21 = load i32, i32* %height, align 4, !dbg !5222
  %cmp = icmp ult i32 %19, %21, !dbg !5223
  br i1 %cmp, label %for.body, label %for.end20, !dbg !5224

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %fb2, metadata !5225, metadata !DIExpression()), !dbg !5227
  %22 = load i8*, i8** %fb, align 8, !dbg !5228
  store i8* %22, i8** %fb2, align 8, !dbg !5227
  store i32 0, i32* %dx, align 4, !dbg !5229
  br label %for.cond6, !dbg !5231

for.cond6:                                        ; preds = %for.inc, %for.body
  %23 = load i32, i32* %dx, align 4, !dbg !5232
  %24 = load %struct.fb_tileblit*, %struct.fb_tileblit** %blit.addr, align 8, !dbg !5234
  %width = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %24, i32 0, i32 2, !dbg !5235
  %25 = load i32, i32* %width, align 8, !dbg !5235
  %cmp7 = icmp ult i32 %23, %25, !dbg !5236
  br i1 %cmp7, label %for.body8, label %for.end, !dbg !5237

for.body8:                                        ; preds = %for.cond6
  %26 = load %struct.fb_tileblit*, %struct.fb_tileblit** %blit.addr, align 8, !dbg !5238
  %indices = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %26, i32 0, i32 7, !dbg !5240
  %27 = load i32*, i32** %indices, align 8, !dbg !5240
  %28 = load i32, i32* %i, align 4, !dbg !5241
  %idxprom = sext i32 %28 to i64, !dbg !5238
  %arrayidx = getelementptr i32, i32* %27, i64 %idxprom, !dbg !5238
  %29 = load i32, i32* %arrayidx, align 4, !dbg !5238
  %conv = trunc i32 %29 to i8, !dbg !5238
  %30 = load i8*, i8** %fb2, align 8, !dbg !5242
  call void @__writeb(i8 zeroext %conv, i8* %30) #4, !dbg !5243
  %31 = load i32, i32* %attr, align 4, !dbg !5244
  %conv9 = trunc i32 %31 to i8, !dbg !5244
  %32 = load i8*, i8** %fb2, align 8, !dbg !5245
  %add.ptr10 = getelementptr i8, i8* %32, i64 1, !dbg !5246
  call void @__writeb(i8 zeroext %conv9, i8* %add.ptr10) #4, !dbg !5247
  %33 = load i32, i32* %colstride, align 4, !dbg !5248
  %34 = load i8*, i8** %fb2, align 8, !dbg !5249
  %idx.ext11 = sext i32 %33 to i64, !dbg !5249
  %add.ptr12 = getelementptr i8, i8* %34, i64 %idx.ext11, !dbg !5249
  store i8* %add.ptr12, i8** %fb2, align 8, !dbg !5249
  %35 = load i32, i32* %i, align 4, !dbg !5250
  %inc = add i32 %35, 1, !dbg !5250
  store i32 %inc, i32* %i, align 4, !dbg !5250
  %36 = load i32, i32* %i, align 4, !dbg !5251
  %37 = load %struct.fb_tileblit*, %struct.fb_tileblit** %blit.addr, align 8, !dbg !5253
  %length = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %37, i32 0, i32 6, !dbg !5254
  %38 = load i32, i32* %length, align 8, !dbg !5254
  %cmp13 = icmp eq i32 %36, %38, !dbg !5255
  br i1 %cmp13, label %if.then, label %if.end, !dbg !5256

if.then:                                          ; preds = %for.body8
  br label %for.end20, !dbg !5257

if.end:                                           ; preds = %for.body8
  br label %for.inc, !dbg !5258

for.inc:                                          ; preds = %if.end
  %39 = load i32, i32* %dx, align 4, !dbg !5259
  %inc15 = add i32 %39, 1, !dbg !5259
  store i32 %inc15, i32* %dx, align 4, !dbg !5259
  br label %for.cond6, !dbg !5260, !llvm.loop !5261

for.end:                                          ; preds = %for.cond6
  %40 = load i32, i32* %rowstride, align 4, !dbg !5263
  %41 = load i8*, i8** %fb, align 8, !dbg !5264
  %idx.ext16 = sext i32 %40 to i64, !dbg !5264
  %add.ptr17 = getelementptr i8, i8* %41, i64 %idx.ext16, !dbg !5264
  store i8* %add.ptr17, i8** %fb, align 8, !dbg !5264
  br label %for.inc18, !dbg !5265

for.inc18:                                        ; preds = %for.end
  %42 = load i32, i32* %dy, align 4, !dbg !5266
  %inc19 = add i32 %42, 1, !dbg !5266
  store i32 %inc19, i32* %dy, align 4, !dbg !5266
  br label %for.cond, !dbg !5267, !llvm.loop !5268

for.end20:                                        ; preds = %if.then, %for.cond
  ret void, !dbg !5270
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_tilecursor(i8* %regbase, %struct.fb_info* %info, %struct.fb_tilecursor* %cursor) #0 !dbg !5271 {
entry:
  %regbase.addr = alloca i8*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %cursor.addr = alloca %struct.fb_tilecursor*, align 8
  %cs = alloca i8, align 1
  %ce = alloca i8, align 1
  %pos = alloca i16, align 2
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  store %struct.fb_tilecursor* %cursor, %struct.fb_tilecursor** %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_tilecursor** %cursor.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  call void @llvm.dbg.declare(metadata i8* %cs, metadata !5280, metadata !DIExpression()), !dbg !5281
  store i8 13, i8* %cs, align 1, !dbg !5281
  call void @llvm.dbg.declare(metadata i8* %ce, metadata !5282, metadata !DIExpression()), !dbg !5283
  store i8 14, i8* %ce, align 1, !dbg !5283
  call void @llvm.dbg.declare(metadata i16* %pos, metadata !5284, metadata !DIExpression()), !dbg !5285
  %0 = load %struct.fb_tilecursor*, %struct.fb_tilecursor** %cursor.addr, align 8, !dbg !5286
  %sx = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %0, i32 0, i32 0, !dbg !5287
  %1 = load i32, i32* %sx, align 4, !dbg !5287
  %2 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5288
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 6, !dbg !5289
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 4, !dbg !5290
  %3 = load i32, i32* %xoffset, align 8, !dbg !5290
  %div = udiv i32 %3, 8, !dbg !5291
  %add = add i32 %1, %div, !dbg !5292
  %4 = load %struct.fb_tilecursor*, %struct.fb_tilecursor** %cursor.addr, align 8, !dbg !5293
  %sy = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %4, i32 0, i32 1, !dbg !5294
  %5 = load i32, i32* %sy, align 4, !dbg !5294
  %6 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5295
  %var1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 6, !dbg !5296
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var1, i32 0, i32 5, !dbg !5297
  %7 = load i32, i32* %yoffset, align 4, !dbg !5297
  %div2 = udiv i32 %7, 16, !dbg !5298
  %add3 = add i32 %5, %div2, !dbg !5299
  %8 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5300
  %var4 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 6, !dbg !5301
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var4, i32 0, i32 2, !dbg !5302
  %9 = load i32, i32* %xres_virtual, align 8, !dbg !5302
  %div5 = udiv i32 %9, 8, !dbg !5303
  %mul = mul i32 %add3, %div5, !dbg !5304
  %add6 = add i32 %add, %mul, !dbg !5305
  %conv = trunc i32 %add6 to i16, !dbg !5286
  store i16 %conv, i16* %pos, align 2, !dbg !5285
  %10 = load %struct.fb_tilecursor*, %struct.fb_tilecursor** %cursor.addr, align 8, !dbg !5306
  %mode = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %10, i32 0, i32 2, !dbg !5308
  %11 = load i32, i32* %mode, align 4, !dbg !5308
  %tobool = icmp ne i32 %11, 0, !dbg !5306
  br i1 %tobool, label %if.end, label %if.then, !dbg !5309

if.then:                                          ; preds = %entry
  br label %return, !dbg !5310

if.end:                                           ; preds = %entry
  %12 = load i8*, i8** %regbase.addr, align 8, !dbg !5311
  call void @svga_wcrt_mask(i8* %12, i8 zeroext 10, i8 zeroext 32, i8 zeroext 32) #4, !dbg !5312
  %13 = load %struct.fb_tilecursor*, %struct.fb_tilecursor** %cursor.addr, align 8, !dbg !5313
  %shape = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %13, i32 0, i32 3, !dbg !5315
  %14 = load i32, i32* %shape, align 4, !dbg !5315
  %cmp = icmp eq i32 %14, 0, !dbg !5316
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !5317

if.then8:                                         ; preds = %if.end
  br label %return, !dbg !5318

if.end9:                                          ; preds = %if.end
  %15 = load %struct.fb_tilecursor*, %struct.fb_tilecursor** %cursor.addr, align 8, !dbg !5319
  %shape10 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %15, i32 0, i32 3, !dbg !5320
  %16 = load i32, i32* %shape10, align 4, !dbg !5320
  switch i32 %16, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 3, label %sw.bb12
    i32 4, label %sw.bb13
    i32 5, label %sw.bb14
  ], !dbg !5321

sw.bb:                                            ; preds = %if.end9
  store i8 13, i8* %cs, align 1, !dbg !5322
  br label %sw.epilog, !dbg !5324

sw.bb11:                                          ; preds = %if.end9
  store i8 9, i8* %cs, align 1, !dbg !5325
  br label %sw.epilog, !dbg !5326

sw.bb12:                                          ; preds = %if.end9
  store i8 7, i8* %cs, align 1, !dbg !5327
  br label %sw.epilog, !dbg !5328

sw.bb13:                                          ; preds = %if.end9
  store i8 5, i8* %cs, align 1, !dbg !5329
  br label %sw.epilog, !dbg !5330

sw.bb14:                                          ; preds = %if.end9
  store i8 1, i8* %cs, align 1, !dbg !5331
  br label %sw.epilog, !dbg !5332

sw.epilog:                                        ; preds = %if.end9, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb
  %17 = load i8*, i8** %regbase.addr, align 8, !dbg !5333
  %18 = load i16, i16* %pos, align 2, !dbg !5334
  %conv15 = zext i16 %18 to i32, !dbg !5334
  %shr = ashr i32 %conv15, 8, !dbg !5335
  %conv16 = trunc i32 %shr to i8, !dbg !5334
  call void @vga_wcrt(i8* %17, i8 zeroext 14, i8 zeroext %conv16) #4, !dbg !5336
  %19 = load i8*, i8** %regbase.addr, align 8, !dbg !5337
  %20 = load i16, i16* %pos, align 2, !dbg !5338
  %conv17 = zext i16 %20 to i32, !dbg !5338
  %and = and i32 %conv17, 255, !dbg !5339
  %conv18 = trunc i32 %and to i8, !dbg !5338
  call void @vga_wcrt(i8* %19, i8 zeroext 15, i8 zeroext %conv18) #4, !dbg !5340
  %21 = load i8*, i8** %regbase.addr, align 8, !dbg !5341
  %22 = load i8, i8* %ce, align 1, !dbg !5342
  call void @vga_wcrt(i8* %21, i8 zeroext 11, i8 zeroext %22) #4, !dbg !5343
  %23 = load i8*, i8** %regbase.addr, align 8, !dbg !5344
  %24 = load i8, i8* %cs, align 1, !dbg !5345
  call void @vga_wcrt(i8* %23, i8 zeroext 10, i8 zeroext %24) #4, !dbg !5346
  br label %return, !dbg !5347

return:                                           ; preds = %sw.epilog, %if.then8, %if.then
  ret void, !dbg !5347
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @svga_get_tilemax(%struct.fb_info* %info) #0 !dbg !5348 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5349, metadata !DIExpression()), !dbg !5350
  ret i32 256, !dbg !5351
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_get_caps(%struct.fb_info* %info, %struct.fb_blit_caps* %caps, %struct.fb_var_screeninfo* %var) #0 !dbg !5352 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %caps.addr = alloca %struct.fb_blit_caps*, align 8
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5353, metadata !DIExpression()), !dbg !5354
  store %struct.fb_blit_caps* %caps, %struct.fb_blit_caps** %caps.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_blit_caps** %caps.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !5357, metadata !DIExpression()), !dbg !5358
  %0 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5359
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %0, i32 0, i32 6, !dbg !5361
  %1 = load i32, i32* %bits_per_pixel, align 4, !dbg !5361
  %cmp = icmp eq i32 %1, 0, !dbg !5362
  br i1 %cmp, label %if.then, label %if.else, !dbg !5363

if.then:                                          ; preds = %entry
  %2 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %caps.addr, align 8, !dbg !5364
  %x = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %2, i32 0, i32 0, !dbg !5366
  store i32 128, i32* %x, align 4, !dbg !5367
  %3 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %caps.addr, align 8, !dbg !5368
  %y = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %3, i32 0, i32 1, !dbg !5369
  store i32 32768, i32* %y, align 4, !dbg !5370
  %4 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %caps.addr, align 8, !dbg !5371
  %len = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %4, i32 0, i32 2, !dbg !5372
  store i32 256, i32* %len, align 4, !dbg !5373
  br label %if.end, !dbg !5374

if.else:                                          ; preds = %entry
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5375
  %bits_per_pixel1 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 6, !dbg !5377
  %6 = load i32, i32* %bits_per_pixel1, align 4, !dbg !5377
  %cmp2 = icmp eq i32 %6, 4, !dbg !5378
  %7 = zext i1 %cmp2 to i64, !dbg !5379
  %cond = select i1 %cmp2, i32 128, i32 -1, !dbg !5379
  %8 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %caps.addr, align 8, !dbg !5380
  %x3 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %8, i32 0, i32 0, !dbg !5381
  store i32 %cond, i32* %x3, align 4, !dbg !5382
  %9 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %caps.addr, align 8, !dbg !5383
  %y4 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %9, i32 0, i32 1, !dbg !5384
  store i32 -1, i32* %y4, align 4, !dbg !5385
  %10 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %caps.addr, align 8, !dbg !5386
  %len5 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %10, i32 0, i32 2, !dbg !5387
  store i32 -1, i32* %len5, align 4, !dbg !5388
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @svga_compute_pll(%struct.svga_pll* %pll, i32 %f_wanted, i16* %m, i16* %n, i16* %r, i32 %node) #0 !dbg !5390 {
entry:
  %retval = alloca i32, align 4
  %pll.addr = alloca %struct.svga_pll*, align 8
  %f_wanted.addr = alloca i32, align 4
  %m.addr = alloca i16*, align 8
  %n.addr = alloca i16*, align 8
  %r.addr = alloca i16*, align 8
  %node.addr = alloca i32, align 4
  %am = alloca i16, align 2
  %an = alloca i16, align 2
  %ar = alloca i16, align 2
  %f_vco = alloca i32, align 4
  %f_current = alloca i32, align 4
  %delta_current = alloca i32, align 4
  %delta_best = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  store %struct.svga_pll* %pll, %struct.svga_pll** %pll.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.svga_pll** %pll.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  store i32 %f_wanted, i32* %f_wanted.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %f_wanted.addr, metadata !5408, metadata !DIExpression()), !dbg !5409
  store i16* %m, i16** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %m.addr, metadata !5410, metadata !DIExpression()), !dbg !5411
  store i16* %n, i16** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %n.addr, metadata !5412, metadata !DIExpression()), !dbg !5413
  store i16* %r, i16** %r.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %r.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  store i32 %node, i32* %node.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %node.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  call void @llvm.dbg.declare(metadata i16* %am, metadata !5418, metadata !DIExpression()), !dbg !5419
  call void @llvm.dbg.declare(metadata i16* %an, metadata !5420, metadata !DIExpression()), !dbg !5421
  call void @llvm.dbg.declare(metadata i16* %ar, metadata !5422, metadata !DIExpression()), !dbg !5423
  call void @llvm.dbg.declare(metadata i32* %f_vco, metadata !5424, metadata !DIExpression()), !dbg !5425
  call void @llvm.dbg.declare(metadata i32* %f_current, metadata !5426, metadata !DIExpression()), !dbg !5427
  call void @llvm.dbg.declare(metadata i32* %delta_current, metadata !5428, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.declare(metadata i32* %delta_best, metadata !5430, metadata !DIExpression()), !dbg !5431
  store i32 0, i32* %tmp, align 4, !dbg !5432
  %0 = load i32, i32* %tmp, align 4, !dbg !5435
  %1 = load %struct.svga_pll*, %struct.svga_pll** %pll.addr, align 8, !dbg !5436
  %r_max = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %1, i32 0, i32 5, !dbg !5437
  %2 = load i16, i16* %r_max, align 2, !dbg !5437
  store i16 %2, i16* %ar, align 2, !dbg !5438
  %3 = load i32, i32* %f_wanted.addr, align 4, !dbg !5439
  %4 = load i16, i16* %ar, align 2, !dbg !5440
  %conv = zext i16 %4 to i32, !dbg !5440
  %shl = shl i32 %3, %conv, !dbg !5441
  store i32 %shl, i32* %f_vco, align 4, !dbg !5442
  %5 = load i32, i32* %f_vco, align 4, !dbg !5443
  %6 = load i16, i16* %ar, align 2, !dbg !5445
  %conv1 = zext i16 %6 to i32, !dbg !5445
  %shr = lshr i32 %5, %conv1, !dbg !5446
  %7 = load i32, i32* %f_wanted.addr, align 4, !dbg !5447
  %cmp = icmp ne i32 %shr, %7, !dbg !5448
  br i1 %cmp, label %if.then, label %if.end, !dbg !5449

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5450
  br label %return, !dbg !5450

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !5451

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load i16, i16* %ar, align 2, !dbg !5452
  %conv3 = zext i16 %8 to i32, !dbg !5452
  %9 = load %struct.svga_pll*, %struct.svga_pll** %pll.addr, align 8, !dbg !5453
  %r_min = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %9, i32 0, i32 4, !dbg !5454
  %10 = load i16, i16* %r_min, align 4, !dbg !5454
  %conv4 = zext i16 %10 to i32, !dbg !5453
  %cmp5 = icmp sgt i32 %conv3, %conv4, !dbg !5455
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !5456

land.rhs:                                         ; preds = %while.cond
  %11 = load i32, i32* %f_vco, align 4, !dbg !5457
  %12 = load %struct.svga_pll*, %struct.svga_pll** %pll.addr, align 8, !dbg !5458
  %f_vco_max = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %12, i32 0, i32 7, !dbg !5459
  %13 = load i32, i32* %f_vco_max, align 4, !dbg !5459
  %cmp7 = icmp ugt i32 %11, %13, !dbg !5460
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ], !dbg !5461
  br i1 %14, label %while.body, label %while.end, !dbg !5451

while.body:                                       ; preds = %land.end
  %15 = load i16, i16* %ar, align 2, !dbg !5462
  %dec = add i16 %15, -1, !dbg !5462
  store i16 %dec, i16* %ar, align 2, !dbg !5462
  %16 = load i32, i32* %f_vco, align 4, !dbg !5464
  %shr9 = lshr i32 %16, 1, !dbg !5465
  store i32 %shr9, i32* %f_vco, align 4, !dbg !5466
  br label %while.cond, !dbg !5451, !llvm.loop !5467

while.end:                                        ; preds = %land.end
  %17 = load i32, i32* %f_vco, align 4, !dbg !5469
  %18 = load %struct.svga_pll*, %struct.svga_pll** %pll.addr, align 8, !dbg !5471
  %f_vco_min = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %18, i32 0, i32 6, !dbg !5472
  %19 = load i32, i32* %f_vco_min, align 4, !dbg !5472
  %cmp10 = icmp ult i32 %17, %19, !dbg !5473
  br i1 %cmp10, label %if.then15, label %lor.lhs.false, !dbg !5474

lor.lhs.false:                                    ; preds = %while.end
  %20 = load i32, i32* %f_vco, align 4, !dbg !5475
  %21 = load %struct.svga_pll*, %struct.svga_pll** %pll.addr, align 8, !dbg !5476
  %f_vco_max12 = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %21, i32 0, i32 7, !dbg !5477
  %22 = load i32, i32* %f_vco_max12, align 4, !dbg !5477
  %cmp13 = icmp ugt i32 %20, %22, !dbg !5478
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5479

if.then15:                                        ; preds = %lor.lhs.false, %while.end
  store i32 -22, i32* %retval, align 4, !dbg !5480
  br label %return, !dbg !5480

if.end16:                                         ; preds = %lor.lhs.false
  store i32 -1, i32* %delta_best, align 4, !dbg !5481
  %23 = load i16*, i16** %m.addr, align 8, !dbg !5482
  store i16 0, i16* %23, align 2, !dbg !5483
  %24 = load i16*, i16** %n.addr, align 8, !dbg !5484
  store i16 0, i16* %24, align 2, !dbg !5485
  %25 = load i16, i16* %ar, align 2, !dbg !5486
  %26 = load i16*, i16** %r.addr, align 8, !dbg !5487
  store i16 %25, i16* %26, align 2, !dbg !5488
  %27 = load %struct.svga_pll*, %struct.svga_pll** %pll.addr, align 8, !dbg !5489
  %m_min = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %27, i32 0, i32 0, !dbg !5490
  %28 = load i16, i16* %m_min, align 4, !dbg !5490
  store i16 %28, i16* %am, align 2, !dbg !5491
  %29 = load %struct.svga_pll*, %struct.svga_pll** %pll.addr, align 8, !dbg !5492
  %n_min = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %29, i32 0, i32 2, !dbg !5493
  %30 = load i16, i16* %n_min, align 4, !dbg !5493
  store i16 %30, i16* %an, align 2, !dbg !5494
  br label %while.cond17, !dbg !5495

while.cond17:                                     ; preds = %if.end39, %if.end16
  %31 = load i16, i16* %am, align 2, !dbg !5496
  %conv18 = zext i16 %31 to i32, !dbg !5496
  %32 = load %struct.svga_pll*, %struct.svga_pll** %pll.addr, align 8, !dbg !5497
  %m_max = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %32, i32 0, i32 1, !dbg !5498
  %33 = load i16, i16* %m_max, align 2, !dbg !5498
  %conv19 = zext i16 %33 to i32, !dbg !5497
  %cmp20 = icmp sle i32 %conv18, %conv19, !dbg !5499
  br i1 %cmp20, label %land.rhs22, label %land.end27, !dbg !5500

land.rhs22:                                       ; preds = %while.cond17
  %34 = load i16, i16* %an, align 2, !dbg !5501
  %conv23 = zext i16 %34 to i32, !dbg !5501
  %35 = load %struct.svga_pll*, %struct.svga_pll** %pll.addr, align 8, !dbg !5502
  %n_max = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %35, i32 0, i32 3, !dbg !5503
  %36 = load i16, i16* %n_max, align 2, !dbg !5503
  %conv24 = zext i16 %36 to i32, !dbg !5502
  %cmp25 = icmp sle i32 %conv23, %conv24, !dbg !5504
  br label %land.end27

land.end27:                                       ; preds = %land.rhs22, %while.cond17
  %37 = phi i1 [ false, %while.cond17 ], [ %cmp25, %land.rhs22 ], !dbg !5461
  br i1 %37, label %while.body28, label %while.end40, !dbg !5495

while.body28:                                     ; preds = %land.end27
  %38 = load %struct.svga_pll*, %struct.svga_pll** %pll.addr, align 8, !dbg !5505
  %f_base = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %38, i32 0, i32 8, !dbg !5507
  %39 = load i32, i32* %f_base, align 4, !dbg !5507
  %40 = load i16, i16* %am, align 2, !dbg !5508
  %conv29 = zext i16 %40 to i32, !dbg !5508
  %mul = mul i32 %39, %conv29, !dbg !5509
  %41 = load i16, i16* %an, align 2, !dbg !5510
  %conv30 = zext i16 %41 to i32, !dbg !5510
  %div = udiv i32 %mul, %conv30, !dbg !5511
  store i32 %div, i32* %f_current, align 4, !dbg !5512
  %42 = load i32, i32* %f_current, align 4, !dbg !5513
  %43 = load i32, i32* %f_vco, align 4, !dbg !5514
  %call = call i32 @abs_diff(i32 %42, i32 %43) #4, !dbg !5515
  store i32 %call, i32* %delta_current, align 4, !dbg !5516
  %44 = load i32, i32* %delta_current, align 4, !dbg !5517
  %45 = load i32, i32* %delta_best, align 4, !dbg !5519
  %cmp31 = icmp ult i32 %44, %45, !dbg !5520
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !5521

if.then33:                                        ; preds = %while.body28
  %46 = load i32, i32* %delta_current, align 4, !dbg !5522
  store i32 %46, i32* %delta_best, align 4, !dbg !5524
  %47 = load i16, i16* %am, align 2, !dbg !5525
  %48 = load i16*, i16** %m.addr, align 8, !dbg !5526
  store i16 %47, i16* %48, align 2, !dbg !5527
  %49 = load i16, i16* %an, align 2, !dbg !5528
  %50 = load i16*, i16** %n.addr, align 8, !dbg !5529
  store i16 %49, i16* %50, align 2, !dbg !5530
  br label %if.end34, !dbg !5531

if.end34:                                         ; preds = %if.then33, %while.body28
  %51 = load i32, i32* %f_current, align 4, !dbg !5532
  %52 = load i32, i32* %f_vco, align 4, !dbg !5534
  %cmp35 = icmp ule i32 %51, %52, !dbg !5535
  br i1 %cmp35, label %if.then37, label %if.else, !dbg !5536

if.then37:                                        ; preds = %if.end34
  %53 = load i16, i16* %am, align 2, !dbg !5537
  %inc = add i16 %53, 1, !dbg !5537
  store i16 %inc, i16* %am, align 2, !dbg !5537
  br label %if.end39, !dbg !5539

if.else:                                          ; preds = %if.end34
  %54 = load i16, i16* %an, align 2, !dbg !5540
  %inc38 = add i16 %54, 1, !dbg !5540
  store i16 %inc38, i16* %an, align 2, !dbg !5540
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then37
  br label %while.cond17, !dbg !5495, !llvm.loop !5542

while.end40:                                      ; preds = %land.end27
  %55 = load %struct.svga_pll*, %struct.svga_pll** %pll.addr, align 8, !dbg !5544
  %f_base41 = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %55, i32 0, i32 8, !dbg !5545
  %56 = load i32, i32* %f_base41, align 4, !dbg !5545
  %57 = load i16*, i16** %m.addr, align 8, !dbg !5546
  %58 = load i16, i16* %57, align 2, !dbg !5547
  %conv42 = zext i16 %58 to i32, !dbg !5547
  %mul43 = mul i32 %56, %conv42, !dbg !5548
  %59 = load i16*, i16** %n.addr, align 8, !dbg !5549
  %60 = load i16, i16* %59, align 2, !dbg !5550
  %conv44 = zext i16 %60 to i32, !dbg !5550
  %div45 = udiv i32 %mul43, %conv44, !dbg !5551
  store i32 %div45, i32* %f_current, align 4, !dbg !5552
  store i32 0, i32* %tmp46, align 4, !dbg !5553
  %61 = load i32, i32* %tmp46, align 4, !dbg !5556
  store i32 0, i32* %tmp47, align 4, !dbg !5557
  %62 = load i32, i32* %tmp47, align 4, !dbg !5560
  store i32 0, i32* %retval, align 4, !dbg !5561
  br label %return, !dbg !5561

return:                                           ; preds = %while.end40, %if.then15, %if.then
  %63 = load i32, i32* %retval, align 4, !dbg !5562
  ret i32 %63, !dbg !5562
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @abs_diff(i32 %a, i32 %b) #0 !dbg !5563 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !5566, metadata !DIExpression()), !dbg !5567
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !5568, metadata !DIExpression()), !dbg !5569
  %0 = load i32, i32* %a.addr, align 4, !dbg !5570
  %1 = load i32, i32* %b.addr, align 4, !dbg !5571
  %cmp = icmp ugt i32 %0, %1, !dbg !5572
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5573

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !dbg !5574
  %3 = load i32, i32* %b.addr, align 4, !dbg !5575
  %sub = sub i32 %2, %3, !dbg !5576
  br label %cond.end, !dbg !5573

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %b.addr, align 4, !dbg !5577
  %5 = load i32, i32* %a.addr, align 4, !dbg !5578
  %sub1 = sub i32 %4, %5, !dbg !5579
  br label %cond.end, !dbg !5573

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub1, %cond.false ], !dbg !5573
  ret i32 %cond, !dbg !5580
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @svga_check_timings(%struct.svga_timing_regs* %tm, %struct.fb_var_screeninfo* %var, i32 %node) #0 !dbg !5581 {
entry:
  %retval = alloca i32, align 4
  %tm.addr = alloca %struct.svga_timing_regs*, align 8
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  %node.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.svga_timing_regs* %tm, %struct.svga_timing_regs** %tm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.svga_timing_regs** %tm.addr, metadata !5600, metadata !DIExpression()), !dbg !5601
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !5602, metadata !DIExpression()), !dbg !5603
  store i32 %node, i32* %node.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %node.addr, metadata !5604, metadata !DIExpression()), !dbg !5605
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5606, metadata !DIExpression()), !dbg !5607
  %0 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5608
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %0, i32 0, i32 0, !dbg !5609
  %1 = load i32, i32* %xres, align 4, !dbg !5609
  %add = add i32 %1, 7, !dbg !5610
  %and = and i32 %add, -8, !dbg !5611
  %2 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5612
  %xres1 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %2, i32 0, i32 0, !dbg !5613
  store i32 %and, i32* %xres1, align 4, !dbg !5614
  %3 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5615
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %3, i32 0, i32 18, !dbg !5616
  %4 = load i32, i32* %left_margin, align 4, !dbg !5616
  %add2 = add i32 %4, 7, !dbg !5617
  %and3 = and i32 %add2, -8, !dbg !5618
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5619
  %left_margin4 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 18, !dbg !5620
  store i32 %and3, i32* %left_margin4, align 4, !dbg !5621
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5622
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 19, !dbg !5623
  %7 = load i32, i32* %right_margin, align 4, !dbg !5623
  %add5 = add i32 %7, 7, !dbg !5624
  %and6 = and i32 %add5, -8, !dbg !5625
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5626
  %right_margin7 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 19, !dbg !5627
  store i32 %and6, i32* %right_margin7, align 4, !dbg !5628
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5629
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 22, !dbg !5630
  %10 = load i32, i32* %hsync_len, align 4, !dbg !5630
  %add8 = add i32 %10, 7, !dbg !5631
  %and9 = and i32 %add8, -8, !dbg !5632
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5633
  %hsync_len10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 22, !dbg !5634
  store i32 %and9, i32* %hsync_len10, align 4, !dbg !5635
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5636
  %xres11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 0, !dbg !5637
  %13 = load i32, i32* %xres11, align 4, !dbg !5637
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5638
  %left_margin12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 18, !dbg !5639
  %15 = load i32, i32* %left_margin12, align 4, !dbg !5639
  %add13 = add i32 %13, %15, !dbg !5640
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5641
  %right_margin14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 19, !dbg !5642
  %17 = load i32, i32* %right_margin14, align 4, !dbg !5642
  %add15 = add i32 %add13, %17, !dbg !5643
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5644
  %hsync_len16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 22, !dbg !5645
  %19 = load i32, i32* %hsync_len16, align 4, !dbg !5645
  %add17 = add i32 %add15, %19, !dbg !5646
  store i32 %add17, i32* %value, align 4, !dbg !5647
  %20 = load i32, i32* %value, align 4, !dbg !5648
  %div = udiv i32 %20, 8, !dbg !5650
  %sub = sub i32 %div, 5, !dbg !5651
  %21 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5652
  %h_total_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %21, i32 0, i32 0, !dbg !5653
  %22 = load %struct.vga_regset*, %struct.vga_regset** %h_total_regs, align 8, !dbg !5653
  %call = call i32 @svga_regset_size(%struct.vga_regset* %22) #4, !dbg !5654
  %cmp = icmp uge i32 %sub, %call, !dbg !5655
  br i1 %cmp, label %if.then, label %if.end, !dbg !5656

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5657
  br label %return, !dbg !5657

if.end:                                           ; preds = %entry
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5658
  %xres18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 0, !dbg !5659
  %24 = load i32, i32* %xres18, align 4, !dbg !5659
  store i32 %24, i32* %value, align 4, !dbg !5660
  %25 = load i32, i32* %value, align 4, !dbg !5661
  %div19 = udiv i32 %25, 8, !dbg !5663
  %sub20 = sub i32 %div19, 1, !dbg !5664
  %26 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5665
  %h_display_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %26, i32 0, i32 1, !dbg !5666
  %27 = load %struct.vga_regset*, %struct.vga_regset** %h_display_regs, align 8, !dbg !5666
  %call21 = call i32 @svga_regset_size(%struct.vga_regset* %27) #4, !dbg !5667
  %cmp22 = icmp uge i32 %sub20, %call21, !dbg !5668
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !5669

if.then23:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5670
  br label %return, !dbg !5670

if.end24:                                         ; preds = %if.end
  %28 = load i32, i32* %value, align 4, !dbg !5671
  %div25 = udiv i32 %28, 8, !dbg !5673
  %sub26 = sub i32 %div25, 1, !dbg !5674
  %29 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5675
  %h_blank_start_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %29, i32 0, i32 2, !dbg !5676
  %30 = load %struct.vga_regset*, %struct.vga_regset** %h_blank_start_regs, align 8, !dbg !5676
  %call27 = call i32 @svga_regset_size(%struct.vga_regset* %30) #4, !dbg !5677
  %cmp28 = icmp uge i32 %sub26, %call27, !dbg !5678
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !5679

if.then29:                                        ; preds = %if.end24
  store i32 -22, i32* %retval, align 4, !dbg !5680
  br label %return, !dbg !5680

if.end30:                                         ; preds = %if.end24
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5681
  %xres31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 0, !dbg !5682
  %32 = load i32, i32* %xres31, align 4, !dbg !5682
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5683
  %right_margin32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 19, !dbg !5684
  %34 = load i32, i32* %right_margin32, align 4, !dbg !5684
  %add33 = add i32 %32, %34, !dbg !5685
  store i32 %add33, i32* %value, align 4, !dbg !5686
  %35 = load i32, i32* %value, align 4, !dbg !5687
  %div34 = udiv i32 %35, 8, !dbg !5689
  %sub35 = sub i32 %div34, 1, !dbg !5690
  %36 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5691
  %h_sync_start_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %36, i32 0, i32 4, !dbg !5692
  %37 = load %struct.vga_regset*, %struct.vga_regset** %h_sync_start_regs, align 8, !dbg !5692
  %call36 = call i32 @svga_regset_size(%struct.vga_regset* %37) #4, !dbg !5693
  %cmp37 = icmp uge i32 %sub35, %call36, !dbg !5694
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !5695

if.then38:                                        ; preds = %if.end30
  store i32 -22, i32* %retval, align 4, !dbg !5696
  br label %return, !dbg !5696

if.end39:                                         ; preds = %if.end30
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5697
  %left_margin40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 18, !dbg !5698
  %39 = load i32, i32* %left_margin40, align 4, !dbg !5698
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5699
  %right_margin41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 19, !dbg !5700
  %41 = load i32, i32* %right_margin41, align 4, !dbg !5700
  %add42 = add i32 %39, %41, !dbg !5701
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5702
  %hsync_len43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 22, !dbg !5703
  %43 = load i32, i32* %hsync_len43, align 4, !dbg !5703
  %add44 = add i32 %add42, %43, !dbg !5704
  store i32 %add44, i32* %value, align 4, !dbg !5705
  %44 = load i32, i32* %value, align 4, !dbg !5706
  %cmp45 = icmp eq i32 %44, 0, !dbg !5708
  br i1 %cmp45, label %if.then49, label %lor.lhs.false, !dbg !5709

lor.lhs.false:                                    ; preds = %if.end39
  %45 = load i32, i32* %value, align 4, !dbg !5710
  %div46 = udiv i32 %45, 8, !dbg !5711
  %46 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5712
  %h_blank_end_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %46, i32 0, i32 3, !dbg !5713
  %47 = load %struct.vga_regset*, %struct.vga_regset** %h_blank_end_regs, align 8, !dbg !5713
  %call47 = call i32 @svga_regset_size(%struct.vga_regset* %47) #4, !dbg !5714
  %cmp48 = icmp uge i32 %div46, %call47, !dbg !5715
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5716

if.then49:                                        ; preds = %lor.lhs.false, %if.end39
  store i32 -22, i32* %retval, align 4, !dbg !5717
  br label %return, !dbg !5717

if.end50:                                         ; preds = %lor.lhs.false
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5718
  %hsync_len51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 22, !dbg !5719
  %49 = load i32, i32* %hsync_len51, align 4, !dbg !5719
  store i32 %49, i32* %value, align 4, !dbg !5720
  %50 = load i32, i32* %value, align 4, !dbg !5721
  %cmp52 = icmp eq i32 %50, 0, !dbg !5723
  br i1 %cmp52, label %if.then57, label %lor.lhs.false53, !dbg !5724

lor.lhs.false53:                                  ; preds = %if.end50
  %51 = load i32, i32* %value, align 4, !dbg !5725
  %div54 = udiv i32 %51, 8, !dbg !5726
  %52 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5727
  %h_sync_end_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %52, i32 0, i32 5, !dbg !5728
  %53 = load %struct.vga_regset*, %struct.vga_regset** %h_sync_end_regs, align 8, !dbg !5728
  %call55 = call i32 @svga_regset_size(%struct.vga_regset* %53) #4, !dbg !5729
  %cmp56 = icmp uge i32 %div54, %call55, !dbg !5730
  br i1 %cmp56, label %if.then57, label %if.end58, !dbg !5731

if.then57:                                        ; preds = %lor.lhs.false53, %if.end50
  store i32 -22, i32* %retval, align 4, !dbg !5732
  br label %return, !dbg !5732

if.end58:                                         ; preds = %lor.lhs.false53
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5733
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 1, !dbg !5734
  %55 = load i32, i32* %yres, align 4, !dbg !5734
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5735
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 20, !dbg !5736
  %57 = load i32, i32* %upper_margin, align 4, !dbg !5736
  %add59 = add i32 %55, %57, !dbg !5737
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5738
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 21, !dbg !5739
  %59 = load i32, i32* %lower_margin, align 4, !dbg !5739
  %add60 = add i32 %add59, %59, !dbg !5740
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5741
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 23, !dbg !5742
  %61 = load i32, i32* %vsync_len, align 4, !dbg !5742
  %add61 = add i32 %add60, %61, !dbg !5743
  store i32 %add61, i32* %value, align 4, !dbg !5744
  %62 = load i32, i32* %value, align 4, !dbg !5745
  %sub62 = sub i32 %62, 1, !dbg !5747
  %63 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5748
  %v_total_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %63, i32 0, i32 6, !dbg !5749
  %64 = load %struct.vga_regset*, %struct.vga_regset** %v_total_regs, align 8, !dbg !5749
  %call63 = call i32 @svga_regset_size(%struct.vga_regset* %64) #4, !dbg !5750
  %cmp64 = icmp uge i32 %sub62, %call63, !dbg !5751
  br i1 %cmp64, label %if.then65, label %if.end66, !dbg !5752

if.then65:                                        ; preds = %if.end58
  store i32 -22, i32* %retval, align 4, !dbg !5753
  br label %return, !dbg !5753

if.end66:                                         ; preds = %if.end58
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5754
  %yres67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 1, !dbg !5755
  %66 = load i32, i32* %yres67, align 4, !dbg !5755
  store i32 %66, i32* %value, align 4, !dbg !5756
  %67 = load i32, i32* %value, align 4, !dbg !5757
  %sub68 = sub i32 %67, 1, !dbg !5759
  %68 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5760
  %v_display_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %68, i32 0, i32 7, !dbg !5761
  %69 = load %struct.vga_regset*, %struct.vga_regset** %v_display_regs, align 8, !dbg !5761
  %call69 = call i32 @svga_regset_size(%struct.vga_regset* %69) #4, !dbg !5762
  %cmp70 = icmp uge i32 %sub68, %call69, !dbg !5763
  br i1 %cmp70, label %if.then71, label %if.end72, !dbg !5764

if.then71:                                        ; preds = %if.end66
  store i32 -22, i32* %retval, align 4, !dbg !5765
  br label %return, !dbg !5765

if.end72:                                         ; preds = %if.end66
  %70 = load i32, i32* %value, align 4, !dbg !5766
  %sub73 = sub i32 %70, 1, !dbg !5768
  %71 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5769
  %v_blank_start_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %71, i32 0, i32 8, !dbg !5770
  %72 = load %struct.vga_regset*, %struct.vga_regset** %v_blank_start_regs, align 8, !dbg !5770
  %call74 = call i32 @svga_regset_size(%struct.vga_regset* %72) #4, !dbg !5771
  %cmp75 = icmp uge i32 %sub73, %call74, !dbg !5772
  br i1 %cmp75, label %if.then76, label %if.end77, !dbg !5773

if.then76:                                        ; preds = %if.end72
  store i32 -22, i32* %retval, align 4, !dbg !5774
  br label %return, !dbg !5774

if.end77:                                         ; preds = %if.end72
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5775
  %yres78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 1, !dbg !5776
  %74 = load i32, i32* %yres78, align 4, !dbg !5776
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5777
  %lower_margin79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 21, !dbg !5778
  %76 = load i32, i32* %lower_margin79, align 4, !dbg !5778
  %add80 = add i32 %74, %76, !dbg !5779
  store i32 %add80, i32* %value, align 4, !dbg !5780
  %77 = load i32, i32* %value, align 4, !dbg !5781
  %sub81 = sub i32 %77, 1, !dbg !5783
  %78 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5784
  %v_sync_start_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %78, i32 0, i32 10, !dbg !5785
  %79 = load %struct.vga_regset*, %struct.vga_regset** %v_sync_start_regs, align 8, !dbg !5785
  %call82 = call i32 @svga_regset_size(%struct.vga_regset* %79) #4, !dbg !5786
  %cmp83 = icmp uge i32 %sub81, %call82, !dbg !5787
  br i1 %cmp83, label %if.then84, label %if.end85, !dbg !5788

if.then84:                                        ; preds = %if.end77
  store i32 -22, i32* %retval, align 4, !dbg !5789
  br label %return, !dbg !5789

if.end85:                                         ; preds = %if.end77
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5790
  %upper_margin86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 20, !dbg !5791
  %81 = load i32, i32* %upper_margin86, align 4, !dbg !5791
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5792
  %lower_margin87 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 21, !dbg !5793
  %83 = load i32, i32* %lower_margin87, align 4, !dbg !5793
  %add88 = add i32 %81, %83, !dbg !5794
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5795
  %vsync_len89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 23, !dbg !5796
  %85 = load i32, i32* %vsync_len89, align 4, !dbg !5796
  %add90 = add i32 %add88, %85, !dbg !5797
  store i32 %add90, i32* %value, align 4, !dbg !5798
  %86 = load i32, i32* %value, align 4, !dbg !5799
  %cmp91 = icmp eq i32 %86, 0, !dbg !5801
  br i1 %cmp91, label %if.then95, label %lor.lhs.false92, !dbg !5802

lor.lhs.false92:                                  ; preds = %if.end85
  %87 = load i32, i32* %value, align 4, !dbg !5803
  %88 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5804
  %v_blank_end_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %88, i32 0, i32 9, !dbg !5805
  %89 = load %struct.vga_regset*, %struct.vga_regset** %v_blank_end_regs, align 8, !dbg !5805
  %call93 = call i32 @svga_regset_size(%struct.vga_regset* %89) #4, !dbg !5806
  %cmp94 = icmp uge i32 %87, %call93, !dbg !5807
  br i1 %cmp94, label %if.then95, label %if.end96, !dbg !5808

if.then95:                                        ; preds = %lor.lhs.false92, %if.end85
  store i32 -22, i32* %retval, align 4, !dbg !5809
  br label %return, !dbg !5809

if.end96:                                         ; preds = %lor.lhs.false92
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5810
  %vsync_len97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 23, !dbg !5811
  %91 = load i32, i32* %vsync_len97, align 4, !dbg !5811
  store i32 %91, i32* %value, align 4, !dbg !5812
  %92 = load i32, i32* %value, align 4, !dbg !5813
  %cmp98 = icmp eq i32 %92, 0, !dbg !5815
  br i1 %cmp98, label %if.then102, label %lor.lhs.false99, !dbg !5816

lor.lhs.false99:                                  ; preds = %if.end96
  %93 = load i32, i32* %value, align 4, !dbg !5817
  %94 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5818
  %v_sync_end_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %94, i32 0, i32 11, !dbg !5819
  %95 = load %struct.vga_regset*, %struct.vga_regset** %v_sync_end_regs, align 8, !dbg !5819
  %call100 = call i32 @svga_regset_size(%struct.vga_regset* %95) #4, !dbg !5820
  %cmp101 = icmp uge i32 %93, %call100, !dbg !5821
  br i1 %cmp101, label %if.then102, label %if.end103, !dbg !5822

if.then102:                                       ; preds = %lor.lhs.false99, %if.end96
  store i32 -22, i32* %retval, align 4, !dbg !5823
  br label %return, !dbg !5823

if.end103:                                        ; preds = %lor.lhs.false99
  store i32 0, i32* %retval, align 4, !dbg !5824
  br label %return, !dbg !5824

return:                                           ; preds = %if.end103, %if.then102, %if.then95, %if.then84, %if.then76, %if.then71, %if.then65, %if.then57, %if.then49, %if.then38, %if.then29, %if.then23, %if.then
  %96 = load i32, i32* %retval, align 4, !dbg !5825
  ret i32 %96, !dbg !5825
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @svga_regset_size(%struct.vga_regset* %regset) #0 !dbg !5826 {
entry:
  %regset.addr = alloca %struct.vga_regset*, align 8
  %count = alloca i8, align 1
  store %struct.vga_regset* %regset, %struct.vga_regset** %regset.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vga_regset** %regset.addr, metadata !5829, metadata !DIExpression()), !dbg !5830
  call void @llvm.dbg.declare(metadata i8* %count, metadata !5831, metadata !DIExpression()), !dbg !5832
  store i8 0, i8* %count, align 1, !dbg !5832
  br label %while.cond, !dbg !5833

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !5834
  %regnum = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %0, i32 0, i32 0, !dbg !5835
  %1 = load i8, i8* %regnum, align 1, !dbg !5835
  %conv = zext i8 %1 to i32, !dbg !5834
  %cmp = icmp ne i32 %conv, 255, !dbg !5836
  br i1 %cmp, label %while.body, label %while.end, !dbg !5833

while.body:                                       ; preds = %while.cond
  %2 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !5837
  %highbit = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %2, i32 0, i32 2, !dbg !5839
  %3 = load i8, i8* %highbit, align 1, !dbg !5839
  %conv2 = zext i8 %3 to i32, !dbg !5837
  %4 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !5840
  %lowbit = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %4, i32 0, i32 1, !dbg !5841
  %5 = load i8, i8* %lowbit, align 1, !dbg !5841
  %conv3 = zext i8 %5 to i32, !dbg !5840
  %sub = sub i32 %conv2, %conv3, !dbg !5842
  %add = add i32 %sub, 1, !dbg !5843
  %6 = load i8, i8* %count, align 1, !dbg !5844
  %conv4 = zext i8 %6 to i32, !dbg !5844
  %add5 = add i32 %conv4, %add, !dbg !5844
  %conv6 = trunc i32 %add5 to i8, !dbg !5844
  store i8 %conv6, i8* %count, align 1, !dbg !5844
  %7 = load %struct.vga_regset*, %struct.vga_regset** %regset.addr, align 8, !dbg !5845
  %incdec.ptr = getelementptr %struct.vga_regset, %struct.vga_regset* %7, i32 1, !dbg !5845
  store %struct.vga_regset* %incdec.ptr, %struct.vga_regset** %regset.addr, align 8, !dbg !5845
  br label %while.cond, !dbg !5833, !llvm.loop !5846

while.end:                                        ; preds = %while.cond
  %8 = load i8, i8* %count, align 1, !dbg !5848
  %conv7 = zext i8 %8 to i32, !dbg !5848
  %shl = shl i32 1, %conv7, !dbg !5849
  ret i32 %shl, !dbg !5850
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @svga_set_timings(i8* %regbase, %struct.svga_timing_regs* %tm, %struct.fb_var_screeninfo* %var, i32 %hmul, i32 %hdiv, i32 %vmul, i32 %vdiv, i32 %hborder, i32 %node) #0 !dbg !5851 {
entry:
  %regbase.addr = alloca i8*, align 8
  %tm.addr = alloca %struct.svga_timing_regs*, align 8
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  %hmul.addr = alloca i32, align 4
  %hdiv.addr = alloca i32, align 4
  %vmul.addr = alloca i32, align 4
  %vdiv.addr = alloca i32, align 4
  %hborder.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %regval = alloca i8, align 1
  %value = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %tmp44 = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %tmp56 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  %tmp78 = alloca i32, align 4
  %tmp86 = alloca i32, align 4
  %tmp87 = alloca i32, align 4
  %tmp90 = alloca i32, align 4
  %tmp97 = alloca i32, align 4
  %tmp102 = alloca i32, align 4
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !5854, metadata !DIExpression()), !dbg !5855
  store %struct.svga_timing_regs* %tm, %struct.svga_timing_regs** %tm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.svga_timing_regs** %tm.addr, metadata !5856, metadata !DIExpression()), !dbg !5857
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !5858, metadata !DIExpression()), !dbg !5859
  store i32 %hmul, i32* %hmul.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %hmul.addr, metadata !5860, metadata !DIExpression()), !dbg !5861
  store i32 %hdiv, i32* %hdiv.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %hdiv.addr, metadata !5862, metadata !DIExpression()), !dbg !5863
  store i32 %vmul, i32* %vmul.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vmul.addr, metadata !5864, metadata !DIExpression()), !dbg !5865
  store i32 %vdiv, i32* %vdiv.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vdiv.addr, metadata !5866, metadata !DIExpression()), !dbg !5867
  store i32 %hborder, i32* %hborder.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %hborder.addr, metadata !5868, metadata !DIExpression()), !dbg !5869
  store i32 %node, i32* %node.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %node.addr, metadata !5870, metadata !DIExpression()), !dbg !5871
  call void @llvm.dbg.declare(metadata i8* %regval, metadata !5872, metadata !DIExpression()), !dbg !5873
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5874, metadata !DIExpression()), !dbg !5875
  %0 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5876
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %0, i32 0, i32 0, !dbg !5877
  %1 = load i32, i32* %xres, align 4, !dbg !5877
  %2 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5878
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %2, i32 0, i32 18, !dbg !5879
  %3 = load i32, i32* %left_margin, align 4, !dbg !5879
  %add = add i32 %1, %3, !dbg !5880
  %4 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5881
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %4, i32 0, i32 19, !dbg !5882
  %5 = load i32, i32* %right_margin, align 4, !dbg !5882
  %add1 = add i32 %add, %5, !dbg !5883
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5884
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 22, !dbg !5885
  %7 = load i32, i32* %hsync_len, align 4, !dbg !5885
  %add2 = add i32 %add1, %7, !dbg !5886
  store i32 %add2, i32* %value, align 4, !dbg !5887
  %8 = load i32, i32* %value, align 4, !dbg !5888
  %9 = load i32, i32* %hmul.addr, align 4, !dbg !5889
  %mul = mul i32 %8, %9, !dbg !5890
  %10 = load i32, i32* %hdiv.addr, align 4, !dbg !5891
  %div = udiv i32 %mul, %10, !dbg !5892
  store i32 %div, i32* %value, align 4, !dbg !5893
  store i32 0, i32* %tmp, align 4, !dbg !5894
  %11 = load i32, i32* %tmp, align 4, !dbg !5897
  %12 = load i8*, i8** %regbase.addr, align 8, !dbg !5898
  %13 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5899
  %h_total_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %13, i32 0, i32 0, !dbg !5900
  %14 = load %struct.vga_regset*, %struct.vga_regset** %h_total_regs, align 8, !dbg !5900
  %15 = load i32, i32* %value, align 4, !dbg !5901
  %div3 = udiv i32 %15, 8, !dbg !5902
  %sub = sub i32 %div3, 5, !dbg !5903
  call void @svga_wcrt_multi(i8* %12, %struct.vga_regset* %14, i32 %sub) #4, !dbg !5904
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5905
  %xres4 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 0, !dbg !5906
  %17 = load i32, i32* %xres4, align 4, !dbg !5906
  store i32 %17, i32* %value, align 4, !dbg !5907
  %18 = load i32, i32* %value, align 4, !dbg !5908
  %19 = load i32, i32* %hmul.addr, align 4, !dbg !5909
  %mul5 = mul i32 %18, %19, !dbg !5910
  %20 = load i32, i32* %hdiv.addr, align 4, !dbg !5911
  %div6 = udiv i32 %mul5, %20, !dbg !5912
  store i32 %div6, i32* %value, align 4, !dbg !5913
  store i32 0, i32* %tmp7, align 4, !dbg !5914
  %21 = load i32, i32* %tmp7, align 4, !dbg !5917
  %22 = load i8*, i8** %regbase.addr, align 8, !dbg !5918
  %23 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5919
  %h_display_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %23, i32 0, i32 1, !dbg !5920
  %24 = load %struct.vga_regset*, %struct.vga_regset** %h_display_regs, align 8, !dbg !5920
  %25 = load i32, i32* %value, align 4, !dbg !5921
  %div8 = udiv i32 %25, 8, !dbg !5922
  %sub9 = sub i32 %div8, 1, !dbg !5923
  call void @svga_wcrt_multi(i8* %22, %struct.vga_regset* %24, i32 %sub9) #4, !dbg !5924
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5925
  %xres10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 0, !dbg !5926
  %27 = load i32, i32* %xres10, align 4, !dbg !5926
  store i32 %27, i32* %value, align 4, !dbg !5927
  %28 = load i32, i32* %value, align 4, !dbg !5928
  %29 = load i32, i32* %hmul.addr, align 4, !dbg !5929
  %mul11 = mul i32 %28, %29, !dbg !5930
  %30 = load i32, i32* %hdiv.addr, align 4, !dbg !5931
  %div12 = udiv i32 %mul11, %30, !dbg !5932
  store i32 %div12, i32* %value, align 4, !dbg !5933
  store i32 0, i32* %tmp13, align 4, !dbg !5934
  %31 = load i32, i32* %tmp13, align 4, !dbg !5937
  %32 = load i8*, i8** %regbase.addr, align 8, !dbg !5938
  %33 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5939
  %h_blank_start_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %33, i32 0, i32 2, !dbg !5940
  %34 = load %struct.vga_regset*, %struct.vga_regset** %h_blank_start_regs, align 8, !dbg !5940
  %35 = load i32, i32* %value, align 4, !dbg !5941
  %div14 = udiv i32 %35, 8, !dbg !5942
  %sub15 = sub i32 %div14, 1, !dbg !5943
  %36 = load i32, i32* %hborder.addr, align 4, !dbg !5944
  %add16 = add i32 %sub15, %36, !dbg !5945
  call void @svga_wcrt_multi(i8* %32, %struct.vga_regset* %34, i32 %add16) #4, !dbg !5946
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5947
  %xres17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 0, !dbg !5948
  %38 = load i32, i32* %xres17, align 4, !dbg !5948
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5949
  %left_margin18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 18, !dbg !5950
  %40 = load i32, i32* %left_margin18, align 4, !dbg !5950
  %add19 = add i32 %38, %40, !dbg !5951
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5952
  %right_margin20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 19, !dbg !5953
  %42 = load i32, i32* %right_margin20, align 4, !dbg !5953
  %add21 = add i32 %add19, %42, !dbg !5954
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5955
  %hsync_len22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 22, !dbg !5956
  %44 = load i32, i32* %hsync_len22, align 4, !dbg !5956
  %add23 = add i32 %add21, %44, !dbg !5957
  store i32 %add23, i32* %value, align 4, !dbg !5958
  %45 = load i32, i32* %value, align 4, !dbg !5959
  %46 = load i32, i32* %hmul.addr, align 4, !dbg !5960
  %mul24 = mul i32 %45, %46, !dbg !5961
  %47 = load i32, i32* %hdiv.addr, align 4, !dbg !5962
  %div25 = udiv i32 %mul24, %47, !dbg !5963
  store i32 %div25, i32* %value, align 4, !dbg !5964
  store i32 0, i32* %tmp26, align 4, !dbg !5965
  %48 = load i32, i32* %tmp26, align 4, !dbg !5968
  %49 = load i8*, i8** %regbase.addr, align 8, !dbg !5969
  %50 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5970
  %h_blank_end_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %50, i32 0, i32 3, !dbg !5971
  %51 = load %struct.vga_regset*, %struct.vga_regset** %h_blank_end_regs, align 8, !dbg !5971
  %52 = load i32, i32* %value, align 4, !dbg !5972
  %div27 = udiv i32 %52, 8, !dbg !5973
  %sub28 = sub i32 %div27, 1, !dbg !5974
  %53 = load i32, i32* %hborder.addr, align 4, !dbg !5975
  %sub29 = sub i32 %sub28, %53, !dbg !5976
  call void @svga_wcrt_multi(i8* %49, %struct.vga_regset* %51, i32 %sub29) #4, !dbg !5977
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5978
  %xres30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 0, !dbg !5979
  %55 = load i32, i32* %xres30, align 4, !dbg !5979
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5980
  %right_margin31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 19, !dbg !5981
  %57 = load i32, i32* %right_margin31, align 4, !dbg !5981
  %add32 = add i32 %55, %57, !dbg !5982
  store i32 %add32, i32* %value, align 4, !dbg !5983
  %58 = load i32, i32* %value, align 4, !dbg !5984
  %59 = load i32, i32* %hmul.addr, align 4, !dbg !5985
  %mul33 = mul i32 %58, %59, !dbg !5986
  %60 = load i32, i32* %hdiv.addr, align 4, !dbg !5987
  %div34 = udiv i32 %mul33, %60, !dbg !5988
  store i32 %div34, i32* %value, align 4, !dbg !5989
  store i32 0, i32* %tmp35, align 4, !dbg !5990
  %61 = load i32, i32* %tmp35, align 4, !dbg !5993
  %62 = load i8*, i8** %regbase.addr, align 8, !dbg !5994
  %63 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !5995
  %h_sync_start_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %63, i32 0, i32 4, !dbg !5996
  %64 = load %struct.vga_regset*, %struct.vga_regset** %h_sync_start_regs, align 8, !dbg !5996
  %65 = load i32, i32* %value, align 4, !dbg !5997
  %div36 = udiv i32 %65, 8, !dbg !5998
  call void @svga_wcrt_multi(i8* %62, %struct.vga_regset* %64, i32 %div36) #4, !dbg !5999
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6000
  %xres37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 0, !dbg !6001
  %67 = load i32, i32* %xres37, align 4, !dbg !6001
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6002
  %right_margin38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 19, !dbg !6003
  %69 = load i32, i32* %right_margin38, align 4, !dbg !6003
  %add39 = add i32 %67, %69, !dbg !6004
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6005
  %hsync_len40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 22, !dbg !6006
  %71 = load i32, i32* %hsync_len40, align 4, !dbg !6006
  %add41 = add i32 %add39, %71, !dbg !6007
  store i32 %add41, i32* %value, align 4, !dbg !6008
  %72 = load i32, i32* %value, align 4, !dbg !6009
  %73 = load i32, i32* %hmul.addr, align 4, !dbg !6010
  %mul42 = mul i32 %72, %73, !dbg !6011
  %74 = load i32, i32* %hdiv.addr, align 4, !dbg !6012
  %div43 = udiv i32 %mul42, %74, !dbg !6013
  store i32 %div43, i32* %value, align 4, !dbg !6014
  store i32 0, i32* %tmp44, align 4, !dbg !6015
  %75 = load i32, i32* %tmp44, align 4, !dbg !6018
  %76 = load i8*, i8** %regbase.addr, align 8, !dbg !6019
  %77 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !6020
  %h_sync_end_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %77, i32 0, i32 5, !dbg !6021
  %78 = load %struct.vga_regset*, %struct.vga_regset** %h_sync_end_regs, align 8, !dbg !6021
  %79 = load i32, i32* %value, align 4, !dbg !6022
  %div45 = udiv i32 %79, 8, !dbg !6023
  call void @svga_wcrt_multi(i8* %76, %struct.vga_regset* %78, i32 %div45) #4, !dbg !6024
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6025
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 1, !dbg !6026
  %81 = load i32, i32* %yres, align 4, !dbg !6026
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6027
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 20, !dbg !6028
  %83 = load i32, i32* %upper_margin, align 4, !dbg !6028
  %add46 = add i32 %81, %83, !dbg !6029
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6030
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 21, !dbg !6031
  %85 = load i32, i32* %lower_margin, align 4, !dbg !6031
  %add47 = add i32 %add46, %85, !dbg !6032
  %86 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6033
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %86, i32 0, i32 23, !dbg !6034
  %87 = load i32, i32* %vsync_len, align 4, !dbg !6034
  %add48 = add i32 %add47, %87, !dbg !6035
  store i32 %add48, i32* %value, align 4, !dbg !6036
  %88 = load i32, i32* %value, align 4, !dbg !6037
  %89 = load i32, i32* %vmul.addr, align 4, !dbg !6038
  %mul49 = mul i32 %88, %89, !dbg !6039
  %90 = load i32, i32* %vdiv.addr, align 4, !dbg !6040
  %div50 = udiv i32 %mul49, %90, !dbg !6041
  store i32 %div50, i32* %value, align 4, !dbg !6042
  store i32 0, i32* %tmp51, align 4, !dbg !6043
  %91 = load i32, i32* %tmp51, align 4, !dbg !6046
  %92 = load i8*, i8** %regbase.addr, align 8, !dbg !6047
  %93 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !6048
  %v_total_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %93, i32 0, i32 6, !dbg !6049
  %94 = load %struct.vga_regset*, %struct.vga_regset** %v_total_regs, align 8, !dbg !6049
  %95 = load i32, i32* %value, align 4, !dbg !6050
  %sub52 = sub i32 %95, 2, !dbg !6051
  call void @svga_wcrt_multi(i8* %92, %struct.vga_regset* %94, i32 %sub52) #4, !dbg !6052
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6053
  %yres53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 1, !dbg !6054
  %97 = load i32, i32* %yres53, align 4, !dbg !6054
  store i32 %97, i32* %value, align 4, !dbg !6055
  %98 = load i32, i32* %value, align 4, !dbg !6056
  %99 = load i32, i32* %vmul.addr, align 4, !dbg !6057
  %mul54 = mul i32 %98, %99, !dbg !6058
  %100 = load i32, i32* %vdiv.addr, align 4, !dbg !6059
  %div55 = udiv i32 %mul54, %100, !dbg !6060
  store i32 %div55, i32* %value, align 4, !dbg !6061
  store i32 0, i32* %tmp56, align 4, !dbg !6062
  %101 = load i32, i32* %tmp56, align 4, !dbg !6065
  %102 = load i8*, i8** %regbase.addr, align 8, !dbg !6066
  %103 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !6067
  %v_display_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %103, i32 0, i32 7, !dbg !6068
  %104 = load %struct.vga_regset*, %struct.vga_regset** %v_display_regs, align 8, !dbg !6068
  %105 = load i32, i32* %value, align 4, !dbg !6069
  %sub57 = sub i32 %105, 1, !dbg !6070
  call void @svga_wcrt_multi(i8* %102, %struct.vga_regset* %104, i32 %sub57) #4, !dbg !6071
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6072
  %yres58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 1, !dbg !6073
  %107 = load i32, i32* %yres58, align 4, !dbg !6073
  store i32 %107, i32* %value, align 4, !dbg !6074
  %108 = load i32, i32* %value, align 4, !dbg !6075
  %109 = load i32, i32* %vmul.addr, align 4, !dbg !6076
  %mul59 = mul i32 %108, %109, !dbg !6077
  %110 = load i32, i32* %vdiv.addr, align 4, !dbg !6078
  %div60 = udiv i32 %mul59, %110, !dbg !6079
  store i32 %div60, i32* %value, align 4, !dbg !6080
  store i32 0, i32* %tmp61, align 4, !dbg !6081
  %111 = load i32, i32* %tmp61, align 4, !dbg !6084
  %112 = load i8*, i8** %regbase.addr, align 8, !dbg !6085
  %113 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !6086
  %v_blank_start_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %113, i32 0, i32 8, !dbg !6087
  %114 = load %struct.vga_regset*, %struct.vga_regset** %v_blank_start_regs, align 8, !dbg !6087
  %115 = load i32, i32* %value, align 4, !dbg !6088
  call void @svga_wcrt_multi(i8* %112, %struct.vga_regset* %114, i32 %115) #4, !dbg !6089
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6090
  %yres62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %116, i32 0, i32 1, !dbg !6091
  %117 = load i32, i32* %yres62, align 4, !dbg !6091
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6092
  %upper_margin63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 20, !dbg !6093
  %119 = load i32, i32* %upper_margin63, align 4, !dbg !6093
  %add64 = add i32 %117, %119, !dbg !6094
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6095
  %lower_margin65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 21, !dbg !6096
  %121 = load i32, i32* %lower_margin65, align 4, !dbg !6096
  %add66 = add i32 %add64, %121, !dbg !6097
  %122 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6098
  %vsync_len67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %122, i32 0, i32 23, !dbg !6099
  %123 = load i32, i32* %vsync_len67, align 4, !dbg !6099
  %add68 = add i32 %add66, %123, !dbg !6100
  store i32 %add68, i32* %value, align 4, !dbg !6101
  %124 = load i32, i32* %value, align 4, !dbg !6102
  %125 = load i32, i32* %vmul.addr, align 4, !dbg !6103
  %mul69 = mul i32 %124, %125, !dbg !6104
  %126 = load i32, i32* %vdiv.addr, align 4, !dbg !6105
  %div70 = udiv i32 %mul69, %126, !dbg !6106
  store i32 %div70, i32* %value, align 4, !dbg !6107
  store i32 0, i32* %tmp71, align 4, !dbg !6108
  %127 = load i32, i32* %tmp71, align 4, !dbg !6111
  %128 = load i8*, i8** %regbase.addr, align 8, !dbg !6112
  %129 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !6113
  %v_blank_end_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %129, i32 0, i32 9, !dbg !6114
  %130 = load %struct.vga_regset*, %struct.vga_regset** %v_blank_end_regs, align 8, !dbg !6114
  %131 = load i32, i32* %value, align 4, !dbg !6115
  %sub72 = sub i32 %131, 2, !dbg !6116
  call void @svga_wcrt_multi(i8* %128, %struct.vga_regset* %130, i32 %sub72) #4, !dbg !6117
  %132 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6118
  %yres73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %132, i32 0, i32 1, !dbg !6119
  %133 = load i32, i32* %yres73, align 4, !dbg !6119
  %134 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6120
  %lower_margin74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %134, i32 0, i32 21, !dbg !6121
  %135 = load i32, i32* %lower_margin74, align 4, !dbg !6121
  %add75 = add i32 %133, %135, !dbg !6122
  store i32 %add75, i32* %value, align 4, !dbg !6123
  %136 = load i32, i32* %value, align 4, !dbg !6124
  %137 = load i32, i32* %vmul.addr, align 4, !dbg !6125
  %mul76 = mul i32 %136, %137, !dbg !6126
  %138 = load i32, i32* %vdiv.addr, align 4, !dbg !6127
  %div77 = udiv i32 %mul76, %138, !dbg !6128
  store i32 %div77, i32* %value, align 4, !dbg !6129
  store i32 0, i32* %tmp78, align 4, !dbg !6130
  %139 = load i32, i32* %tmp78, align 4, !dbg !6133
  %140 = load i8*, i8** %regbase.addr, align 8, !dbg !6134
  %141 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !6135
  %v_sync_start_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %141, i32 0, i32 10, !dbg !6136
  %142 = load %struct.vga_regset*, %struct.vga_regset** %v_sync_start_regs, align 8, !dbg !6136
  %143 = load i32, i32* %value, align 4, !dbg !6137
  call void @svga_wcrt_multi(i8* %140, %struct.vga_regset* %142, i32 %143) #4, !dbg !6138
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6139
  %yres79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 1, !dbg !6140
  %145 = load i32, i32* %yres79, align 4, !dbg !6140
  %146 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6141
  %lower_margin80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %146, i32 0, i32 21, !dbg !6142
  %147 = load i32, i32* %lower_margin80, align 4, !dbg !6142
  %add81 = add i32 %145, %147, !dbg !6143
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6144
  %vsync_len82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 23, !dbg !6145
  %149 = load i32, i32* %vsync_len82, align 4, !dbg !6145
  %add83 = add i32 %add81, %149, !dbg !6146
  store i32 %add83, i32* %value, align 4, !dbg !6147
  %150 = load i32, i32* %value, align 4, !dbg !6148
  %151 = load i32, i32* %vmul.addr, align 4, !dbg !6149
  %mul84 = mul i32 %150, %151, !dbg !6150
  %152 = load i32, i32* %vdiv.addr, align 4, !dbg !6151
  %div85 = udiv i32 %mul84, %152, !dbg !6152
  store i32 %div85, i32* %value, align 4, !dbg !6153
  store i32 0, i32* %tmp86, align 4, !dbg !6154
  %153 = load i32, i32* %tmp86, align 4, !dbg !6157
  %154 = load i8*, i8** %regbase.addr, align 8, !dbg !6158
  %155 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %tm.addr, align 8, !dbg !6159
  %v_sync_end_regs = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %155, i32 0, i32 11, !dbg !6160
  %156 = load %struct.vga_regset*, %struct.vga_regset** %v_sync_end_regs, align 8, !dbg !6160
  %157 = load i32, i32* %value, align 4, !dbg !6161
  call void @svga_wcrt_multi(i8* %154, %struct.vga_regset* %156, i32 %157) #4, !dbg !6162
  %158 = load i8*, i8** %regbase.addr, align 8, !dbg !6163
  %call = call zeroext i8 @vga_r(i8* %158, i16 zeroext 972) #4, !dbg !6164
  store i8 %call, i8* %regval, align 1, !dbg !6165
  %159 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6166
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %159, i32 0, i32 24, !dbg !6168
  %160 = load i32, i32* %sync, align 4, !dbg !6168
  %and = and i32 %160, 1, !dbg !6169
  %tobool = icmp ne i32 %and, 0, !dbg !6169
  br i1 %tobool, label %if.then, label %if.else, !dbg !6170

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp87, align 4, !dbg !6171
  %161 = load i32, i32* %tmp87, align 4, !dbg !6175
  %162 = load i8, i8* %regval, align 1, !dbg !6176
  %conv = zext i8 %162 to i32, !dbg !6176
  %and88 = and i32 %conv, -129, !dbg !6177
  %conv89 = trunc i32 %and88 to i8, !dbg !6176
  store i8 %conv89, i8* %regval, align 1, !dbg !6178
  br label %if.end, !dbg !6179

if.else:                                          ; preds = %entry
  store i32 0, i32* %tmp90, align 4, !dbg !6180
  %163 = load i32, i32* %tmp90, align 4, !dbg !6184
  %164 = load i8, i8* %regval, align 1, !dbg !6185
  %conv91 = zext i8 %164 to i32, !dbg !6185
  %or = or i32 %conv91, 128, !dbg !6186
  %conv92 = trunc i32 %or to i8, !dbg !6185
  store i8 %conv92, i8* %regval, align 1, !dbg !6187
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %165 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6188
  %sync93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %165, i32 0, i32 24, !dbg !6190
  %166 = load i32, i32* %sync93, align 4, !dbg !6190
  %and94 = and i32 %166, 2, !dbg !6191
  %tobool95 = icmp ne i32 %and94, 0, !dbg !6191
  br i1 %tobool95, label %if.then96, label %if.else101, !dbg !6192

if.then96:                                        ; preds = %if.end
  store i32 0, i32* %tmp97, align 4, !dbg !6193
  %167 = load i32, i32* %tmp97, align 4, !dbg !6197
  %168 = load i8, i8* %regval, align 1, !dbg !6198
  %conv98 = zext i8 %168 to i32, !dbg !6198
  %and99 = and i32 %conv98, -65, !dbg !6199
  %conv100 = trunc i32 %and99 to i8, !dbg !6198
  store i8 %conv100, i8* %regval, align 1, !dbg !6200
  br label %if.end106, !dbg !6201

if.else101:                                       ; preds = %if.end
  store i32 0, i32* %tmp102, align 4, !dbg !6202
  %169 = load i32, i32* %tmp102, align 4, !dbg !6206
  %170 = load i8, i8* %regval, align 1, !dbg !6207
  %conv103 = zext i8 %170 to i32, !dbg !6207
  %or104 = or i32 %conv103, 64, !dbg !6208
  %conv105 = trunc i32 %or104 to i8, !dbg !6207
  store i8 %conv105, i8* %regval, align 1, !dbg !6209
  br label %if.end106

if.end106:                                        ; preds = %if.else101, %if.then96
  %171 = load i8*, i8** %regbase.addr, align 8, !dbg !6210
  %172 = load i8, i8* %regval, align 1, !dbg !6211
  call void @vga_w(i8* %171, i16 zeroext 962, i8 zeroext %172) #4, !dbg !6212
  ret void, !dbg !6213
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @svga_match_format(%struct.svga_fb_format* %frm, %struct.fb_var_screeninfo* %var, %struct.fb_fix_screeninfo* %fix) #0 !dbg !6214 {
entry:
  %frm.addr = alloca %struct.svga_fb_format*, align 8
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  %fix.addr = alloca %struct.fb_fix_screeninfo*, align 8
  %i = alloca i32, align 4
  store %struct.svga_fb_format* %frm, %struct.svga_fb_format** %frm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.svga_fb_format** %frm.addr, metadata !6233, metadata !DIExpression()), !dbg !6234
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !6235, metadata !DIExpression()), !dbg !6236
  store %struct.fb_fix_screeninfo* %fix, %struct.fb_fix_screeninfo** %fix.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_fix_screeninfo** %fix.addr, metadata !6237, metadata !DIExpression()), !dbg !6238
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6239, metadata !DIExpression()), !dbg !6240
  %0 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6241
  %1 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6242
  %call = call i32 @match_format(%struct.svga_fb_format* %0, %struct.fb_var_screeninfo* %1) #4, !dbg !6243
  store i32 %call, i32* %i, align 4, !dbg !6240
  %2 = load i32, i32* %i, align 4, !dbg !6244
  %cmp = icmp sge i32 %2, 0, !dbg !6246
  br i1 %cmp, label %if.then, label %if.end31, !dbg !6247

if.then:                                          ; preds = %entry
  %3 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6248
  %4 = load i32, i32* %i, align 4, !dbg !6250
  %idxprom = sext i32 %4 to i64, !dbg !6248
  %arrayidx = getelementptr %struct.svga_fb_format, %struct.svga_fb_format* %3, i64 %idxprom, !dbg !6248
  %bits_per_pixel = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %arrayidx, i32 0, i32 0, !dbg !6251
  %5 = load i32, i32* %bits_per_pixel, align 4, !dbg !6251
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6252
  %bits_per_pixel1 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 6, !dbg !6253
  store i32 %5, i32* %bits_per_pixel1, align 4, !dbg !6254
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6255
  %red = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 8, !dbg !6256
  %8 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6257
  %9 = load i32, i32* %i, align 4, !dbg !6258
  %idxprom2 = sext i32 %9 to i64, !dbg !6257
  %arrayidx3 = getelementptr %struct.svga_fb_format, %struct.svga_fb_format* %8, i64 %idxprom2, !dbg !6257
  %red4 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %arrayidx3, i32 0, i32 1, !dbg !6259
  %10 = bitcast %struct.fb_bitfield* %red to i8*, !dbg !6259
  %11 = bitcast %struct.fb_bitfield* %red4 to i8*, !dbg !6259
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 12, i1 false), !dbg !6259
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6260
  %green = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 9, !dbg !6261
  %13 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6262
  %14 = load i32, i32* %i, align 4, !dbg !6263
  %idxprom5 = sext i32 %14 to i64, !dbg !6262
  %arrayidx6 = getelementptr %struct.svga_fb_format, %struct.svga_fb_format* %13, i64 %idxprom5, !dbg !6262
  %green7 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %arrayidx6, i32 0, i32 2, !dbg !6264
  %15 = bitcast %struct.fb_bitfield* %green to i8*, !dbg !6264
  %16 = bitcast %struct.fb_bitfield* %green7 to i8*, !dbg !6264
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false), !dbg !6264
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6265
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 10, !dbg !6266
  %18 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6267
  %19 = load i32, i32* %i, align 4, !dbg !6268
  %idxprom8 = sext i32 %19 to i64, !dbg !6267
  %arrayidx9 = getelementptr %struct.svga_fb_format, %struct.svga_fb_format* %18, i64 %idxprom8, !dbg !6267
  %blue10 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %arrayidx9, i32 0, i32 3, !dbg !6269
  %20 = bitcast %struct.fb_bitfield* %blue to i8*, !dbg !6269
  %21 = bitcast %struct.fb_bitfield* %blue10 to i8*, !dbg !6269
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false), !dbg !6269
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6270
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 11, !dbg !6271
  %23 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6272
  %24 = load i32, i32* %i, align 4, !dbg !6273
  %idxprom11 = sext i32 %24 to i64, !dbg !6272
  %arrayidx12 = getelementptr %struct.svga_fb_format, %struct.svga_fb_format* %23, i64 %idxprom11, !dbg !6272
  %transp13 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %arrayidx12, i32 0, i32 4, !dbg !6274
  %25 = bitcast %struct.fb_bitfield* %transp to i8*, !dbg !6274
  %26 = bitcast %struct.fb_bitfield* %transp13 to i8*, !dbg !6274
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 12, i1 false), !dbg !6274
  %27 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6275
  %28 = load i32, i32* %i, align 4, !dbg !6276
  %idxprom14 = sext i32 %28 to i64, !dbg !6275
  %arrayidx15 = getelementptr %struct.svga_fb_format, %struct.svga_fb_format* %27, i64 %idxprom14, !dbg !6275
  %nonstd = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %arrayidx15, i32 0, i32 5, !dbg !6277
  %29 = load i32, i32* %nonstd, align 4, !dbg !6277
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6278
  %nonstd16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 12, !dbg !6279
  store i32 %29, i32* %nonstd16, align 4, !dbg !6280
  %31 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %fix.addr, align 8, !dbg !6281
  %cmp17 = icmp ne %struct.fb_fix_screeninfo* %31, null, !dbg !6283
  br i1 %cmp17, label %if.then18, label %if.end, !dbg !6284

if.then18:                                        ; preds = %if.then
  %32 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6285
  %33 = load i32, i32* %i, align 4, !dbg !6287
  %idxprom19 = sext i32 %33 to i64, !dbg !6285
  %arrayidx20 = getelementptr %struct.svga_fb_format, %struct.svga_fb_format* %32, i64 %idxprom19, !dbg !6285
  %type = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %arrayidx20, i32 0, i32 6, !dbg !6288
  %34 = load i32, i32* %type, align 4, !dbg !6288
  %35 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %fix.addr, align 8, !dbg !6289
  %type21 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %35, i32 0, i32 3, !dbg !6290
  store i32 %34, i32* %type21, align 4, !dbg !6291
  %36 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6292
  %37 = load i32, i32* %i, align 4, !dbg !6293
  %idxprom22 = sext i32 %37 to i64, !dbg !6292
  %arrayidx23 = getelementptr %struct.svga_fb_format, %struct.svga_fb_format* %36, i64 %idxprom22, !dbg !6292
  %type_aux = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %arrayidx23, i32 0, i32 7, !dbg !6294
  %38 = load i32, i32* %type_aux, align 4, !dbg !6294
  %39 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %fix.addr, align 8, !dbg !6295
  %type_aux24 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %39, i32 0, i32 4, !dbg !6296
  store i32 %38, i32* %type_aux24, align 8, !dbg !6297
  %40 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6298
  %41 = load i32, i32* %i, align 4, !dbg !6299
  %idxprom25 = sext i32 %41 to i64, !dbg !6298
  %arrayidx26 = getelementptr %struct.svga_fb_format, %struct.svga_fb_format* %40, i64 %idxprom25, !dbg !6298
  %visual = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %arrayidx26, i32 0, i32 8, !dbg !6300
  %42 = load i32, i32* %visual, align 4, !dbg !6300
  %43 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %fix.addr, align 8, !dbg !6301
  %visual27 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %43, i32 0, i32 5, !dbg !6302
  store i32 %42, i32* %visual27, align 4, !dbg !6303
  %44 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6304
  %45 = load i32, i32* %i, align 4, !dbg !6305
  %idxprom28 = sext i32 %45 to i64, !dbg !6304
  %arrayidx29 = getelementptr %struct.svga_fb_format, %struct.svga_fb_format* %44, i64 %idxprom28, !dbg !6304
  %xpanstep = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %arrayidx29, i32 0, i32 9, !dbg !6306
  %46 = load i32, i32* %xpanstep, align 4, !dbg !6306
  %conv = trunc i32 %46 to i16, !dbg !6304
  %47 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %fix.addr, align 8, !dbg !6307
  %xpanstep30 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %47, i32 0, i32 6, !dbg !6308
  store i16 %conv, i16* %xpanstep30, align 8, !dbg !6309
  br label %if.end, !dbg !6310

if.end:                                           ; preds = %if.then18, %if.then
  br label %if.end31, !dbg !6311

if.end31:                                         ; preds = %if.end, %entry
  %48 = load i32, i32* %i, align 4, !dbg !6312
  ret i32 %48, !dbg !6313
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @match_format(%struct.svga_fb_format* %frm, %struct.fb_var_screeninfo* %var) #0 !dbg !6314 {
entry:
  %retval = alloca i32, align 4
  %frm.addr = alloca %struct.svga_fb_format*, align 8
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  %i = alloca i32, align 4
  %stored = alloca i32, align 4
  store %struct.svga_fb_format* %frm, %struct.svga_fb_format** %frm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.svga_fb_format** %frm.addr, metadata !6317, metadata !DIExpression()), !dbg !6318
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !6319, metadata !DIExpression()), !dbg !6320
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6321, metadata !DIExpression()), !dbg !6322
  store i32 0, i32* %i, align 4, !dbg !6322
  call void @llvm.dbg.declare(metadata i32* %stored, metadata !6323, metadata !DIExpression()), !dbg !6324
  store i32 -22, i32* %stored, align 4, !dbg !6324
  br label %while.cond, !dbg !6325

while.cond:                                       ; preds = %if.end29, %entry
  %0 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6326
  %bits_per_pixel = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %0, i32 0, i32 0, !dbg !6327
  %1 = load i32, i32* %bits_per_pixel, align 4, !dbg !6327
  %cmp = icmp ne i32 %1, 65535, !dbg !6328
  br i1 %cmp, label %while.body, label %while.end, !dbg !6325

while.body:                                       ; preds = %while.cond
  %2 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6329
  %bits_per_pixel1 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %2, i32 0, i32 6, !dbg !6332
  %3 = load i32, i32* %bits_per_pixel1, align 4, !dbg !6332
  %4 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6333
  %bits_per_pixel2 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %4, i32 0, i32 0, !dbg !6334
  %5 = load i32, i32* %bits_per_pixel2, align 4, !dbg !6334
  %cmp3 = icmp eq i32 %3, %5, !dbg !6335
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !6336

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6337
  %red = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 8, !dbg !6338
  %length = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red, i32 0, i32 1, !dbg !6339
  %7 = load i32, i32* %length, align 4, !dbg !6339
  %8 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6340
  %red4 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %8, i32 0, i32 1, !dbg !6341
  %length5 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red4, i32 0, i32 1, !dbg !6342
  %9 = load i32, i32* %length5, align 4, !dbg !6342
  %cmp6 = icmp ule i32 %7, %9, !dbg !6343
  br i1 %cmp6, label %land.lhs.true7, label %if.end, !dbg !6344

land.lhs.true7:                                   ; preds = %land.lhs.true
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6345
  %green = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 9, !dbg !6346
  %length8 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green, i32 0, i32 1, !dbg !6347
  %11 = load i32, i32* %length8, align 4, !dbg !6347
  %12 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6348
  %green9 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %12, i32 0, i32 2, !dbg !6349
  %length10 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green9, i32 0, i32 1, !dbg !6350
  %13 = load i32, i32* %length10, align 4, !dbg !6350
  %cmp11 = icmp ule i32 %11, %13, !dbg !6351
  br i1 %cmp11, label %land.lhs.true12, label %if.end, !dbg !6352

land.lhs.true12:                                  ; preds = %land.lhs.true7
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6353
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 10, !dbg !6354
  %length13 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue, i32 0, i32 1, !dbg !6355
  %15 = load i32, i32* %length13, align 4, !dbg !6355
  %16 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6356
  %blue14 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %16, i32 0, i32 3, !dbg !6357
  %length15 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue14, i32 0, i32 1, !dbg !6358
  %17 = load i32, i32* %length15, align 4, !dbg !6358
  %cmp16 = icmp ule i32 %15, %17, !dbg !6359
  br i1 %cmp16, label %land.lhs.true17, label %if.end, !dbg !6360

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6361
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 11, !dbg !6362
  %length18 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp, i32 0, i32 1, !dbg !6363
  %19 = load i32, i32* %length18, align 4, !dbg !6363
  %20 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6364
  %transp19 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %20, i32 0, i32 4, !dbg !6365
  %length20 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp19, i32 0, i32 1, !dbg !6366
  %21 = load i32, i32* %length20, align 4, !dbg !6366
  %cmp21 = icmp ule i32 %19, %21, !dbg !6367
  br i1 %cmp21, label %land.lhs.true22, label %if.end, !dbg !6368

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6369
  %nonstd = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 12, !dbg !6370
  %23 = load i32, i32* %nonstd, align 4, !dbg !6370
  %24 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6371
  %nonstd23 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %24, i32 0, i32 5, !dbg !6372
  %25 = load i32, i32* %nonstd23, align 4, !dbg !6372
  %cmp24 = icmp eq i32 %23, %25, !dbg !6373
  br i1 %cmp24, label %if.then, label %if.end, !dbg !6374

if.then:                                          ; preds = %land.lhs.true22
  %26 = load i32, i32* %i, align 4, !dbg !6375
  store i32 %26, i32* %retval, align 4, !dbg !6376
  br label %return, !dbg !6376

if.end:                                           ; preds = %land.lhs.true22, %land.lhs.true17, %land.lhs.true12, %land.lhs.true7, %land.lhs.true, %while.body
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6377
  %bits_per_pixel25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 6, !dbg !6379
  %28 = load i32, i32* %bits_per_pixel25, align 4, !dbg !6379
  %29 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6380
  %bits_per_pixel26 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %29, i32 0, i32 0, !dbg !6381
  %30 = load i32, i32* %bits_per_pixel26, align 4, !dbg !6381
  %cmp27 = icmp eq i32 %28, %30, !dbg !6382
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6383

if.then28:                                        ; preds = %if.end
  %31 = load i32, i32* %i, align 4, !dbg !6384
  store i32 %31, i32* %stored, align 4, !dbg !6385
  br label %if.end29, !dbg !6386

if.end29:                                         ; preds = %if.then28, %if.end
  %32 = load i32, i32* %i, align 4, !dbg !6387
  %inc = add i32 %32, 1, !dbg !6387
  store i32 %inc, i32* %i, align 4, !dbg !6387
  %33 = load %struct.svga_fb_format*, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6388
  %incdec.ptr = getelementptr %struct.svga_fb_format, %struct.svga_fb_format* %33, i32 1, !dbg !6388
  store %struct.svga_fb_format* %incdec.ptr, %struct.svga_fb_format** %frm.addr, align 8, !dbg !6388
  br label %while.cond, !dbg !6325, !llvm.loop !6389

while.end:                                        ; preds = %while.cond
  %34 = load i32, i32* %stored, align 4, !dbg !6391
  store i32 %34, i32* %retval, align 4, !dbg !6392
  br label %return, !dbg !6392

return:                                           ; preds = %while.end, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !6393
  ret i32 %35, !dbg !6393
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_w_fast(i8* %regbase, i16 zeroext %port, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !6394 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !6397, metadata !DIExpression()), !dbg !6398
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6399, metadata !DIExpression()), !dbg !6400
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6401, metadata !DIExpression()), !dbg !6402
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6403, metadata !DIExpression()), !dbg !6404
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !6405
  %tobool = icmp ne i8* %0, null, !dbg !6405
  br i1 %tobool, label %if.then, label %if.else, !dbg !6407

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !6408
  %2 = load i16, i16* %port.addr, align 2, !dbg !6409
  %3 = load i8, i8* %reg.addr, align 1, !dbg !6410
  %4 = load i8, i8* %val.addr, align 1, !dbg !6411
  call void @vga_mm_w_fast(i8* %1, i16 zeroext %2, i8 zeroext %3, i8 zeroext %4) #4, !dbg !6412
  br label %if.end, !dbg !6412

if.else:                                          ; preds = %entry
  %5 = load i16, i16* %port.addr, align 2, !dbg !6413
  %6 = load i8, i8* %reg.addr, align 1, !dbg !6414
  %7 = load i8, i8* %val.addr, align 1, !dbg !6415
  call void @vga_io_w_fast(i16 zeroext %5, i8 zeroext %6, i8 zeroext %7) #4, !dbg !6416
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6417
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_mm_w_fast(i8* %regbase, i16 zeroext %port, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !6418 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !6419, metadata !DIExpression()), !dbg !6420
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6421, metadata !DIExpression()), !dbg !6422
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6423, metadata !DIExpression()), !dbg !6424
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6425, metadata !DIExpression()), !dbg !6426
  %0 = load i8, i8* %val.addr, align 1, !dbg !6427
  %conv = zext i8 %0 to i32, !dbg !6427
  %shl = shl i32 %conv, 8, !dbg !6427
  %1 = load i8, i8* %reg.addr, align 1, !dbg !6427
  %conv1 = zext i8 %1 to i32, !dbg !6427
  %or = or i32 %shl, %conv1, !dbg !6427
  %conv2 = trunc i32 %or to i16, !dbg !6427
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !6428
  %3 = load i16, i16* %port.addr, align 2, !dbg !6429
  %conv3 = zext i16 %3 to i32, !dbg !6429
  %idx.ext = sext i32 %conv3 to i64, !dbg !6430
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext, !dbg !6430
  call void @writew(i16 zeroext %conv2, i8* %add.ptr) #4, !dbg !6431
  ret void, !dbg !6432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_io_w_fast(i16 zeroext %port, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !6433 {
entry:
  %port.addr = alloca i16, align 2
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6436, metadata !DIExpression()), !dbg !6437
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6438, metadata !DIExpression()), !dbg !6439
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6440, metadata !DIExpression()), !dbg !6441
  %0 = load i8, i8* %val.addr, align 1, !dbg !6442
  %conv = zext i8 %0 to i32, !dbg !6442
  %shl = shl i32 %conv, 8, !dbg !6442
  %1 = load i8, i8* %reg.addr, align 1, !dbg !6442
  %conv1 = zext i8 %1 to i32, !dbg !6442
  %or = or i32 %shl, %conv1, !dbg !6442
  %conv2 = trunc i32 %or to i16, !dbg !6442
  %2 = load i16, i16* %port.addr, align 2, !dbg !6443
  %conv3 = zext i16 %2 to i32, !dbg !6443
  call void @outw(i16 zeroext %conv2, i32 %conv3) #4, !dbg !6444
  ret void, !dbg !6445
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writew(i16 zeroext %val, i8* %addr) #0 !dbg !6446 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca i8*, align 8
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !6447, metadata !DIExpression()), !dbg !6448
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6449, metadata !DIExpression()), !dbg !6448
  %0 = load i16, i16* %val.addr, align 2, !dbg !6448
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !6448
  %2 = bitcast i8* %1 to i16*, !dbg !6448
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %2) #6, !dbg !6448, !srcloc !6450
  ret void, !dbg !6448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outw(i16 zeroext %value, i32 %port) #0 !dbg !6451 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i32, align 4
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !6454, metadata !DIExpression()), !dbg !6455
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6456, metadata !DIExpression()), !dbg !6455
  %0 = load i16, i16* %value.addr, align 2, !dbg !6455
  %1 = load i32, i32* %port.addr, align 4, !dbg !6455
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %1) #6, !dbg !6455, !srcloc !6457
  ret void, !dbg !6455
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_mm_r(i8* %regbase, i16 zeroext %port) #0 !dbg !6458 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !6459, metadata !DIExpression()), !dbg !6460
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6461, metadata !DIExpression()), !dbg !6462
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !6463
  %1 = load i16, i16* %port.addr, align 2, !dbg !6464
  %conv = zext i16 %1 to i32, !dbg !6464
  %idx.ext = sext i32 %conv to i64, !dbg !6465
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !6465
  %call = call zeroext i8 @readb(i8* %add.ptr) #4, !dbg !6466
  ret i8 %call, !dbg !6467
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_io_r(i16 zeroext %port) #0 !dbg !6468 {
entry:
  %port.addr = alloca i16, align 2
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6471, metadata !DIExpression()), !dbg !6472
  %0 = load i16, i16* %port.addr, align 2, !dbg !6473
  %conv = zext i16 %0 to i32, !dbg !6473
  %call = call zeroext i8 @inb_p(i32 %conv) #4, !dbg !6474
  ret i8 %call, !dbg !6475
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #0 !dbg !6476 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6479, metadata !DIExpression()), !dbg !6480
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !6481, metadata !DIExpression()), !dbg !6480
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !6480
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #6, !dbg !6480, !srcloc !6482
  store i8 %1, i8* %ret, align 1, !dbg !6480
  %2 = load i8, i8* %ret, align 1, !dbg !6480
  ret i8 %2, !dbg !6480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb_p(i32 %port) #0 !dbg !6483 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6486, metadata !DIExpression()), !dbg !6487
  call void @llvm.dbg.declare(metadata i8* %value, metadata !6488, metadata !DIExpression()), !dbg !6487
  %0 = load i32, i32* %port.addr, align 4, !dbg !6487
  %call = call zeroext i8 @inb(i32 %0) #4, !dbg !6487
  store i8 %call, i8* %value, align 1, !dbg !6487
  call void @slow_down_io() #4, !dbg !6487
  %1 = load i8, i8* %value, align 1, !dbg !6487
  ret i8 %1, !dbg !6487
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #0 !dbg !6489 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6490, metadata !DIExpression()), !dbg !6491
  call void @llvm.dbg.declare(metadata i8* %value, metadata !6492, metadata !DIExpression()), !dbg !6491
  %0 = load i32, i32* %port.addr, align 4, !dbg !6491
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !6491, !srcloc !6493
  store i8 %1, i8* %value, align 1, !dbg !6491
  %2 = load i8, i8* %value, align 1, !dbg !6491
  ret i8 %2, !dbg !6491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @slow_down_io() #0 !dbg !6494 {
entry:
  %0 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 0), align 8, !dbg !6496
  call void %0() #4, !dbg !6497
  ret void, !dbg !6498
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_mm_w(i8* %regbase, i16 zeroext %port, i8 zeroext %val) #0 !dbg !6499 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !6500, metadata !DIExpression()), !dbg !6501
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6502, metadata !DIExpression()), !dbg !6503
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6504, metadata !DIExpression()), !dbg !6505
  %0 = load i8, i8* %val.addr, align 1, !dbg !6506
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !6507
  %2 = load i16, i16* %port.addr, align 2, !dbg !6508
  %conv = zext i16 %2 to i32, !dbg !6508
  %idx.ext = sext i32 %conv to i64, !dbg !6509
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !6509
  call void @writeb(i8 zeroext %0, i8* %add.ptr) #4, !dbg !6510
  ret void, !dbg !6511
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_io_w(i16 zeroext %port, i8 zeroext %val) #0 !dbg !6512 {
entry:
  %port.addr = alloca i16, align 2
  %val.addr = alloca i8, align 1
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6515, metadata !DIExpression()), !dbg !6516
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6517, metadata !DIExpression()), !dbg !6518
  %0 = load i8, i8* %val.addr, align 1, !dbg !6519
  %1 = load i16, i16* %port.addr, align 2, !dbg !6520
  %conv = zext i16 %1 to i32, !dbg !6520
  call void @outb_p(i8 zeroext %0, i32 %conv) #4, !dbg !6521
  ret void, !dbg !6522
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #0 !dbg !6523 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6524, metadata !DIExpression()), !dbg !6525
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6526, metadata !DIExpression()), !dbg !6525
  %0 = load i8, i8* %val.addr, align 1, !dbg !6525
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !6525
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #6, !dbg !6525, !srcloc !6527
  ret void, !dbg !6525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb_p(i8 zeroext %value, i32 %port) #0 !dbg !6528 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !6531, metadata !DIExpression()), !dbg !6532
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6533, metadata !DIExpression()), !dbg !6532
  %0 = load i8, i8* %value.addr, align 1, !dbg !6532
  %1 = load i32, i32* %port.addr, align 4, !dbg !6532
  call void @outb(i8 zeroext %0, i32 %1) #4, !dbg !6532
  call void @slow_down_io() #4, !dbg !6532
  ret void, !dbg !6532
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #0 !dbg !6534 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !6535, metadata !DIExpression()), !dbg !6536
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6537, metadata !DIExpression()), !dbg !6536
  %0 = load i8, i8* %value.addr, align 1, !dbg !6536
  %1 = load i32, i32* %port.addr, align 4, !dbg !6536
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #6, !dbg !6536, !srcloc !6538
  ret void, !dbg !6536
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }
attributes #5 = { cold noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author244", scope: !2, file: !3, line: 670, type: !155, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !119, globals: !137, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/fbdev/core/svgalib.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !25, !31, !36, !42, !49, !55, !64, !72, !78, !84, !91, !99, !105}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_type", file: !6, line: 40, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/backlight.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "BACKLIGHT_RAW", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "BACKLIGHT_PLATFORM", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "BACKLIGHT_FIRMWARE", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "BACKLIGHT_TYPE_MAX", value: 4, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_scale", file: !6, line: 90, baseType: !7, size: 32, elements: !14)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "BACKLIGHT_SCALE_UNKNOWN", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "BACKLIGHT_SCALE_LINEAR", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "BACKLIGHT_SCALE_NON_LINEAR", value: 2, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !19, line: 15, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !26, line: 546, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !32, line: 65, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35}
!34 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !37, line: 16, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 59, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !50, line: 54, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !56, line: 296, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60, !61, !62, !63}
!58 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!62 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!63 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !65, line: 9, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!71 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !73, line: 26, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !79, line: 44, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !85, line: 343, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !92, line: 524, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98}
!94 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !92, line: 502, baseType: !7, size: 32, elements: !100)
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !106, line: 76, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!108 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!112 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!113 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!114 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!115 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!116 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!117 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!118 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!119 = !{!120, !126, !130, !132, !133, !135}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !122, line: 17, baseType: !123)
!122 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !124, line: 21, baseType: !125)
!124 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!125 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !122, line: 19, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !124, line: 24, baseType: !129)
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !122, line: 21, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !124, line: 27, baseType: !7)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !129)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !125)
!137 = !{!0, !138, !145, !150}
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description245", scope: !2, file: !3, line: 671, type: !140, isLocal: true, isDefinition: true, align: 8)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 592, elements: !143)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!143 = !{!144}
!144 = !DISubrange(count: 74)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file246", scope: !2, file: !3, line: 672, type: !147, isLocal: true, isDefinition: true, align: 8)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 368, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 46)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license247", scope: !2, file: !3, line: 672, type: !152, isLocal: true, isDefinition: true, align: 8)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 160, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 20)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 440, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 55)
!158 = !{i32 7, !"Dwarf Version", i32 4}
!159 = !{i32 2, !"Debug Info Version", i32 3}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"Code Model", i32 2}
!162 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!163 = distinct !DISubprogram(name: "svga_wcrt_multi", scope: !3, file: !3, line: 23, type: !164, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !132, !166, !130}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vga_regset", file: !169, line: 13, size: 24, elements: !170)
!169 = !DIFile(filename: "./include/linux/svga.h", directory: "/home/lizy2001/genbc/linux")
!170 = !{!171, !172, !173}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "regnum", scope: !168, file: !169, line: 14, baseType: !121, size: 8)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "lowbit", scope: !168, file: !169, line: 15, baseType: !121, size: 8, offset: 8)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "highbit", scope: !168, file: !169, line: 16, baseType: !121, size: 8, offset: 16)
!174 = !{}
!175 = !DILocalVariable(name: "regbase", arg: 1, scope: !163, file: !3, line: 23, type: !132)
!176 = !DILocation(line: 23, column: 36, scope: !163)
!177 = !DILocalVariable(name: "regset", arg: 2, scope: !163, file: !3, line: 23, type: !166)
!178 = !DILocation(line: 23, column: 70, scope: !163)
!179 = !DILocalVariable(name: "value", arg: 3, scope: !163, file: !3, line: 23, type: !130)
!180 = !DILocation(line: 23, column: 82, scope: !163)
!181 = !DILocalVariable(name: "regval", scope: !163, file: !3, line: 25, type: !121)
!182 = !DILocation(line: 25, column: 5, scope: !163)
!183 = !DILocalVariable(name: "bitval", scope: !163, file: !3, line: 25, type: !121)
!184 = !DILocation(line: 25, column: 13, scope: !163)
!185 = !DILocalVariable(name: "bitnum", scope: !163, file: !3, line: 25, type: !121)
!186 = !DILocation(line: 25, column: 21, scope: !163)
!187 = !DILocation(line: 27, column: 2, scope: !163)
!188 = !DILocation(line: 27, column: 9, scope: !163)
!189 = !DILocation(line: 27, column: 17, scope: !163)
!190 = !DILocation(line: 27, column: 24, scope: !163)
!191 = !DILocation(line: 28, column: 21, scope: !192)
!192 = distinct !DILexicalBlock(scope: !163, file: !3, line: 27, column: 47)
!193 = !DILocation(line: 28, column: 30, scope: !192)
!194 = !DILocation(line: 28, column: 38, scope: !192)
!195 = !DILocation(line: 28, column: 12, scope: !192)
!196 = !DILocation(line: 28, column: 10, scope: !192)
!197 = !DILocation(line: 29, column: 12, scope: !192)
!198 = !DILocation(line: 29, column: 20, scope: !192)
!199 = !DILocation(line: 29, column: 10, scope: !192)
!200 = !DILocation(line: 30, column: 3, scope: !192)
!201 = !DILocation(line: 30, column: 10, scope: !192)
!202 = !DILocation(line: 30, column: 20, scope: !192)
!203 = !DILocation(line: 30, column: 28, scope: !192)
!204 = !DILocation(line: 30, column: 17, scope: !192)
!205 = !DILocation(line: 31, column: 18, scope: !206)
!206 = distinct !DILexicalBlock(scope: !192, file: !3, line: 30, column: 37)
!207 = !DILocation(line: 31, column: 15, scope: !206)
!208 = !DILocation(line: 31, column: 13, scope: !206)
!209 = !DILocation(line: 31, column: 11, scope: !206)
!210 = !DILocation(line: 32, column: 13, scope: !206)
!211 = !DILocation(line: 32, column: 23, scope: !206)
!212 = !DILocation(line: 32, column: 22, scope: !206)
!213 = !DILocation(line: 32, column: 20, scope: !206)
!214 = !DILocation(line: 32, column: 11, scope: !206)
!215 = !DILocation(line: 33, column: 8, scope: !216)
!216 = distinct !DILexicalBlock(scope: !206, file: !3, line: 33, column: 8)
!217 = !DILocation(line: 33, column: 14, scope: !216)
!218 = !DILocation(line: 33, column: 8, scope: !206)
!219 = !DILocation(line: 33, column: 28, scope: !216)
!220 = !DILocation(line: 33, column: 37, scope: !216)
!221 = !DILocation(line: 33, column: 35, scope: !216)
!222 = !DILocation(line: 33, column: 26, scope: !216)
!223 = !DILocation(line: 33, column: 19, scope: !216)
!224 = !DILocation(line: 34, column: 11, scope: !206)
!225 = !DILocation(line: 35, column: 12, scope: !206)
!226 = !DILocation(line: 35, column: 18, scope: !206)
!227 = !DILocation(line: 35, column: 10, scope: !206)
!228 = distinct !{!228, !200, !229}
!229 = !DILocation(line: 36, column: 3, scope: !192)
!230 = !DILocation(line: 37, column: 12, scope: !192)
!231 = !DILocation(line: 37, column: 21, scope: !192)
!232 = !DILocation(line: 37, column: 29, scope: !192)
!233 = !DILocation(line: 37, column: 37, scope: !192)
!234 = !DILocation(line: 37, column: 3, scope: !192)
!235 = !DILocation(line: 38, column: 10, scope: !192)
!236 = distinct !{!236, !187, !237}
!237 = !DILocation(line: 39, column: 2, scope: !163)
!238 = !DILocation(line: 40, column: 1, scope: !163)
!239 = distinct !DISubprogram(name: "vga_rcrt", scope: !240, file: !240, line: 265, type: !241, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!240 = !DIFile(filename: "./include/video/vga.h", directory: "/home/lizy2001/genbc/linux")
!241 = !DISubroutineType(types: !242)
!242 = !{!125, !132, !125}
!243 = !DILocalVariable(name: "regbase", arg: 1, scope: !239, file: !240, line: 265, type: !132)
!244 = !DILocation(line: 265, column: 53, scope: !239)
!245 = !DILocalVariable(name: "reg", arg: 2, scope: !239, file: !240, line: 265, type: !125)
!246 = !DILocation(line: 265, column: 76, scope: !239)
!247 = !DILocation(line: 267, column: 16, scope: !239)
!248 = !DILocation(line: 267, column: 37, scope: !239)
!249 = !DILocation(line: 267, column: 9, scope: !239)
!250 = !DILocation(line: 268, column: 23, scope: !239)
!251 = !DILocation(line: 268, column: 16, scope: !239)
!252 = !DILocation(line: 268, column: 9, scope: !239)
!253 = distinct !DISubprogram(name: "vga_wcrt", scope: !240, file: !240, line: 271, type: !254, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !132, !125, !125}
!256 = !DILocalVariable(name: "regbase", arg: 1, scope: !253, file: !240, line: 271, type: !132)
!257 = !DILocation(line: 271, column: 44, scope: !253)
!258 = !DILocalVariable(name: "reg", arg: 2, scope: !253, file: !240, line: 271, type: !125)
!259 = !DILocation(line: 271, column: 67, scope: !253)
!260 = !DILocalVariable(name: "val", arg: 3, scope: !253, file: !240, line: 271, type: !125)
!261 = !DILocation(line: 271, column: 86, scope: !253)
!262 = !DILocation(line: 274, column: 14, scope: !253)
!263 = !DILocation(line: 274, column: 35, scope: !253)
!264 = !DILocation(line: 274, column: 40, scope: !253)
!265 = !DILocation(line: 274, column: 2, scope: !253)
!266 = !DILocation(line: 279, column: 1, scope: !253)
!267 = distinct !DISubprogram(name: "svga_wseq_multi", scope: !3, file: !3, line: 43, type: !164, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!268 = !DILocalVariable(name: "regbase", arg: 1, scope: !267, file: !3, line: 43, type: !132)
!269 = !DILocation(line: 43, column: 36, scope: !267)
!270 = !DILocalVariable(name: "regset", arg: 2, scope: !267, file: !3, line: 43, type: !166)
!271 = !DILocation(line: 43, column: 70, scope: !267)
!272 = !DILocalVariable(name: "value", arg: 3, scope: !267, file: !3, line: 43, type: !130)
!273 = !DILocation(line: 43, column: 82, scope: !267)
!274 = !DILocalVariable(name: "regval", scope: !267, file: !3, line: 45, type: !121)
!275 = !DILocation(line: 45, column: 5, scope: !267)
!276 = !DILocalVariable(name: "bitval", scope: !267, file: !3, line: 45, type: !121)
!277 = !DILocation(line: 45, column: 13, scope: !267)
!278 = !DILocalVariable(name: "bitnum", scope: !267, file: !3, line: 45, type: !121)
!279 = !DILocation(line: 45, column: 21, scope: !267)
!280 = !DILocation(line: 47, column: 2, scope: !267)
!281 = !DILocation(line: 47, column: 9, scope: !267)
!282 = !DILocation(line: 47, column: 17, scope: !267)
!283 = !DILocation(line: 47, column: 24, scope: !267)
!284 = !DILocation(line: 48, column: 21, scope: !285)
!285 = distinct !DILexicalBlock(scope: !267, file: !3, line: 47, column: 47)
!286 = !DILocation(line: 48, column: 30, scope: !285)
!287 = !DILocation(line: 48, column: 38, scope: !285)
!288 = !DILocation(line: 48, column: 12, scope: !285)
!289 = !DILocation(line: 48, column: 10, scope: !285)
!290 = !DILocation(line: 49, column: 12, scope: !285)
!291 = !DILocation(line: 49, column: 20, scope: !285)
!292 = !DILocation(line: 49, column: 10, scope: !285)
!293 = !DILocation(line: 50, column: 3, scope: !285)
!294 = !DILocation(line: 50, column: 10, scope: !285)
!295 = !DILocation(line: 50, column: 20, scope: !285)
!296 = !DILocation(line: 50, column: 28, scope: !285)
!297 = !DILocation(line: 50, column: 17, scope: !285)
!298 = !DILocation(line: 51, column: 18, scope: !299)
!299 = distinct !DILexicalBlock(scope: !285, file: !3, line: 50, column: 37)
!300 = !DILocation(line: 51, column: 15, scope: !299)
!301 = !DILocation(line: 51, column: 13, scope: !299)
!302 = !DILocation(line: 51, column: 11, scope: !299)
!303 = !DILocation(line: 52, column: 13, scope: !299)
!304 = !DILocation(line: 52, column: 23, scope: !299)
!305 = !DILocation(line: 52, column: 22, scope: !299)
!306 = !DILocation(line: 52, column: 20, scope: !299)
!307 = !DILocation(line: 52, column: 11, scope: !299)
!308 = !DILocation(line: 53, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !299, file: !3, line: 53, column: 8)
!310 = !DILocation(line: 53, column: 14, scope: !309)
!311 = !DILocation(line: 53, column: 8, scope: !299)
!312 = !DILocation(line: 53, column: 28, scope: !309)
!313 = !DILocation(line: 53, column: 37, scope: !309)
!314 = !DILocation(line: 53, column: 35, scope: !309)
!315 = !DILocation(line: 53, column: 26, scope: !309)
!316 = !DILocation(line: 53, column: 19, scope: !309)
!317 = !DILocation(line: 54, column: 11, scope: !299)
!318 = !DILocation(line: 55, column: 12, scope: !299)
!319 = !DILocation(line: 55, column: 18, scope: !299)
!320 = !DILocation(line: 55, column: 10, scope: !299)
!321 = distinct !{!321, !293, !322}
!322 = !DILocation(line: 56, column: 3, scope: !285)
!323 = !DILocation(line: 57, column: 12, scope: !285)
!324 = !DILocation(line: 57, column: 21, scope: !285)
!325 = !DILocation(line: 57, column: 29, scope: !285)
!326 = !DILocation(line: 57, column: 37, scope: !285)
!327 = !DILocation(line: 57, column: 3, scope: !285)
!328 = !DILocation(line: 58, column: 10, scope: !285)
!329 = distinct !{!329, !280, !330}
!330 = !DILocation(line: 59, column: 2, scope: !267)
!331 = !DILocation(line: 60, column: 1, scope: !267)
!332 = distinct !DISubprogram(name: "vga_rseq", scope: !240, file: !240, line: 318, type: !241, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!333 = !DILocalVariable(name: "regbase", arg: 1, scope: !332, file: !240, line: 318, type: !132)
!334 = !DILocation(line: 318, column: 53, scope: !332)
!335 = !DILocalVariable(name: "reg", arg: 2, scope: !332, file: !240, line: 318, type: !125)
!336 = !DILocation(line: 318, column: 76, scope: !332)
!337 = !DILocation(line: 320, column: 16, scope: !332)
!338 = !DILocation(line: 320, column: 36, scope: !332)
!339 = !DILocation(line: 320, column: 9, scope: !332)
!340 = !DILocation(line: 321, column: 23, scope: !332)
!341 = !DILocation(line: 321, column: 16, scope: !332)
!342 = !DILocation(line: 321, column: 9, scope: !332)
!343 = distinct !DISubprogram(name: "vga_wseq", scope: !240, file: !240, line: 324, type: !254, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!344 = !DILocalVariable(name: "regbase", arg: 1, scope: !343, file: !240, line: 324, type: !132)
!345 = !DILocation(line: 324, column: 44, scope: !343)
!346 = !DILocalVariable(name: "reg", arg: 2, scope: !343, file: !240, line: 324, type: !125)
!347 = !DILocation(line: 324, column: 67, scope: !343)
!348 = !DILocalVariable(name: "val", arg: 3, scope: !343, file: !240, line: 324, type: !125)
!349 = !DILocation(line: 324, column: 86, scope: !343)
!350 = !DILocation(line: 327, column: 14, scope: !343)
!351 = !DILocation(line: 327, column: 34, scope: !343)
!352 = !DILocation(line: 327, column: 39, scope: !343)
!353 = !DILocation(line: 327, column: 2, scope: !343)
!354 = !DILocation(line: 332, column: 1, scope: !343)
!355 = distinct !DISubprogram(name: "svga_set_default_gfx_regs", scope: !3, file: !3, line: 78, type: !356, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !132}
!358 = !DILocalVariable(name: "regbase", arg: 1, scope: !355, file: !3, line: 78, type: !132)
!359 = !DILocation(line: 78, column: 46, scope: !355)
!360 = !DILocation(line: 81, column: 11, scope: !355)
!361 = !DILocation(line: 81, column: 2, scope: !355)
!362 = !DILocation(line: 82, column: 11, scope: !355)
!363 = !DILocation(line: 82, column: 2, scope: !355)
!364 = !DILocation(line: 83, column: 11, scope: !355)
!365 = !DILocation(line: 83, column: 2, scope: !355)
!366 = !DILocation(line: 84, column: 11, scope: !355)
!367 = !DILocation(line: 84, column: 2, scope: !355)
!368 = !DILocation(line: 85, column: 11, scope: !355)
!369 = !DILocation(line: 85, column: 2, scope: !355)
!370 = !DILocation(line: 86, column: 11, scope: !355)
!371 = !DILocation(line: 86, column: 2, scope: !355)
!372 = !DILocation(line: 89, column: 11, scope: !355)
!373 = !DILocation(line: 89, column: 2, scope: !355)
!374 = !DILocation(line: 91, column: 11, scope: !355)
!375 = !DILocation(line: 91, column: 2, scope: !355)
!376 = !DILocation(line: 92, column: 11, scope: !355)
!377 = !DILocation(line: 92, column: 2, scope: !355)
!378 = !DILocation(line: 93, column: 1, scope: !355)
!379 = distinct !DISubprogram(name: "vga_wgfx", scope: !240, file: !240, line: 376, type: !254, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!380 = !DILocalVariable(name: "regbase", arg: 1, scope: !379, file: !240, line: 376, type: !132)
!381 = !DILocation(line: 376, column: 44, scope: !379)
!382 = !DILocalVariable(name: "reg", arg: 2, scope: !379, file: !240, line: 376, type: !125)
!383 = !DILocation(line: 376, column: 67, scope: !379)
!384 = !DILocalVariable(name: "val", arg: 3, scope: !379, file: !240, line: 376, type: !125)
!385 = !DILocation(line: 376, column: 86, scope: !379)
!386 = !DILocation(line: 379, column: 14, scope: !379)
!387 = !DILocation(line: 379, column: 34, scope: !379)
!388 = !DILocation(line: 379, column: 39, scope: !379)
!389 = !DILocation(line: 379, column: 2, scope: !379)
!390 = !DILocation(line: 384, column: 1, scope: !379)
!391 = distinct !DISubprogram(name: "svga_set_default_atc_regs", scope: !3, file: !3, line: 96, type: !356, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!392 = !DILocalVariable(name: "regbase", arg: 1, scope: !391, file: !3, line: 96, type: !132)
!393 = !DILocation(line: 96, column: 46, scope: !391)
!394 = !DILocalVariable(name: "count", scope: !391, file: !3, line: 98, type: !121)
!395 = !DILocation(line: 98, column: 5, scope: !391)
!396 = !DILocation(line: 100, column: 8, scope: !391)
!397 = !DILocation(line: 100, column: 2, scope: !391)
!398 = !DILocation(line: 101, column: 8, scope: !391)
!399 = !DILocation(line: 101, column: 2, scope: !391)
!400 = !DILocation(line: 104, column: 13, scope: !401)
!401 = distinct !DILexicalBlock(scope: !391, file: !3, line: 104, column: 2)
!402 = !DILocation(line: 104, column: 7, scope: !401)
!403 = !DILocation(line: 104, column: 18, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !3, line: 104, column: 2)
!405 = !DILocation(line: 104, column: 24, scope: !404)
!406 = !DILocation(line: 104, column: 2, scope: !401)
!407 = !DILocation(line: 105, column: 14, scope: !404)
!408 = !DILocation(line: 105, column: 23, scope: !404)
!409 = !DILocation(line: 105, column: 30, scope: !404)
!410 = !DILocation(line: 105, column: 3, scope: !404)
!411 = !DILocation(line: 104, column: 38, scope: !404)
!412 = !DILocation(line: 104, column: 2, scope: !404)
!413 = distinct !{!413, !406, !414}
!414 = !DILocation(line: 105, column: 35, scope: !401)
!415 = !DILocation(line: 107, column: 13, scope: !391)
!416 = !DILocation(line: 107, column: 2, scope: !391)
!417 = !DILocation(line: 109, column: 13, scope: !391)
!418 = !DILocation(line: 109, column: 2, scope: !391)
!419 = !DILocation(line: 110, column: 13, scope: !391)
!420 = !DILocation(line: 110, column: 2, scope: !391)
!421 = !DILocation(line: 111, column: 13, scope: !391)
!422 = !DILocation(line: 111, column: 2, scope: !391)
!423 = !DILocation(line: 112, column: 13, scope: !391)
!424 = !DILocation(line: 112, column: 2, scope: !391)
!425 = !DILocation(line: 114, column: 8, scope: !391)
!426 = !DILocation(line: 114, column: 2, scope: !391)
!427 = !DILocation(line: 115, column: 8, scope: !391)
!428 = !DILocation(line: 115, column: 2, scope: !391)
!429 = !DILocation(line: 116, column: 1, scope: !391)
!430 = distinct !DISubprogram(name: "vga_r", scope: !240, file: !240, line: 234, type: !431, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!431 = !DISubroutineType(types: !432)
!432 = !{!125, !132, !129}
!433 = !DILocalVariable(name: "regbase", arg: 1, scope: !430, file: !240, line: 234, type: !132)
!434 = !DILocation(line: 234, column: 50, scope: !430)
!435 = !DILocalVariable(name: "port", arg: 2, scope: !430, file: !240, line: 234, type: !129)
!436 = !DILocation(line: 234, column: 74, scope: !430)
!437 = !DILocation(line: 236, column: 6, scope: !438)
!438 = distinct !DILexicalBlock(scope: !430, file: !240, line: 236, column: 6)
!439 = !DILocation(line: 236, column: 6, scope: !430)
!440 = !DILocation(line: 237, column: 20, scope: !438)
!441 = !DILocation(line: 237, column: 29, scope: !438)
!442 = !DILocation(line: 237, column: 10, scope: !438)
!443 = !DILocation(line: 237, column: 3, scope: !438)
!444 = !DILocation(line: 239, column: 20, scope: !438)
!445 = !DILocation(line: 239, column: 10, scope: !438)
!446 = !DILocation(line: 239, column: 3, scope: !438)
!447 = !DILocation(line: 240, column: 1, scope: !430)
!448 = distinct !DISubprogram(name: "vga_w", scope: !240, file: !240, line: 242, type: !449, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !132, !129, !125}
!451 = !DILocalVariable(name: "regbase", arg: 1, scope: !448, file: !240, line: 242, type: !132)
!452 = !DILocation(line: 242, column: 41, scope: !448)
!453 = !DILocalVariable(name: "port", arg: 2, scope: !448, file: !240, line: 242, type: !129)
!454 = !DILocation(line: 242, column: 65, scope: !448)
!455 = !DILocalVariable(name: "val", arg: 3, scope: !448, file: !240, line: 242, type: !125)
!456 = !DILocation(line: 242, column: 85, scope: !448)
!457 = !DILocation(line: 244, column: 6, scope: !458)
!458 = distinct !DILexicalBlock(scope: !448, file: !240, line: 244, column: 6)
!459 = !DILocation(line: 244, column: 6, scope: !448)
!460 = !DILocation(line: 245, column: 13, scope: !458)
!461 = !DILocation(line: 245, column: 22, scope: !458)
!462 = !DILocation(line: 245, column: 28, scope: !458)
!463 = !DILocation(line: 245, column: 3, scope: !458)
!464 = !DILocation(line: 247, column: 13, scope: !458)
!465 = !DILocation(line: 247, column: 19, scope: !458)
!466 = !DILocation(line: 247, column: 3, scope: !458)
!467 = !DILocation(line: 248, column: 1, scope: !448)
!468 = distinct !DISubprogram(name: "svga_wattr", scope: !169, file: !169, line: 71, type: !469, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !132, !121, !121}
!471 = !DILocalVariable(name: "regbase", arg: 1, scope: !468, file: !169, line: 71, type: !132)
!472 = !DILocation(line: 71, column: 45, scope: !468)
!473 = !DILocalVariable(name: "index", arg: 2, scope: !468, file: !169, line: 71, type: !121)
!474 = !DILocation(line: 71, column: 57, scope: !468)
!475 = !DILocalVariable(name: "data", arg: 3, scope: !468, file: !169, line: 71, type: !121)
!476 = !DILocation(line: 71, column: 67, scope: !468)
!477 = !DILocation(line: 73, column: 8, scope: !468)
!478 = !DILocation(line: 73, column: 2, scope: !468)
!479 = !DILocation(line: 74, column: 8, scope: !468)
!480 = !DILocation(line: 74, column: 29, scope: !468)
!481 = !DILocation(line: 74, column: 2, scope: !468)
!482 = !DILocation(line: 75, column: 8, scope: !468)
!483 = !DILocation(line: 75, column: 28, scope: !468)
!484 = !DILocation(line: 75, column: 2, scope: !468)
!485 = !DILocation(line: 76, column: 1, scope: !468)
!486 = distinct !DISubprogram(name: "svga_set_default_seq_regs", scope: !3, file: !3, line: 119, type: !356, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!487 = !DILocalVariable(name: "regbase", arg: 1, scope: !486, file: !3, line: 119, type: !132)
!488 = !DILocation(line: 119, column: 46, scope: !486)
!489 = !DILocation(line: 122, column: 11, scope: !486)
!490 = !DILocation(line: 122, column: 2, scope: !486)
!491 = !DILocation(line: 123, column: 11, scope: !486)
!492 = !DILocation(line: 123, column: 2, scope: !486)
!493 = !DILocation(line: 124, column: 11, scope: !486)
!494 = !DILocation(line: 124, column: 2, scope: !486)
!495 = !DILocation(line: 126, column: 11, scope: !486)
!496 = !DILocation(line: 126, column: 2, scope: !486)
!497 = !DILocation(line: 127, column: 1, scope: !486)
!498 = distinct !DISubprogram(name: "svga_set_default_crt_regs", scope: !3, file: !3, line: 130, type: !356, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!499 = !DILocalVariable(name: "regbase", arg: 1, scope: !498, file: !3, line: 130, type: !132)
!500 = !DILocation(line: 130, column: 46, scope: !498)
!501 = !DILocation(line: 133, column: 17, scope: !498)
!502 = !DILocation(line: 133, column: 2, scope: !498)
!503 = !DILocation(line: 134, column: 11, scope: !498)
!504 = !DILocation(line: 134, column: 2, scope: !498)
!505 = !DILocation(line: 135, column: 17, scope: !498)
!506 = !DILocation(line: 135, column: 2, scope: !498)
!507 = !DILocation(line: 136, column: 11, scope: !498)
!508 = !DILocation(line: 136, column: 2, scope: !498)
!509 = !DILocation(line: 137, column: 11, scope: !498)
!510 = !DILocation(line: 137, column: 2, scope: !498)
!511 = !DILocation(line: 138, column: 1, scope: !498)
!512 = distinct !DISubprogram(name: "svga_wcrt_mask", scope: !169, file: !169, line: 87, type: !513, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !132, !121, !121, !121}
!515 = !DILocalVariable(name: "regbase", arg: 1, scope: !512, file: !169, line: 87, type: !132)
!516 = !DILocation(line: 87, column: 49, scope: !512)
!517 = !DILocalVariable(name: "index", arg: 2, scope: !512, file: !169, line: 87, type: !121)
!518 = !DILocation(line: 87, column: 61, scope: !512)
!519 = !DILocalVariable(name: "data", arg: 3, scope: !512, file: !169, line: 87, type: !121)
!520 = !DILocation(line: 87, column: 71, scope: !512)
!521 = !DILocalVariable(name: "mask", arg: 4, scope: !512, file: !169, line: 87, type: !121)
!522 = !DILocation(line: 87, column: 80, scope: !512)
!523 = !DILocation(line: 89, column: 11, scope: !512)
!524 = !DILocation(line: 89, column: 20, scope: !512)
!525 = !DILocation(line: 89, column: 28, scope: !512)
!526 = !DILocation(line: 89, column: 35, scope: !512)
!527 = !DILocation(line: 89, column: 33, scope: !512)
!528 = !DILocation(line: 89, column: 53, scope: !512)
!529 = !DILocation(line: 89, column: 62, scope: !512)
!530 = !DILocation(line: 89, column: 44, scope: !512)
!531 = !DILocation(line: 89, column: 72, scope: !512)
!532 = !DILocation(line: 89, column: 71, scope: !512)
!533 = !DILocation(line: 89, column: 69, scope: !512)
!534 = !DILocation(line: 89, column: 41, scope: !512)
!535 = !DILocation(line: 89, column: 27, scope: !512)
!536 = !DILocation(line: 89, column: 2, scope: !512)
!537 = !DILocation(line: 90, column: 1, scope: !512)
!538 = distinct !DISubprogram(name: "svga_set_textmode_vga_regs", scope: !3, file: !3, line: 140, type: !356, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!539 = !DILocalVariable(name: "regbase", arg: 1, scope: !538, file: !3, line: 140, type: !132)
!540 = !DILocation(line: 140, column: 47, scope: !538)
!541 = !DILocation(line: 143, column: 11, scope: !538)
!542 = !DILocation(line: 143, column: 2, scope: !538)
!543 = !DILocation(line: 144, column: 11, scope: !538)
!544 = !DILocation(line: 144, column: 2, scope: !538)
!545 = !DILocation(line: 146, column: 11, scope: !538)
!546 = !DILocation(line: 146, column: 2, scope: !538)
!547 = !DILocation(line: 147, column: 11, scope: !538)
!548 = !DILocation(line: 147, column: 2, scope: !538)
!549 = !DILocation(line: 148, column: 17, scope: !538)
!550 = !DILocation(line: 148, column: 2, scope: !538)
!551 = !DILocation(line: 150, column: 11, scope: !538)
!552 = !DILocation(line: 150, column: 2, scope: !538)
!553 = !DILocation(line: 151, column: 11, scope: !538)
!554 = !DILocation(line: 151, column: 2, scope: !538)
!555 = !DILocation(line: 152, column: 11, scope: !538)
!556 = !DILocation(line: 152, column: 2, scope: !538)
!557 = !DILocation(line: 153, column: 11, scope: !538)
!558 = !DILocation(line: 153, column: 2, scope: !538)
!559 = !DILocation(line: 155, column: 11, scope: !538)
!560 = !DILocation(line: 155, column: 2, scope: !538)
!561 = !DILocation(line: 156, column: 11, scope: !538)
!562 = !DILocation(line: 156, column: 2, scope: !538)
!563 = !DILocation(line: 157, column: 11, scope: !538)
!564 = !DILocation(line: 157, column: 2, scope: !538)
!565 = !DILocation(line: 159, column: 8, scope: !538)
!566 = !DILocation(line: 159, column: 2, scope: !538)
!567 = !DILocation(line: 160, column: 8, scope: !538)
!568 = !DILocation(line: 160, column: 2, scope: !538)
!569 = !DILocation(line: 162, column: 13, scope: !538)
!570 = !DILocation(line: 162, column: 2, scope: !538)
!571 = !DILocation(line: 163, column: 13, scope: !538)
!572 = !DILocation(line: 163, column: 2, scope: !538)
!573 = !DILocation(line: 165, column: 8, scope: !538)
!574 = !DILocation(line: 165, column: 2, scope: !538)
!575 = !DILocation(line: 166, column: 8, scope: !538)
!576 = !DILocation(line: 166, column: 2, scope: !538)
!577 = !DILocation(line: 167, column: 1, scope: !538)
!578 = distinct !DISubprogram(name: "svga_settile", scope: !3, file: !3, line: 193, type: !579, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !581, !4780}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_info", file: !583, line: 437, size: 8128, elements: !584)
!583 = !DIFile(filename: "./include/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!584 = !{!585, !592, !593, !594, !595, !630, !631, !672, !697, !759, !771, !788, !789, !799, !800, !801, !4537, !4538, !4540, !4547, !4562, !4690, !4691, !4692, !4693, !4757, !4762, !4763, !4764, !4765, !4766, !4767, !4779}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !582, file: !583, line: 438, baseType: !586, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !587, line: 168, baseType: !588)
!587 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 166, size: 32, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !588, file: !587, line: 167, baseType: !591, size: 32)
!591 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !582, file: !583, line: 439, baseType: !591, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !582, file: !583, line: 440, baseType: !591, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_rotate_hint", scope: !582, file: !583, line: 445, baseType: !591, size: 32, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !582, file: !583, line: 446, baseType: !596, size: 192, offset: 128)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !597, line: 53, size: 192, elements: !598)
!597 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!598 = !{!599, !609, !624}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !596, file: !597, line: 54, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !601, line: 13, baseType: !602)
!601 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !587, line: 175, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 173, size: 64, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !603, file: !587, line: 174, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !122, line: 22, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !124, line: 30, baseType: !608)
!608 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !596, file: !597, line: 55, baseType: !610, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !611, line: 83, baseType: !612)
!611 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !611, line: 71, elements: !613)
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, scope: !612, file: !611, line: 72, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !611, line: 72, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !615, file: !611, line: 73, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !611, line: 20, elements: !619)
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !618, file: !611, line: 21, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !622, line: 25, baseType: !623)
!622 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !622, line: 25, elements: !174)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !596, file: !597, line: 59, baseType: !625, size: 128, offset: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !587, line: 178, size: 128, elements: !626)
!626 = !{!627, !629}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !625, file: !587, line: 179, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !625, file: !587, line: 179, baseType: !628, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock", scope: !582, file: !583, line: 447, baseType: !596, size: 192, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !582, file: !583, line: 448, baseType: !632, size: 1280, offset: 512)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_var_screeninfo", file: !633, line: 242, size: 1280, elements: !634)
!633 = !DIFile(filename: "./include/uapi/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !632, file: !633, line: 243, baseType: !131, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !632, file: !633, line: 244, baseType: !131, size: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "xres_virtual", scope: !632, file: !633, line: 245, baseType: !131, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "yres_virtual", scope: !632, file: !633, line: 246, baseType: !131, size: 32, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "xoffset", scope: !632, file: !633, line: 247, baseType: !131, size: 32, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "yoffset", scope: !632, file: !633, line: 248, baseType: !131, size: 32, offset: 160)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !632, file: !633, line: 250, baseType: !131, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "grayscale", scope: !632, file: !633, line: 251, baseType: !131, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !632, file: !633, line: 253, baseType: !644, size: 96, offset: 256)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_bitfield", file: !633, line: 188, size: 96, elements: !645)
!645 = !{!646, !647, !648}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !644, file: !633, line: 189, baseType: !131, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !644, file: !633, line: 190, baseType: !131, size: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "msb_right", scope: !644, file: !633, line: 191, baseType: !131, size: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !632, file: !633, line: 254, baseType: !644, size: 96, offset: 352)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !632, file: !633, line: 255, baseType: !644, size: 96, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !632, file: !633, line: 256, baseType: !644, size: 96, offset: 544)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !632, file: !633, line: 258, baseType: !131, size: 32, offset: 640)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !632, file: !633, line: 260, baseType: !131, size: 32, offset: 672)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !632, file: !633, line: 262, baseType: !131, size: 32, offset: 704)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !632, file: !633, line: 263, baseType: !131, size: 32, offset: 736)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "accel_flags", scope: !632, file: !633, line: 265, baseType: !131, size: 32, offset: 768)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !632, file: !633, line: 268, baseType: !131, size: 32, offset: 800)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !632, file: !633, line: 269, baseType: !131, size: 32, offset: 832)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !632, file: !633, line: 270, baseType: !131, size: 32, offset: 864)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !632, file: !633, line: 271, baseType: !131, size: 32, offset: 896)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !632, file: !633, line: 272, baseType: !131, size: 32, offset: 928)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !632, file: !633, line: 273, baseType: !131, size: 32, offset: 960)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !632, file: !633, line: 274, baseType: !131, size: 32, offset: 992)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !632, file: !633, line: 275, baseType: !131, size: 32, offset: 1024)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !632, file: !633, line: 276, baseType: !131, size: 32, offset: 1056)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !632, file: !633, line: 277, baseType: !131, size: 32, offset: 1088)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !632, file: !633, line: 278, baseType: !131, size: 32, offset: 1120)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !632, file: !633, line: 279, baseType: !669, size: 128, offset: 1152)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 128, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 4)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fix", scope: !582, file: !583, line: 449, baseType: !673, size: 640, offset: 1792)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fix_screeninfo", file: !633, line: 157, size: 640, elements: !674)
!674 = !{!675, !679, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !673, file: !633, line: 158, baseType: !676, size: 128)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 128, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 16)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "smem_start", scope: !673, file: !633, line: 159, baseType: !680, size: 64, offset: 128)
!680 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "smem_len", scope: !673, file: !633, line: 161, baseType: !131, size: 32, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !673, file: !633, line: 162, baseType: !131, size: 32, offset: 224)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type_aux", scope: !673, file: !633, line: 163, baseType: !131, size: 32, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !673, file: !633, line: 164, baseType: !131, size: 32, offset: 288)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "xpanstep", scope: !673, file: !633, line: 165, baseType: !128, size: 16, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ypanstep", scope: !673, file: !633, line: 166, baseType: !128, size: 16, offset: 336)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ywrapstep", scope: !673, file: !633, line: 167, baseType: !128, size: 16, offset: 352)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !673, file: !633, line: 168, baseType: !131, size: 32, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_start", scope: !673, file: !633, line: 169, baseType: !680, size: 64, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_len", scope: !673, file: !633, line: 171, baseType: !131, size: 32, offset: 512)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !673, file: !633, line: 172, baseType: !131, size: 32, offset: 544)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !673, file: !633, line: 174, baseType: !128, size: 16, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !673, file: !633, line: 175, baseType: !694, size: 32, offset: 592)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 32, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 2)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "monspecs", scope: !582, file: !583, line: 450, baseType: !698, size: 1152, offset: 2432)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_monspecs", file: !583, line: 63, size: 1152, elements: !699)
!699 = !{!700, !711, !730, !732, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "chroma", scope: !698, file: !583, line: 64, baseType: !701, size: 256)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_chroma", file: !583, line: 52, size: 256, elements: !702)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "redx", scope: !701, file: !583, line: 53, baseType: !131, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "greenx", scope: !701, file: !583, line: 54, baseType: !131, size: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "bluex", scope: !701, file: !583, line: 55, baseType: !131, size: 32, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "whitex", scope: !701, file: !583, line: 56, baseType: !131, size: 32, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "redy", scope: !701, file: !583, line: 57, baseType: !131, size: 32, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "greeny", scope: !701, file: !583, line: 58, baseType: !131, size: 32, offset: 160)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "bluey", scope: !701, file: !583, line: 59, baseType: !131, size: 32, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "whitey", scope: !701, file: !583, line: 60, baseType: !131, size: 32, offset: 224)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "modedb", scope: !698, file: !583, line: 65, baseType: !712, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_videomode", file: !583, line: 766, size: 512, elements: !714)
!714 = !{!715, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !713, file: !583, line: 767, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !713, file: !583, line: 768, baseType: !130, size: 32, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !713, file: !583, line: 769, baseType: !130, size: 32, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !713, file: !583, line: 770, baseType: !130, size: 32, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !713, file: !583, line: 771, baseType: !130, size: 32, offset: 160)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !713, file: !583, line: 772, baseType: !130, size: 32, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !713, file: !583, line: 773, baseType: !130, size: 32, offset: 224)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !713, file: !583, line: 774, baseType: !130, size: 32, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !713, file: !583, line: 775, baseType: !130, size: 32, offset: 288)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !713, file: !583, line: 776, baseType: !130, size: 32, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !713, file: !583, line: 777, baseType: !130, size: 32, offset: 352)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !713, file: !583, line: 778, baseType: !130, size: 32, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !713, file: !583, line: 779, baseType: !130, size: 32, offset: 416)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !713, file: !583, line: 780, baseType: !130, size: 32, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !698, file: !583, line: 66, baseType: !731, size: 32, offset: 320)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 32, elements: !670)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "monitor", scope: !698, file: !583, line: 67, baseType: !733, size: 112, offset: 352)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 112, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 14)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !698, file: !583, line: 68, baseType: !733, size: 112, offset: 464)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !698, file: !583, line: 69, baseType: !733, size: 112, offset: 576)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "modedb_len", scope: !698, file: !583, line: 70, baseType: !131, size: 32, offset: 704)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !698, file: !583, line: 71, baseType: !131, size: 32, offset: 736)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !698, file: !583, line: 72, baseType: !131, size: 32, offset: 768)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !698, file: !583, line: 73, baseType: !131, size: 32, offset: 800)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "week", scope: !698, file: !583, line: 74, baseType: !131, size: 32, offset: 832)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "hfmin", scope: !698, file: !583, line: 75, baseType: !131, size: 32, offset: 864)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "hfmax", scope: !698, file: !583, line: 76, baseType: !131, size: 32, offset: 896)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmin", scope: !698, file: !583, line: 77, baseType: !131, size: 32, offset: 928)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmax", scope: !698, file: !583, line: 78, baseType: !131, size: 32, offset: 960)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !698, file: !583, line: 79, baseType: !128, size: 16, offset: 992)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !698, file: !583, line: 80, baseType: !128, size: 16, offset: 1008)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !698, file: !583, line: 81, baseType: !128, size: 16, offset: 1024)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "vfmin", scope: !698, file: !583, line: 82, baseType: !128, size: 16, offset: 1040)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "vfmax", scope: !698, file: !583, line: 83, baseType: !128, size: 16, offset: 1056)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !698, file: !583, line: 84, baseType: !128, size: 16, offset: 1072)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "gtf", scope: !698, file: !583, line: 85, baseType: !128, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !698, file: !583, line: 86, baseType: !128, size: 16, offset: 1104)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !698, file: !583, line: 87, baseType: !123, size: 8, offset: 1120)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !698, file: !583, line: 88, baseType: !123, size: 8, offset: 1128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "max_x", scope: !698, file: !583, line: 89, baseType: !123, size: 8, offset: 1136)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "max_y", scope: !698, file: !583, line: 90, baseType: !123, size: 8, offset: 1144)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !582, file: !583, line: 451, baseType: !760, size: 256, offset: 3584)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !761, line: 102, size: 256, elements: !762)
!761 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!762 = !{!763, !764, !765}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !760, file: !761, line: 103, baseType: !600, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !760, file: !761, line: 104, baseType: !625, size: 128, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !760, file: !761, line: 105, baseType: !766, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !761, line: 21, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !770}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap", scope: !582, file: !583, line: 452, baseType: !772, size: 448, offset: 3840)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_pixmap", file: !583, line: 185, size: 448, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !787}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !772, file: !583, line: 186, baseType: !120, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !772, file: !583, line: 187, baseType: !130, size: 32, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !772, file: !583, line: 188, baseType: !130, size: 32, offset: 96)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !772, file: !583, line: 189, baseType: !130, size: 32, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "scan_align", scope: !772, file: !583, line: 190, baseType: !130, size: 32, offset: 160)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "access_align", scope: !772, file: !583, line: 191, baseType: !130, size: 32, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !583, line: 192, baseType: !130, size: 32, offset: 224)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "blit_x", scope: !772, file: !583, line: 193, baseType: !130, size: 32, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "blit_y", scope: !772, file: !583, line: 194, baseType: !130, size: 32, offset: 288)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "writeio", scope: !772, file: !583, line: 198, baseType: !784, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !581, !132, !132, !7}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "readio", scope: !772, file: !583, line: 199, baseType: !784, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sprite", scope: !582, file: !583, line: 453, baseType: !772, size: 448, offset: 4288)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !582, file: !583, line: 454, baseType: !790, size: 320, offset: 4736)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cmap", file: !633, line: 282, size: 320, elements: !791)
!791 = !{!792, !793, !794, !796, !797, !798}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !790, file: !633, line: 283, baseType: !131, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !790, file: !633, line: 284, baseType: !131, size: 32, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !790, file: !633, line: 285, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !790, file: !633, line: 286, baseType: !795, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !790, file: !633, line: 287, baseType: !795, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !790, file: !633, line: 288, baseType: !795, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "modelist", scope: !582, file: !583, line: 455, baseType: !625, size: 128, offset: 5056)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !582, file: !583, line: 456, baseType: !712, size: 64, offset: 5184)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "bl_dev", scope: !582, file: !583, line: 462, baseType: !802, size: 64, offset: 5248)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_device", file: !6, line: 280, size: 6912, elements: !804)
!804 = !{!805, !815, !816, !817, !832, !844, !845, !4534, !4536}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !803, file: !6, line: 284, baseType: !806, size: 224)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_properties", file: !6, line: 182, size: 224, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813, !814}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !806, file: !6, line: 194, baseType: !591, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !806, file: !6, line: 203, baseType: !591, size: 32, offset: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !806, file: !6, line: 219, baseType: !591, size: 32, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !806, file: !6, line: 238, baseType: !591, size: 32, offset: 96)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !806, file: !6, line: 249, baseType: !5, size: 32, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !806, file: !6, line: 264, baseType: !7, size: 32, offset: 160)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !806, file: !6, line: 272, baseType: !13, size: 32, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !803, file: !6, line: 294, baseType: !596, size: 192, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !803, file: !6, line: 303, baseType: !596, size: 192, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !803, file: !6, line: 312, baseType: !818, size: 64, offset: 640)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_ops", file: !6, line: 120, size: 256, elements: !821)
!821 = !{!822, !823, !827, !828}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !820, file: !6, line: 128, baseType: !7, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "update_status", scope: !820, file: !6, line: 146, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!591, !802}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "get_brightness", scope: !820, file: !6, line: 160, baseType: !824, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "check_fb", scope: !820, file: !6, line: 174, baseType: !829, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!591, !802, !581}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "fb_notif", scope: !803, file: !6, line: 317, baseType: !833, size: 192, offset: 704)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !834, line: 54, size: 192, elements: !835)
!834 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!835 = !{!836, !842, !843}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !833, file: !834, line: 55, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !834, line: 51, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!591, !841, !680, !132}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !833, file: !834, line: 56, baseType: !841, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !833, file: !834, line: 57, baseType: !591, size: 32, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !803, file: !6, line: 322, baseType: !625, size: 128, offset: 896)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !803, file: !6, line: 327, baseType: !846, size: 5568, offset: 1024)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !85, line: 461, size: 5568, elements: !847)
!847 = !{!848, !3987, !3989, !3992, !3993, !4044, !4135, !4136, !4137, !4138, !4139, !4148, !4253, !4266, !4461, !4462, !4466, !4468, !4469, !4470, !4474, !4480, !4481, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4522, !4523, !4524, !4527, !4530, !4531, !4532, !4533}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !846, file: !85, line: 462, baseType: !849, size: 512)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !850, line: 64, size: 512, elements: !851)
!850 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!851 = !{!852, !853, !854, !856, !901, !3848, !3981, !3982, !3983, !3984, !3985, !3986}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !849, file: !850, line: 65, baseType: !716, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !849, file: !850, line: 66, baseType: !625, size: 128, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !849, file: !850, line: 67, baseType: !855, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !849, file: !850, line: 68, baseType: !857, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !850, line: 192, size: 704, elements: !859)
!859 = !{!860, !861, !862, !863}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !858, file: !850, line: 193, baseType: !625, size: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !858, file: !850, line: 194, baseType: !610, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !858, file: !850, line: 195, baseType: !849, size: 512, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !858, file: !850, line: 196, baseType: !864, size: 64, offset: 640)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !850, line: 156, size: 192, elements: !867)
!867 = !{!868, !873, !878}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !866, file: !850, line: 157, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!591, !857, !855}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !866, file: !850, line: 158, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!716, !857, !855}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !866, file: !850, line: 159, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!591, !857, !855, !883}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !850, line: 148, size: 20736, elements: !885)
!885 = !{!886, !891, !895, !896, !900}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !884, file: !850, line: 149, baseType: !887, size: 192)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, size: 192, elements: !889)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!889 = !{!890}
!890 = !DISubrange(count: 3)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !884, file: !850, line: 150, baseType: !892, size: 4096, offset: 192)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, size: 4096, elements: !893)
!893 = !{!894}
!894 = !DISubrange(count: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !884, file: !850, line: 151, baseType: !591, size: 32, offset: 4288)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !884, file: !850, line: 152, baseType: !897, size: 16384, offset: 4320)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 16384, elements: !898)
!898 = !{!899}
!899 = !DISubrange(count: 2048)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !884, file: !850, line: 153, baseType: !591, size: 32, offset: 20704)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !849, file: !850, line: 69, baseType: !902, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !850, line: 138, size: 448, elements: !904)
!904 = !{!905, !909, !937, !939, !3810, !3838, !3842}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !903, file: !850, line: 139, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !855}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !903, file: !850, line: 140, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !913, line: 230, size: 128, elements: !914)
!913 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!914 = !{!915, !930}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !912, file: !913, line: 231, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!919, !855, !924, !888}
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !587, line: 60, baseType: !920)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !921, line: 73, baseType: !922)
!921 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !921, line: 15, baseType: !923)
!923 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !913, line: 30, size: 128, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !925, file: !913, line: 31, baseType: !716, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !925, file: !913, line: 32, baseType: !929, size: 16, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !587, line: 19, baseType: !129)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !912, file: !913, line: 232, baseType: !931, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!919, !855, !924, !716, !934}
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !587, line: 55, baseType: !935)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !921, line: 72, baseType: !936)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !921, line: 16, baseType: !680)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !903, file: !850, line: 141, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !903, file: !850, line: 142, baseType: !940, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !913, line: 84, size: 320, elements: !944)
!944 = !{!945, !946, !950, !3807, !3808}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !943, file: !913, line: 85, baseType: !716, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !943, file: !913, line: 86, baseType: !947, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!929, !855, !924, !591}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !943, file: !913, line: 88, baseType: !951, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!929, !855, !954, !591}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !913, line: 168, size: 448, elements: !956)
!956 = !{!957, !958, !959, !960, !3802, !3803}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !955, file: !913, line: 169, baseType: !925, size: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !955, file: !913, line: 170, baseType: !934, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !955, file: !913, line: 171, baseType: !132, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !955, file: !913, line: 172, baseType: !961, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!919, !964, !855, !954, !888, !1136, !934}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !56, line: 916, size: 1856, align: 32, elements: !966)
!966 = !{!967, !985, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3785, !3786, !3795, !3796, !3797, !3798, !3799, !3800, !3801}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !965, file: !56, line: 920, baseType: !968, size: 128)
!968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !965, file: !56, line: 917, size: 128, elements: !969)
!969 = !{!970, !976}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !968, file: !56, line: 918, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !972, line: 58, size: 64, elements: !973)
!972 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !971, file: !972, line: 59, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !968, file: !56, line: 919, baseType: !977, size: 128, align: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !587, line: 216, size: 128, align: 64, elements: !978)
!978 = !{!979, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !977, file: !587, line: 217, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !977, file: !587, line: 218, baseType: !982, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !980}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !965, file: !56, line: 921, baseType: !986, size: 128, offset: 128)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !987, line: 8, size: 128, elements: !988)
!987 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!988 = !{!989, !993}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !986, file: !987, line: 9, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !992, line: 18, flags: DIFlagFwdDecl)
!992 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !986, file: !987, line: 10, baseType: !994, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !992, line: 89, size: 1536, elements: !996)
!996 = !{!997, !998, !1008, !1016, !1017, !1035, !3735, !3737, !3749, !3750, !3751, !3752, !3753, !3759, !3760, !3761}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !995, file: !992, line: 91, baseType: !7, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !995, file: !992, line: 92, baseType: !999, size: 32, offset: 32)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !1000, line: 277, baseType: !1001)
!1000 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !1000, line: 277, size: 32, elements: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1001, file: !1000, line: 277, baseType: !1004, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !1000, line: 70, baseType: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !1000, line: 65, size: 32, elements: !1006)
!1006 = !{!1007}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1005, file: !1000, line: 66, baseType: !7, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !995, file: !992, line: 93, baseType: !1009, size: 128, offset: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1010, line: 38, size: 128, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!1011 = !{!1012, !1014}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1009, file: !1010, line: 39, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1009, file: !1010, line: 39, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !995, file: !992, line: 94, baseType: !994, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !995, file: !992, line: 95, baseType: !1018, size: 128, offset: 256)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !992, line: 47, size: 128, elements: !1019)
!1019 = !{!1020, !1032}
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !992, line: 48, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1018, file: !992, line: 48, size: 64, elements: !1022)
!1022 = !{!1023, !1028}
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !992, line: 49, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1021, file: !992, line: 49, size: 64, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1024, file: !992, line: 50, baseType: !130, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1024, file: !992, line: 50, baseType: !130, size: 32, offset: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1021, file: !992, line: 52, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !122, line: 23, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !124, line: 31, baseType: !1031)
!1031 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1018, file: !992, line: 54, baseType: !1033, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !995, file: !992, line: 96, baseType: !1036, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !56, line: 610, size: 4224, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1049, !1056, !1057, !1201, !3446, !3447, !3448, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3711, !3719, !3720, !3721, !3731, !3732, !3733, !3734}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1037, file: !56, line: 611, baseType: !929, size: 16)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1037, file: !56, line: 612, baseType: !129, size: 16, offset: 16)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1037, file: !56, line: 613, baseType: !1042, size: 32, offset: 32)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1043, line: 23, baseType: !1044)
!1043 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1043, line: 21, size: 32, elements: !1045)
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1044, file: !1043, line: 22, baseType: !1047, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !587, line: 32, baseType: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !921, line: 49, baseType: !7)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1037, file: !56, line: 614, baseType: !1050, size: 32, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1043, line: 28, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1043, line: 26, size: 32, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1051, file: !1043, line: 27, baseType: !1054, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !587, line: 33, baseType: !1055)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !921, line: 50, baseType: !7)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1037, file: !56, line: 615, baseType: !7, size: 32, offset: 96)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1037, file: !56, line: 622, baseType: !1058, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !56, line: 1864, size: 1536, align: 512, elements: !1061)
!1061 = !{!1062, !1066, !1077, !1081, !1087, !1091, !1097, !1101, !1105, !1109, !1113, !1114, !1120, !1124, !1148, !1177, !1181, !1187, !1192, !1196, !1197}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1060, file: !56, line: 1865, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!994, !1036, !994, !7}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1060, file: !56, line: 1866, baseType: !1067, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!716, !994, !1036, !1070}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1072, line: 10, size: 128, elements: !1073)
!1072 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!1073 = !{!1074, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1071, file: !1072, line: 11, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1071, file: !1072, line: 12, baseType: !132, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1060, file: !56, line: 1867, baseType: !1078, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!591, !1036, !591}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1060, file: !56, line: 1868, baseType: !1082, size: 64, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!1085, !1036, !591}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !56, line: 581, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1060, file: !56, line: 1870, baseType: !1088, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!591, !994, !888, !591}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1060, file: !56, line: 1872, baseType: !1092, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!591, !1036, !994, !929, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !587, line: 30, baseType: !1096)
!1096 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1060, file: !56, line: 1873, baseType: !1098, size: 64, offset: 384)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!591, !994, !1036, !994}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1060, file: !56, line: 1874, baseType: !1102, size: 64, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!591, !1036, !994}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1060, file: !56, line: 1875, baseType: !1106, size: 64, offset: 512)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!591, !1036, !994, !716}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1060, file: !56, line: 1876, baseType: !1110, size: 64, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!591, !1036, !994, !929}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1060, file: !56, line: 1877, baseType: !1102, size: 64, offset: 640)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1060, file: !56, line: 1878, baseType: !1115, size: 64, offset: 704)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!591, !1036, !994, !929, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !587, line: 16, baseType: !1119)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !587, line: 13, baseType: !130)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1060, file: !56, line: 1879, baseType: !1121, size: 64, offset: 768)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!591, !1036, !994, !1036, !994, !7}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1060, file: !56, line: 1881, baseType: !1125, size: 64, offset: 832)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!591, !994, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !56, line: 219, size: 640, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1134, !1135, !1138, !1145, !1146, !1147}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1129, file: !56, line: 220, baseType: !7, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1129, file: !56, line: 221, baseType: !929, size: 16, offset: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1129, file: !56, line: 222, baseType: !1042, size: 32, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1129, file: !56, line: 223, baseType: !1050, size: 32, offset: 96)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1129, file: !56, line: 224, baseType: !1136, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !587, line: 46, baseType: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !921, line: 88, baseType: !608)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1129, file: !56, line: 225, baseType: !1139, size: 128, offset: 192)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1140, line: 13, size: 128, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1141 = !{!1142, !1144}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1139, file: !1140, line: 14, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1140, line: 8, baseType: !607)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1139, file: !1140, line: 15, baseType: !923, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1129, file: !56, line: 226, baseType: !1139, size: 128, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1129, file: !56, line: 227, baseType: !1139, size: 128, offset: 448)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1129, file: !56, line: 234, baseType: !964, size: 64, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1060, file: !56, line: 1882, baseType: !1149, size: 64, offset: 896)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!591, !1152, !1154, !130, !7}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1156, line: 22, size: 1152, elements: !1157)
!1156 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1157 = !{!1158, !1159, !1160, !1161, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1155, file: !1156, line: 23, baseType: !130, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1155, file: !1156, line: 24, baseType: !929, size: 16, offset: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1155, file: !1156, line: 25, baseType: !7, size: 32, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1155, file: !1156, line: 26, baseType: !1162, size: 32, offset: 96)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !587, line: 104, baseType: !130)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1155, file: !1156, line: 27, baseType: !1029, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1155, file: !1156, line: 28, baseType: !1029, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1155, file: !1156, line: 37, baseType: !1029, size: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1155, file: !1156, line: 38, baseType: !1118, size: 32, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1155, file: !1156, line: 39, baseType: !1118, size: 32, offset: 352)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1155, file: !1156, line: 40, baseType: !1042, size: 32, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1155, file: !1156, line: 41, baseType: !1050, size: 32, offset: 416)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1155, file: !1156, line: 42, baseType: !1136, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1155, file: !1156, line: 43, baseType: !1139, size: 128, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1155, file: !1156, line: 44, baseType: !1139, size: 128, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1155, file: !1156, line: 45, baseType: !1139, size: 128, offset: 768)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1155, file: !1156, line: 46, baseType: !1139, size: 128, offset: 896)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1155, file: !1156, line: 47, baseType: !1029, size: 64, offset: 1024)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1155, file: !1156, line: 48, baseType: !1029, size: 64, offset: 1088)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1060, file: !56, line: 1883, baseType: !1178, size: 64, offset: 960)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!919, !994, !888, !934}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1060, file: !56, line: 1884, baseType: !1182, size: 64, offset: 1024)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!591, !1036, !1185, !1029, !1029}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !56, line: 50, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1060, file: !56, line: 1886, baseType: !1188, size: 64, offset: 1088)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!591, !1036, !1191, !591}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1060, file: !56, line: 1887, baseType: !1193, size: 64, offset: 1152)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!591, !1036, !994, !964, !7, !929}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1060, file: !56, line: 1890, baseType: !1110, size: 64, offset: 1216)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1060, file: !56, line: 1891, baseType: !1198, size: 64, offset: 1280)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!591, !1036, !1085, !591}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1037, file: !56, line: 623, baseType: !1202, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !56, line: 1416, size: 9472, elements: !1204)
!1204 = !{!1205, !1206, !1207, !1208, !1209, !1210, !1260, !3053, !3135, !3218, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3234, !3238, !3239, !3242, !3243, !3246, !3247, !3248, !3289, !3316, !3317, !3318, !3319, !3320, !3321, !3324, !3326, !3333, !3334, !3336, !3337, !3338, !3397, !3398, !3413, !3414, !3415, !3416, !3417, !3420, !3421, !3422, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1203, file: !56, line: 1417, baseType: !625, size: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1203, file: !56, line: 1418, baseType: !1118, size: 32, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1203, file: !56, line: 1419, baseType: !125, size: 8, offset: 160)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1203, file: !56, line: 1420, baseType: !680, size: 64, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1203, file: !56, line: 1421, baseType: !1136, size: 64, offset: 256)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1203, file: !56, line: 1422, baseType: !1211, size: 64, offset: 320)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !56, line: 2228, size: 576, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1223, !1227, !1231, !1235, !1239, !1240, !1250, !1253, !1254, !1255, !1257, !1258, !1259}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1212, file: !56, line: 2229, baseType: !716, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1212, file: !56, line: 2230, baseType: !591, size: 32, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1212, file: !56, line: 2238, baseType: !1217, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!591, !1220}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1222, line: 28, flags: DIFlagFwdDecl)
!1222 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1212, file: !56, line: 2239, baseType: !1224, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1226)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !56, line: 70, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1212, file: !56, line: 2240, baseType: !1228, size: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!994, !1211, !591, !716, !132}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1212, file: !56, line: 2242, baseType: !1232, size: 64, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !1202}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1212, file: !56, line: 2243, baseType: !1236, size: 64, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1238, line: 76, flags: DIFlagFwdDecl)
!1238 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1212, file: !56, line: 2244, baseType: !1211, size: 64, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1212, file: !56, line: 2245, baseType: !1241, size: 64, offset: 512)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !587, line: 182, size: 64, elements: !1242)
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1241, file: !587, line: 183, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !587, line: 186, size: 128, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1245, file: !587, line: 187, baseType: !1244, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1245, file: !587, line: 187, baseType: !1249, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1212, file: !56, line: 2247, baseType: !1251, offset: 576)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1252, line: 187, elements: !174)
!1252 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1212, file: !56, line: 2248, baseType: !1251, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1212, file: !56, line: 2249, baseType: !1251, offset: 576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1212, file: !56, line: 2250, baseType: !1256, offset: 576)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1251, elements: !889)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1212, file: !56, line: 2252, baseType: !1251, offset: 576)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1212, file: !56, line: 2253, baseType: !1251, offset: 576)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1212, file: !56, line: 2254, baseType: !1251, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1203, file: !56, line: 1423, baseType: !1261, size: 64, offset: 384)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1263)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !56, line: 1935, size: 1472, elements: !1264)
!1264 = !{!1265, !1269, !1273, !1274, !1278, !1284, !1288, !1289, !1290, !1294, !1298, !1299, !1300, !1301, !1307, !1312, !1313, !1320, !1321, !1322, !1323, !3037, !3052}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1263, file: !56, line: 1936, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!1036, !1202}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1263, file: !56, line: 1937, baseType: !1270, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !1036}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1263, file: !56, line: 1938, baseType: !1270, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1263, file: !56, line: 1940, baseType: !1275, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !1036, !591}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1263, file: !56, line: 1941, baseType: !1279, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!591, !1036, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !26, line: 40, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1263, file: !56, line: 1942, baseType: !1285, size: 64, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!591, !1036}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1263, file: !56, line: 1943, baseType: !1270, size: 64, offset: 384)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1263, file: !56, line: 1944, baseType: !1232, size: 64, offset: 448)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1263, file: !56, line: 1945, baseType: !1291, size: 64, offset: 512)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!591, !1202, !591}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1263, file: !56, line: 1946, baseType: !1295, size: 64, offset: 576)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!591, !1202}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1263, file: !56, line: 1947, baseType: !1295, size: 64, offset: 640)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1263, file: !56, line: 1948, baseType: !1295, size: 64, offset: 704)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1263, file: !56, line: 1949, baseType: !1295, size: 64, offset: 768)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1263, file: !56, line: 1950, baseType: !1302, size: 64, offset: 832)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!591, !994, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !56, line: 57, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1263, file: !56, line: 1951, baseType: !1308, size: 64, offset: 896)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!591, !1202, !1311, !888}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1263, file: !56, line: 1952, baseType: !1232, size: 64, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1263, file: !56, line: 1954, baseType: !1314, size: 64, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!591, !1317, !994}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1319, line: 539, flags: DIFlagFwdDecl)
!1319 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1263, file: !56, line: 1955, baseType: !1314, size: 64, offset: 1088)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1263, file: !56, line: 1956, baseType: !1314, size: 64, offset: 1152)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1263, file: !56, line: 1957, baseType: !1314, size: 64, offset: 1216)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1263, file: !56, line: 1963, baseType: !1324, size: 64, offset: 1280)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!591, !1202, !1327, !1350}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1329, line: 68, size: 512, align: 128, elements: !1330)
!1329 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !{!1331, !1332, !3029, !3036}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1328, file: !1329, line: 69, baseType: !680, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !1329, line: 77, baseType: !1333, size: 320, offset: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !1329, line: 77, size: 320, elements: !1334)
!1334 = !{!1335, !1510, !1515, !1543, !1551, !1557, !2960, !3028}
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1329, line: 78, baseType: !1336, size: 320)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1333, file: !1329, line: 78, size: 320, elements: !1337)
!1337 = !{!1338, !1339, !1508, !1509}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1336, file: !1329, line: 84, baseType: !625, size: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1336, file: !1329, line: 86, baseType: !1340, size: 64, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !56, line: 451, size: 1216, align: 64, elements: !1342)
!1342 = !{!1343, !1344, !1352, !1353, !1354, !1369, !1378, !1379, !1380, !1381, !1501, !1502, !1505, !1506, !1507}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1341, file: !56, line: 452, baseType: !1036, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1341, file: !56, line: 453, baseType: !1345, size: 128, offset: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1346, line: 292, size: 128, elements: !1347)
!1346 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1347 = !{!1348, !1349, !1351}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1345, file: !1346, line: 293, baseType: !610)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1345, file: !1346, line: 295, baseType: !1350, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !587, line: 148, baseType: !7)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1345, file: !1346, line: 296, baseType: !132, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1341, file: !56, line: 454, baseType: !1350, size: 32, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1341, file: !56, line: 455, baseType: !586, size: 32, offset: 224)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1341, file: !56, line: 460, baseType: !1355, size: 128, offset: 256)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1356, line: 125, size: 128, elements: !1357)
!1356 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1357 = !{!1358, !1368}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1355, file: !1356, line: 126, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1356, line: 31, size: 64, elements: !1360)
!1360 = !{!1361}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1359, file: !1356, line: 32, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1356, line: 24, size: 192, align: 64, elements: !1364)
!1364 = !{!1365, !1366, !1367}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1363, file: !1356, line: 25, baseType: !680, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1363, file: !1356, line: 26, baseType: !1362, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1363, file: !1356, line: 27, baseType: !1362, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1355, file: !1356, line: 127, baseType: !1362, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1341, file: !56, line: 461, baseType: !1370, size: 256, offset: 384)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1371, line: 35, size: 256, elements: !1372)
!1371 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1372 = !{!1373, !1374, !1375, !1377}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1370, file: !1371, line: 36, baseType: !600, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1370, file: !1371, line: 42, baseType: !600, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1370, file: !1371, line: 46, baseType: !1376, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !611, line: 29, baseType: !618)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1370, file: !1371, line: 47, baseType: !625, size: 128, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1341, file: !56, line: 462, baseType: !680, size: 64, offset: 640)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1341, file: !56, line: 463, baseType: !680, size: 64, offset: 704)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1341, file: !56, line: 464, baseType: !680, size: 64, offset: 768)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1341, file: !56, line: 465, baseType: !1382, size: 64, offset: 832)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !56, line: 367, size: 1408, elements: !1385)
!1385 = !{!1386, !1390, !1394, !1398, !1402, !1406, !1412, !1418, !1422, !1427, !1431, !1435, !1439, !1465, !1469, !1475, !1476, !1477, !1481, !1486, !1490, !1497}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1384, file: !56, line: 368, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!591, !1327, !1282}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1384, file: !56, line: 369, baseType: !1391, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!591, !964, !1327}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1384, file: !56, line: 372, baseType: !1395, size: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!591, !1340, !1282}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1384, file: !56, line: 375, baseType: !1399, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!591, !1327}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1384, file: !56, line: 381, baseType: !1403, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!591, !964, !1340, !628, !7}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1384, file: !56, line: 383, baseType: !1407, size: 64, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !56, line: 290, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1384, file: !56, line: 385, baseType: !1413, size: 64, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!591, !964, !1340, !1136, !7, !7, !1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1384, file: !56, line: 388, baseType: !1419, size: 64, offset: 448)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!591, !964, !1340, !1136, !7, !7, !1327, !132}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1384, file: !56, line: 393, baseType: !1423, size: 64, offset: 512)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!1426, !1340, !1426}
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !587, line: 125, baseType: !1029)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1384, file: !56, line: 394, baseType: !1428, size: 64, offset: 576)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{null, !1327, !7, !7}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1384, file: !56, line: 395, baseType: !1432, size: 64, offset: 640)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!591, !1327, !1350}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1384, file: !56, line: 396, baseType: !1436, size: 64, offset: 704)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !1327}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1384, file: !56, line: 397, baseType: !1440, size: 64, offset: 768)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!919, !1443, !1463}
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !56, line: 320, size: 384, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1452, !1453, !1454, !1455, !1456}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1444, file: !56, line: 321, baseType: !964, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1444, file: !56, line: 326, baseType: !1136, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1444, file: !56, line: 327, baseType: !1449, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !1443, !923, !923}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1444, file: !56, line: 328, baseType: !132, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1444, file: !56, line: 329, baseType: !591, size: 32, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1444, file: !56, line: 330, baseType: !127, size: 16, offset: 288)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1444, file: !56, line: 331, baseType: !127, size: 16, offset: 304)
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !56, line: 332, baseType: !1457, size: 64, offset: 320)
!1457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1444, file: !56, line: 332, size: 64, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1457, file: !56, line: 333, baseType: !7, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1457, file: !56, line: 334, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !56, line: 334, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !56, line: 64, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1384, file: !56, line: 402, baseType: !1466, size: 64, offset: 832)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!591, !1340, !1327, !1327, !18}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1384, file: !56, line: 404, baseType: !1470, size: 64, offset: 896)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!1095, !1327, !1473}
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1474, line: 305, baseType: !7)
!1474 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1384, file: !56, line: 405, baseType: !1436, size: 64, offset: 960)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1384, file: !56, line: 406, baseType: !1399, size: 64, offset: 1024)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1384, file: !56, line: 407, baseType: !1478, size: 64, offset: 1088)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!591, !1327, !680, !680}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1384, file: !56, line: 409, baseType: !1482, size: 64, offset: 1152)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !1327, !1485, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1384, file: !56, line: 410, baseType: !1487, size: 64, offset: 1216)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!591, !1340, !1327}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1384, file: !56, line: 413, baseType: !1491, size: 64, offset: 1280)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!591, !1494, !964, !1496}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !56, line: 61, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1384, file: !56, line: 415, baseType: !1498, size: 64, offset: 1344)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !964}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1341, file: !56, line: 466, baseType: !680, size: 64, offset: 896)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1341, file: !56, line: 467, baseType: !1503, size: 32, offset: 960)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1504, line: 8, baseType: !130)
!1504 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1341, file: !56, line: 468, baseType: !610, offset: 992)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1341, file: !56, line: 469, baseType: !625, size: 128, offset: 1024)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1341, file: !56, line: 470, baseType: !132, size: 64, offset: 1152)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1336, file: !1329, line: 87, baseType: !680, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1336, file: !1329, line: 94, baseType: !680, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1329, line: 96, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1333, file: !1329, line: 96, size: 64, elements: !1512)
!1512 = !{!1513}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1511, file: !1329, line: 101, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !587, line: 143, baseType: !1029)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1329, line: 103, baseType: !1516, size: 320)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1333, file: !1329, line: 103, size: 320, elements: !1517)
!1517 = !{!1518, !1528, !1531, !1532}
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1516, file: !1329, line: 104, baseType: !1519, size: 128)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1516, file: !1329, line: 104, size: 128, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1519, file: !1329, line: 105, baseType: !625, size: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !1329, line: 106, baseType: !1523, size: 128)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1519, file: !1329, line: 106, size: 128, elements: !1524)
!1524 = !{!1525, !1526, !1527}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1523, file: !1329, line: 107, baseType: !1327, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1523, file: !1329, line: 109, baseType: !591, size: 32, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1523, file: !1329, line: 110, baseType: !591, size: 32, offset: 96)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1516, file: !1329, line: 117, baseType: !1529, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1329, line: 117, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1516, file: !1329, line: 119, baseType: !132, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1516, file: !1329, line: 120, baseType: !1533, size: 64, offset: 256)
!1533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1516, file: !1329, line: 120, size: 64, elements: !1534)
!1534 = !{!1535, !1536, !1537}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1533, file: !1329, line: 121, baseType: !132, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1533, file: !1329, line: 122, baseType: !680, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !1329, line: 123, baseType: !1538, size: 32)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1533, file: !1329, line: 123, size: 32, elements: !1539)
!1539 = !{!1540, !1541, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1538, file: !1329, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1538, file: !1329, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1538, file: !1329, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1329, line: 130, baseType: !1544, size: 192)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1333, file: !1329, line: 130, size: 192, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1550}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1544, file: !1329, line: 131, baseType: !680, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1544, file: !1329, line: 134, baseType: !125, size: 8, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1544, file: !1329, line: 135, baseType: !125, size: 8, offset: 72)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1544, file: !1329, line: 136, baseType: !586, size: 32, offset: 96)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1544, file: !1329, line: 137, baseType: !7, size: 32, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1329, line: 139, baseType: !1552, size: 256)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1333, file: !1329, line: 139, size: 256, elements: !1553)
!1553 = !{!1554, !1555, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1552, file: !1329, line: 140, baseType: !680, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1552, file: !1329, line: 141, baseType: !586, size: 32, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1552, file: !1329, line: 143, baseType: !625, size: 128, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1329, line: 145, baseType: !1558, size: 256)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1333, file: !1329, line: 145, size: 256, elements: !1559)
!1559 = !{!1560, !1561, !1563, !1564, !2959}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1558, file: !1329, line: 146, baseType: !680, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1558, file: !1329, line: 147, baseType: !1562, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1319, line: 509, baseType: !1327)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1558, file: !1329, line: 148, baseType: !680, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1558, file: !1329, line: 149, baseType: !1565, size: 64, offset: 192)
!1565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1558, file: !1329, line: 149, size: 64, elements: !1566)
!1566 = !{!1567, !2958}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1565, file: !1329, line: 150, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1329, line: 388, size: 7296, elements: !1570)
!1570 = !{!1571, !2954}
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !1329, line: 389, baseType: !1572, size: 7296)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1569, file: !1329, line: 389, size: 7296, elements: !1573)
!1573 = !{!1574, !1692, !1693, !1694, !1698, !1699, !1700, !1701, !1702, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1743, !1749, !1752, !1792, !1793, !2938, !2939, !2942, !2943, !2944, !2947, !2948, !2949, !2952, !2953}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1572, file: !1329, line: 390, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1329, line: 305, size: 1472, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1592, !1593, !1598, !1599, !1602, !1686, !1687, !1688, !1689, !1690}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1576, file: !1329, line: 308, baseType: !680, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1576, file: !1329, line: 309, baseType: !680, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1576, file: !1329, line: 313, baseType: !1575, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1576, file: !1329, line: 313, baseType: !1575, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1576, file: !1329, line: 315, baseType: !1363, size: 192, align: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1576, file: !1329, line: 323, baseType: !680, size: 64, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1576, file: !1329, line: 327, baseType: !1568, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1576, file: !1329, line: 333, baseType: !1586, size: 64, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1319, line: 284, baseType: !1587)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1319, line: 284, size: 64, elements: !1588)
!1588 = !{!1589}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1587, file: !1319, line: 284, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1591, line: 19, baseType: !680)
!1591 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1576, file: !1329, line: 334, baseType: !680, size: 64, offset: 640)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1576, file: !1329, line: 343, baseType: !1594, size: 256, offset: 704)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !1329, line: 340, size: 256, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1594, file: !1329, line: 341, baseType: !1363, size: 192, align: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1594, file: !1329, line: 342, baseType: !680, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1576, file: !1329, line: 351, baseType: !625, size: 128, offset: 960)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1576, file: !1329, line: 353, baseType: !1600, size: 64, offset: 1088)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1329, line: 353, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1576, file: !1329, line: 356, baseType: !1603, size: 64, offset: 1152)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !26, line: 557, size: 832, elements: !1606)
!1606 = !{!1607, !1611, !1612, !1616, !1620, !1660, !1664, !1668, !1672, !1673, !1674, !1678, !1682}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1605, file: !26, line: 558, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !1575}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1605, file: !26, line: 559, baseType: !1608, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1605, file: !26, line: 560, baseType: !1613, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!591, !1575, !680}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1605, file: !26, line: 561, baseType: !1617, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!591, !1575}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1605, file: !26, line: 562, baseType: !1621, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !1329, line: 682, baseType: !7)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !26, line: 508, size: 768, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1633, !1640, !1647, !1653, !1654, !1655, !1657, !1659}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1626, file: !26, line: 509, baseType: !1575, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1626, file: !26, line: 510, baseType: !7, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1626, file: !26, line: 511, baseType: !1350, size: 32, offset: 96)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1626, file: !26, line: 512, baseType: !680, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1626, file: !26, line: 513, baseType: !680, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1626, file: !26, line: 514, baseType: !1634, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1319, line: 385, baseType: !1636)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1319, line: 385, size: 64, elements: !1637)
!1637 = !{!1638}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1636, file: !1319, line: 385, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1591, line: 15, baseType: !680)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1626, file: !26, line: 516, baseType: !1641, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1319, line: 359, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1319, line: 359, size: 64, elements: !1644)
!1644 = !{!1645}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1643, file: !1319, line: 359, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1591, line: 16, baseType: !680)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1626, file: !26, line: 519, baseType: !1648, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1591, line: 21, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1591, line: 21, size: 64, elements: !1650)
!1650 = !{!1651}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1649, file: !1591, line: 21, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1591, line: 14, baseType: !680)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1626, file: !26, line: 521, baseType: !1327, size: 64, offset: 448)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1626, file: !26, line: 522, baseType: !1327, size: 64, offset: 512)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1626, file: !26, line: 528, baseType: !1656, size: 64, offset: 576)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1626, file: !26, line: 532, baseType: !1658, size: 64, offset: 640)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1626, file: !26, line: 536, baseType: !1562, size: 64, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1605, file: !26, line: 563, baseType: !1661, size: 64, offset: 320)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!1624, !1625, !25}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1605, file: !26, line: 565, baseType: !1665, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !1625, !680, !680}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1605, file: !26, line: 567, baseType: !1669, size: 64, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!680, !1575}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1605, file: !26, line: 571, baseType: !1621, size: 64, offset: 512)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1605, file: !26, line: 574, baseType: !1621, size: 64, offset: 576)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1605, file: !26, line: 579, baseType: !1675, size: 64, offset: 640)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!591, !1575, !680, !132, !591, !591}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1605, file: !26, line: 585, baseType: !1679, size: 64, offset: 704)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!716, !1575}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1605, file: !26, line: 615, baseType: !1683, size: 64, offset: 768)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!1327, !1575, !680}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1576, file: !1329, line: 359, baseType: !680, size: 64, offset: 1216)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1576, file: !1329, line: 361, baseType: !964, size: 64, offset: 1280)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1576, file: !1329, line: 362, baseType: !132, size: 64, offset: 1344)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1576, file: !1329, line: 365, baseType: !600, size: 64, offset: 1408)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1576, file: !1329, line: 373, baseType: !1691, offset: 1472)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1329, line: 296, elements: !174)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1572, file: !1329, line: 391, baseType: !1359, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1572, file: !1329, line: 392, baseType: !1029, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1572, file: !1329, line: 394, baseType: !1695, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!680, !964, !680, !680, !680, !680}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1572, file: !1329, line: 398, baseType: !680, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1572, file: !1329, line: 399, baseType: !680, size: 64, offset: 320)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1572, file: !1329, line: 405, baseType: !680, size: 64, offset: 384)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1572, file: !1329, line: 406, baseType: !680, size: 64, offset: 448)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1572, file: !1329, line: 407, baseType: !1703, size: 64, offset: 512)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1319, line: 286, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1319, line: 286, size: 64, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1705, file: !1319, line: 286, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1591, line: 18, baseType: !680)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1572, file: !1329, line: 416, baseType: !586, size: 32, offset: 576)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1572, file: !1329, line: 428, baseType: !586, size: 32, offset: 608)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1572, file: !1329, line: 437, baseType: !586, size: 32, offset: 640)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1572, file: !1329, line: 447, baseType: !586, size: 32, offset: 672)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1572, file: !1329, line: 450, baseType: !600, size: 64, offset: 704)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1572, file: !1329, line: 452, baseType: !591, size: 32, offset: 768)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1572, file: !1329, line: 454, baseType: !610, offset: 800)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1572, file: !1329, line: 457, baseType: !1370, size: 256, offset: 832)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1572, file: !1329, line: 459, baseType: !625, size: 128, offset: 1088)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1572, file: !1329, line: 466, baseType: !680, size: 64, offset: 1216)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1572, file: !1329, line: 467, baseType: !680, size: 64, offset: 1280)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1572, file: !1329, line: 469, baseType: !680, size: 64, offset: 1344)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1572, file: !1329, line: 470, baseType: !680, size: 64, offset: 1408)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1572, file: !1329, line: 471, baseType: !602, size: 64, offset: 1472)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1572, file: !1329, line: 472, baseType: !680, size: 64, offset: 1536)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1572, file: !1329, line: 473, baseType: !680, size: 64, offset: 1600)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1572, file: !1329, line: 474, baseType: !680, size: 64, offset: 1664)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1572, file: !1329, line: 475, baseType: !680, size: 64, offset: 1728)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1572, file: !1329, line: 477, baseType: !610, offset: 1792)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1572, file: !1329, line: 478, baseType: !680, size: 64, offset: 1792)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1572, file: !1329, line: 478, baseType: !680, size: 64, offset: 1856)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1572, file: !1329, line: 478, baseType: !680, size: 64, offset: 1920)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1572, file: !1329, line: 478, baseType: !680, size: 64, offset: 1984)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1572, file: !1329, line: 479, baseType: !680, size: 64, offset: 2048)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1572, file: !1329, line: 479, baseType: !680, size: 64, offset: 2112)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1572, file: !1329, line: 479, baseType: !680, size: 64, offset: 2176)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1572, file: !1329, line: 480, baseType: !680, size: 64, offset: 2240)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1572, file: !1329, line: 480, baseType: !680, size: 64, offset: 2304)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1572, file: !1329, line: 480, baseType: !680, size: 64, offset: 2368)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1572, file: !1329, line: 480, baseType: !680, size: 64, offset: 2432)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1572, file: !1329, line: 482, baseType: !1740, size: 2816, offset: 2496)
!1740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 2816, elements: !1741)
!1741 = !{!1742}
!1742 = !DISubrange(count: 44)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1572, file: !1329, line: 488, baseType: !1744, size: 256, offset: 5312)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1745, line: 60, size: 256, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1744, file: !1745, line: 61, baseType: !1748, size: 256)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 256, elements: !670)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1572, file: !1329, line: 490, baseType: !1750, size: 64, offset: 5568)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1329, line: 490, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1572, file: !1329, line: 493, baseType: !1753, size: 896, offset: 5632)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1754, line: 53, baseType: !1755)
!1754 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1754, line: 13, size: 896, elements: !1756)
!1756 = !{!1757, !1758, !1759, !1760, !1763, !1764, !1765, !1766, !1786, !1787, !1788}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1755, file: !1754, line: 18, baseType: !1029, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1755, file: !1754, line: 28, baseType: !602, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1755, file: !1754, line: 31, baseType: !1370, size: 256, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1755, file: !1754, line: 32, baseType: !1761, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1754, line: 32, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1755, file: !1754, line: 37, baseType: !129, size: 16, offset: 448)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1755, file: !1754, line: 40, baseType: !596, size: 192, offset: 512)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1755, file: !1754, line: 41, baseType: !132, size: 64, offset: 704)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1755, file: !1754, line: 42, baseType: !1767, size: 64, offset: 768)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1769)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1770, line: 13, size: 896, elements: !1771)
!1770 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1771 = !{!1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1769, file: !1770, line: 14, baseType: !132, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1769, file: !1770, line: 15, baseType: !680, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1769, file: !1770, line: 17, baseType: !680, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1769, file: !1770, line: 17, baseType: !680, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1769, file: !1770, line: 19, baseType: !923, size: 64, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1769, file: !1770, line: 21, baseType: !923, size: 64, offset: 320)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1769, file: !1770, line: 22, baseType: !923, size: 64, offset: 384)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1769, file: !1770, line: 23, baseType: !923, size: 64, offset: 448)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1769, file: !1770, line: 24, baseType: !923, size: 64, offset: 512)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1769, file: !1770, line: 25, baseType: !923, size: 64, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1769, file: !1770, line: 26, baseType: !923, size: 64, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1769, file: !1770, line: 27, baseType: !923, size: 64, offset: 704)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1769, file: !1770, line: 28, baseType: !923, size: 64, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1769, file: !1770, line: 29, baseType: !923, size: 64, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1755, file: !1754, line: 44, baseType: !586, size: 32, offset: 832)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1755, file: !1754, line: 50, baseType: !127, size: 16, offset: 864)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1755, file: !1754, line: 51, baseType: !1789, size: 16, offset: 880)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !122, line: 18, baseType: !1790)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !124, line: 23, baseType: !1791)
!1791 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1572, file: !1329, line: 495, baseType: !680, size: 64, offset: 6528)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1572, file: !1329, line: 497, baseType: !1794, size: 64, offset: 6592)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1329, line: 381, size: 384, elements: !1796)
!1796 = !{!1797, !1798, !2937}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1795, file: !1329, line: 382, baseType: !586, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1795, file: !1329, line: 383, baseType: !1799, size: 128, offset: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1329, line: 376, size: 128, elements: !1800)
!1800 = !{!1801, !2935}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1799, file: !1329, line: 377, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1804, line: 640, size: 48640, elements: !1805)
!1804 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1805 = !{!1806, !1812, !1814, !1815, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1832, !1850, !1861, !1944, !1945, !1946, !1957, !1958, !1960, !1961, !1962, !1963, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !2042, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2117, !2119, !2120, !2121, !2133, !2134, !2135, !2136, !2137, !2138, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2162, !2167, !2347, !2348, !2349, !2350, !2351, !2354, !2357, !2360, !2363, !2389, !2490, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2536, !2537, !2538, !2539, !2540, !2545, !2546, !2547, !2550, !2551, !2554, !2557, !2560, !2563, !2595, !2598, !2599, !2678, !2679, !2682, !2683, !2686, !2687, !2688, !2692, !2693, !2694, !2707, !2708, !2709, !2719, !2724, !2727, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1803, file: !1804, line: 646, baseType: !1807, size: 128)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1808, line: 56, size: 128, elements: !1809)
!1808 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1807, file: !1808, line: 57, baseType: !680, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1807, file: !1808, line: 58, baseType: !130, size: 32, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1803, file: !1804, line: 649, baseType: !1813, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !923)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1803, file: !1804, line: 657, baseType: !132, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1803, file: !1804, line: 658, baseType: !1816, size: 32, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1817, line: 113, baseType: !1818)
!1817 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1817, line: 111, size: 32, elements: !1819)
!1819 = !{!1820}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1818, file: !1817, line: 112, baseType: !586, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1803, file: !1804, line: 660, baseType: !7, size: 32, offset: 288)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1803, file: !1804, line: 661, baseType: !7, size: 32, offset: 320)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1803, file: !1804, line: 684, baseType: !591, size: 32, offset: 352)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1803, file: !1804, line: 686, baseType: !591, size: 32, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1803, file: !1804, line: 687, baseType: !591, size: 32, offset: 416)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1803, file: !1804, line: 688, baseType: !591, size: 32, offset: 448)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1803, file: !1804, line: 689, baseType: !7, size: 32, offset: 480)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1803, file: !1804, line: 691, baseType: !1829, size: 64, offset: 512)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1831)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1804, line: 691, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1803, file: !1804, line: 692, baseType: !1833, size: 832, offset: 576)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1804, line: 451, size: 832, elements: !1834)
!1834 = !{!1835, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1833, file: !1804, line: 453, baseType: !1836, size: 128)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1804, line: 325, size: 128, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1836, file: !1804, line: 326, baseType: !680, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1836, file: !1804, line: 327, baseType: !130, size: 32, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1833, file: !1804, line: 454, baseType: !1363, size: 192, align: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1833, file: !1804, line: 455, baseType: !625, size: 128, offset: 320)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1833, file: !1804, line: 456, baseType: !7, size: 32, offset: 448)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1833, file: !1804, line: 458, baseType: !1029, size: 64, offset: 512)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1833, file: !1804, line: 459, baseType: !1029, size: 64, offset: 576)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1833, file: !1804, line: 460, baseType: !1029, size: 64, offset: 640)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1833, file: !1804, line: 461, baseType: !1029, size: 64, offset: 704)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1833, file: !1804, line: 463, baseType: !1029, size: 64, offset: 768)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1833, file: !1804, line: 465, baseType: !1849, offset: 832)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1804, line: 415, elements: !174)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1803, file: !1804, line: 693, baseType: !1851, size: 384, offset: 1408)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1804, line: 489, size: 384, elements: !1852)
!1852 = !{!1853, !1854, !1855, !1856, !1857, !1858, !1859}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1851, file: !1804, line: 490, baseType: !625, size: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1851, file: !1804, line: 491, baseType: !680, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1851, file: !1804, line: 492, baseType: !680, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1851, file: !1804, line: 493, baseType: !7, size: 32, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1851, file: !1804, line: 494, baseType: !129, size: 16, offset: 288)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1851, file: !1804, line: 495, baseType: !129, size: 16, offset: 304)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1851, file: !1804, line: 497, baseType: !1860, size: 64, offset: 320)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1803, file: !1804, line: 697, baseType: !1862, size: 1792, offset: 1792)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1804, line: 507, size: 1792, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1941, !1942}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1862, file: !1804, line: 508, baseType: !1363, size: 192, align: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1862, file: !1804, line: 515, baseType: !1029, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1862, file: !1804, line: 516, baseType: !1029, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1862, file: !1804, line: 517, baseType: !1029, size: 64, offset: 320)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1862, file: !1804, line: 518, baseType: !1029, size: 64, offset: 384)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1862, file: !1804, line: 519, baseType: !1029, size: 64, offset: 448)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1862, file: !1804, line: 526, baseType: !606, size: 64, offset: 512)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1862, file: !1804, line: 527, baseType: !1029, size: 64, offset: 576)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1862, file: !1804, line: 528, baseType: !7, size: 32, offset: 640)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1862, file: !1804, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1862, file: !1804, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1862, file: !1804, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1862, file: !1804, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1862, file: !1804, line: 563, baseType: !1878, size: 512, offset: 704)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !32, line: 118, size: 512, elements: !1879)
!1879 = !{!1880, !1888, !1889, !1894, !1937, !1938, !1939, !1940}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1878, file: !32, line: 119, baseType: !1881, size: 256)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1882, line: 9, size: 256, elements: !1883)
!1882 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1881, file: !1882, line: 10, baseType: !1363, size: 192, align: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1881, file: !1882, line: 11, baseType: !1886, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1887, line: 29, baseType: !606)
!1887 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1878, file: !32, line: 120, baseType: !1886, size: 64, offset: 256)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1878, file: !32, line: 121, baseType: !1890, size: 64, offset: 320)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!31, !1893}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1878, file: !32, line: 122, baseType: !1895, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !32, line: 159, size: 512, align: 512, elements: !1897)
!1897 = !{!1898, !1918, !1919, !1922, !1927, !1928, !1932, !1936}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1896, file: !32, line: 160, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !32, line: 214, size: 4608, align: 512, elements: !1901)
!1901 = !{!1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1900, file: !32, line: 215, baseType: !1376)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1900, file: !32, line: 216, baseType: !7, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1900, file: !32, line: 217, baseType: !7, size: 32, offset: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1900, file: !32, line: 218, baseType: !7, size: 32, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1900, file: !32, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1900, file: !32, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1900, file: !32, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1900, file: !32, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1900, file: !32, line: 233, baseType: !1886, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1900, file: !32, line: 234, baseType: !1893, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1900, file: !32, line: 235, baseType: !1886, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1900, file: !32, line: 236, baseType: !1893, size: 64, offset: 320)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1900, file: !32, line: 237, baseType: !1915, size: 4096, offset: 512)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1896, size: 4096, elements: !1916)
!1916 = !{!1917}
!1917 = !DISubrange(count: 8)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1896, file: !32, line: 161, baseType: !7, size: 32, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1896, file: !32, line: 162, baseType: !1920, size: 32, offset: 96)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !587, line: 27, baseType: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !921, line: 96, baseType: !591)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1896, file: !32, line: 163, baseType: !1923, size: 32, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !1000, line: 276, baseType: !1924)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !1000, line: 276, size: 32, elements: !1925)
!1925 = !{!1926}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1924, file: !1000, line: 276, baseType: !1004, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1896, file: !32, line: 164, baseType: !1893, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1896, file: !32, line: 165, baseType: !1929, size: 128, offset: 256)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1882, line: 14, size: 128, elements: !1930)
!1930 = !{!1931}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1929, file: !1882, line: 15, baseType: !1355, size: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1896, file: !32, line: 166, baseType: !1933, size: 64, offset: 384)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!1886}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1896, file: !32, line: 167, baseType: !1886, size: 64, offset: 448)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1878, file: !32, line: 123, baseType: !121, size: 8, offset: 448)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1878, file: !32, line: 124, baseType: !121, size: 8, offset: 456)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1878, file: !32, line: 125, baseType: !121, size: 8, offset: 464)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1878, file: !32, line: 126, baseType: !121, size: 8, offset: 472)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1862, file: !1804, line: 572, baseType: !1878, size: 512, offset: 1216)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1862, file: !1804, line: 580, baseType: !1943, size: 64, offset: 1728)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1803, file: !1804, line: 721, baseType: !7, size: 32, offset: 3584)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1803, file: !1804, line: 722, baseType: !591, size: 32, offset: 3616)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1803, file: !1804, line: 723, baseType: !1947, size: 64, offset: 3648)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1949)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1950, line: 17, baseType: !1951)
!1950 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1950, line: 17, size: 64, elements: !1952)
!1952 = !{!1953}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1951, file: !1950, line: 17, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 64, elements: !1955)
!1955 = !{!1956}
!1956 = !DISubrange(count: 1)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1803, file: !1804, line: 724, baseType: !1949, size: 64, offset: 3712)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1803, file: !1804, line: 749, baseType: !1959, offset: 3776)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1804, line: 290, elements: !174)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1803, file: !1804, line: 751, baseType: !625, size: 128, offset: 3776)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1803, file: !1804, line: 757, baseType: !1568, size: 64, offset: 3904)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1803, file: !1804, line: 758, baseType: !1568, size: 64, offset: 3968)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1803, file: !1804, line: 761, baseType: !1964, size: 320, offset: 4032)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1745, line: 34, size: 320, elements: !1965)
!1965 = !{!1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1964, file: !1745, line: 35, baseType: !1029, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1964, file: !1745, line: 36, baseType: !1968, size: 256, offset: 64)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1575, size: 256, elements: !670)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1803, file: !1804, line: 766, baseType: !591, size: 32, offset: 4352)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1803, file: !1804, line: 767, baseType: !591, size: 32, offset: 4384)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1803, file: !1804, line: 768, baseType: !591, size: 32, offset: 4416)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1803, file: !1804, line: 770, baseType: !591, size: 32, offset: 4448)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1803, file: !1804, line: 772, baseType: !680, size: 64, offset: 4480)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1803, file: !1804, line: 775, baseType: !7, size: 32, offset: 4544)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1803, file: !1804, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1803, file: !1804, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1803, file: !1804, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1803, file: !1804, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1803, file: !1804, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1803, file: !1804, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1803, file: !1804, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1803, file: !1804, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1803, file: !1804, line: 831, baseType: !680, size: 64, offset: 4672)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1803, file: !1804, line: 833, baseType: !1985, size: 384, offset: 4736)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !37, line: 25, size: 384, elements: !1986)
!1986 = !{!1987, !1992}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1985, file: !37, line: 26, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!923, !1991}
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !37, line: 27, baseType: !1993, size: 320, offset: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !37, line: 27, size: 320, elements: !1994)
!1994 = !{!1995, !2005, !2032}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1993, file: !37, line: 36, baseType: !1996, size: 320)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1993, file: !37, line: 29, size: 320, elements: !1997)
!1997 = !{!1998, !2000, !2001, !2002, !2003, !2004}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1996, file: !37, line: 30, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1996, file: !37, line: 31, baseType: !130, size: 32, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1996, file: !37, line: 32, baseType: !130, size: 32, offset: 96)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1996, file: !37, line: 33, baseType: !130, size: 32, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1996, file: !37, line: 34, baseType: !1029, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1996, file: !37, line: 35, baseType: !1999, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1993, file: !37, line: 46, baseType: !2006, size: 192)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1993, file: !37, line: 38, size: 192, elements: !2007)
!2007 = !{!2008, !2009, !2010, !2031}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2006, file: !37, line: 39, baseType: !1920, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2006, file: !37, line: 40, baseType: !36, size: 32, offset: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, scope: !2006, file: !37, line: 41, baseType: !2011, size: 64, offset: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2006, file: !37, line: 41, size: 64, elements: !2012)
!2012 = !{!2013, !2021}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2011, file: !37, line: 42, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2016, line: 7, size: 128, elements: !2017)
!2016 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2017 = !{!2018, !2020}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2015, file: !2016, line: 8, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !921, line: 93, baseType: !608)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2015, file: !2016, line: 9, baseType: !608, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2011, file: !37, line: 43, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2024, line: 7, size: 64, elements: !2025)
!2024 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2025 = !{!2026, !2030}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2023, file: !2024, line: 8, baseType: !2027, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2024, line: 5, baseType: !2028)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !122, line: 20, baseType: !2029)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !124, line: 26, baseType: !591)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2023, file: !2024, line: 9, baseType: !2028, size: 32, offset: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2006, file: !37, line: 45, baseType: !1029, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1993, file: !37, line: 54, baseType: !2033, size: 256)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1993, file: !37, line: 48, size: 256, elements: !2034)
!2034 = !{!2035, !2038, !2039, !2040, !2041}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2033, file: !37, line: 49, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !37, line: 14, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2033, file: !37, line: 50, baseType: !591, size: 32, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2033, file: !37, line: 51, baseType: !591, size: 32, offset: 96)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2033, file: !37, line: 52, baseType: !680, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2033, file: !37, line: 53, baseType: !680, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1803, file: !1804, line: 835, baseType: !2043, size: 32, offset: 5120)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !587, line: 22, baseType: !2044)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !921, line: 28, baseType: !591)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1803, file: !1804, line: 836, baseType: !2043, size: 32, offset: 5152)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1803, file: !1804, line: 840, baseType: !680, size: 64, offset: 5184)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1803, file: !1804, line: 849, baseType: !1802, size: 64, offset: 5248)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1803, file: !1804, line: 852, baseType: !1802, size: 64, offset: 5312)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1803, file: !1804, line: 857, baseType: !625, size: 128, offset: 5376)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1803, file: !1804, line: 858, baseType: !625, size: 128, offset: 5504)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1803, file: !1804, line: 859, baseType: !1802, size: 64, offset: 5632)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1803, file: !1804, line: 867, baseType: !625, size: 128, offset: 5696)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1803, file: !1804, line: 868, baseType: !625, size: 128, offset: 5824)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1803, file: !1804, line: 871, baseType: !2055, size: 64, offset: 5952)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !65, line: 59, size: 768, elements: !2057)
!2057 = !{!2058, !2059, !2060, !2061, !2063, !2064, !2071, !2072}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2056, file: !65, line: 61, baseType: !1816, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2056, file: !65, line: 62, baseType: !7, size: 32, offset: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2056, file: !65, line: 63, baseType: !610, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2056, file: !65, line: 65, baseType: !2062, size: 256, offset: 64)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1241, size: 256, elements: !670)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2056, file: !65, line: 66, baseType: !1241, size: 64, offset: 320)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2056, file: !65, line: 68, baseType: !2065, size: 128, offset: 384)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !2066, line: 40, baseType: !2067)
!2066 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !2066, line: 36, size: 128, elements: !2068)
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2067, file: !2066, line: 37, baseType: !610)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2067, file: !2066, line: 38, baseType: !625, size: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2056, file: !65, line: 69, baseType: !977, size: 128, align: 64, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2056, file: !65, line: 70, baseType: !2073, size: 128, offset: 640)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2074, size: 128, elements: !1955)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !65, line: 54, size: 128, elements: !2075)
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2074, file: !65, line: 55, baseType: !591, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2074, file: !65, line: 56, baseType: !2078, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !2080, line: 20, size: 1088, elements: !2081)
!2080 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!2081 = !{!2082, !2087, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2103, !2106, !2107}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2079, file: !2080, line: 21, baseType: !2083, size: 32)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2084, line: 19, size: 32, elements: !2085)
!2084 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2085 = !{!2086}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2083, file: !2084, line: 20, baseType: !1816, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !2079, file: !2080, line: 22, baseType: !2088, size: 192, offset: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2089, line: 19, size: 192, elements: !2090)
!2089 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2090 = !{!2091, !2092, !2093}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2088, file: !2089, line: 20, baseType: !1345, size: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2088, file: !2089, line: 21, baseType: !7, size: 32, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2088, file: !2089, line: 22, baseType: !7, size: 32, offset: 160)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2079, file: !2080, line: 23, baseType: !977, size: 128, align: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !2079, file: !2080, line: 24, baseType: !7, size: 32, offset: 384)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !2079, file: !2080, line: 25, baseType: !1802, size: 64, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !2079, file: !2080, line: 26, baseType: !1529, size: 64, offset: 512)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2079, file: !2080, line: 27, baseType: !7, size: 32, offset: 576)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2079, file: !2080, line: 28, baseType: !2078, size: 64, offset: 640)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2079, file: !2080, line: 32, baseType: !2101, size: 64, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1043, line: 18, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2079, file: !2080, line: 33, baseType: !2104, size: 64, offset: 768)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2080, line: 33, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !2079, file: !2080, line: 34, baseType: !591, size: 32, offset: 832)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2079, file: !2080, line: 35, baseType: !2108, size: 192, offset: 896)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2109, line: 7, size: 192, elements: !2110)
!2109 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111, !2112, !2116}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2108, file: !2109, line: 8, baseType: !600, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2108, file: !2109, line: 9, baseType: !2113, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2115)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2109, line: 5, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2108, file: !2109, line: 10, baseType: !7, size: 32, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1803, file: !1804, line: 872, baseType: !2118, size: 512, offset: 6016)
!2118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1245, size: 512, elements: !670)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1803, file: !1804, line: 873, baseType: !625, size: 128, offset: 6528)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1803, file: !1804, line: 874, baseType: !625, size: 128, offset: 6656)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1803, file: !1804, line: 876, baseType: !2122, size: 64, offset: 6784)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2124, line: 26, size: 192, elements: !2125)
!2124 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2123, file: !2124, line: 27, baseType: !7, size: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2123, file: !2124, line: 28, baseType: !2128, size: 128, offset: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2129, line: 43, size: 128, elements: !2130)
!2129 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2128, file: !2129, line: 44, baseType: !1376)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2128, file: !2129, line: 45, baseType: !625, size: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1803, file: !1804, line: 879, baseType: !1311, size: 64, offset: 6848)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1803, file: !1804, line: 882, baseType: !1311, size: 64, offset: 6912)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1803, file: !1804, line: 884, baseType: !1029, size: 64, offset: 6976)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1803, file: !1804, line: 885, baseType: !1029, size: 64, offset: 7040)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1803, file: !1804, line: 890, baseType: !1029, size: 64, offset: 7104)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1803, file: !1804, line: 891, baseType: !2139, size: 128, offset: 7168)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1804, line: 242, size: 128, elements: !2140)
!2140 = !{!2141, !2142, !2143}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2139, file: !1804, line: 244, baseType: !1029, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2139, file: !1804, line: 245, baseType: !1029, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2139, file: !1804, line: 246, baseType: !1376, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1803, file: !1804, line: 900, baseType: !680, size: 64, offset: 7296)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1803, file: !1804, line: 901, baseType: !680, size: 64, offset: 7360)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1803, file: !1804, line: 904, baseType: !1029, size: 64, offset: 7424)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1803, file: !1804, line: 907, baseType: !1029, size: 64, offset: 7488)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1803, file: !1804, line: 910, baseType: !680, size: 64, offset: 7552)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1803, file: !1804, line: 911, baseType: !680, size: 64, offset: 7616)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1803, file: !1804, line: 914, baseType: !2151, size: 640, offset: 7680)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2152, line: 123, size: 640, elements: !2153)
!2152 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2153 = !{!2154, !2160, !2161}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2151, file: !2152, line: 124, baseType: !2155, size: 576)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2156, size: 576, elements: !889)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2152, line: 108, size: 192, elements: !2157)
!2157 = !{!2158, !2159}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2156, file: !2152, line: 109, baseType: !1029, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2156, file: !2152, line: 110, baseType: !1929, size: 128, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2151, file: !2152, line: 125, baseType: !7, size: 32, offset: 576)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2151, file: !2152, line: 126, baseType: !7, size: 32, offset: 608)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1803, file: !1804, line: 917, baseType: !2163, size: 192, offset: 8320)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2152, line: 134, size: 192, elements: !2164)
!2164 = !{!2165, !2166}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2163, file: !2152, line: 135, baseType: !977, size: 128, align: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2163, file: !2152, line: 136, baseType: !7, size: 32, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1803, file: !1804, line: 923, baseType: !2168, size: 64, offset: 8512)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2170)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2171, line: 111, size: 1280, elements: !2172)
!2171 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2190, !2191, !2192, !2193, !2194, !2195, !2302, !2303, !2304, !2305, !2331, !2332, !2342}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2170, file: !2171, line: 112, baseType: !586, size: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2170, file: !2171, line: 120, baseType: !1042, size: 32, offset: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2170, file: !2171, line: 121, baseType: !1050, size: 32, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2170, file: !2171, line: 122, baseType: !1042, size: 32, offset: 96)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2170, file: !2171, line: 123, baseType: !1050, size: 32, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2170, file: !2171, line: 124, baseType: !1042, size: 32, offset: 160)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2170, file: !2171, line: 125, baseType: !1050, size: 32, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2170, file: !2171, line: 126, baseType: !1042, size: 32, offset: 224)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2170, file: !2171, line: 127, baseType: !1050, size: 32, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2170, file: !2171, line: 128, baseType: !7, size: 32, offset: 288)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2170, file: !2171, line: 129, baseType: !2184, size: 64, offset: 320)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2185, line: 26, baseType: !2186)
!2185 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2185, line: 24, size: 64, elements: !2187)
!2187 = !{!2188}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2186, file: !2185, line: 25, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 64, elements: !695)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2170, file: !2171, line: 130, baseType: !2184, size: 64, offset: 384)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2170, file: !2171, line: 131, baseType: !2184, size: 64, offset: 448)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2170, file: !2171, line: 132, baseType: !2184, size: 64, offset: 512)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2170, file: !2171, line: 133, baseType: !2184, size: 64, offset: 576)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2170, file: !2171, line: 135, baseType: !125, size: 8, offset: 640)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2170, file: !2171, line: 137, baseType: !2196, size: 64, offset: 704)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2198, line: 189, size: 1664, elements: !2199)
!2198 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2199 = !{!2200, !2201, !2204, !2209, !2210, !2213, !2214, !2219, !2220, !2221, !2222, !2224, !2225, !2226, !2227, !2228, !2266, !2287}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2197, file: !2198, line: 190, baseType: !1816, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2197, file: !2198, line: 191, baseType: !2202, size: 32, offset: 32)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2198, line: 28, baseType: !2203)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !587, line: 98, baseType: !2028)
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !2198, line: 192, baseType: !2205, size: 192, offset: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2197, file: !2198, line: 192, size: 192, elements: !2206)
!2206 = !{!2207, !2208}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2205, file: !2198, line: 193, baseType: !625, size: 128)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2205, file: !2198, line: 194, baseType: !1363, size: 192, align: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2197, file: !2198, line: 199, baseType: !1370, size: 256, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2197, file: !2198, line: 200, baseType: !2211, size: 64, offset: 512)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2198, line: 200, flags: DIFlagFwdDecl)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2197, file: !2198, line: 201, baseType: !132, size: 64, offset: 576)
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !2198, line: 202, baseType: !2215, size: 64, offset: 640)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2197, file: !2198, line: 202, size: 64, elements: !2216)
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2215, file: !2198, line: 203, baseType: !1143, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2215, file: !2198, line: 204, baseType: !1143, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2197, file: !2198, line: 206, baseType: !1143, size: 64, offset: 704)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2197, file: !2198, line: 207, baseType: !1042, size: 32, offset: 768)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2197, file: !2198, line: 208, baseType: !1050, size: 32, offset: 800)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2197, file: !2198, line: 209, baseType: !2223, size: 32, offset: 832)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2198, line: 31, baseType: !1162)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2197, file: !2198, line: 210, baseType: !129, size: 16, offset: 864)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2197, file: !2198, line: 211, baseType: !129, size: 16, offset: 880)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2197, file: !2198, line: 215, baseType: !1791, size: 16, offset: 896)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2197, file: !2198, line: 222, baseType: !680, size: 64, offset: 960)
!2228 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !2198, line: 239, baseType: !2229, size: 320, offset: 1024)
!2229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2197, file: !2198, line: 239, size: 320, elements: !2230)
!2230 = !{!2231, !2258}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2229, file: !2198, line: 240, baseType: !2232, size: 320)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2198, line: 108, size: 320, elements: !2233)
!2233 = !{!2234, !2235, !2247, !2250, !2257}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2232, file: !2198, line: 110, baseType: !680, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !2198, line: 111, baseType: !2236, size: 64, offset: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2232, file: !2198, line: 111, size: 64, elements: !2237)
!2237 = !{!2238, !2246}
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !2198, line: 112, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2236, file: !2198, line: 112, size: 64, elements: !2240)
!2240 = !{!2241, !2242}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2239, file: !2198, line: 114, baseType: !127, size: 16)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2239, file: !2198, line: 115, baseType: !2243, size: 48, offset: 16)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 48, elements: !2244)
!2244 = !{!2245}
!2245 = !DISubrange(count: 6)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2236, file: !2198, line: 121, baseType: !680, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2232, file: !2198, line: 123, baseType: !2248, size: 64, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2198, line: 96, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2232, file: !2198, line: 124, baseType: !2251, size: 64, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2198, line: 102, size: 192, elements: !2253)
!2253 = !{!2254, !2255, !2256}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2252, file: !2198, line: 103, baseType: !977, size: 128, align: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2252, file: !2198, line: 104, baseType: !1816, size: 32, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2252, file: !2198, line: 105, baseType: !1095, size: 8, offset: 160)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2232, file: !2198, line: 125, baseType: !716, size: 64, offset: 256)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2229, file: !2198, line: 241, baseType: !2259, size: 320)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2229, file: !2198, line: 241, size: 320, elements: !2260)
!2260 = !{!2261, !2262, !2263, !2264, !2265}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2259, file: !2198, line: 242, baseType: !680, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2259, file: !2198, line: 243, baseType: !680, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2259, file: !2198, line: 244, baseType: !2248, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2259, file: !2198, line: 245, baseType: !2251, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2259, file: !2198, line: 246, baseType: !888, size: 64, offset: 256)
!2266 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !2198, line: 254, baseType: !2267, size: 256, offset: 1344)
!2267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2197, file: !2198, line: 254, size: 256, elements: !2268)
!2268 = !{!2269, !2275}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2267, file: !2198, line: 255, baseType: !2270, size: 256)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2198, line: 128, size: 256, elements: !2271)
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2270, file: !2198, line: 129, baseType: !132, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2270, file: !2198, line: 130, baseType: !2274, size: 256)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 256, elements: !670)
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !2198, line: 256, baseType: !2276, size: 256)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2267, file: !2198, line: 256, size: 256, elements: !2277)
!2277 = !{!2278, !2279}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2276, file: !2198, line: 258, baseType: !625, size: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2276, file: !2198, line: 259, baseType: !2280, size: 128, offset: 128)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2281, line: 22, size: 128, elements: !2282)
!2281 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2282 = !{!2283, !2286}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2280, file: !2281, line: 23, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2281, line: 23, flags: DIFlagFwdDecl)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2280, file: !2281, line: 24, baseType: !680, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2197, file: !2198, line: 274, baseType: !2288, size: 64, offset: 1600)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2198, line: 170, size: 192, elements: !2290)
!2290 = !{!2291, !2300, !2301}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2289, file: !2198, line: 171, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2198, line: 165, baseType: !2293)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!591, !2196, !2296, !2298, !2196}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2249)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2270)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2289, file: !2198, line: 172, baseType: !2196, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2289, file: !2198, line: 173, baseType: !2248, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2170, file: !2171, line: 138, baseType: !2196, size: 64, offset: 768)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2170, file: !2171, line: 139, baseType: !2196, size: 64, offset: 832)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2170, file: !2171, line: 140, baseType: !2196, size: 64, offset: 896)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2170, file: !2171, line: 145, baseType: !2306, size: 64, offset: 960)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2308, line: 13, size: 896, elements: !2309)
!2308 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2309 = !{!2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2307, file: !2308, line: 14, baseType: !1816, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2307, file: !2308, line: 15, baseType: !586, size: 32, offset: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2307, file: !2308, line: 16, baseType: !586, size: 32, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2307, file: !2308, line: 21, baseType: !600, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2307, file: !2308, line: 27, baseType: !680, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2307, file: !2308, line: 28, baseType: !680, size: 64, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2307, file: !2308, line: 29, baseType: !600, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2307, file: !2308, line: 32, baseType: !1245, size: 128, offset: 384)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2307, file: !2308, line: 33, baseType: !1042, size: 32, offset: 512)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2307, file: !2308, line: 37, baseType: !600, size: 64, offset: 576)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2307, file: !2308, line: 44, baseType: !2321, size: 256, offset: 640)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2322, line: 15, size: 256, elements: !2323)
!2322 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2323 = !{!2324, !2325, !2326, !2327, !2328, !2329, !2330}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2321, file: !2322, line: 16, baseType: !1376)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2321, file: !2322, line: 18, baseType: !591, size: 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2321, file: !2322, line: 19, baseType: !591, size: 32, offset: 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2321, file: !2322, line: 20, baseType: !591, size: 32, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2321, file: !2322, line: 21, baseType: !591, size: 32, offset: 96)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2321, file: !2322, line: 22, baseType: !680, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2321, file: !2322, line: 23, baseType: !680, size: 64, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2170, file: !2171, line: 146, baseType: !2101, size: 64, offset: 1024)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2170, file: !2171, line: 147, baseType: !2333, size: 64, offset: 1088)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2171, line: 25, size: 64, elements: !2335)
!2335 = !{!2336, !2337, !2338}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2334, file: !2171, line: 26, baseType: !586, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2334, file: !2171, line: 27, baseType: !591, size: 32, offset: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2334, file: !2171, line: 28, baseType: !2339, offset: 64)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1050, elements: !2340)
!2340 = !{!2341}
!2341 = !DISubrange(count: 0)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !2170, file: !2171, line: 149, baseType: !2343, size: 128, offset: 1152)
!2343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2170, file: !2171, line: 149, size: 128, elements: !2344)
!2344 = !{!2345, !2346}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2343, file: !2171, line: 150, baseType: !591, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2343, file: !2171, line: 151, baseType: !977, size: 128, align: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1803, file: !1804, line: 926, baseType: !2168, size: 64, offset: 8576)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1803, file: !1804, line: 929, baseType: !2168, size: 64, offset: 8640)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1803, file: !1804, line: 933, baseType: !2196, size: 64, offset: 8704)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1803, file: !1804, line: 943, baseType: !676, size: 128, offset: 8768)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1803, file: !1804, line: 945, baseType: !2352, size: 64, offset: 8896)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1804, line: 49, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1803, file: !1804, line: 956, baseType: !2355, size: 64, offset: 8960)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1804, line: 45, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1803, file: !1804, line: 959, baseType: !2358, size: 64, offset: 9024)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1804, line: 959, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1803, file: !1804, line: 962, baseType: !2361, size: 64, offset: 9088)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1804, line: 66, flags: DIFlagFwdDecl)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1803, file: !1804, line: 966, baseType: !2364, size: 64, offset: 9152)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2366, line: 31, size: 576, elements: !2367)
!2366 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!2367 = !{!2368, !2369, !2372, !2375, !2378, !2379, !2382, !2385, !2386}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2365, file: !2366, line: 32, baseType: !586, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2365, file: !2366, line: 33, baseType: !2370, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2366, line: 9, flags: DIFlagFwdDecl)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2365, file: !2366, line: 34, baseType: !2373, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2366, line: 10, flags: DIFlagFwdDecl)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2365, file: !2366, line: 35, baseType: !2376, size: 64, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2366, line: 8, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2365, file: !2366, line: 36, baseType: !2078, size: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2365, file: !2366, line: 37, baseType: !2380, size: 64, offset: 320)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2198, line: 34, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2365, file: !2366, line: 38, baseType: !2383, size: 64, offset: 384)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2366, line: 38, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2365, file: !2366, line: 39, baseType: !2383, size: 64, offset: 448)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2365, file: !2366, line: 40, baseType: !2387, size: 64, offset: 512)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2366, line: 12, flags: DIFlagFwdDecl)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1803, file: !1804, line: 969, baseType: !2390, size: 64, offset: 9216)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2392, line: 82, size: 7296, elements: !2393)
!2392 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2393 = !{!2394, !2395, !2396, !2397, !2398, !2399, !2400, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2429, !2438, !2439, !2441, !2442, !2443, !2446, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2476, !2477, !2484, !2485, !2486, !2487, !2488, !2489}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2391, file: !2392, line: 83, baseType: !1816, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2391, file: !2392, line: 84, baseType: !586, size: 32, offset: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2391, file: !2392, line: 85, baseType: !591, size: 32, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2391, file: !2392, line: 86, baseType: !625, size: 128, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2391, file: !2392, line: 88, baseType: !2065, size: 128, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2391, file: !2392, line: 91, baseType: !1802, size: 64, offset: 384)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2391, file: !2392, line: 94, baseType: !2401, size: 192, offset: 448)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2402, line: 30, size: 192, elements: !2403)
!2402 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2403 = !{!2404, !2405}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2401, file: !2402, line: 31, baseType: !625, size: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2401, file: !2402, line: 32, baseType: !2406, size: 64, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2407, line: 25, baseType: !2408)
!2407 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2407, line: 23, size: 64, elements: !2409)
!2409 = !{!2410}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2408, file: !2407, line: 24, baseType: !1954, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2391, file: !2392, line: 97, baseType: !1241, size: 64, offset: 640)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2391, file: !2392, line: 100, baseType: !591, size: 32, offset: 704)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2391, file: !2392, line: 106, baseType: !591, size: 32, offset: 736)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2391, file: !2392, line: 107, baseType: !1802, size: 64, offset: 768)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2391, file: !2392, line: 110, baseType: !591, size: 32, offset: 832)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2391, file: !2392, line: 111, baseType: !7, size: 32, offset: 864)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2391, file: !2392, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2391, file: !2392, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2391, file: !2392, line: 128, baseType: !591, size: 32, offset: 928)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2391, file: !2392, line: 129, baseType: !625, size: 128, offset: 960)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2391, file: !2392, line: 132, baseType: !1878, size: 512, offset: 1088)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2391, file: !2392, line: 133, baseType: !1886, size: 64, offset: 1600)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2391, file: !2392, line: 140, baseType: !2424, size: 256, offset: 1664)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2425, size: 256, elements: !695)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2392, line: 38, size: 128, elements: !2426)
!2426 = !{!2427, !2428}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2425, file: !2392, line: 39, baseType: !1029, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2425, file: !2392, line: 40, baseType: !1029, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2391, file: !2392, line: 146, baseType: !2430, size: 192, offset: 1920)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2392, line: 66, size: 192, elements: !2431)
!2431 = !{!2432}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2430, file: !2392, line: 67, baseType: !2433, size: 192)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2392, line: 47, size: 192, elements: !2434)
!2434 = !{!2435, !2436, !2437}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2433, file: !2392, line: 48, baseType: !602, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2433, file: !2392, line: 49, baseType: !602, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2433, file: !2392, line: 50, baseType: !602, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2391, file: !2392, line: 150, baseType: !2151, size: 640, offset: 2112)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2391, file: !2392, line: 153, baseType: !2440, size: 256, offset: 2752)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2055, size: 256, elements: !670)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2391, file: !2392, line: 159, baseType: !2055, size: 64, offset: 3008)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2391, file: !2392, line: 162, baseType: !591, size: 32, offset: 3072)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2391, file: !2392, line: 164, baseType: !2444, size: 64, offset: 3136)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2392, line: 164, flags: DIFlagFwdDecl)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2391, file: !2392, line: 175, baseType: !2447, size: 32, offset: 3200)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !1000, line: 805, baseType: !2448)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1000, line: 798, size: 32, elements: !2449)
!2449 = !{!2450, !2451}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2448, file: !1000, line: 803, baseType: !999, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2448, file: !1000, line: 804, baseType: !610, offset: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2391, file: !2392, line: 176, baseType: !1029, size: 64, offset: 3264)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2391, file: !2392, line: 176, baseType: !1029, size: 64, offset: 3328)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2391, file: !2392, line: 176, baseType: !1029, size: 64, offset: 3392)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2391, file: !2392, line: 176, baseType: !1029, size: 64, offset: 3456)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2391, file: !2392, line: 177, baseType: !1029, size: 64, offset: 3520)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2391, file: !2392, line: 178, baseType: !1029, size: 64, offset: 3584)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2391, file: !2392, line: 179, baseType: !2139, size: 128, offset: 3648)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2391, file: !2392, line: 180, baseType: !680, size: 64, offset: 3776)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2391, file: !2392, line: 180, baseType: !680, size: 64, offset: 3840)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2391, file: !2392, line: 180, baseType: !680, size: 64, offset: 3904)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2391, file: !2392, line: 180, baseType: !680, size: 64, offset: 3968)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2391, file: !2392, line: 181, baseType: !680, size: 64, offset: 4032)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2391, file: !2392, line: 181, baseType: !680, size: 64, offset: 4096)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2391, file: !2392, line: 181, baseType: !680, size: 64, offset: 4160)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2391, file: !2392, line: 181, baseType: !680, size: 64, offset: 4224)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2391, file: !2392, line: 182, baseType: !680, size: 64, offset: 4288)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2391, file: !2392, line: 182, baseType: !680, size: 64, offset: 4352)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2391, file: !2392, line: 182, baseType: !680, size: 64, offset: 4416)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2391, file: !2392, line: 182, baseType: !680, size: 64, offset: 4480)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2391, file: !2392, line: 183, baseType: !680, size: 64, offset: 4544)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2391, file: !2392, line: 183, baseType: !680, size: 64, offset: 4608)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2391, file: !2392, line: 184, baseType: !2474, offset: 4672)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2475, line: 12, elements: !174)
!2475 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2391, file: !2392, line: 192, baseType: !1031, size: 64, offset: 4672)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2391, file: !2392, line: 203, baseType: !2478, size: 2048, offset: 4736)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2479, size: 2048, elements: !677)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2480, line: 43, size: 128, elements: !2481)
!2480 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2481 = !{!2482, !2483}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2479, file: !2480, line: 44, baseType: !936, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2479, file: !2480, line: 45, baseType: !936, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2391, file: !2392, line: 220, baseType: !1095, size: 8, offset: 6784)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2391, file: !2392, line: 221, baseType: !1791, size: 16, offset: 6800)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2391, file: !2392, line: 222, baseType: !1791, size: 16, offset: 6816)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2391, file: !2392, line: 224, baseType: !1568, size: 64, offset: 6848)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2391, file: !2392, line: 227, baseType: !596, size: 192, offset: 6912)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2391, file: !2392, line: 233, baseType: !596, size: 192, offset: 7104)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1803, file: !1804, line: 970, baseType: !2491, size: 64, offset: 9280)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2392, line: 20, size: 16576, elements: !2493)
!2493 = !{!2494, !2495, !2496, !2497}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2492, file: !2392, line: 21, baseType: !610)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2492, file: !2392, line: 22, baseType: !1816, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2492, file: !2392, line: 23, baseType: !2065, size: 128, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2492, file: !2392, line: 24, baseType: !2498, size: 16384, offset: 192)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2499, size: 16384, elements: !893)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2402, line: 49, size: 256, elements: !2500)
!2500 = !{!2501}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2499, file: !2402, line: 50, baseType: !2502, size: 256)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2402, line: 35, size: 256, elements: !2503)
!2503 = !{!2504, !2511, !2512, !2518}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2502, file: !2402, line: 37, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2506, line: 19, baseType: !2507)
!2506 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2506, line: 18, baseType: !2509)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{null, !591}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2502, file: !2402, line: 38, baseType: !680, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2502, file: !2402, line: 44, baseType: !2513, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2506, line: 22, baseType: !2514)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2506, line: 21, baseType: !2516)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{null}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2502, file: !2402, line: 46, baseType: !2406, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1803, file: !1804, line: 971, baseType: !2406, size: 64, offset: 9344)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1803, file: !1804, line: 972, baseType: !2406, size: 64, offset: 9408)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1803, file: !1804, line: 974, baseType: !2406, size: 64, offset: 9472)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1803, file: !1804, line: 975, baseType: !2401, size: 192, offset: 9536)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1803, file: !1804, line: 976, baseType: !680, size: 64, offset: 9728)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1803, file: !1804, line: 977, baseType: !934, size: 64, offset: 9792)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1803, file: !1804, line: 978, baseType: !7, size: 32, offset: 9856)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1803, file: !1804, line: 980, baseType: !980, size: 64, offset: 9920)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1803, file: !1804, line: 989, baseType: !2528, size: 128, offset: 9984)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2529, line: 35, size: 128, elements: !2530)
!2529 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2530 = !{!2531, !2532, !2533}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2528, file: !2529, line: 36, baseType: !591, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2528, file: !2529, line: 37, baseType: !586, size: 32, offset: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2528, file: !2529, line: 38, baseType: !2534, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2529, line: 23, flags: DIFlagFwdDecl)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1803, file: !1804, line: 992, baseType: !1029, size: 64, offset: 10112)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1803, file: !1804, line: 993, baseType: !1029, size: 64, offset: 10176)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1803, file: !1804, line: 996, baseType: !610, offset: 10240)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1803, file: !1804, line: 999, baseType: !1376, offset: 10240)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1803, file: !1804, line: 1001, baseType: !2541, size: 64, offset: 10240)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1804, line: 636, size: 64, elements: !2542)
!2542 = !{!2543}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2541, file: !1804, line: 637, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1803, file: !1804, line: 1005, baseType: !1355, size: 128, offset: 10304)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1803, file: !1804, line: 1007, baseType: !1802, size: 64, offset: 10432)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1803, file: !1804, line: 1009, baseType: !2548, size: 64, offset: 10496)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1804, line: 1009, flags: DIFlagFwdDecl)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1803, file: !1804, line: 1043, baseType: !132, size: 64, offset: 10560)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1803, file: !1804, line: 1046, baseType: !2552, size: 64, offset: 10624)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1804, line: 41, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1803, file: !1804, line: 1050, baseType: !2555, size: 64, offset: 10688)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1804, line: 42, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1803, file: !1804, line: 1054, baseType: !2558, size: 64, offset: 10752)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1804, line: 55, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1803, file: !1804, line: 1056, baseType: !2561, size: 64, offset: 10816)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1804, line: 40, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1803, file: !1804, line: 1058, baseType: !2564, size: 64, offset: 10880)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2566, line: 99, size: 704, elements: !2567)
!2566 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2567 = !{!2568, !2569, !2570, !2571, !2572, !2573, !2574, !2593, !2594}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2565, file: !2566, line: 100, baseType: !600, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2565, file: !2566, line: 101, baseType: !586, size: 32, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2565, file: !2566, line: 102, baseType: !586, size: 32, offset: 96)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2565, file: !2566, line: 105, baseType: !610, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2565, file: !2566, line: 107, baseType: !129, size: 16, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2565, file: !2566, line: 109, baseType: !1345, size: 128, offset: 192)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2565, file: !2566, line: 110, baseType: !2575, size: 64, offset: 320)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2566, line: 73, size: 448, elements: !2577)
!2577 = !{!2578, !2581, !2582, !2587, !2592}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2576, file: !2566, line: 74, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2566, line: 74, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2576, file: !2566, line: 75, baseType: !2564, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, scope: !2576, file: !2566, line: 83, baseType: !2583, size: 128, offset: 128)
!2583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2576, file: !2566, line: 83, size: 128, elements: !2584)
!2584 = !{!2585, !2586}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2583, file: !2566, line: 84, baseType: !625, size: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2583, file: !2566, line: 85, baseType: !1529, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, scope: !2576, file: !2566, line: 87, baseType: !2588, size: 128, offset: 256)
!2588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2576, file: !2566, line: 87, size: 128, elements: !2589)
!2589 = !{!2590, !2591}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2588, file: !2566, line: 88, baseType: !1245, size: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2588, file: !2566, line: 89, baseType: !977, size: 128, align: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2576, file: !2566, line: 92, baseType: !7, size: 32, offset: 384)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2565, file: !2566, line: 111, baseType: !1241, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2565, file: !2566, line: 113, baseType: !760, size: 256, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1803, file: !1804, line: 1061, baseType: !2596, size: 64, offset: 10944)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1804, line: 43, flags: DIFlagFwdDecl)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1803, file: !1804, line: 1064, baseType: !680, size: 64, offset: 11008)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1803, file: !1804, line: 1065, baseType: !2600, size: 64, offset: 11072)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2402, line: 14, baseType: !2602)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2402, line: 12, size: 384, elements: !2603)
!2603 = !{!2604}
!2604 = !DIDerivedType(tag: DW_TAG_member, scope: !2602, file: !2402, line: 13, baseType: !2605, size: 384)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2602, file: !2402, line: 13, size: 384, elements: !2606)
!2606 = !{!2607, !2608, !2609, !2610}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2605, file: !2402, line: 13, baseType: !591, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2605, file: !2402, line: 13, baseType: !591, size: 32, offset: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2605, file: !2402, line: 13, baseType: !591, size: 32, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2605, file: !2402, line: 13, baseType: !2611, size: 256, offset: 128)
!2611 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2612, line: 32, size: 256, elements: !2613)
!2612 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2613 = !{!2614, !2619, !2632, !2638, !2647, !2667, !2672}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2611, file: !2612, line: 37, baseType: !2615, size: 64)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !2612, line: 34, size: 64, elements: !2616)
!2616 = !{!2617, !2618}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2615, file: !2612, line: 35, baseType: !2044, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2615, file: !2612, line: 36, baseType: !1048, size: 32, offset: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2611, file: !2612, line: 45, baseType: !2620, size: 192)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !2612, line: 40, size: 192, elements: !2621)
!2621 = !{!2622, !2624, !2625, !2631}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2620, file: !2612, line: 41, baseType: !2623, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !921, line: 95, baseType: !591)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2620, file: !2612, line: 42, baseType: !591, size: 32, offset: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2620, file: !2612, line: 43, baseType: !2626, size: 64, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2612, line: 11, baseType: !2627)
!2627 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2612, line: 8, size: 64, elements: !2628)
!2628 = !{!2629, !2630}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2627, file: !2612, line: 9, baseType: !591, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2627, file: !2612, line: 10, baseType: !132, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2620, file: !2612, line: 44, baseType: !591, size: 32, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2611, file: !2612, line: 52, baseType: !2633, size: 128)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !2612, line: 48, size: 128, elements: !2634)
!2634 = !{!2635, !2636, !2637}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2633, file: !2612, line: 49, baseType: !2044, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2633, file: !2612, line: 50, baseType: !1048, size: 32, offset: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2633, file: !2612, line: 51, baseType: !2626, size: 64, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2611, file: !2612, line: 61, baseType: !2639, size: 256)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !2612, line: 55, size: 256, elements: !2640)
!2640 = !{!2641, !2642, !2643, !2644, !2646}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2639, file: !2612, line: 56, baseType: !2044, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2639, file: !2612, line: 57, baseType: !1048, size: 32, offset: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2639, file: !2612, line: 58, baseType: !591, size: 32, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2639, file: !2612, line: 59, baseType: !2645, size: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !921, line: 94, baseType: !922)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2639, file: !2612, line: 60, baseType: !2645, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2611, file: !2612, line: 95, baseType: !2648, size: 256)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !2612, line: 64, size: 256, elements: !2649)
!2649 = !{!2650, !2651}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2648, file: !2612, line: 65, baseType: !132, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !2612, line: 77, baseType: !2652, size: 192, offset: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2648, file: !2612, line: 77, size: 192, elements: !2653)
!2653 = !{!2654, !2655, !2662}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2652, file: !2612, line: 82, baseType: !1791, size: 16)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2652, file: !2612, line: 88, baseType: !2656, size: 192)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2652, file: !2612, line: 84, size: 192, elements: !2657)
!2657 = !{!2658, !2660, !2661}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2656, file: !2612, line: 85, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !1916)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2656, file: !2612, line: 86, baseType: !132, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2656, file: !2612, line: 87, baseType: !132, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2652, file: !2612, line: 93, baseType: !2663, size: 96)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2652, file: !2612, line: 90, size: 96, elements: !2664)
!2664 = !{!2665, !2666}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2663, file: !2612, line: 91, baseType: !2659, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2663, file: !2612, line: 92, baseType: !131, size: 32, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2611, file: !2612, line: 101, baseType: !2668, size: 128)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !2612, line: 98, size: 128, elements: !2669)
!2669 = !{!2670, !2671}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2668, file: !2612, line: 99, baseType: !923, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2668, file: !2612, line: 100, baseType: !591, size: 32, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2611, file: !2612, line: 108, baseType: !2673, size: 128)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !2612, line: 104, size: 128, elements: !2674)
!2674 = !{!2675, !2676, !2677}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2673, file: !2612, line: 105, baseType: !132, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2673, file: !2612, line: 106, baseType: !591, size: 32, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2673, file: !2612, line: 107, baseType: !7, size: 32, offset: 96)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1803, file: !1804, line: 1067, baseType: !2474, offset: 11136)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1803, file: !1804, line: 1099, baseType: !2680, size: 64, offset: 11136)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1804, line: 56, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1803, file: !1804, line: 1103, baseType: !625, size: 128, offset: 11200)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1803, file: !1804, line: 1104, baseType: !2684, size: 64, offset: 11328)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1804, line: 46, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1803, file: !1804, line: 1105, baseType: !596, size: 192, offset: 11392)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1803, file: !1804, line: 1106, baseType: !7, size: 32, offset: 11584)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1803, file: !1804, line: 1109, baseType: !2689, size: 128, offset: 11648)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2690, size: 128, elements: !695)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1804, line: 51, flags: DIFlagFwdDecl)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1803, file: !1804, line: 1110, baseType: !596, size: 192, offset: 11776)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1803, file: !1804, line: 1111, baseType: !625, size: 128, offset: 11968)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1803, file: !1804, line: 1173, baseType: !2695, size: 64, offset: 12096)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2697, line: 62, size: 256, align: 256, elements: !2698)
!2697 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2698 = !{!2699, !2700, !2701, !2706}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2696, file: !2697, line: 75, baseType: !131, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2696, file: !2697, line: 90, baseType: !131, size: 32, offset: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2696, file: !2697, line: 124, baseType: !2702, size: 64, offset: 64)
!2702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2696, file: !2697, line: 109, size: 64, elements: !2703)
!2703 = !{!2704, !2705}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2702, file: !2697, line: 110, baseType: !1030, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2702, file: !2697, line: 112, baseType: !1030, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2696, file: !2697, line: 144, baseType: !131, size: 32, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1803, file: !1804, line: 1174, baseType: !130, size: 32, offset: 12160)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1803, file: !1804, line: 1179, baseType: !680, size: 64, offset: 12224)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1803, file: !1804, line: 1182, baseType: !2710, size: 128, offset: 12288)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1745, line: 76, size: 128, elements: !2711)
!2711 = !{!2712, !2717, !2718}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2710, file: !1745, line: 85, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2714, line: 7, size: 64, elements: !2715)
!2714 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2715 = !{!2716}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2713, file: !2714, line: 12, baseType: !1951, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2710, file: !1745, line: 88, baseType: !1095, size: 8, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2710, file: !1745, line: 95, baseType: !1095, size: 8, offset: 72)
!2719 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !1804, line: 1184, baseType: !2720, size: 128, offset: 12416)
!2720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1803, file: !1804, line: 1184, size: 128, elements: !2721)
!2721 = !{!2722, !2723}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2720, file: !1804, line: 1185, baseType: !1816, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2720, file: !1804, line: 1186, baseType: !977, size: 128, align: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1803, file: !1804, line: 1190, baseType: !2725, size: 64, offset: 12544)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1804, line: 53, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1803, file: !1804, line: 1192, baseType: !2728, size: 128, offset: 12608)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1745, line: 64, size: 128, elements: !2729)
!2729 = !{!2730, !2731, !2732}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2728, file: !1745, line: 65, baseType: !1327, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2728, file: !1745, line: 67, baseType: !131, size: 32, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2728, file: !1745, line: 68, baseType: !131, size: 32, offset: 96)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1803, file: !1804, line: 1206, baseType: !591, size: 32, offset: 12736)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1803, file: !1804, line: 1207, baseType: !591, size: 32, offset: 12768)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1803, file: !1804, line: 1209, baseType: !680, size: 64, offset: 12800)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1803, file: !1804, line: 1219, baseType: !1029, size: 64, offset: 12864)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1803, file: !1804, line: 1220, baseType: !1029, size: 64, offset: 12928)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1803, file: !1804, line: 1317, baseType: !591, size: 32, offset: 12992)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1803, file: !1804, line: 1319, baseType: !1802, size: 64, offset: 13056)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1803, file: !1804, line: 1322, baseType: !2741, size: 64, offset: 13120)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2743, line: 56, size: 512, elements: !2744)
!2743 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750, !2751, !2753}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2742, file: !2743, line: 57, baseType: !2741, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2742, file: !2743, line: 58, baseType: !132, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2742, file: !2743, line: 59, baseType: !680, size: 64, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2742, file: !2743, line: 60, baseType: !680, size: 64, offset: 192)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2742, file: !2743, line: 61, baseType: !1416, size: 64, offset: 256)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2742, file: !2743, line: 62, baseType: !7, size: 32, offset: 320)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2742, file: !2743, line: 63, baseType: !2752, size: 64, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !587, line: 153, baseType: !1029)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2742, file: !2743, line: 64, baseType: !2754, size: 64, offset: 448)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1803, file: !1804, line: 1326, baseType: !1816, size: 32, offset: 13184)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1803, file: !1804, line: 1342, baseType: !132, size: 64, offset: 13248)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1803, file: !1804, line: 1343, baseType: !1030, size: 64, offset: 13312)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1803, file: !1804, line: 1344, baseType: !1029, size: 64, offset: 13376)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1803, file: !1804, line: 1345, baseType: !1030, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1803, file: !1804, line: 1346, baseType: !1030, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1803, file: !1804, line: 1347, baseType: !1030, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1803, file: !1804, line: 1348, baseType: !977, size: 128, align: 64, offset: 13504)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1803, file: !1804, line: 1358, baseType: !2765, size: 34816, offset: 13824)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2766, line: 485, size: 34816, elements: !2767)
!2766 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2767 = !{!2768, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2797, !2798, !2799, !2800, !2801, !2802, !2805, !2806, !2807}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2765, file: !2766, line: 487, baseType: !2769, size: 192)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2770, size: 192, elements: !889)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2771, line: 16, size: 64, elements: !2772)
!2771 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2772 = !{!2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2770, file: !2771, line: 17, baseType: !127, size: 16)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2770, file: !2771, line: 18, baseType: !127, size: 16, offset: 16)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2770, file: !2771, line: 19, baseType: !127, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2770, file: !2771, line: 19, baseType: !127, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2770, file: !2771, line: 19, baseType: !127, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2770, file: !2771, line: 19, baseType: !127, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2770, file: !2771, line: 19, baseType: !127, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2770, file: !2771, line: 20, baseType: !127, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2770, file: !2771, line: 20, baseType: !127, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2770, file: !2771, line: 20, baseType: !127, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2770, file: !2771, line: 20, baseType: !127, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2770, file: !2771, line: 20, baseType: !127, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2770, file: !2771, line: 20, baseType: !127, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2765, file: !2766, line: 491, baseType: !680, size: 64, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2765, file: !2766, line: 495, baseType: !129, size: 16, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2765, file: !2766, line: 496, baseType: !129, size: 16, offset: 272)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2765, file: !2766, line: 497, baseType: !129, size: 16, offset: 288)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2765, file: !2766, line: 498, baseType: !129, size: 16, offset: 304)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2765, file: !2766, line: 502, baseType: !680, size: 64, offset: 320)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2765, file: !2766, line: 503, baseType: !680, size: 64, offset: 384)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2765, file: !2766, line: 514, baseType: !2794, size: 256, offset: 448)
!2794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2795, size: 256, elements: !670)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2766, line: 483, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2765, file: !2766, line: 516, baseType: !680, size: 64, offset: 704)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2765, file: !2766, line: 518, baseType: !680, size: 64, offset: 768)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2765, file: !2766, line: 520, baseType: !680, size: 64, offset: 832)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2765, file: !2766, line: 521, baseType: !680, size: 64, offset: 896)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2765, file: !2766, line: 522, baseType: !680, size: 64, offset: 960)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2765, file: !2766, line: 528, baseType: !2803, size: 64, offset: 1024)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2766, line: 10, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2765, file: !2766, line: 535, baseType: !680, size: 64, offset: 1088)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2765, file: !2766, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2765, file: !2766, line: 540, baseType: !2808, size: 33280, offset: 1536)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2809, line: 317, size: 33280, elements: !2810)
!2809 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2810 = !{!2811, !2812, !2813}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2808, file: !2809, line: 330, baseType: !7, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2808, file: !2809, line: 337, baseType: !680, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2808, file: !2809, line: 348, baseType: !2814, size: 32768, offset: 512)
!2814 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2809, line: 304, size: 32768, elements: !2815)
!2815 = !{!2816, !2829, !2868, !2918, !2931}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2814, file: !2809, line: 305, baseType: !2817, size: 896)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2809, line: 12, size: 896, elements: !2818)
!2818 = !{!2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2828}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2817, file: !2809, line: 13, baseType: !130, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2817, file: !2809, line: 14, baseType: !130, size: 32, offset: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2817, file: !2809, line: 15, baseType: !130, size: 32, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2817, file: !2809, line: 16, baseType: !130, size: 32, offset: 96)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2817, file: !2809, line: 17, baseType: !130, size: 32, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2817, file: !2809, line: 18, baseType: !130, size: 32, offset: 160)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2817, file: !2809, line: 19, baseType: !130, size: 32, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2817, file: !2809, line: 22, baseType: !2827, size: 640, offset: 224)
!2827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 640, elements: !153)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2817, file: !2809, line: 25, baseType: !130, size: 32, offset: 864)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2814, file: !2809, line: 306, baseType: !2830, size: 4096, align: 128)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2809, line: 34, size: 4096, align: 128, elements: !2831)
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2851, !2852, !2853, !2857, !2859, !2863}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2830, file: !2809, line: 35, baseType: !127, size: 16)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2830, file: !2809, line: 36, baseType: !127, size: 16, offset: 16)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2830, file: !2809, line: 37, baseType: !127, size: 16, offset: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2830, file: !2809, line: 38, baseType: !127, size: 16, offset: 48)
!2836 = !DIDerivedType(tag: DW_TAG_member, scope: !2830, file: !2809, line: 39, baseType: !2837, size: 128, offset: 64)
!2837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2830, file: !2809, line: 39, size: 128, elements: !2838)
!2838 = !{!2839, !2844}
!2839 = !DIDerivedType(tag: DW_TAG_member, scope: !2837, file: !2809, line: 40, baseType: !2840, size: 128)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2837, file: !2809, line: 40, size: 128, elements: !2841)
!2841 = !{!2842, !2843}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2840, file: !2809, line: 41, baseType: !1029, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2840, file: !2809, line: 42, baseType: !1029, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, scope: !2837, file: !2809, line: 44, baseType: !2845, size: 128)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2837, file: !2809, line: 44, size: 128, elements: !2846)
!2846 = !{!2847, !2848, !2849, !2850}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2845, file: !2809, line: 45, baseType: !130, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2845, file: !2809, line: 46, baseType: !130, size: 32, offset: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2845, file: !2809, line: 47, baseType: !130, size: 32, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2845, file: !2809, line: 48, baseType: !130, size: 32, offset: 96)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2830, file: !2809, line: 51, baseType: !130, size: 32, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2830, file: !2809, line: 52, baseType: !130, size: 32, offset: 224)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2830, file: !2809, line: 55, baseType: !2854, size: 1024, offset: 256)
!2854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 1024, elements: !2855)
!2855 = !{!2856}
!2856 = !DISubrange(count: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2830, file: !2809, line: 58, baseType: !2858, size: 2048, offset: 1280)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 2048, elements: !893)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2830, file: !2809, line: 60, baseType: !2860, size: 384, offset: 3328)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 384, elements: !2861)
!2861 = !{!2862}
!2862 = !DISubrange(count: 12)
!2863 = !DIDerivedType(tag: DW_TAG_member, scope: !2830, file: !2809, line: 62, baseType: !2864, size: 384, offset: 3712)
!2864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2830, file: !2809, line: 62, size: 384, elements: !2865)
!2865 = !{!2866, !2867}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2864, file: !2809, line: 63, baseType: !2860, size: 384)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2864, file: !2809, line: 64, baseType: !2860, size: 384)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2814, file: !2809, line: 307, baseType: !2869, size: 1088)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2809, line: 79, size: 1088, elements: !2870)
!2870 = !{!2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2917}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2869, file: !2809, line: 80, baseType: !130, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2869, file: !2809, line: 81, baseType: !130, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2869, file: !2809, line: 82, baseType: !130, size: 32, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2869, file: !2809, line: 83, baseType: !130, size: 32, offset: 96)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2869, file: !2809, line: 84, baseType: !130, size: 32, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2869, file: !2809, line: 85, baseType: !130, size: 32, offset: 160)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2869, file: !2809, line: 86, baseType: !130, size: 32, offset: 192)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2869, file: !2809, line: 88, baseType: !2827, size: 640, offset: 224)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2869, file: !2809, line: 89, baseType: !121, size: 8, offset: 864)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2869, file: !2809, line: 90, baseType: !121, size: 8, offset: 872)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2869, file: !2809, line: 91, baseType: !121, size: 8, offset: 880)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2869, file: !2809, line: 92, baseType: !121, size: 8, offset: 888)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2869, file: !2809, line: 93, baseType: !121, size: 8, offset: 896)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2869, file: !2809, line: 94, baseType: !121, size: 8, offset: 904)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2869, file: !2809, line: 95, baseType: !2886, size: 64, offset: 960)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2888, line: 11, size: 128, elements: !2889)
!2888 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2887, file: !2888, line: 12, baseType: !923, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2887, file: !2888, line: 13, baseType: !2892, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2894, line: 56, size: 1344, elements: !2895)
!2894 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2895 = !{!2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2893, file: !2894, line: 61, baseType: !680, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2893, file: !2894, line: 62, baseType: !680, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2893, file: !2894, line: 63, baseType: !680, size: 64, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2893, file: !2894, line: 64, baseType: !680, size: 64, offset: 192)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2893, file: !2894, line: 65, baseType: !680, size: 64, offset: 256)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2893, file: !2894, line: 66, baseType: !680, size: 64, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2893, file: !2894, line: 68, baseType: !680, size: 64, offset: 384)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2893, file: !2894, line: 69, baseType: !680, size: 64, offset: 448)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2893, file: !2894, line: 70, baseType: !680, size: 64, offset: 512)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2893, file: !2894, line: 71, baseType: !680, size: 64, offset: 576)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2893, file: !2894, line: 72, baseType: !680, size: 64, offset: 640)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2893, file: !2894, line: 73, baseType: !680, size: 64, offset: 704)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2893, file: !2894, line: 74, baseType: !680, size: 64, offset: 768)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2893, file: !2894, line: 75, baseType: !680, size: 64, offset: 832)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2893, file: !2894, line: 76, baseType: !680, size: 64, offset: 896)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2893, file: !2894, line: 81, baseType: !680, size: 64, offset: 960)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2893, file: !2894, line: 83, baseType: !680, size: 64, offset: 1024)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2893, file: !2894, line: 84, baseType: !680, size: 64, offset: 1088)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2893, file: !2894, line: 85, baseType: !680, size: 64, offset: 1152)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2893, file: !2894, line: 86, baseType: !680, size: 64, offset: 1216)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2893, file: !2894, line: 87, baseType: !680, size: 64, offset: 1280)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2869, file: !2809, line: 96, baseType: !130, size: 32, offset: 1024)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2814, file: !2809, line: 308, baseType: !2919, size: 4608, align: 512)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2809, line: 289, size: 4608, align: 512, elements: !2920)
!2920 = !{!2921, !2922, !2929}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2919, file: !2809, line: 290, baseType: !2830, size: 4096, align: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2919, file: !2809, line: 291, baseType: !2923, size: 512, offset: 4096)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2809, line: 268, size: 512, elements: !2924)
!2924 = !{!2925, !2926, !2927}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2923, file: !2809, line: 269, baseType: !1029, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2923, file: !2809, line: 270, baseType: !1029, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2923, file: !2809, line: 271, baseType: !2928, size: 384, offset: 128)
!2928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 384, elements: !2244)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2919, file: !2809, line: 292, baseType: !2930, offset: 4608)
!2930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, elements: !2340)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2814, file: !2809, line: 309, baseType: !2932, size: 32768)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 32768, elements: !2933)
!2933 = !{!2934}
!2934 = !DISubrange(count: 4096)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1799, file: !1329, line: 378, baseType: !2936, size: 64, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1795, file: !1329, line: 384, baseType: !2123, size: 192, offset: 192)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1572, file: !1329, line: 500, baseType: !610, offset: 6656)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1572, file: !1329, line: 501, baseType: !2940, size: 64, offset: 6656)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1329, line: 387, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1572, file: !1329, line: 516, baseType: !2101, size: 64, offset: 6720)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1572, file: !1329, line: 519, baseType: !964, size: 64, offset: 6784)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1572, file: !1329, line: 521, baseType: !2945, size: 64, offset: 6848)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1329, line: 521, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1572, file: !1329, line: 545, baseType: !586, size: 32, offset: 6912)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1572, file: !1329, line: 548, baseType: !1095, size: 8, offset: 6944)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1572, file: !1329, line: 550, baseType: !2950, offset: 6952)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2951, line: 142, elements: !174)
!2951 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1572, file: !1329, line: 554, baseType: !760, size: 256, offset: 6976)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1572, file: !1329, line: 557, baseType: !130, size: 32, offset: 7232)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1569, file: !1329, line: 565, baseType: !2955, offset: 7296)
!2955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, elements: !2956)
!2956 = !{!2957}
!2957 = !DISubrange(count: -1)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1565, file: !1329, line: 151, baseType: !586, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1558, file: !1329, line: 156, baseType: !610, offset: 256)
!2960 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1329, line: 159, baseType: !2961, size: 128)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1333, file: !1329, line: 159, size: 128, elements: !2962)
!2962 = !{!2963, !3027}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2961, file: !1329, line: 161, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 110, size: 1152, elements: !2966)
!2966 = !{!2967, !2977, !2998, !2999, !3000, !3001, !3002, !3014, !3015, !3016}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2965, file: !43, line: 111, baseType: !2968, size: 384)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 19, size: 384, elements: !2969)
!2969 = !{!2970, !2972, !2973, !2974, !2975, !2976}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2968, file: !43, line: 20, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2968, file: !43, line: 21, baseType: !2971, size: 64, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2968, file: !43, line: 22, baseType: !2971, size: 64, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2968, file: !43, line: 23, baseType: !680, size: 64, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2968, file: !43, line: 24, baseType: !680, size: 64, offset: 256)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2968, file: !43, line: 25, baseType: !680, size: 64, offset: 320)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2965, file: !43, line: 112, baseType: !2978, size: 64, offset: 384)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2980, line: 105, size: 128, elements: !2981)
!2980 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2981 = !{!2982, !2983}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2979, file: !2980, line: 110, baseType: !680, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2979, file: !2980, line: 118, baseType: !2984, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2980, line: 95, size: 448, elements: !2986)
!2986 = !{!2987, !2988, !2993, !2994, !2995, !2996, !2997}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2985, file: !2980, line: 96, baseType: !600, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2985, file: !2980, line: 97, baseType: !2989, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2980, line: 60, baseType: !2991)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{null, !2978}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2985, file: !2980, line: 98, baseType: !2989, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2985, file: !2980, line: 99, baseType: !1095, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2985, file: !2980, line: 100, baseType: !1095, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2985, file: !2980, line: 101, baseType: !977, size: 128, align: 64, offset: 256)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2985, file: !2980, line: 102, baseType: !2978, size: 64, offset: 384)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2965, file: !43, line: 113, baseType: !2979, size: 128, offset: 448)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2965, file: !43, line: 114, baseType: !2123, size: 192, offset: 576)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2965, file: !43, line: 115, baseType: !42, size: 32, offset: 768)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2965, file: !43, line: 116, baseType: !7, size: 32, offset: 800)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2965, file: !43, line: 117, baseType: !3003, size: 64, offset: 832)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3005)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 67, size: 256, elements: !3006)
!3006 = !{!3007, !3008, !3012, !3013}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3005, file: !43, line: 73, baseType: !1436, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3005, file: !43, line: 78, baseType: !3009, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !2964}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3005, file: !43, line: 83, baseType: !3009, size: 64, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3005, file: !43, line: 89, baseType: !1621, size: 64, offset: 192)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2965, file: !43, line: 118, baseType: !132, size: 64, offset: 896)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2965, file: !43, line: 119, baseType: !591, size: 32, offset: 960)
!3016 = !DIDerivedType(tag: DW_TAG_member, scope: !2965, file: !43, line: 120, baseType: !3017, size: 128, offset: 1024)
!3017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2965, file: !43, line: 120, size: 128, elements: !3018)
!3018 = !{!3019, !3025}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3017, file: !43, line: 121, baseType: !3020, size: 128)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3021, line: 6, size: 128, elements: !3022)
!3021 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3022 = !{!3023, !3024}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3020, file: !3021, line: 7, baseType: !1029, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3020, file: !3021, line: 8, baseType: !1029, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3017, file: !43, line: 122, baseType: !3026)
!3026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3020, elements: !2340)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2961, file: !1329, line: 162, baseType: !132, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1333, file: !1329, line: 176, baseType: !977, size: 128, align: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !1329, line: 179, baseType: !3030, size: 32, offset: 384)
!3030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !1329, line: 179, size: 32, elements: !3031)
!3031 = !{!3032, !3033, !3034, !3035}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3030, file: !1329, line: 184, baseType: !586, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3030, file: !1329, line: 192, baseType: !7, size: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3030, file: !1329, line: 194, baseType: !7, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3030, file: !1329, line: 195, baseType: !591, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1328, file: !1329, line: 199, baseType: !586, size: 32, offset: 416)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1263, file: !56, line: 1964, baseType: !3038, size: 64, offset: 1344)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!923, !1202, !3041}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3043, line: 12, size: 256, elements: !3044)
!3043 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3044 = !{!3045, !3046, !3047, !3048, !3049}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3042, file: !3043, line: 13, baseType: !1350, size: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3042, file: !3043, line: 16, baseType: !591, size: 32, offset: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3042, file: !3043, line: 23, baseType: !680, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3042, file: !3043, line: 30, baseType: !680, size: 64, offset: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3042, file: !3043, line: 33, baseType: !3050, size: 64, offset: 192)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1329, line: 27, flags: DIFlagFwdDecl)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1263, file: !56, line: 1966, baseType: !3038, size: 64, offset: 1408)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1203, file: !56, line: 1424, baseType: !3054, size: 64, offset: 448)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3056)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !50, line: 322, size: 704, elements: !3057)
!3057 = !{!3058, !3104, !3108, !3112, !3113, !3114, !3115, !3116, !3121, !3126, !3130}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3056, file: !50, line: 323, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!591, !3062}
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !50, line: 294, size: 1600, elements: !3064)
!3064 = !{!3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3089, !3090, !3091}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3063, file: !50, line: 295, baseType: !1245, size: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3063, file: !50, line: 296, baseType: !625, size: 128, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3063, file: !50, line: 297, baseType: !625, size: 128, offset: 256)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3063, file: !50, line: 298, baseType: !625, size: 128, offset: 384)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3063, file: !50, line: 299, baseType: !596, size: 192, offset: 512)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3063, file: !50, line: 300, baseType: !610, offset: 704)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3063, file: !50, line: 301, baseType: !586, size: 32, offset: 704)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3063, file: !50, line: 302, baseType: !1202, size: 64, offset: 768)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3063, file: !50, line: 303, baseType: !3074, size: 64, offset: 832)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !50, line: 68, size: 64, elements: !3075)
!3075 = !{!3076, !3088}
!3076 = !DIDerivedType(tag: DW_TAG_member, scope: !3074, file: !50, line: 69, baseType: !3077, size: 32)
!3077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3074, file: !50, line: 69, size: 32, elements: !3078)
!3078 = !{!3079, !3080, !3081}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3077, file: !50, line: 70, baseType: !1042, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3077, file: !50, line: 71, baseType: !1050, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3077, file: !50, line: 72, baseType: !3082, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3083, line: 24, baseType: !3084)
!3083 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3083, line: 22, size: 32, elements: !3085)
!3085 = !{!3086}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3084, file: !3083, line: 23, baseType: !3087, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3083, line: 20, baseType: !1048)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3074, file: !50, line: 74, baseType: !49, size: 32, offset: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3063, file: !50, line: 304, baseType: !1136, size: 64, offset: 896)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3063, file: !50, line: 305, baseType: !680, size: 64, offset: 960)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3063, file: !50, line: 306, baseType: !3092, size: 576, offset: 1024)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !50, line: 205, size: 576, elements: !3093)
!3093 = !{!3094, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3092, file: !50, line: 206, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !50, line: 66, baseType: !608)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3092, file: !50, line: 207, baseType: !3095, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3092, file: !50, line: 208, baseType: !3095, size: 64, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3092, file: !50, line: 209, baseType: !3095, size: 64, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3092, file: !50, line: 210, baseType: !3095, size: 64, offset: 256)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3092, file: !50, line: 211, baseType: !3095, size: 64, offset: 320)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3092, file: !50, line: 212, baseType: !3095, size: 64, offset: 384)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3092, file: !50, line: 213, baseType: !1143, size: 64, offset: 448)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3092, file: !50, line: 214, baseType: !1143, size: 64, offset: 512)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3056, file: !50, line: 324, baseType: !3105, size: 64, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!3062, !1202, !591}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3056, file: !50, line: 325, baseType: !3109, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !3062}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3056, file: !50, line: 326, baseType: !3059, size: 64, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3056, file: !50, line: 327, baseType: !3059, size: 64, offset: 256)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3056, file: !50, line: 328, baseType: !3059, size: 64, offset: 320)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3056, file: !50, line: 329, baseType: !1291, size: 64, offset: 384)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3056, file: !50, line: 332, baseType: !3117, size: 64, offset: 448)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!3120, !1036}
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3056, file: !50, line: 333, baseType: !3122, size: 64, offset: 512)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!591, !1036, !3125}
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3056, file: !50, line: 335, baseType: !3127, size: 64, offset: 576)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!591, !1036, !3120}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3056, file: !50, line: 337, baseType: !3131, size: 64, offset: 640)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!591, !1202, !3134}
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1203, file: !56, line: 1425, baseType: !3136, size: 64, offset: 512)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3138)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !50, line: 428, size: 704, elements: !3139)
!3139 = !{!3140, !3144, !3145, !3149, !3150, !3151, !3166, !3189, !3193, !3194, !3217}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3138, file: !50, line: 429, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!591, !1202, !591, !591, !1152}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3138, file: !50, line: 430, baseType: !1291, size: 64, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3138, file: !50, line: 431, baseType: !3146, size: 64, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!591, !1202, !7}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3138, file: !50, line: 432, baseType: !3146, size: 64, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3138, file: !50, line: 433, baseType: !1291, size: 64, offset: 256)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3138, file: !50, line: 434, baseType: !3152, size: 64, offset: 320)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!591, !1202, !591, !3155}
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !50, line: 415, size: 256, elements: !3157)
!3157 = !{!3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3156, file: !50, line: 416, baseType: !591, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3156, file: !50, line: 417, baseType: !7, size: 32, offset: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3156, file: !50, line: 418, baseType: !7, size: 32, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3156, file: !50, line: 420, baseType: !7, size: 32, offset: 96)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3156, file: !50, line: 421, baseType: !7, size: 32, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3156, file: !50, line: 422, baseType: !7, size: 32, offset: 160)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3156, file: !50, line: 423, baseType: !7, size: 32, offset: 192)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3156, file: !50, line: 424, baseType: !7, size: 32, offset: 224)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3138, file: !50, line: 435, baseType: !3167, size: 64, offset: 384)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!591, !1202, !3074, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !50, line: 343, size: 960, elements: !3172)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3171, file: !50, line: 344, baseType: !591, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3171, file: !50, line: 345, baseType: !1029, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3171, file: !50, line: 346, baseType: !1029, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3171, file: !50, line: 347, baseType: !1029, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3171, file: !50, line: 348, baseType: !1029, size: 64, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3171, file: !50, line: 349, baseType: !1029, size: 64, offset: 320)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3171, file: !50, line: 350, baseType: !1029, size: 64, offset: 384)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3171, file: !50, line: 351, baseType: !606, size: 64, offset: 448)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3171, file: !50, line: 353, baseType: !606, size: 64, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3171, file: !50, line: 354, baseType: !591, size: 32, offset: 576)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3171, file: !50, line: 355, baseType: !591, size: 32, offset: 608)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3171, file: !50, line: 356, baseType: !1029, size: 64, offset: 640)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3171, file: !50, line: 357, baseType: !1029, size: 64, offset: 704)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3171, file: !50, line: 358, baseType: !1029, size: 64, offset: 768)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3171, file: !50, line: 359, baseType: !606, size: 64, offset: 832)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3171, file: !50, line: 360, baseType: !591, size: 32, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3138, file: !50, line: 436, baseType: !3190, size: 64, offset: 448)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!591, !1202, !3134, !3170}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3138, file: !50, line: 438, baseType: !3167, size: 64, offset: 512)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3138, file: !50, line: 439, baseType: !3195, size: 64, offset: 576)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!591, !1202, !3198}
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !50, line: 409, size: 1408, elements: !3200)
!3200 = !{!3201, !3202}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3199, file: !50, line: 410, baseType: !7, size: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3199, file: !50, line: 411, baseType: !3203, size: 1344, offset: 64)
!3203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3204, size: 1344, elements: !889)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !50, line: 395, size: 448, elements: !3205)
!3205 = !{!3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3216}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3204, file: !50, line: 396, baseType: !7, size: 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3204, file: !50, line: 397, baseType: !7, size: 32, offset: 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3204, file: !50, line: 399, baseType: !7, size: 32, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3204, file: !50, line: 400, baseType: !7, size: 32, offset: 96)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3204, file: !50, line: 401, baseType: !7, size: 32, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3204, file: !50, line: 402, baseType: !7, size: 32, offset: 160)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3204, file: !50, line: 403, baseType: !7, size: 32, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3204, file: !50, line: 404, baseType: !1031, size: 64, offset: 256)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3204, file: !50, line: 405, baseType: !3215, size: 64, offset: 320)
!3215 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !587, line: 126, baseType: !1029)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3204, file: !50, line: 406, baseType: !3215, size: 64, offset: 384)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3138, file: !50, line: 440, baseType: !3146, size: 64, offset: 640)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1203, file: !56, line: 1426, baseType: !3219, size: 64, offset: 576)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3221)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !56, line: 49, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1203, file: !56, line: 1427, baseType: !680, size: 64, offset: 640)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1203, file: !56, line: 1428, baseType: !680, size: 64, offset: 704)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1203, file: !56, line: 1429, baseType: !680, size: 64, offset: 768)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1203, file: !56, line: 1430, baseType: !994, size: 64, offset: 832)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1203, file: !56, line: 1431, baseType: !1370, size: 256, offset: 896)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1203, file: !56, line: 1432, baseType: !591, size: 32, offset: 1152)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1203, file: !56, line: 1433, baseType: !586, size: 32, offset: 1184)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1203, file: !56, line: 1437, baseType: !3230, size: 64, offset: 1216)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3233)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !56, line: 1437, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1203, file: !56, line: 1449, baseType: !3235, size: 64, offset: 1280)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1010, line: 34, size: 64, elements: !3236)
!3236 = !{!3237}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3235, file: !1010, line: 35, baseType: !1013, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1203, file: !56, line: 1450, baseType: !625, size: 128, offset: 1344)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1203, file: !56, line: 1451, baseType: !3240, size: 64, offset: 1472)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !56, line: 699, flags: DIFlagFwdDecl)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1203, file: !56, line: 1452, baseType: !2561, size: 64, offset: 1536)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1203, file: !56, line: 1453, baseType: !3244, size: 64, offset: 1600)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !56, line: 1453, flags: DIFlagFwdDecl)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1203, file: !56, line: 1454, baseType: !1245, size: 128, offset: 1664)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1203, file: !56, line: 1455, baseType: !7, size: 32, offset: 1792)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1203, file: !56, line: 1456, baseType: !3249, size: 2432, offset: 1856)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !50, line: 518, size: 2432, elements: !3250)
!3250 = !{!3251, !3252, !3253, !3255, !3287}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3249, file: !50, line: 519, baseType: !7, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3249, file: !50, line: 520, baseType: !1370, size: 256, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3249, file: !50, line: 521, baseType: !3254, size: 192, offset: 320)
!3254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 192, elements: !889)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3249, file: !50, line: 522, baseType: !3256, size: 1728, offset: 512)
!3256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3257, size: 1728, elements: !889)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !50, line: 222, size: 576, elements: !3258)
!3258 = !{!3259, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3257, file: !50, line: 223, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !50, line: 443, size: 256, elements: !3262)
!3262 = !{!3263, !3264, !3277, !3278}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3261, file: !50, line: 444, baseType: !591, size: 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3261, file: !50, line: 445, baseType: !3265, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3267)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !50, line: 310, size: 512, elements: !3268)
!3268 = !{!3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3267, file: !50, line: 311, baseType: !1291, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3267, file: !50, line: 312, baseType: !1291, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3267, file: !50, line: 313, baseType: !1291, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3267, file: !50, line: 314, baseType: !1291, size: 64, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3267, file: !50, line: 315, baseType: !3059, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3267, file: !50, line: 316, baseType: !3059, size: 64, offset: 320)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3267, file: !50, line: 317, baseType: !3059, size: 64, offset: 384)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3267, file: !50, line: 318, baseType: !3131, size: 64, offset: 448)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3261, file: !50, line: 446, baseType: !1236, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3261, file: !50, line: 447, baseType: !3260, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3257, file: !50, line: 224, baseType: !591, size: 32, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3257, file: !50, line: 226, baseType: !625, size: 128, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3257, file: !50, line: 227, baseType: !680, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3257, file: !50, line: 228, baseType: !7, size: 32, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3257, file: !50, line: 229, baseType: !7, size: 32, offset: 352)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3257, file: !50, line: 230, baseType: !3095, size: 64, offset: 384)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3257, file: !50, line: 231, baseType: !3095, size: 64, offset: 448)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3257, file: !50, line: 232, baseType: !132, size: 64, offset: 512)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3249, file: !50, line: 523, baseType: !3288, size: 192, offset: 2240)
!3288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3265, size: 192, elements: !889)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1203, file: !56, line: 1458, baseType: !3290, size: 2112, offset: 4288)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !56, line: 1410, size: 2112, elements: !3291)
!3291 = !{!3292, !3293, !3294}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3290, file: !56, line: 1411, baseType: !591, size: 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3290, file: !56, line: 1412, baseType: !2065, size: 128, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3290, file: !56, line: 1413, baseType: !3295, size: 1920, offset: 192)
!3295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3296, size: 1920, elements: !889)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3297, line: 12, size: 640, elements: !3298)
!3297 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3298 = !{!3299, !3307, !3309, !3314, !3315}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3296, file: !3297, line: 13, baseType: !3300, size: 320)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3301, line: 17, size: 320, elements: !3302)
!3301 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3302 = !{!3303, !3304, !3305, !3306}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3300, file: !3301, line: 18, baseType: !591, size: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3300, file: !3301, line: 19, baseType: !591, size: 32, offset: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3300, file: !3301, line: 20, baseType: !2065, size: 128, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3300, file: !3301, line: 22, baseType: !977, size: 128, align: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3296, file: !3297, line: 14, baseType: !3308, size: 64, offset: 320)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3296, file: !3297, line: 15, baseType: !3310, size: 64, offset: 384)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3311, line: 16, size: 64, elements: !3312)
!3311 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3312 = !{!3313}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3310, file: !3311, line: 17, baseType: !1802, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3296, file: !3297, line: 16, baseType: !2065, size: 128, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3296, file: !3297, line: 17, baseType: !586, size: 32, offset: 576)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1203, file: !56, line: 1465, baseType: !132, size: 64, offset: 6400)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1203, file: !56, line: 1468, baseType: !130, size: 32, offset: 6464)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1203, file: !56, line: 1470, baseType: !1143, size: 64, offset: 6528)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1203, file: !56, line: 1471, baseType: !1143, size: 64, offset: 6592)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1203, file: !56, line: 1473, baseType: !131, size: 32, offset: 6656)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1203, file: !56, line: 1474, baseType: !3322, size: 64, offset: 6720)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !56, line: 603, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1203, file: !56, line: 1477, baseType: !3325, size: 256, offset: 6784)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 256, elements: !2855)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1203, file: !56, line: 1478, baseType: !3327, size: 128, offset: 7040)
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3328, line: 18, baseType: !3329)
!3328 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3328, line: 16, size: 128, elements: !3330)
!3330 = !{!3331}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3329, file: !3328, line: 17, baseType: !3332, size: 128)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !677)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1203, file: !56, line: 1480, baseType: !7, size: 32, offset: 7168)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !1203, file: !56, line: 1481, baseType: !3335, size: 32, offset: 7200)
!3335 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !587, line: 150, baseType: !7)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1203, file: !56, line: 1487, baseType: !596, size: 192, offset: 7232)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1203, file: !56, line: 1493, baseType: !716, size: 64, offset: 7424)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1203, file: !56, line: 1495, baseType: !3339, size: 64, offset: 7488)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3341)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !992, line: 135, size: 1024, align: 512, elements: !3342)
!3342 = !{!3343, !3347, !3348, !3355, !3361, !3365, !3369, !3373, !3374, !3378, !3382, !3387, !3391}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3341, file: !992, line: 136, baseType: !3344, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!591, !994, !7}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3341, file: !992, line: 137, baseType: !3344, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3341, file: !992, line: 138, baseType: !3349, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!591, !3352, !3354}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !995)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3341, file: !992, line: 139, baseType: !3356, size: 64, offset: 192)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!591, !3352, !7, !716, !3359}
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1018)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3341, file: !992, line: 141, baseType: !3362, size: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!591, !3352}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3341, file: !992, line: 142, baseType: !3366, size: 64, offset: 320)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!591, !994}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3341, file: !992, line: 143, baseType: !3370, size: 64, offset: 384)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{null, !994}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3341, file: !992, line: 144, baseType: !3370, size: 64, offset: 448)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3341, file: !992, line: 145, baseType: !3375, size: 64, offset: 512)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{null, !994, !1036}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3341, file: !992, line: 146, baseType: !3379, size: 64, offset: 576)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!888, !994, !888, !591}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3341, file: !992, line: 147, baseType: !3383, size: 64, offset: 640)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!990, !3386}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3341, file: !992, line: 148, baseType: !3388, size: 64, offset: 704)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!591, !1152, !1095}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3341, file: !992, line: 149, baseType: !3392, size: 64, offset: 768)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!994, !994, !3395}
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1037)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !1203, file: !56, line: 1500, baseType: !591, size: 32, offset: 7552)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1203, file: !56, line: 1502, baseType: !3399, size: 448, offset: 7616)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3043, line: 60, size: 448, elements: !3400)
!3400 = !{!3401, !3406, !3407, !3408, !3409, !3410, !3411}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3399, file: !3043, line: 61, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!680, !3405, !3041}
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3399, file: !3043, line: 63, baseType: !3402, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3399, file: !3043, line: 66, baseType: !923, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3399, file: !3043, line: 67, baseType: !591, size: 32, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3399, file: !3043, line: 68, baseType: !7, size: 32, offset: 224)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3399, file: !3043, line: 71, baseType: !625, size: 128, offset: 256)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3399, file: !3043, line: 77, baseType: !3412, size: 64, offset: 384)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1203, file: !56, line: 1505, baseType: !600, size: 64, offset: 8064)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !1203, file: !56, line: 1508, baseType: !600, size: 64, offset: 8128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1203, file: !56, line: 1511, baseType: !591, size: 32, offset: 8192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1203, file: !56, line: 1514, baseType: !1503, size: 32, offset: 8224)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1203, file: !56, line: 1517, baseType: !3418, size: 64, offset: 8256)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !761, line: 18, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1203, file: !56, line: 1518, baseType: !1241, size: 64, offset: 8320)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1203, file: !56, line: 1525, baseType: !2101, size: 64, offset: 8384)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1203, file: !56, line: 1532, baseType: !3423, size: 64, offset: 8448)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3424, line: 52, size: 64, elements: !3425)
!3424 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3425 = !{!3426}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3423, file: !3424, line: 53, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3424, line: 40, size: 256, elements: !3429)
!3429 = !{!3430, !3431, !3436}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3428, file: !3424, line: 42, baseType: !610)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3428, file: !3424, line: 44, baseType: !3432, size: 192)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3424, line: 28, size: 192, elements: !3433)
!3433 = !{!3434, !3435}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3432, file: !3424, line: 29, baseType: !625, size: 128)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3432, file: !3424, line: 31, baseType: !923, size: 64, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3428, file: !3424, line: 49, baseType: !923, size: 64, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1203, file: !56, line: 1533, baseType: !3423, size: 64, offset: 8512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1203, file: !56, line: 1534, baseType: !977, size: 128, align: 64, offset: 8576)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1203, file: !56, line: 1535, baseType: !760, size: 256, offset: 8704)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1203, file: !56, line: 1537, baseType: !596, size: 192, offset: 8960)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1203, file: !56, line: 1542, baseType: !591, size: 32, offset: 9152)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1203, file: !56, line: 1545, baseType: !610, offset: 9184)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1203, file: !56, line: 1546, baseType: !625, size: 128, offset: 9216)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1203, file: !56, line: 1548, baseType: !610, offset: 9344)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1203, file: !56, line: 1549, baseType: !625, size: 128, offset: 9344)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1037, file: !56, line: 624, baseType: !1340, size: 64, offset: 256)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1037, file: !56, line: 631, baseType: !680, size: 64, offset: 320)
!3448 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !56, line: 639, baseType: !3449, size: 32, offset: 384)
!3449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !56, line: 639, size: 32, elements: !3450)
!3450 = !{!3451, !3453}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3449, file: !56, line: 640, baseType: !3452, size: 32)
!3452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3449, file: !56, line: 641, baseType: !7, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1037, file: !56, line: 643, baseType: !1118, size: 32, offset: 416)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1037, file: !56, line: 644, baseType: !1136, size: 64, offset: 448)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1037, file: !56, line: 645, baseType: !1139, size: 128, offset: 512)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1037, file: !56, line: 646, baseType: !1139, size: 128, offset: 640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !1037, file: !56, line: 647, baseType: !1139, size: 128, offset: 768)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1037, file: !56, line: 648, baseType: !610, offset: 896)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1037, file: !56, line: 649, baseType: !129, size: 16, offset: 896)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1037, file: !56, line: 650, baseType: !121, size: 8, offset: 912)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1037, file: !56, line: 651, baseType: !121, size: 8, offset: 920)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1037, file: !56, line: 652, baseType: !3215, size: 64, offset: 960)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1037, file: !56, line: 659, baseType: !680, size: 64, offset: 1024)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1037, file: !56, line: 660, baseType: !1370, size: 256, offset: 1088)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1037, file: !56, line: 662, baseType: !680, size: 64, offset: 1344)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1037, file: !56, line: 663, baseType: !680, size: 64, offset: 1408)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1037, file: !56, line: 665, baseType: !1245, size: 128, offset: 1472)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1037, file: !56, line: 666, baseType: !625, size: 128, offset: 1600)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1037, file: !56, line: 675, baseType: !625, size: 128, offset: 1728)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1037, file: !56, line: 676, baseType: !625, size: 128, offset: 1856)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1037, file: !56, line: 677, baseType: !625, size: 128, offset: 1984)
!3473 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !56, line: 678, baseType: !3474, size: 128, offset: 2112)
!3474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !56, line: 678, size: 128, elements: !3475)
!3475 = !{!3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3474, file: !56, line: 679, baseType: !1241, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3474, file: !56, line: 680, baseType: !977, size: 128, align: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1037, file: !56, line: 682, baseType: !602, size: 64, offset: 2240)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1037, file: !56, line: 683, baseType: !602, size: 64, offset: 2304)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1037, file: !56, line: 684, baseType: !586, size: 32, offset: 2368)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1037, file: !56, line: 685, baseType: !586, size: 32, offset: 2400)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1037, file: !56, line: 686, baseType: !586, size: 32, offset: 2432)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1037, file: !56, line: 688, baseType: !586, size: 32, offset: 2464)
!3484 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !56, line: 690, baseType: !3485, size: 64, offset: 2496)
!3485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !56, line: 690, size: 64, elements: !3486)
!3486 = !{!3487, !3710}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3485, file: !56, line: 691, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3490)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !56, line: 1822, size: 2048, elements: !3491)
!3491 = !{!3492, !3493, !3497, !3502, !3506, !3507, !3508, !3512, !3525, !3526, !3534, !3538, !3539, !3543, !3544, !3548, !3553, !3554, !3558, !3562, !3670, !3674, !3675, !3679, !3680, !3684, !3688, !3693, !3697, !3701, !3705, !3709}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3490, file: !56, line: 1823, baseType: !1236, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3490, file: !56, line: 1824, baseType: !3494, size: 64, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!1136, !964, !1136, !591}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3490, file: !56, line: 1825, baseType: !3498, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!919, !964, !888, !934, !3501}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3490, file: !56, line: 1826, baseType: !3503, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!919, !964, !716, !934, !3501}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3490, file: !56, line: 1827, baseType: !1440, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3490, file: !56, line: 1828, baseType: !1440, size: 64, offset: 320)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3490, file: !56, line: 1829, baseType: !3509, size: 64, offset: 384)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!591, !1443, !1095}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3490, file: !56, line: 1830, baseType: !3513, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!591, !964, !3516}
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !56, line: 1776, size: 128, elements: !3518)
!3518 = !{!3519, !3524}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3517, file: !56, line: 1777, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !56, line: 1773, baseType: !3521)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!591, !3516, !716, !591, !1136, !1029, !7}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3517, file: !56, line: 1778, baseType: !1136, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3490, file: !56, line: 1831, baseType: !3513, size: 64, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3490, file: !56, line: 1832, baseType: !3527, size: 64, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!3530, !964, !3532}
!3530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3531, line: 52, baseType: !7)
!3531 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1222, line: 27, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3490, file: !56, line: 1833, baseType: !3535, size: 64, offset: 640)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!923, !964, !7, !680}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3490, file: !56, line: 1834, baseType: !3535, size: 64, offset: 704)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3490, file: !56, line: 1835, baseType: !3540, size: 64, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!591, !964, !1575}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3490, file: !56, line: 1836, baseType: !680, size: 64, offset: 832)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3490, file: !56, line: 1837, baseType: !3545, size: 64, offset: 896)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!591, !1036, !964}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3490, file: !56, line: 1838, baseType: !3549, size: 64, offset: 960)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!591, !964, !3552}
!3552 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !56, line: 1007, baseType: !132)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3490, file: !56, line: 1839, baseType: !3545, size: 64, offset: 1024)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3490, file: !56, line: 1840, baseType: !3555, size: 64, offset: 1088)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!591, !964, !1136, !1136, !591}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3490, file: !56, line: 1841, baseType: !3559, size: 64, offset: 1152)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!591, !591, !964, !591}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3490, file: !56, line: 1842, baseType: !3563, size: 64, offset: 1216)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!591, !964, !591, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !56, line: 1062, size: 1664, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3600, !3601, !3602, !3615, !3646}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3567, file: !56, line: 1063, baseType: !3566, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3567, file: !56, line: 1064, baseType: !625, size: 128, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3567, file: !56, line: 1065, baseType: !1245, size: 128, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3567, file: !56, line: 1066, baseType: !625, size: 128, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3567, file: !56, line: 1069, baseType: !625, size: 128, offset: 448)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3567, file: !56, line: 1072, baseType: !3552, size: 64, offset: 576)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3567, file: !56, line: 1073, baseType: !7, size: 32, offset: 640)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3567, file: !56, line: 1074, baseType: !125, size: 8, offset: 672)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3567, file: !56, line: 1075, baseType: !7, size: 32, offset: 704)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3567, file: !56, line: 1076, baseType: !591, size: 32, offset: 736)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3567, file: !56, line: 1077, baseType: !2065, size: 128, offset: 768)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3567, file: !56, line: 1078, baseType: !964, size: 64, offset: 896)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3567, file: !56, line: 1079, baseType: !1136, size: 64, offset: 960)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3567, file: !56, line: 1080, baseType: !1136, size: 64, offset: 1024)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3567, file: !56, line: 1082, baseType: !3584, size: 64, offset: 1088)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !56, line: 1314, size: 320, elements: !3586)
!3586 = !{!3587, !3595, !3596, !3597, !3598, !3599}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3585, file: !56, line: 1315, baseType: !3588)
!3588 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3589, line: 20, baseType: !3590)
!3589 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3589, line: 11, elements: !3591)
!3591 = !{!3592}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3590, file: !3589, line: 12, baseType: !3593)
!3593 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !622, line: 33, baseType: !3594)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !622, line: 31, elements: !174)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3585, file: !56, line: 1316, baseType: !591, size: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3585, file: !56, line: 1317, baseType: !591, size: 32, offset: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3585, file: !56, line: 1318, baseType: !3584, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3585, file: !56, line: 1319, baseType: !964, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3585, file: !56, line: 1320, baseType: !977, size: 128, align: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3567, file: !56, line: 1084, baseType: !680, size: 64, offset: 1152)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3567, file: !56, line: 1085, baseType: !680, size: 64, offset: 1216)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3567, file: !56, line: 1087, baseType: !3603, size: 64, offset: 1280)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3605)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !56, line: 1011, size: 128, elements: !3606)
!3606 = !{!3607, !3611}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3605, file: !56, line: 1012, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{null, !3566, !3566}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3605, file: !56, line: 1013, baseType: !3612, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{null, !3566}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3567, file: !56, line: 1088, baseType: !3616, size: 64, offset: 1344)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3618)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !56, line: 1016, size: 512, elements: !3619)
!3619 = !{!3620, !3624, !3628, !3629, !3633, !3637, !3641, !3645}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3618, file: !56, line: 1017, baseType: !3621, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!3552, !3552}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3618, file: !56, line: 1018, baseType: !3625, size: 64, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{null, !3552}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3618, file: !56, line: 1019, baseType: !3612, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3618, file: !56, line: 1020, baseType: !3630, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!591, !3566, !591}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3618, file: !56, line: 1021, baseType: !3634, size: 64, offset: 256)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!1095, !3566}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3618, file: !56, line: 1022, baseType: !3638, size: 64, offset: 320)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!591, !3566, !591, !628}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3618, file: !56, line: 1023, baseType: !3642, size: 64, offset: 384)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !3566, !1417}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3618, file: !56, line: 1024, baseType: !3634, size: 64, offset: 448)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3567, file: !56, line: 1097, baseType: !3647, size: 256, offset: 1408)
!3647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3567, file: !56, line: 1089, size: 256, elements: !3648)
!3648 = !{!3649, !3658, !3664}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3647, file: !56, line: 1090, baseType: !3650, size: 256)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3651, line: 10, size: 256, elements: !3652)
!3651 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3652 = !{!3653, !3654, !3657}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3650, file: !3651, line: 11, baseType: !130, size: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3650, file: !3651, line: 12, baseType: !3655, size: 64, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3651, line: 5, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3650, file: !3651, line: 13, baseType: !625, size: 128, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3647, file: !56, line: 1091, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3651, line: 17, size: 64, elements: !3660)
!3660 = !{!3661}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3659, file: !3651, line: 18, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3651, line: 16, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3647, file: !56, line: 1096, baseType: !3665, size: 192)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3647, file: !56, line: 1092, size: 192, elements: !3666)
!3666 = !{!3667, !3668, !3669}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3665, file: !56, line: 1093, baseType: !625, size: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3665, file: !56, line: 1094, baseType: !591, size: 32, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3665, file: !56, line: 1095, baseType: !7, size: 32, offset: 160)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3490, file: !56, line: 1843, baseType: !3671, size: 64, offset: 1280)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!919, !964, !1327, !591, !934, !3501, !591}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3490, file: !56, line: 1844, baseType: !1695, size: 64, offset: 1344)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3490, file: !56, line: 1845, baseType: !3676, size: 64, offset: 1408)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!591, !591}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3490, file: !56, line: 1846, baseType: !3563, size: 64, offset: 1472)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3490, file: !56, line: 1847, baseType: !3681, size: 64, offset: 1536)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!919, !2725, !964, !3501, !934, !7}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3490, file: !56, line: 1848, baseType: !3685, size: 64, offset: 1600)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!919, !964, !3501, !2725, !934, !7}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3490, file: !56, line: 1849, baseType: !3689, size: 64, offset: 1664)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!591, !964, !923, !3692, !1417}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3490, file: !56, line: 1850, baseType: !3694, size: 64, offset: 1728)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!923, !964, !591, !1136, !1136}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3490, file: !56, line: 1852, baseType: !3698, size: 64, offset: 1792)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{null, !1317, !964}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3490, file: !56, line: 1856, baseType: !3702, size: 64, offset: 1856)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!919, !964, !1136, !964, !1136, !934, !7}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3490, file: !56, line: 1858, baseType: !3706, size: 64, offset: 1920)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!1136, !964, !1136, !964, !1136, !1136, !7}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3490, file: !56, line: 1861, baseType: !3555, size: 64, offset: 1984)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3485, file: !56, line: 692, baseType: !1270, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1037, file: !56, line: 694, baseType: !3712, size: 64, offset: 2560)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !56, line: 1100, size: 384, elements: !3714)
!3714 = !{!3715, !3716, !3717, !3718}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3713, file: !56, line: 1101, baseType: !610)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3713, file: !56, line: 1102, baseType: !625, size: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3713, file: !56, line: 1103, baseType: !625, size: 128, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3713, file: !56, line: 1104, baseType: !625, size: 128, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1037, file: !56, line: 695, baseType: !1341, size: 1216, align: 64, offset: 2624)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1037, file: !56, line: 696, baseType: !625, size: 128, offset: 3840)
!3721 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !56, line: 697, baseType: !3722, size: 64, offset: 3968)
!3722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !56, line: 697, size: 64, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3729, !3730}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3722, file: !56, line: 698, baseType: !2725, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3722, file: !56, line: 699, baseType: !3240, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3722, file: !56, line: 700, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !56, line: 700, flags: DIFlagFwdDecl)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3722, file: !56, line: 701, baseType: !888, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3722, file: !56, line: 702, baseType: !7, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1037, file: !56, line: 705, baseType: !131, size: 32, offset: 4032)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1037, file: !56, line: 708, baseType: !131, size: 32, offset: 4064)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1037, file: !56, line: 709, baseType: !3322, size: 64, offset: 4096)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1037, file: !56, line: 720, baseType: !132, size: 64, offset: 4160)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !995, file: !992, line: 98, baseType: !3736, size: 256, offset: 448)
!3736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 256, elements: !2855)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !995, file: !992, line: 101, baseType: !3738, size: 32, offset: 704)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3739, line: 25, size: 32, elements: !3740)
!3739 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3740 = !{!3741}
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !3738, file: !3739, line: 26, baseType: !3742, size: 32)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3738, file: !3739, line: 26, size: 32, elements: !3743)
!3743 = !{!3744}
!3744 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !3739, line: 30, baseType: !3745, size: 32)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3742, file: !3739, line: 30, size: 32, elements: !3746)
!3746 = !{!3747, !3748}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3745, file: !3739, line: 31, baseType: !610)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3745, file: !3739, line: 32, baseType: !591, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !995, file: !992, line: 102, baseType: !3339, size: 64, offset: 768)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !995, file: !992, line: 103, baseType: !1202, size: 64, offset: 832)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !995, file: !992, line: 104, baseType: !680, size: 64, offset: 896)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !995, file: !992, line: 105, baseType: !132, size: 64, offset: 960)
!3753 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !992, line: 107, baseType: !3754, size: 128, offset: 1024)
!3754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !995, file: !992, line: 107, size: 128, elements: !3755)
!3755 = !{!3756, !3757}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3754, file: !992, line: 108, baseType: !625, size: 128)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3754, file: !992, line: 109, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !995, file: !992, line: 111, baseType: !625, size: 128, offset: 1152)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !995, file: !992, line: 112, baseType: !625, size: 128, offset: 1280)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !995, file: !992, line: 120, baseType: !3762, size: 128, offset: 1408)
!3762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !995, file: !992, line: 116, size: 128, elements: !3763)
!3763 = !{!3764, !3765, !3766}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3762, file: !992, line: 117, baseType: !1245, size: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3762, file: !992, line: 118, baseType: !1009, size: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3762, file: !992, line: 119, baseType: !977, size: 128, align: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !965, file: !56, line: 922, baseType: !1036, size: 64, offset: 256)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !965, file: !56, line: 923, baseType: !3488, size: 64, offset: 320)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !965, file: !56, line: 929, baseType: !610, offset: 384)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !965, file: !56, line: 930, baseType: !55, size: 32, offset: 384)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !965, file: !56, line: 931, baseType: !600, size: 64, offset: 448)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !965, file: !56, line: 932, baseType: !7, size: 32, offset: 512)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !965, file: !56, line: 933, baseType: !3335, size: 32, offset: 544)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !965, file: !56, line: 934, baseType: !596, size: 192, offset: 576)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !965, file: !56, line: 935, baseType: !1136, size: 64, offset: 768)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !965, file: !56, line: 936, baseType: !3777, size: 192, offset: 832)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !56, line: 885, size: 192, elements: !3778)
!3778 = !{!3779, !3780, !3781, !3782, !3783, !3784}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3777, file: !56, line: 886, baseType: !3588)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3777, file: !56, line: 887, baseType: !2055, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3777, file: !56, line: 888, baseType: !64, size: 32, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3777, file: !56, line: 889, baseType: !1042, size: 32, offset: 96)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3777, file: !56, line: 889, baseType: !1042, size: 32, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3777, file: !56, line: 890, baseType: !591, size: 32, offset: 160)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !965, file: !56, line: 937, baseType: !2168, size: 64, offset: 1024)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !965, file: !56, line: 938, baseType: !3787, size: 256, offset: 1088)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !56, line: 896, size: 256, elements: !3788)
!3788 = !{!3789, !3790, !3791, !3792, !3793, !3794}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3787, file: !56, line: 897, baseType: !680, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3787, file: !56, line: 898, baseType: !7, size: 32, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3787, file: !56, line: 899, baseType: !7, size: 32, offset: 96)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3787, file: !56, line: 902, baseType: !7, size: 32, offset: 128)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3787, file: !56, line: 903, baseType: !7, size: 32, offset: 160)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3787, file: !56, line: 904, baseType: !1136, size: 64, offset: 192)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !965, file: !56, line: 940, baseType: !1029, size: 64, offset: 1344)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !965, file: !56, line: 945, baseType: !132, size: 64, offset: 1408)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !965, file: !56, line: 949, baseType: !625, size: 128, offset: 1472)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !965, file: !56, line: 950, baseType: !625, size: 128, offset: 1600)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !965, file: !56, line: 952, baseType: !1340, size: 64, offset: 1728)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !965, file: !56, line: 953, baseType: !1503, size: 32, offset: 1792)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !965, file: !56, line: 954, baseType: !1503, size: 32, offset: 1824)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !955, file: !913, line: 174, baseType: !961, size: 64, offset: 320)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !955, file: !913, line: 176, baseType: !3804, size: 64, offset: 384)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!591, !964, !855, !954, !1575}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !943, file: !913, line: 90, baseType: !938, size: 64, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !943, file: !913, line: 91, baseType: !3809, size: 64, offset: 256)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !903, file: !850, line: 143, baseType: !3811, size: 64, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!3814, !855}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3816)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !73, line: 39, size: 384, elements: !3817)
!3817 = !{!3818, !3819, !3823, !3827, !3833, !3837}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3816, file: !73, line: 40, baseType: !72, size: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3816, file: !73, line: 41, baseType: !3820, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!1095}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3816, file: !73, line: 42, baseType: !3824, size: 64, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!132}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3816, file: !73, line: 43, baseType: !3828, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!2754, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !73, line: 19, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3816, file: !73, line: 44, baseType: !3834, size: 64, offset: 256)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!2754}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3816, file: !73, line: 45, baseType: !1075, size: 64, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !903, file: !850, line: 144, baseType: !3839, size: 64, offset: 320)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!2754, !855}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !903, file: !850, line: 145, baseType: !3843, size: 64, offset: 384)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !855, !3846, !3847}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !849, file: !850, line: 70, baseType: !3849, size: 64, offset: 384)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1222, line: 123, size: 1024, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3974, !3975, !3976, !3977, !3978}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3850, file: !1222, line: 124, baseType: !586, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3850, file: !1222, line: 125, baseType: !586, size: 32, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3850, file: !1222, line: 135, baseType: !3849, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3850, file: !1222, line: 136, baseType: !716, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3850, file: !1222, line: 138, baseType: !1363, size: 192, align: 64, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3850, file: !1222, line: 140, baseType: !2754, size: 64, offset: 384)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3850, file: !1222, line: 141, baseType: !7, size: 32, offset: 448)
!3859 = !DIDerivedType(tag: DW_TAG_member, scope: !3850, file: !1222, line: 142, baseType: !3860, size: 256, offset: 512)
!3860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3850, file: !1222, line: 142, size: 256, elements: !3861)
!3861 = !{!3862, !3902, !3906}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3860, file: !1222, line: 143, baseType: !3863, size: 192)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1222, line: 91, size: 192, elements: !3864)
!3864 = !{!3865, !3866, !3867}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3863, file: !1222, line: 92, baseType: !680, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3863, file: !1222, line: 94, baseType: !1359, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3863, file: !1222, line: 100, baseType: !3868, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1222, line: 180, size: 704, elements: !3870)
!3870 = !{!3871, !3872, !3873, !3874, !3875, !3876, !3900, !3901}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3869, file: !1222, line: 182, baseType: !3849, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3869, file: !1222, line: 183, baseType: !7, size: 32, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3869, file: !1222, line: 186, baseType: !2088, size: 192, offset: 128)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3869, file: !1222, line: 187, baseType: !130, size: 32, offset: 320)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3869, file: !1222, line: 188, baseType: !130, size: 32, offset: 352)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3869, file: !1222, line: 189, baseType: !3877, size: 64, offset: 384)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1222, line: 168, size: 320, elements: !3879)
!3879 = !{!3880, !3884, !3888, !3892, !3896}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3878, file: !1222, line: 169, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!591, !1317, !3868}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3878, file: !1222, line: 171, baseType: !3885, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!591, !3849, !716, !929}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3878, file: !1222, line: 173, baseType: !3889, size: 64, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!591, !3849}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3878, file: !1222, line: 174, baseType: !3893, size: 64, offset: 192)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!591, !3849, !3849, !716}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3878, file: !1222, line: 176, baseType: !3897, size: 64, offset: 256)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!591, !1317, !3849, !3868}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3869, file: !1222, line: 192, baseType: !625, size: 128, offset: 448)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3869, file: !1222, line: 194, baseType: !2065, size: 128, offset: 576)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3860, file: !1222, line: 144, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1222, line: 103, size: 64, elements: !3904)
!3904 = !{!3905}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3903, file: !1222, line: 104, baseType: !3849, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3860, file: !1222, line: 145, baseType: !3907, size: 256)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1222, line: 107, size: 256, elements: !3908)
!3908 = !{!3909, !3969, !3972, !3973}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3907, file: !1222, line: 108, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3912)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1222, line: 217, size: 768, elements: !3913)
!3913 = !{!3914, !3934, !3938, !3942, !3946, !3950, !3954, !3958, !3959, !3960, !3961, !3965}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3912, file: !1222, line: 222, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!591, !3918}
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1222, line: 197, size: 1088, elements: !3920)
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3919, file: !1222, line: 199, baseType: !3849, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3919, file: !1222, line: 200, baseType: !964, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3919, file: !1222, line: 201, baseType: !1317, size: 64, offset: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3919, file: !1222, line: 202, baseType: !132, size: 64, offset: 192)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3919, file: !1222, line: 205, baseType: !596, size: 192, offset: 256)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3919, file: !1222, line: 206, baseType: !596, size: 192, offset: 448)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3919, file: !1222, line: 207, baseType: !591, size: 32, offset: 640)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3919, file: !1222, line: 208, baseType: !625, size: 128, offset: 704)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3919, file: !1222, line: 209, baseType: !888, size: 64, offset: 832)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3919, file: !1222, line: 211, baseType: !934, size: 64, offset: 896)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3919, file: !1222, line: 212, baseType: !1095, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3919, file: !1222, line: 213, baseType: !1095, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3919, file: !1222, line: 214, baseType: !1603, size: 64, offset: 1024)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3912, file: !1222, line: 223, baseType: !3935, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !3918}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3912, file: !1222, line: 236, baseType: !3939, size: 64, offset: 128)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!591, !1317, !132}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3912, file: !1222, line: 238, baseType: !3943, size: 64, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!132, !1317, !3501}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3912, file: !1222, line: 239, baseType: !3947, size: 64, offset: 256)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!132, !1317, !132, !3501}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3912, file: !1222, line: 240, baseType: !3951, size: 64, offset: 320)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{null, !1317, !132}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3912, file: !1222, line: 242, baseType: !3955, size: 64, offset: 384)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!919, !3918, !888, !934, !1136}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3912, file: !1222, line: 252, baseType: !934, size: 64, offset: 448)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3912, file: !1222, line: 259, baseType: !1095, size: 8, offset: 512)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3912, file: !1222, line: 260, baseType: !3955, size: 64, offset: 576)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3912, file: !1222, line: 263, baseType: !3962, size: 64, offset: 640)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!3530, !3918, !3532}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3912, file: !1222, line: 266, baseType: !3966, size: 64, offset: 704)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!591, !3918, !1575}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3907, file: !1222, line: 109, baseType: !3970, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1222, line: 31, flags: DIFlagFwdDecl)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3907, file: !1222, line: 110, baseType: !1136, size: 64, offset: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3907, file: !1222, line: 111, baseType: !3849, size: 64, offset: 192)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3850, file: !1222, line: 148, baseType: !132, size: 64, offset: 768)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3850, file: !1222, line: 154, baseType: !1029, size: 64, offset: 832)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3850, file: !1222, line: 156, baseType: !129, size: 16, offset: 896)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3850, file: !1222, line: 157, baseType: !929, size: 16, offset: 912)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3850, file: !1222, line: 158, baseType: !3979, size: 64, offset: 960)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1222, line: 32, flags: DIFlagFwdDecl)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !849, file: !850, line: 71, baseType: !2083, size: 32, offset: 448)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !849, file: !850, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !849, file: !850, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !849, file: !850, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !849, file: !850, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !849, file: !850, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !846, file: !85, line: 463, baseType: !3988, size: 64, offset: 512)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !846, file: !85, line: 465, baseType: !3990, size: 64, offset: 576)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !85, line: 36, flags: DIFlagFwdDecl)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !846, file: !85, line: 467, baseType: !716, size: 64, offset: 640)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !846, file: !85, line: 468, baseType: !3994, size: 64, offset: 704)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3996)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !85, line: 87, size: 384, elements: !3997)
!3997 = !{!3998, !3999, !4000, !4004, !4009, !4013}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3996, file: !85, line: 88, baseType: !716, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3996, file: !85, line: 89, baseType: !940, size: 64, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3996, file: !85, line: 90, baseType: !4001, size: 64, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!591, !3988, !883}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3996, file: !85, line: 91, baseType: !4005, size: 64, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!888, !3988, !4008, !3846, !3847}
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3996, file: !85, line: 93, baseType: !4010, size: 64, offset: 256)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{null, !3988}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3996, file: !85, line: 95, baseType: !4014, size: 64, offset: 320)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4016)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !92, line: 278, size: 1472, elements: !4017)
!4017 = !{!4018, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4016, file: !92, line: 279, baseType: !4019, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!591, !3988}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4016, file: !92, line: 280, baseType: !4010, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4016, file: !92, line: 281, baseType: !4019, size: 64, offset: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4016, file: !92, line: 282, baseType: !4019, size: 64, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4016, file: !92, line: 283, baseType: !4019, size: 64, offset: 256)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4016, file: !92, line: 284, baseType: !4019, size: 64, offset: 320)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4016, file: !92, line: 285, baseType: !4019, size: 64, offset: 384)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4016, file: !92, line: 286, baseType: !4019, size: 64, offset: 448)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4016, file: !92, line: 287, baseType: !4019, size: 64, offset: 512)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4016, file: !92, line: 288, baseType: !4019, size: 64, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4016, file: !92, line: 289, baseType: !4019, size: 64, offset: 640)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4016, file: !92, line: 290, baseType: !4019, size: 64, offset: 704)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4016, file: !92, line: 291, baseType: !4019, size: 64, offset: 768)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4016, file: !92, line: 292, baseType: !4019, size: 64, offset: 832)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4016, file: !92, line: 293, baseType: !4019, size: 64, offset: 896)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4016, file: !92, line: 294, baseType: !4019, size: 64, offset: 960)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4016, file: !92, line: 295, baseType: !4019, size: 64, offset: 1024)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4016, file: !92, line: 296, baseType: !4019, size: 64, offset: 1088)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4016, file: !92, line: 297, baseType: !4019, size: 64, offset: 1152)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4016, file: !92, line: 298, baseType: !4019, size: 64, offset: 1216)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4016, file: !92, line: 299, baseType: !4019, size: 64, offset: 1280)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4016, file: !92, line: 300, baseType: !4019, size: 64, offset: 1344)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4016, file: !92, line: 301, baseType: !4019, size: 64, offset: 1408)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !846, file: !85, line: 470, baseType: !4045, size: 64, offset: 768)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4047, line: 82, size: 1408, elements: !4048)
!4047 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!4048 = !{!4049, !4050, !4051, !4052, !4053, !4054, !4055, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4130, !4133, !4134}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4046, file: !4047, line: 83, baseType: !716, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4046, file: !4047, line: 84, baseType: !716, size: 64, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !4046, file: !4047, line: 85, baseType: !3988, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4046, file: !4047, line: 86, baseType: !940, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4046, file: !4047, line: 87, baseType: !940, size: 64, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4046, file: !4047, line: 88, baseType: !940, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4046, file: !4047, line: 90, baseType: !4056, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!591, !3988, !4059}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !79, line: 95, size: 1152, elements: !4061)
!4061 = !{!4062, !4063, !4064, !4065, !4066, !4067, !4068, !4081, !4094, !4095, !4096, !4097, !4098, !4106, !4107, !4108, !4109, !4110, !4111}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4060, file: !79, line: 96, baseType: !716, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4060, file: !79, line: 97, baseType: !4045, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4060, file: !79, line: 99, baseType: !1236, size: 64, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4060, file: !79, line: 100, baseType: !716, size: 64, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4060, file: !79, line: 102, baseType: !1095, size: 8, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4060, file: !79, line: 103, baseType: !78, size: 32, offset: 288)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4060, file: !79, line: 105, baseType: !4069, size: 64, offset: 320)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4071)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4072, line: 262, size: 1600, elements: !4073)
!4072 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!4073 = !{!4074, !4075, !4076, !4080}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4071, file: !4072, line: 263, baseType: !3325, size: 256)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4071, file: !4072, line: 264, baseType: !3325, size: 256, offset: 256)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4071, file: !4072, line: 265, baseType: !4077, size: 1024, offset: 512)
!4077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 1024, elements: !4078)
!4078 = !{!4079}
!4079 = !DISubrange(count: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4071, file: !4072, line: 266, baseType: !2754, size: 64, offset: 1536)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4060, file: !79, line: 106, baseType: !4082, size: 64, offset: 384)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4084)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4072, line: 210, size: 256, elements: !4085)
!4085 = !{!4086, !4090, !4092, !4093}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4084, file: !4072, line: 211, baseType: !4087, size: 72)
!4087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 72, elements: !4088)
!4088 = !{!4089}
!4089 = !DISubrange(count: 9)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4084, file: !4072, line: 212, baseType: !4091, size: 64, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4072, line: 14, baseType: !680)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4084, file: !4072, line: 213, baseType: !131, size: 32, offset: 192)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4084, file: !4072, line: 214, baseType: !131, size: 32, offset: 224)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4060, file: !79, line: 108, baseType: !4019, size: 64, offset: 448)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4060, file: !79, line: 109, baseType: !4010, size: 64, offset: 512)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4060, file: !79, line: 110, baseType: !4019, size: 64, offset: 576)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4060, file: !79, line: 111, baseType: !4010, size: 64, offset: 640)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4060, file: !79, line: 112, baseType: !4099, size: 64, offset: 704)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!591, !3988, !4102}
!4102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !92, line: 52, baseType: !4103)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !92, line: 50, size: 32, elements: !4104)
!4104 = !{!4105}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4103, file: !92, line: 51, baseType: !591, size: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4060, file: !79, line: 113, baseType: !4019, size: 64, offset: 768)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4060, file: !79, line: 114, baseType: !940, size: 64, offset: 832)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4060, file: !79, line: 115, baseType: !940, size: 64, offset: 896)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4060, file: !79, line: 117, baseType: !4014, size: 64, offset: 960)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4060, file: !79, line: 118, baseType: !4010, size: 64, offset: 1024)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4060, file: !79, line: 120, baseType: !4112, size: 64, offset: 1088)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !79, line: 120, flags: DIFlagFwdDecl)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4046, file: !4047, line: 91, baseType: !4001, size: 64, offset: 448)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4046, file: !4047, line: 92, baseType: !4019, size: 64, offset: 512)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4046, file: !4047, line: 93, baseType: !4010, size: 64, offset: 576)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4046, file: !4047, line: 94, baseType: !4019, size: 64, offset: 640)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4046, file: !4047, line: 95, baseType: !4010, size: 64, offset: 704)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4046, file: !4047, line: 97, baseType: !4019, size: 64, offset: 768)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4046, file: !4047, line: 98, baseType: !4019, size: 64, offset: 832)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4046, file: !4047, line: 100, baseType: !4099, size: 64, offset: 896)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4046, file: !4047, line: 101, baseType: !4019, size: 64, offset: 960)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4046, file: !4047, line: 103, baseType: !4019, size: 64, offset: 1024)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4046, file: !4047, line: 105, baseType: !4019, size: 64, offset: 1088)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4046, file: !4047, line: 107, baseType: !4014, size: 64, offset: 1152)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4046, file: !4047, line: 109, baseType: !4127, size: 64, offset: 1216)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4129)
!4129 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4047, line: 109, flags: DIFlagFwdDecl)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4046, file: !4047, line: 111, baseType: !4131, size: 64, offset: 1280)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !4047, line: 111, flags: DIFlagFwdDecl)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !4046, file: !4047, line: 112, baseType: !1251, offset: 1344)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4046, file: !4047, line: 114, baseType: !1095, size: 8, offset: 1344)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !846, file: !85, line: 471, baseType: !4059, size: 64, offset: 832)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !846, file: !85, line: 473, baseType: !132, size: 64, offset: 896)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !846, file: !85, line: 475, baseType: !132, size: 64, offset: 960)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !846, file: !85, line: 480, baseType: !596, size: 192, offset: 1024)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !846, file: !85, line: 484, baseType: !4140, size: 576, offset: 1216)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !85, line: 361, size: 576, elements: !4141)
!4141 = !{!4142, !4143, !4144, !4145, !4146, !4147}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4140, file: !85, line: 362, baseType: !625, size: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4140, file: !85, line: 363, baseType: !625, size: 128, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !4140, file: !85, line: 364, baseType: !625, size: 128, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !4140, file: !85, line: 365, baseType: !625, size: 128, offset: 384)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !4140, file: !85, line: 366, baseType: !1095, size: 8, offset: 512)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4140, file: !85, line: 367, baseType: !84, size: 32, offset: 544)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !846, file: !85, line: 485, baseType: !4149, size: 2304, offset: 1792)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !92, line: 565, size: 2304, elements: !4150)
!4150 = !{!4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4246, !4250}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4149, file: !92, line: 566, baseType: !4102, size: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4149, file: !92, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4149, file: !92, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4149, file: !92, line: 569, baseType: !1095, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4149, file: !92, line: 570, baseType: !1095, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4149, file: !92, line: 571, baseType: !1095, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4149, file: !92, line: 572, baseType: !1095, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4149, file: !92, line: 573, baseType: !1095, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4149, file: !92, line: 574, baseType: !1095, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4149, file: !92, line: 575, baseType: !1095, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4149, file: !92, line: 576, baseType: !1095, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4149, file: !92, line: 577, baseType: !130, size: 32, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4149, file: !92, line: 578, baseType: !610, offset: 96)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4149, file: !92, line: 580, baseType: !625, size: 128, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4149, file: !92, line: 581, baseType: !2123, size: 192, offset: 256)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4149, file: !92, line: 582, baseType: !4167, size: 64, offset: 448)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4169, line: 43, size: 1472, elements: !4170)
!4169 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!4170 = !{!4171, !4172, !4173, !4174, !4175, !4178, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4168, file: !4169, line: 44, baseType: !716, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4168, file: !4169, line: 45, baseType: !591, size: 32, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4168, file: !4169, line: 46, baseType: !625, size: 128, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4168, file: !4169, line: 47, baseType: !610, offset: 256)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4168, file: !4169, line: 48, baseType: !4176, size: 64, offset: 256)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !92, line: 533, flags: DIFlagFwdDecl)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4168, file: !4169, line: 49, baseType: !4179, size: 320, offset: 320)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !4180, line: 11, size: 320, elements: !4181)
!4180 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!4181 = !{!4182, !4183, !4184, !4189}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4179, file: !4180, line: 16, baseType: !1245, size: 128)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4179, file: !4180, line: 17, baseType: !680, size: 64, offset: 128)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !4179, file: !4180, line: 18, baseType: !4185, size: 64, offset: 192)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{null, !4188}
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4179, file: !4180, line: 19, baseType: !130, size: 32, offset: 256)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4168, file: !4169, line: 50, baseType: !680, size: 64, offset: 640)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4168, file: !4169, line: 51, baseType: !1886, size: 64, offset: 704)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4168, file: !4169, line: 52, baseType: !1886, size: 64, offset: 768)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4168, file: !4169, line: 53, baseType: !1886, size: 64, offset: 832)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4168, file: !4169, line: 54, baseType: !1886, size: 64, offset: 896)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4168, file: !4169, line: 55, baseType: !1886, size: 64, offset: 960)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4168, file: !4169, line: 56, baseType: !680, size: 64, offset: 1024)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4168, file: !4169, line: 57, baseType: !680, size: 64, offset: 1088)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4168, file: !4169, line: 58, baseType: !680, size: 64, offset: 1152)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4168, file: !4169, line: 59, baseType: !680, size: 64, offset: 1216)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4168, file: !4169, line: 60, baseType: !680, size: 64, offset: 1280)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4168, file: !4169, line: 61, baseType: !3988, size: 64, offset: 1344)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4168, file: !4169, line: 62, baseType: !1095, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4168, file: !4169, line: 63, baseType: !1095, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4149, file: !92, line: 583, baseType: !1095, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4149, file: !92, line: 584, baseType: !1095, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4149, file: !92, line: 585, baseType: !1095, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4149, file: !92, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4149, file: !92, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4149, file: !92, line: 592, baseType: !1878, size: 512, offset: 576)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4149, file: !92, line: 593, baseType: !1029, size: 64, offset: 1088)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4149, file: !92, line: 594, baseType: !760, size: 256, offset: 1152)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4149, file: !92, line: 595, baseType: !2065, size: 128, offset: 1408)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4149, file: !92, line: 596, baseType: !4176, size: 64, offset: 1536)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4149, file: !92, line: 597, baseType: !586, size: 32, offset: 1600)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4149, file: !92, line: 598, baseType: !586, size: 32, offset: 1632)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4149, file: !92, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4149, file: !92, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4149, file: !92, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4149, file: !92, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4149, file: !92, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4149, file: !92, line: 604, baseType: !1095, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4149, file: !92, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4149, file: !92, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4149, file: !92, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4149, file: !92, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4149, file: !92, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4149, file: !92, line: 610, baseType: !7, size: 32, offset: 1696)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4149, file: !92, line: 611, baseType: !91, size: 32, offset: 1728)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4149, file: !92, line: 612, baseType: !99, size: 32, offset: 1760)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4149, file: !92, line: 613, baseType: !591, size: 32, offset: 1792)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4149, file: !92, line: 614, baseType: !591, size: 32, offset: 1824)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4149, file: !92, line: 615, baseType: !1029, size: 64, offset: 1856)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4149, file: !92, line: 616, baseType: !1029, size: 64, offset: 1920)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4149, file: !92, line: 617, baseType: !1029, size: 64, offset: 1984)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4149, file: !92, line: 618, baseType: !1029, size: 64, offset: 2048)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4149, file: !92, line: 620, baseType: !4237, size: 64, offset: 2112)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !92, line: 536, size: 256, elements: !4239)
!4239 = !{!4240, !4241, !4242, !4243}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4238, file: !92, line: 537, baseType: !610)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4238, file: !92, line: 538, baseType: !7, size: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4238, file: !92, line: 540, baseType: !625, size: 128, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4238, file: !92, line: 543, baseType: !4244, size: 64, offset: 192)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !92, line: 534, flags: DIFlagFwdDecl)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4149, file: !92, line: 621, baseType: !4247, size: 64, offset: 2176)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{null, !3988, !2028}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4149, file: !92, line: 622, baseType: !4251, size: 64, offset: 2240)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !92, line: 622, flags: DIFlagFwdDecl)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !846, file: !85, line: 486, baseType: !4254, size: 64, offset: 4096)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !92, line: 642, size: 1792, elements: !4256)
!4256 = !{!4257, !4258, !4259, !4263, !4264, !4265}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4255, file: !92, line: 643, baseType: !4016, size: 1472)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4255, file: !92, line: 644, baseType: !4019, size: 64, offset: 1472)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4255, file: !92, line: 645, baseType: !4260, size: 64, offset: 1536)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{null, !3988, !1095}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4255, file: !92, line: 646, baseType: !4019, size: 64, offset: 1600)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4255, file: !92, line: 647, baseType: !4010, size: 64, offset: 1664)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4255, file: !92, line: 648, baseType: !4010, size: 64, offset: 1728)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !846, file: !85, line: 493, baseType: !4267, size: 64, offset: 4160)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !106, line: 162, size: 1088, elements: !4269)
!4269 = !{!4270, !4271, !4272, !4445, !4446, !4447, !4448, !4449, !4450, !4453, !4454, !4455, !4456, !4457, !4458, !4459}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4268, file: !106, line: 163, baseType: !625, size: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4268, file: !106, line: 164, baseType: !716, size: 64, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4268, file: !106, line: 165, baseType: !4273, size: 64, offset: 192)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4275)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !106, line: 105, size: 640, elements: !4276)
!4276 = !{!4277, !4395, !4406, !4411, !4415, !4422, !4426, !4430, !4437, !4441}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4275, file: !106, line: 106, baseType: !4278, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!591, !4267, !4281, !105}
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4283, line: 51, size: 1344, elements: !4284)
!4283 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4284 = !{!4285, !4286, !4288, !4289, !4379, !4388, !4389, !4390, !4391, !4392, !4393, !4394}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4282, file: !4283, line: 52, baseType: !716, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4282, file: !4283, line: 53, baseType: !4287, size: 32, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4283, line: 28, baseType: !130)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4282, file: !4283, line: 54, baseType: !716, size: 64, offset: 128)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4282, file: !4283, line: 55, baseType: !4290, size: 192, offset: 192)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4291, line: 17, size: 192, elements: !4292)
!4291 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4292 = !{!4293, !4295, !4378}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4290, file: !4291, line: 18, baseType: !4294, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4290, file: !4291, line: 19, baseType: !4296, size: 64, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4298)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4291, line: 110, size: 1152, elements: !4299)
!4299 = !{!4300, !4304, !4308, !4314, !4320, !4324, !4328, !4333, !4337, !4338, !4342, !4346, !4350, !4361, !4362, !4363, !4364, !4374}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4298, file: !4291, line: 111, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!4294, !4294}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4298, file: !4291, line: 112, baseType: !4305, size: 64, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{null, !4294}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4298, file: !4291, line: 113, baseType: !4309, size: 64, offset: 128)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!1095, !4312}
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4298, file: !4291, line: 114, baseType: !4315, size: 64, offset: 192)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!2754, !4312, !4318}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4298, file: !4291, line: 116, baseType: !4321, size: 64, offset: 256)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!1095, !4312, !716}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4298, file: !4291, line: 118, baseType: !4325, size: 64, offset: 320)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!591, !4312, !716, !7, !132, !934}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4298, file: !4291, line: 123, baseType: !4329, size: 64, offset: 384)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!591, !4312, !716, !4332, !934}
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4298, file: !4291, line: 126, baseType: !4334, size: 64, offset: 448)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!716, !4312}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4298, file: !4291, line: 127, baseType: !4334, size: 64, offset: 512)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4298, file: !4291, line: 128, baseType: !4339, size: 64, offset: 576)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!4294, !4312}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4298, file: !4291, line: 130, baseType: !4343, size: 64, offset: 640)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!4294, !4312, !4294}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4298, file: !4291, line: 133, baseType: !4347, size: 64, offset: 704)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!4294, !4312, !716}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4298, file: !4291, line: 135, baseType: !4351, size: 64, offset: 768)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!591, !4312, !716, !716, !7, !7, !4354}
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4291, line: 43, size: 640, elements: !4356)
!4356 = !{!4357, !4358, !4359}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4355, file: !4291, line: 44, baseType: !4294, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4355, file: !4291, line: 45, baseType: !7, size: 32, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4355, file: !4291, line: 46, baseType: !4360, size: 512, offset: 128)
!4360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 512, elements: !1916)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4298, file: !4291, line: 140, baseType: !4343, size: 64, offset: 832)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4298, file: !4291, line: 143, baseType: !4339, size: 64, offset: 896)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4298, file: !4291, line: 145, baseType: !4301, size: 64, offset: 960)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4298, file: !4291, line: 146, baseType: !4365, size: 64, offset: 1024)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!591, !4312, !4368}
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4291, line: 29, size: 128, elements: !4370)
!4370 = !{!4371, !4372, !4373}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4369, file: !4291, line: 30, baseType: !7, size: 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4369, file: !4291, line: 31, baseType: !7, size: 32, offset: 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4369, file: !4291, line: 32, baseType: !4312, size: 64, offset: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4298, file: !4291, line: 148, baseType: !4375, size: 64, offset: 1088)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!591, !4312, !3988}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4290, file: !4291, line: 20, baseType: !3988, size: 64, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4282, file: !4283, line: 57, baseType: !4380, size: 64, offset: 384)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4283, line: 31, size: 704, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4386, !4387}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4381, file: !4283, line: 32, baseType: !888, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4381, file: !4283, line: 33, baseType: !591, size: 32, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4381, file: !4283, line: 34, baseType: !132, size: 64, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4381, file: !4283, line: 35, baseType: !4380, size: 64, offset: 192)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4381, file: !4283, line: 43, baseType: !955, size: 448, offset: 256)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4282, file: !4283, line: 58, baseType: !4380, size: 64, offset: 448)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4282, file: !4283, line: 59, baseType: !4281, size: 64, offset: 512)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4282, file: !4283, line: 60, baseType: !4281, size: 64, offset: 576)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4282, file: !4283, line: 61, baseType: !4281, size: 64, offset: 640)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4282, file: !4283, line: 63, baseType: !849, size: 512, offset: 704)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4282, file: !4283, line: 65, baseType: !680, size: 64, offset: 1216)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4282, file: !4283, line: 66, baseType: !132, size: 64, offset: 1280)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4275, file: !106, line: 108, baseType: !4396, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!591, !4267, !4399, !105}
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !106, line: 63, size: 640, elements: !4401)
!4401 = !{!4402, !4403, !4404}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4400, file: !106, line: 64, baseType: !4294, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4400, file: !106, line: 65, baseType: !591, size: 32, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4400, file: !106, line: 66, baseType: !4405, size: 512, offset: 96)
!4405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 512, elements: !677)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4275, file: !106, line: 110, baseType: !4407, size: 64, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!591, !4267, !7, !4410}
!4410 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !587, line: 164, baseType: !680)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4275, file: !106, line: 111, baseType: !4412, size: 64, offset: 192)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !4267, !7}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4275, file: !106, line: 112, baseType: !4416, size: 64, offset: 256)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!591, !4267, !4281, !4419, !7, !4421, !3308}
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4275, file: !106, line: 117, baseType: !4423, size: 64, offset: 320)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!591, !4267, !7, !7, !132}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4275, file: !106, line: 119, baseType: !4427, size: 64, offset: 384)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{null, !4267, !7, !7}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4275, file: !106, line: 121, baseType: !4431, size: 64, offset: 448)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!591, !4267, !4434, !1095}
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4436, line: 11, flags: DIFlagFwdDecl)
!4436 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4275, file: !106, line: 122, baseType: !4438, size: 64, offset: 512)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{null, !4267, !4434}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4275, file: !106, line: 123, baseType: !4442, size: 64, offset: 576)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!591, !4267, !4399, !4421, !3308}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4268, file: !106, line: 166, baseType: !132, size: 64, offset: 256)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4268, file: !106, line: 167, baseType: !7, size: 32, offset: 320)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4268, file: !106, line: 168, baseType: !7, size: 32, offset: 352)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4268, file: !106, line: 171, baseType: !4294, size: 64, offset: 384)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4268, file: !106, line: 172, baseType: !105, size: 32, offset: 448)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4268, file: !106, line: 173, baseType: !4451, size: 64, offset: 512)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !106, line: 134, flags: DIFlagFwdDecl)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4268, file: !106, line: 175, baseType: !4267, size: 64, offset: 576)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4268, file: !106, line: 182, baseType: !4410, size: 64, offset: 640)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !4268, file: !106, line: 183, baseType: !7, size: 32, offset: 704)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4268, file: !106, line: 184, baseType: !7, size: 32, offset: 736)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4268, file: !106, line: 185, baseType: !1345, size: 128, offset: 768)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !4268, file: !106, line: 186, baseType: !596, size: 192, offset: 896)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !4268, file: !106, line: 187, baseType: !4460, offset: 1088)
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2956)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !846, file: !85, line: 499, baseType: !625, size: 128, offset: 4224)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !846, file: !85, line: 502, baseType: !4463, size: 64, offset: 4352)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4465)
!4465 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !85, line: 502, flags: DIFlagFwdDecl)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !846, file: !85, line: 504, baseType: !4467, size: 64, offset: 4416)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !846, file: !85, line: 505, baseType: !1029, size: 64, offset: 4480)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !846, file: !85, line: 510, baseType: !1029, size: 64, offset: 4544)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !846, file: !85, line: 511, baseType: !4471, size: 64, offset: 4608)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4473)
!4473 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !85, line: 511, flags: DIFlagFwdDecl)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !846, file: !85, line: 513, baseType: !4475, size: 64, offset: 4672)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !85, line: 288, size: 128, elements: !4477)
!4477 = !{!4478, !4479}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4476, file: !85, line: 293, baseType: !7, size: 32)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4476, file: !85, line: 294, baseType: !680, size: 64, offset: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !846, file: !85, line: 515, baseType: !625, size: 128, offset: 4736)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !846, file: !85, line: 526, baseType: !4482, offset: 4864)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4483, line: 5, elements: !174)
!4483 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !846, file: !85, line: 528, baseType: !4281, size: 64, offset: 4864)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !846, file: !85, line: 529, baseType: !4294, size: 64, offset: 4928)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !846, file: !85, line: 534, baseType: !1118, size: 32, offset: 4992)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !846, file: !85, line: 535, baseType: !130, size: 32, offset: 5024)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !846, file: !85, line: 537, baseType: !610, offset: 5056)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !846, file: !85, line: 538, baseType: !625, size: 128, offset: 5056)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !846, file: !85, line: 540, baseType: !4491, size: 64, offset: 5184)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4493, line: 54, size: 960, elements: !4494)
!4493 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4494 = !{!4495, !4496, !4497, !4498, !4499, !4500, !4501, !4505, !4509, !4510, !4511, !4512, !4516, !4520, !4521}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4492, file: !4493, line: 55, baseType: !716, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4492, file: !4493, line: 56, baseType: !1236, size: 64, offset: 64)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4492, file: !4493, line: 58, baseType: !940, size: 64, offset: 128)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4492, file: !4493, line: 59, baseType: !940, size: 64, offset: 192)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4492, file: !4493, line: 60, baseType: !855, size: 64, offset: 256)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4492, file: !4493, line: 62, baseType: !4001, size: 64, offset: 320)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4492, file: !4493, line: 63, baseType: !4502, size: 64, offset: 384)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!888, !3988, !4008}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4492, file: !4493, line: 65, baseType: !4506, size: 64, offset: 448)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{null, !4491}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4492, file: !4493, line: 66, baseType: !4010, size: 64, offset: 512)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4492, file: !4493, line: 68, baseType: !4019, size: 64, offset: 576)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4492, file: !4493, line: 70, baseType: !3814, size: 64, offset: 640)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4492, file: !4493, line: 71, baseType: !4513, size: 64, offset: 704)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!2754, !3988}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4492, file: !4493, line: 73, baseType: !4517, size: 64, offset: 768)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{null, !3988, !3846, !3847}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4492, file: !4493, line: 75, baseType: !4014, size: 64, offset: 832)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4492, file: !4493, line: 77, baseType: !4131, size: 64, offset: 896)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !846, file: !85, line: 541, baseType: !940, size: 64, offset: 5248)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !846, file: !85, line: 543, baseType: !4010, size: 64, offset: 5312)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !846, file: !85, line: 544, baseType: !4525, size: 64, offset: 5376)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !85, line: 45, flags: DIFlagFwdDecl)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !846, file: !85, line: 545, baseType: !4528, size: 64, offset: 5440)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !85, line: 47, flags: DIFlagFwdDecl)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !846, file: !85, line: 547, baseType: !1095, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !846, file: !85, line: 548, baseType: !1095, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !846, file: !85, line: 549, baseType: !1095, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !846, file: !85, line: 550, baseType: !1095, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "fb_bl_on", scope: !803, file: !6, line: 335, baseType: !4535, size: 256, offset: 6592)
!4535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1095, size: 256, elements: !2855)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !803, file: !6, line: 340, baseType: !591, size: 32, offset: 6848)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve_mutex", scope: !582, file: !583, line: 465, baseType: !596, size: 192, offset: 5312)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve", scope: !582, file: !583, line: 466, baseType: !4539, size: 1024, offset: 5504)
!4539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1024, elements: !4078)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_work", scope: !582, file: !583, line: 469, baseType: !4541, size: 704, offset: 6528)
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !761, line: 115, size: 704, elements: !4542)
!4542 = !{!4543, !4544, !4545, !4546}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4541, file: !761, line: 116, baseType: !760, size: 256)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4541, file: !761, line: 117, baseType: !4179, size: 320, offset: 256)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4541, file: !761, line: 120, baseType: !3418, size: 64, offset: 576)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4541, file: !761, line: 121, baseType: !591, size: 32, offset: 640)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "fbdefio", scope: !582, file: !583, line: 470, baseType: !4548, size: 64, offset: 7232)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_deferred_io", file: !583, line: 203, size: 512, elements: !4550)
!4550 = !{!4551, !4552, !4553, !4554, !4558}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4549, file: !583, line: 205, baseType: !680, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4549, file: !583, line: 206, baseType: !596, size: 192, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "pagelist", scope: !4549, file: !583, line: 207, baseType: !625, size: 128, offset: 256)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "first_io", scope: !4549, file: !583, line: 209, baseType: !4555, size: 64, offset: 384)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{null, !581}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_io", scope: !4549, file: !583, line: 210, baseType: !4559, size: 64, offset: 448)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{null, !581, !628}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "fbops", scope: !582, file: !583, line: 473, baseType: !4563, size: 64, offset: 7296)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4565)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_ops", file: !583, line: 228, size: 1472, elements: !4566)
!4566 = !{!4567, !4568, !4572, !4573, !4577, !4581, !4586, !4590, !4594, !4599, !4603, !4604, !4618, !4632, !4649, !4666, !4667, !4671, !4672, !4676, !4687, !4688, !4689}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4565, file: !583, line: 230, baseType: !1236, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "fb_open", scope: !4565, file: !583, line: 231, baseType: !4569, size: 64, offset: 64)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!591, !581, !591}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "fb_release", scope: !4565, file: !583, line: 232, baseType: !4569, size: 64, offset: 128)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "fb_read", scope: !4565, file: !583, line: 237, baseType: !4574, size: 64, offset: 192)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!919, !581, !888, !934, !3501}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "fb_write", scope: !4565, file: !583, line: 239, baseType: !4578, size: 64, offset: 256)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!919, !581, !716, !934, !3501}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "fb_check_var", scope: !4565, file: !583, line: 244, baseType: !4582, size: 64, offset: 320)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!591, !4585, !581}
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "fb_set_par", scope: !4565, file: !583, line: 247, baseType: !4587, size: 64, offset: 384)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!591, !581}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcolreg", scope: !4565, file: !583, line: 250, baseType: !4591, size: 64, offset: 448)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!591, !7, !7, !7, !7, !7, !581}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcmap", scope: !4565, file: !583, line: 254, baseType: !4595, size: 64, offset: 512)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!591, !4598, !581}
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4565, file: !583, line: 257, baseType: !4600, size: 64, offset: 576)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!591, !591, !581}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "fb_pan_display", scope: !4565, file: !583, line: 260, baseType: !4582, size: 64, offset: 640)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "fb_fillrect", scope: !4565, file: !583, line: 263, baseType: !4605, size: 64, offset: 704)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{null, !581, !4608}
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4610)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fillrect", file: !633, line: 351, size: 192, elements: !4611)
!4611 = !{!4612, !4613, !4614, !4615, !4616, !4617}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4610, file: !633, line: 352, baseType: !131, size: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4610, file: !633, line: 353, baseType: !131, size: 32, offset: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4610, file: !633, line: 354, baseType: !131, size: 32, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4610, file: !633, line: 355, baseType: !131, size: 32, offset: 96)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4610, file: !633, line: 356, baseType: !131, size: 32, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4610, file: !633, line: 357, baseType: !131, size: 32, offset: 160)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "fb_copyarea", scope: !4565, file: !583, line: 265, baseType: !4619, size: 64, offset: 768)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{null, !581, !4622}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4624)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_copyarea", file: !633, line: 342, size: 192, elements: !4625)
!4625 = !{!4626, !4627, !4628, !4629, !4630, !4631}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4624, file: !633, line: 343, baseType: !131, size: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4624, file: !633, line: 344, baseType: !131, size: 32, offset: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4624, file: !633, line: 345, baseType: !131, size: 32, offset: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4624, file: !633, line: 346, baseType: !131, size: 32, offset: 96)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4624, file: !633, line: 347, baseType: !131, size: 32, offset: 128)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4624, file: !633, line: 348, baseType: !131, size: 32, offset: 160)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "fb_imageblit", scope: !4565, file: !583, line: 267, baseType: !4633, size: 64, offset: 832)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{null, !581, !4636}
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4638)
!4638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_image", file: !633, line: 360, size: 640, elements: !4639)
!4639 = !{!4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4638, file: !633, line: 361, baseType: !131, size: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4638, file: !633, line: 362, baseType: !131, size: 32, offset: 32)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4638, file: !633, line: 363, baseType: !131, size: 32, offset: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4638, file: !633, line: 364, baseType: !131, size: 32, offset: 96)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "fg_color", scope: !4638, file: !633, line: 365, baseType: !131, size: 32, offset: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "bg_color", scope: !4638, file: !633, line: 366, baseType: !131, size: 32, offset: 160)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4638, file: !633, line: 367, baseType: !123, size: 8, offset: 192)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4638, file: !633, line: 368, baseType: !716, size: 64, offset: 256)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4638, file: !633, line: 369, baseType: !790, size: 320, offset: 320)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "fb_cursor", scope: !4565, file: !583, line: 270, baseType: !4650, size: 64, offset: 896)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!591, !581, !4653}
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cursor", file: !633, line: 388, size: 832, elements: !4655)
!4655 = !{!4656, !4657, !4658, !4659, !4660, !4665}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4654, file: !633, line: 389, baseType: !128, size: 16)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4654, file: !633, line: 390, baseType: !128, size: 16, offset: 16)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4654, file: !633, line: 391, baseType: !128, size: 16, offset: 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4654, file: !633, line: 392, baseType: !716, size: 64, offset: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !4654, file: !633, line: 393, baseType: !4661, size: 32, offset: 128)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcurpos", file: !633, line: 384, size: 32, elements: !4662)
!4662 = !{!4663, !4664}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4661, file: !633, line: 385, baseType: !128, size: 16)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4661, file: !633, line: 385, baseType: !128, size: 16, offset: 16)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !4654, file: !633, line: 394, baseType: !4638, size: 640, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "fb_sync", scope: !4565, file: !583, line: 273, baseType: !4587, size: 64, offset: 960)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "fb_ioctl", scope: !4565, file: !583, line: 276, baseType: !4668, size: 64, offset: 1024)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!591, !581, !7, !680}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "fb_compat_ioctl", scope: !4565, file: !583, line: 280, baseType: !4668, size: 64, offset: 1088)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "fb_mmap", scope: !4565, file: !583, line: 284, baseType: !4673, size: 64, offset: 1152)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!591, !581, !1575}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_caps", scope: !4565, file: !583, line: 287, baseType: !4677, size: 64, offset: 1216)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{null, !581, !4680, !4585}
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_blit_caps", file: !583, line: 144, size: 128, elements: !4682)
!4682 = !{!4683, !4684, !4685, !4686}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4681, file: !583, line: 145, baseType: !130, size: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4681, file: !583, line: 146, baseType: !130, size: 32, offset: 32)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4681, file: !583, line: 147, baseType: !130, size: 32, offset: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4681, file: !583, line: 148, baseType: !130, size: 32, offset: 96)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "fb_destroy", scope: !4565, file: !583, line: 291, baseType: !4555, size: 64, offset: 1280)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_enter", scope: !4565, file: !583, line: 294, baseType: !4587, size: 64, offset: 1344)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_leave", scope: !4565, file: !583, line: 295, baseType: !4587, size: 64, offset: 1408)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !582, file: !583, line: 474, baseType: !3988, size: 64, offset: 7360)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !582, file: !583, line: 475, baseType: !3988, size: 64, offset: 7424)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "class_flag", scope: !582, file: !583, line: 476, baseType: !591, size: 32, offset: 7488)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "tileops", scope: !582, file: !583, line: 478, baseType: !4694, size: 64, offset: 7552)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tile_ops", file: !583, line: 355, size: 384, elements: !4696)
!4696 = !{!4697, !4699, !4712, !4727, !4743, !4756}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "fb_settile", scope: !4695, file: !583, line: 357, baseType: !4698, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecopy", scope: !4695, file: !583, line: 362, baseType: !4700, size: 64, offset: 64)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{null, !581, !4703}
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilearea", file: !583, line: 326, size: 192, elements: !4705)
!4705 = !{!4706, !4707, !4708, !4709, !4710, !4711}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4704, file: !583, line: 327, baseType: !131, size: 32)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4704, file: !583, line: 328, baseType: !131, size: 32, offset: 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4704, file: !583, line: 329, baseType: !131, size: 32, offset: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4704, file: !583, line: 330, baseType: !131, size: 32, offset: 96)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4704, file: !583, line: 331, baseType: !131, size: 32, offset: 128)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4704, file: !583, line: 332, baseType: !131, size: 32, offset: 160)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilefill", scope: !4695, file: !583, line: 364, baseType: !4713, size: 64, offset: 128)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{null, !581, !4716}
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilerect", file: !583, line: 315, size: 256, elements: !4718)
!4718 = !{!4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4717, file: !583, line: 316, baseType: !131, size: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4717, file: !583, line: 317, baseType: !131, size: 32, offset: 32)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4717, file: !583, line: 318, baseType: !131, size: 32, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4717, file: !583, line: 319, baseType: !131, size: 32, offset: 96)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4717, file: !583, line: 320, baseType: !131, size: 32, offset: 128)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4717, file: !583, line: 321, baseType: !131, size: 32, offset: 160)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4717, file: !583, line: 322, baseType: !131, size: 32, offset: 192)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4717, file: !583, line: 323, baseType: !131, size: 32, offset: 224)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tileblit", scope: !4695, file: !583, line: 366, baseType: !4728, size: 64, offset: 192)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{null, !581, !4731}
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tileblit", file: !583, line: 335, size: 320, elements: !4733)
!4733 = !{!4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4732, file: !583, line: 336, baseType: !131, size: 32)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4732, file: !583, line: 337, baseType: !131, size: 32, offset: 32)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4732, file: !583, line: 338, baseType: !131, size: 32, offset: 64)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4732, file: !583, line: 339, baseType: !131, size: 32, offset: 96)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4732, file: !583, line: 340, baseType: !131, size: 32, offset: 128)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4732, file: !583, line: 341, baseType: !131, size: 32, offset: 160)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4732, file: !583, line: 342, baseType: !131, size: 32, offset: 192)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !4732, file: !583, line: 343, baseType: !4742, size: 64, offset: 256)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecursor", scope: !4695, file: !583, line: 368, baseType: !4744, size: 64, offset: 256)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{null, !581, !4747}
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilecursor", file: !583, line: 346, size: 192, elements: !4749)
!4749 = !{!4750, !4751, !4752, !4753, !4754, !4755}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4748, file: !583, line: 347, baseType: !131, size: 32)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4748, file: !583, line: 348, baseType: !131, size: 32, offset: 32)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4748, file: !583, line: 349, baseType: !131, size: 32, offset: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !4748, file: !583, line: 350, baseType: !131, size: 32, offset: 96)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4748, file: !583, line: 351, baseType: !131, size: 32, offset: 128)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4748, file: !583, line: 352, baseType: !131, size: 32, offset: 160)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_tilemax", scope: !4695, file: !583, line: 371, baseType: !4587, size: 64, offset: 320)
!4757 = !DIDerivedType(tag: DW_TAG_member, scope: !582, file: !583, line: 480, baseType: !4758, size: 64, offset: 7616)
!4758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !582, file: !583, line: 480, size: 64, elements: !4759)
!4759 = !{!4760, !4761}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "screen_base", scope: !4758, file: !583, line: 481, baseType: !888, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "screen_buffer", scope: !4758, file: !583, line: 482, baseType: !888, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "screen_size", scope: !582, file: !583, line: 484, baseType: !680, size: 64, offset: 7680)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !582, file: !583, line: 485, baseType: !132, size: 64, offset: 7744)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !582, file: !583, line: 488, baseType: !130, size: 32, offset: 7808)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_par", scope: !582, file: !583, line: 489, baseType: !132, size: 64, offset: 7872)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !582, file: !583, line: 491, baseType: !132, size: 64, offset: 7936)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "apertures", scope: !582, file: !583, line: 501, baseType: !4768, size: 64, offset: 8000)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apertures_struct", file: !583, line: 495, size: 64, elements: !4770)
!4770 = !{!4771, !4772}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4769, file: !583, line: 496, baseType: !7, size: 32)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4769, file: !583, line: 500, baseType: !4773, offset: 64)
!4773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4774, elements: !2340)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aperture", file: !583, line: 497, size: 128, elements: !4775)
!4775 = !{!4776, !4778}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4774, file: !583, line: 498, baseType: !4777, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !587, line: 158, baseType: !2752)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4774, file: !583, line: 499, baseType: !4777, size: 64, offset: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vt_switch", scope: !582, file: !583, line: 503, baseType: !1095, size: 8, offset: 8064)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilemap", file: !583, line: 306, size: 192, elements: !4782)
!4782 = !{!4783, !4784, !4785, !4786, !4787}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4781, file: !583, line: 307, baseType: !131, size: 32)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4781, file: !583, line: 308, baseType: !131, size: 32, offset: 32)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4781, file: !583, line: 309, baseType: !131, size: 32, offset: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4781, file: !583, line: 310, baseType: !131, size: 32, offset: 96)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4781, file: !583, line: 311, baseType: !4788, size: 64, offset: 128)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!4790 = !DILocalVariable(name: "info", arg: 1, scope: !578, file: !3, line: 193, type: !581)
!4791 = !DILocation(line: 193, column: 35, scope: !578)
!4792 = !DILocalVariable(name: "map", arg: 2, scope: !578, file: !3, line: 193, type: !4780)
!4793 = !DILocation(line: 193, column: 60, scope: !578)
!4794 = !DILocalVariable(name: "font", scope: !578, file: !3, line: 195, type: !4795)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!4797 = !DILocation(line: 195, column: 12, scope: !578)
!4798 = !DILocation(line: 195, column: 19, scope: !578)
!4799 = !DILocation(line: 195, column: 24, scope: !578)
!4800 = !DILocalVariable(name: "fb", scope: !578, file: !3, line: 196, type: !120)
!4801 = !DILocation(line: 196, column: 14, scope: !578)
!4802 = !DILocation(line: 196, column: 33, scope: !578)
!4803 = !DILocation(line: 196, column: 39, scope: !578)
!4804 = !DILocalVariable(name: "i", scope: !578, file: !3, line: 197, type: !591)
!4805 = !DILocation(line: 197, column: 6, scope: !578)
!4806 = !DILocalVariable(name: "c", scope: !578, file: !3, line: 197, type: !591)
!4807 = !DILocation(line: 197, column: 9, scope: !578)
!4808 = !DILocation(line: 199, column: 7, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !578, file: !3, line: 199, column: 6)
!4810 = !DILocation(line: 199, column: 12, scope: !4809)
!4811 = !DILocation(line: 199, column: 18, scope: !4809)
!4812 = !DILocation(line: 199, column: 24, scope: !4809)
!4813 = !DILocation(line: 199, column: 28, scope: !4809)
!4814 = !DILocation(line: 199, column: 33, scope: !4809)
!4815 = !DILocation(line: 199, column: 40, scope: !4809)
!4816 = !DILocation(line: 199, column: 47, scope: !4809)
!4817 = !DILocation(line: 200, column: 7, scope: !4809)
!4818 = !DILocation(line: 200, column: 12, scope: !4809)
!4819 = !DILocation(line: 200, column: 18, scope: !4809)
!4820 = !DILocation(line: 200, column: 24, scope: !4809)
!4821 = !DILocation(line: 200, column: 28, scope: !4809)
!4822 = !DILocation(line: 200, column: 33, scope: !4809)
!4823 = !DILocation(line: 200, column: 40, scope: !4809)
!4824 = !DILocation(line: 199, column: 6, scope: !578)
!4825 = !DILocation(line: 201, column: 3, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 200, column: 49)
!4827 = !DILocation(line: 203, column: 3, scope: !4826)
!4828 = !DILocation(line: 206, column: 5, scope: !578)
!4829 = !DILocation(line: 207, column: 9, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !578, file: !3, line: 207, column: 2)
!4831 = !DILocation(line: 207, column: 7, scope: !4830)
!4832 = !DILocation(line: 207, column: 14, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 207, column: 2)
!4834 = !DILocation(line: 207, column: 18, scope: !4833)
!4835 = !DILocation(line: 207, column: 23, scope: !4833)
!4836 = !DILocation(line: 207, column: 16, scope: !4833)
!4837 = !DILocation(line: 207, column: 2, scope: !4830)
!4838 = !DILocation(line: 208, column: 10, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 208, column: 3)
!4840 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 207, column: 36)
!4841 = !DILocation(line: 208, column: 8, scope: !4839)
!4842 = !DILocation(line: 208, column: 15, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 208, column: 3)
!4844 = !DILocation(line: 208, column: 19, scope: !4843)
!4845 = !DILocation(line: 208, column: 24, scope: !4843)
!4846 = !DILocation(line: 208, column: 17, scope: !4843)
!4847 = !DILocation(line: 208, column: 3, scope: !4839)
!4848 = !DILocation(line: 209, column: 14, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 208, column: 37)
!4850 = !DILocation(line: 209, column: 19, scope: !4849)
!4851 = !DILocation(line: 209, column: 23, scope: !4849)
!4852 = !DILocation(line: 209, column: 28, scope: !4849)
!4853 = !DILocation(line: 209, column: 30, scope: !4849)
!4854 = !DILocation(line: 209, column: 26, scope: !4849)
!4855 = !DILocation(line: 209, column: 4, scope: !4849)
!4856 = !DILocation(line: 211, column: 3, scope: !4849)
!4857 = !DILocation(line: 208, column: 33, scope: !4843)
!4858 = !DILocation(line: 208, column: 3, scope: !4843)
!4859 = distinct !{!4859, !4847, !4860}
!4860 = !DILocation(line: 211, column: 3, scope: !4839)
!4861 = !DILocation(line: 212, column: 6, scope: !4840)
!4862 = !DILocation(line: 213, column: 11, scope: !4840)
!4863 = !DILocation(line: 213, column: 16, scope: !4840)
!4864 = !DILocation(line: 213, column: 8, scope: !4840)
!4865 = !DILocation(line: 214, column: 2, scope: !4840)
!4866 = !DILocation(line: 207, column: 32, scope: !4833)
!4867 = !DILocation(line: 207, column: 2, scope: !4833)
!4868 = distinct !{!4868, !4837, !4869}
!4869 = !DILocation(line: 214, column: 2, scope: !4830)
!4870 = !DILocation(line: 215, column: 1, scope: !578)
!4871 = distinct !DISubprogram(name: "__writeb", scope: !4872, file: !4872, line: 69, type: !4873, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!4872 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4873 = !DISubroutineType(types: !4874)
!4874 = !{null, !125, !4875}
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4877 = !DILocalVariable(name: "val", arg: 1, scope: !4871, file: !4872, line: 69, type: !125)
!4878 = !DILocation(line: 69, column: 1, scope: !4871)
!4879 = !DILocalVariable(name: "addr", arg: 2, scope: !4871, file: !4872, line: 69, type: !4875)
!4880 = !{i32 -2141464765}
!4881 = distinct !DISubprogram(name: "svga_tilecopy", scope: !3, file: !3, line: 218, type: !4701, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!4882 = !DILocalVariable(name: "info", arg: 1, scope: !4881, file: !3, line: 218, type: !581)
!4883 = !DILocation(line: 218, column: 36, scope: !4881)
!4884 = !DILocalVariable(name: "area", arg: 2, scope: !4881, file: !3, line: 218, type: !4703)
!4885 = !DILocation(line: 218, column: 62, scope: !4881)
!4886 = !DILocalVariable(name: "dx", scope: !4881, file: !3, line: 220, type: !591)
!4887 = !DILocation(line: 220, column: 6, scope: !4881)
!4888 = !DILocalVariable(name: "dy", scope: !4881, file: !3, line: 220, type: !591)
!4889 = !DILocation(line: 220, column: 10, scope: !4881)
!4890 = !DILocalVariable(name: "colstride", scope: !4881, file: !3, line: 222, type: !591)
!4891 = !DILocation(line: 222, column: 6, scope: !4881)
!4892 = !DILocation(line: 222, column: 24, scope: !4881)
!4893 = !DILocation(line: 222, column: 30, scope: !4881)
!4894 = !DILocation(line: 222, column: 34, scope: !4881)
!4895 = !DILocation(line: 222, column: 43, scope: !4881)
!4896 = !DILocation(line: 222, column: 20, scope: !4881)
!4897 = !DILocalVariable(name: "rowstride", scope: !4881, file: !3, line: 223, type: !591)
!4898 = !DILocation(line: 223, column: 6, scope: !4881)
!4899 = !DILocation(line: 223, column: 18, scope: !4881)
!4900 = !DILocation(line: 223, column: 31, scope: !4881)
!4901 = !DILocation(line: 223, column: 37, scope: !4881)
!4902 = !DILocation(line: 223, column: 41, scope: !4881)
!4903 = !DILocation(line: 223, column: 54, scope: !4881)
!4904 = !DILocation(line: 223, column: 28, scope: !4881)
!4905 = !DILocalVariable(name: "fb", scope: !4881, file: !3, line: 224, type: !126)
!4906 = !DILocation(line: 224, column: 15, scope: !4881)
!4907 = !DILocation(line: 224, column: 36, scope: !4881)
!4908 = !DILocation(line: 224, column: 42, scope: !4881)
!4909 = !DILocation(line: 224, column: 20, scope: !4881)
!4910 = !DILocalVariable(name: "src", scope: !4881, file: !3, line: 225, type: !126)
!4911 = !DILocation(line: 225, column: 15, scope: !4881)
!4912 = !DILocalVariable(name: "dst", scope: !4881, file: !3, line: 225, type: !126)
!4913 = !DILocation(line: 225, column: 21, scope: !4881)
!4914 = !DILocation(line: 227, column: 7, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 227, column: 6)
!4916 = !DILocation(line: 227, column: 13, scope: !4915)
!4917 = !DILocation(line: 227, column: 18, scope: !4915)
!4918 = !DILocation(line: 227, column: 24, scope: !4915)
!4919 = !DILocation(line: 227, column: 16, scope: !4915)
!4920 = !DILocation(line: 227, column: 28, scope: !4915)
!4921 = !DILocation(line: 228, column: 8, scope: !4915)
!4922 = !DILocation(line: 228, column: 14, scope: !4915)
!4923 = !DILocation(line: 228, column: 20, scope: !4915)
!4924 = !DILocation(line: 228, column: 26, scope: !4915)
!4925 = !DILocation(line: 228, column: 17, scope: !4915)
!4926 = !DILocation(line: 228, column: 30, scope: !4915)
!4927 = !DILocation(line: 228, column: 34, scope: !4915)
!4928 = !DILocation(line: 228, column: 40, scope: !4915)
!4929 = !DILocation(line: 228, column: 45, scope: !4915)
!4930 = !DILocation(line: 228, column: 51, scope: !4915)
!4931 = !DILocation(line: 228, column: 43, scope: !4915)
!4932 = !DILocation(line: 227, column: 6, scope: !4881)
!4933 = !DILocation(line: 229, column: 9, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 228, column: 57)
!4935 = !DILocation(line: 229, column: 14, scope: !4934)
!4936 = !DILocation(line: 229, column: 20, scope: !4934)
!4937 = !DILocation(line: 229, column: 25, scope: !4934)
!4938 = !DILocation(line: 229, column: 23, scope: !4934)
!4939 = !DILocation(line: 229, column: 12, scope: !4934)
!4940 = !DILocation(line: 229, column: 37, scope: !4934)
!4941 = !DILocation(line: 229, column: 43, scope: !4934)
!4942 = !DILocation(line: 229, column: 48, scope: !4934)
!4943 = !DILocation(line: 229, column: 46, scope: !4934)
!4944 = !DILocation(line: 229, column: 35, scope: !4934)
!4945 = !DILocation(line: 229, column: 7, scope: !4934)
!4946 = !DILocation(line: 230, column: 9, scope: !4934)
!4947 = !DILocation(line: 230, column: 14, scope: !4934)
!4948 = !DILocation(line: 230, column: 20, scope: !4934)
!4949 = !DILocation(line: 230, column: 25, scope: !4934)
!4950 = !DILocation(line: 230, column: 23, scope: !4934)
!4951 = !DILocation(line: 230, column: 12, scope: !4934)
!4952 = !DILocation(line: 230, column: 37, scope: !4934)
!4953 = !DILocation(line: 230, column: 43, scope: !4934)
!4954 = !DILocation(line: 230, column: 48, scope: !4934)
!4955 = !DILocation(line: 230, column: 46, scope: !4934)
!4956 = !DILocation(line: 230, column: 35, scope: !4934)
!4957 = !DILocation(line: 230, column: 7, scope: !4934)
!4958 = !DILocation(line: 231, column: 6, scope: !4934)
!4959 = !DILocation(line: 232, column: 9, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 231, column: 13)
!4961 = !DILocation(line: 232, column: 15, scope: !4960)
!4962 = !DILocation(line: 232, column: 21, scope: !4960)
!4963 = !DILocation(line: 232, column: 26, scope: !4960)
!4964 = !DILocation(line: 232, column: 32, scope: !4960)
!4965 = !DILocation(line: 232, column: 24, scope: !4960)
!4966 = !DILocation(line: 232, column: 38, scope: !4960)
!4967 = !DILocation(line: 232, column: 45, scope: !4960)
!4968 = !DILocation(line: 232, column: 43, scope: !4960)
!4969 = !DILocation(line: 232, column: 12, scope: !4960)
!4970 = !DILocation(line: 233, column: 8, scope: !4960)
!4971 = !DILocation(line: 233, column: 14, scope: !4960)
!4972 = !DILocation(line: 233, column: 19, scope: !4960)
!4973 = !DILocation(line: 233, column: 25, scope: !4960)
!4974 = !DILocation(line: 233, column: 17, scope: !4960)
!4975 = !DILocation(line: 233, column: 32, scope: !4960)
!4976 = !DILocation(line: 233, column: 39, scope: !4960)
!4977 = !DILocation(line: 233, column: 37, scope: !4960)
!4978 = !DILocation(line: 233, column: 5, scope: !4960)
!4979 = !DILocation(line: 232, column: 7, scope: !4960)
!4980 = !DILocation(line: 234, column: 9, scope: !4960)
!4981 = !DILocation(line: 234, column: 15, scope: !4960)
!4982 = !DILocation(line: 234, column: 21, scope: !4960)
!4983 = !DILocation(line: 234, column: 26, scope: !4960)
!4984 = !DILocation(line: 234, column: 32, scope: !4960)
!4985 = !DILocation(line: 234, column: 24, scope: !4960)
!4986 = !DILocation(line: 234, column: 38, scope: !4960)
!4987 = !DILocation(line: 234, column: 45, scope: !4960)
!4988 = !DILocation(line: 234, column: 43, scope: !4960)
!4989 = !DILocation(line: 234, column: 12, scope: !4960)
!4990 = !DILocation(line: 235, column: 8, scope: !4960)
!4991 = !DILocation(line: 235, column: 14, scope: !4960)
!4992 = !DILocation(line: 235, column: 19, scope: !4960)
!4993 = !DILocation(line: 235, column: 25, scope: !4960)
!4994 = !DILocation(line: 235, column: 17, scope: !4960)
!4995 = !DILocation(line: 235, column: 32, scope: !4960)
!4996 = !DILocation(line: 235, column: 39, scope: !4960)
!4997 = !DILocation(line: 235, column: 37, scope: !4960)
!4998 = !DILocation(line: 235, column: 5, scope: !4960)
!4999 = !DILocation(line: 234, column: 7, scope: !4960)
!5000 = !DILocation(line: 237, column: 16, scope: !4960)
!5001 = !DILocation(line: 237, column: 15, scope: !4960)
!5002 = !DILocation(line: 237, column: 13, scope: !4960)
!5003 = !DILocation(line: 238, column: 16, scope: !4960)
!5004 = !DILocation(line: 238, column: 15, scope: !4960)
!5005 = !DILocation(line: 238, column: 13, scope: !4960)
!5006 = !DILocation(line: 241, column: 10, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 241, column: 2)
!5008 = !DILocation(line: 241, column: 7, scope: !5007)
!5009 = !DILocation(line: 241, column: 15, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 241, column: 2)
!5011 = !DILocation(line: 241, column: 20, scope: !5010)
!5012 = !DILocation(line: 241, column: 26, scope: !5010)
!5013 = !DILocation(line: 241, column: 18, scope: !5010)
!5014 = !DILocation(line: 241, column: 2, scope: !5007)
!5015 = !DILocalVariable(name: "src2", scope: !5016, file: !3, line: 242, type: !126)
!5016 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 241, column: 40)
!5017 = !DILocation(line: 242, column: 16, scope: !5016)
!5018 = !DILocation(line: 242, column: 23, scope: !5016)
!5019 = !DILocalVariable(name: "dst2", scope: !5016, file: !3, line: 243, type: !126)
!5020 = !DILocation(line: 243, column: 16, scope: !5016)
!5021 = !DILocation(line: 243, column: 23, scope: !5016)
!5022 = !DILocation(line: 244, column: 11, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 244, column: 3)
!5024 = !DILocation(line: 244, column: 8, scope: !5023)
!5025 = !DILocation(line: 244, column: 16, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 244, column: 3)
!5027 = !DILocation(line: 244, column: 21, scope: !5026)
!5028 = !DILocation(line: 244, column: 27, scope: !5026)
!5029 = !DILocation(line: 244, column: 19, scope: !5026)
!5030 = !DILocation(line: 244, column: 3, scope: !5023)
!5031 = !DILocation(line: 245, column: 23, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 244, column: 40)
!5033 = !DILocation(line: 245, column: 14, scope: !5032)
!5034 = !DILocation(line: 245, column: 30, scope: !5032)
!5035 = !DILocation(line: 245, column: 4, scope: !5032)
!5036 = !DILocation(line: 247, column: 12, scope: !5032)
!5037 = !DILocation(line: 247, column: 9, scope: !5032)
!5038 = !DILocation(line: 248, column: 12, scope: !5032)
!5039 = !DILocation(line: 248, column: 9, scope: !5032)
!5040 = !DILocation(line: 249, column: 3, scope: !5032)
!5041 = !DILocation(line: 244, column: 36, scope: !5026)
!5042 = !DILocation(line: 244, column: 3, scope: !5026)
!5043 = distinct !{!5043, !5030, !5044}
!5044 = !DILocation(line: 249, column: 3, scope: !5023)
!5045 = !DILocation(line: 250, column: 10, scope: !5016)
!5046 = !DILocation(line: 250, column: 7, scope: !5016)
!5047 = !DILocation(line: 251, column: 10, scope: !5016)
!5048 = !DILocation(line: 251, column: 7, scope: !5016)
!5049 = !DILocation(line: 252, column: 2, scope: !5016)
!5050 = !DILocation(line: 241, column: 36, scope: !5010)
!5051 = !DILocation(line: 241, column: 2, scope: !5010)
!5052 = distinct !{!5052, !5014, !5053}
!5053 = !DILocation(line: 252, column: 2, scope: !5007)
!5054 = !DILocation(line: 253, column: 1, scope: !4881)
!5055 = distinct !DISubprogram(name: "__writew", scope: !4872, file: !4872, line: 70, type: !5056, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{null, !129, !4875}
!5058 = !DILocalVariable(name: "val", arg: 1, scope: !5055, file: !4872, line: 70, type: !129)
!5059 = !DILocation(line: 70, column: 1, scope: !5055)
!5060 = !DILocalVariable(name: "addr", arg: 2, scope: !5055, file: !4872, line: 70, type: !4875)
!5061 = !{i32 -2141464389}
!5062 = distinct !DISubprogram(name: "__readw", scope: !4872, file: !4872, line: 62, type: !5063, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!129, !5065}
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4876)
!5067 = !DILocalVariable(name: "addr", arg: 1, scope: !5062, file: !4872, line: 62, type: !5065)
!5068 = !DILocation(line: 62, column: 1, scope: !5062)
!5069 = !DILocalVariable(name: "ret", scope: !5062, file: !4872, line: 62, type: !129)
!5070 = !{i32 -2141466723}
!5071 = distinct !DISubprogram(name: "svga_tilefill", scope: !3, file: !3, line: 256, type: !4714, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!5072 = !DILocalVariable(name: "info", arg: 1, scope: !5071, file: !3, line: 256, type: !581)
!5073 = !DILocation(line: 256, column: 36, scope: !5071)
!5074 = !DILocalVariable(name: "rect", arg: 2, scope: !5071, file: !3, line: 256, type: !4716)
!5075 = !DILocation(line: 256, column: 62, scope: !5071)
!5076 = !DILocalVariable(name: "dx", scope: !5071, file: !3, line: 258, type: !591)
!5077 = !DILocation(line: 258, column: 6, scope: !5071)
!5078 = !DILocalVariable(name: "dy", scope: !5071, file: !3, line: 258, type: !591)
!5079 = !DILocation(line: 258, column: 10, scope: !5071)
!5080 = !DILocalVariable(name: "colstride", scope: !5071, file: !3, line: 259, type: !591)
!5081 = !DILocation(line: 259, column: 6, scope: !5071)
!5082 = !DILocation(line: 259, column: 24, scope: !5071)
!5083 = !DILocation(line: 259, column: 30, scope: !5071)
!5084 = !DILocation(line: 259, column: 34, scope: !5071)
!5085 = !DILocation(line: 259, column: 43, scope: !5071)
!5086 = !DILocation(line: 259, column: 20, scope: !5071)
!5087 = !DILocalVariable(name: "rowstride", scope: !5071, file: !3, line: 260, type: !591)
!5088 = !DILocation(line: 260, column: 6, scope: !5071)
!5089 = !DILocation(line: 260, column: 18, scope: !5071)
!5090 = !DILocation(line: 260, column: 31, scope: !5071)
!5091 = !DILocation(line: 260, column: 37, scope: !5071)
!5092 = !DILocation(line: 260, column: 41, scope: !5071)
!5093 = !DILocation(line: 260, column: 54, scope: !5071)
!5094 = !DILocation(line: 260, column: 28, scope: !5071)
!5095 = !DILocalVariable(name: "attr", scope: !5071, file: !3, line: 261, type: !591)
!5096 = !DILocation(line: 261, column: 6, scope: !5071)
!5097 = !DILocation(line: 261, column: 21, scope: !5071)
!5098 = !DILocation(line: 261, column: 27, scope: !5071)
!5099 = !DILocation(line: 261, column: 19, scope: !5071)
!5100 = !DILocation(line: 261, column: 31, scope: !5071)
!5101 = !DILocation(line: 261, column: 46, scope: !5071)
!5102 = !DILocation(line: 261, column: 52, scope: !5071)
!5103 = !DILocation(line: 261, column: 44, scope: !5071)
!5104 = !DILocation(line: 261, column: 36, scope: !5071)
!5105 = !DILocalVariable(name: "fb", scope: !5071, file: !3, line: 262, type: !120)
!5106 = !DILocation(line: 262, column: 14, scope: !5071)
!5107 = !DILocation(line: 262, column: 33, scope: !5071)
!5108 = !DILocation(line: 262, column: 39, scope: !5071)
!5109 = !DILocation(line: 263, column: 8, scope: !5071)
!5110 = !DILocation(line: 263, column: 14, scope: !5071)
!5111 = !DILocation(line: 263, column: 19, scope: !5071)
!5112 = !DILocation(line: 263, column: 17, scope: !5071)
!5113 = !DILocation(line: 263, column: 31, scope: !5071)
!5114 = !DILocation(line: 263, column: 37, scope: !5071)
!5115 = !DILocation(line: 263, column: 42, scope: !5071)
!5116 = !DILocation(line: 263, column: 40, scope: !5071)
!5117 = !DILocation(line: 263, column: 29, scope: !5071)
!5118 = !DILocation(line: 263, column: 5, scope: !5071)
!5119 = !DILocation(line: 265, column: 10, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 265, column: 2)
!5121 = !DILocation(line: 265, column: 7, scope: !5120)
!5122 = !DILocation(line: 265, column: 15, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 265, column: 2)
!5124 = !DILocation(line: 265, column: 20, scope: !5123)
!5125 = !DILocation(line: 265, column: 26, scope: !5123)
!5126 = !DILocation(line: 265, column: 18, scope: !5123)
!5127 = !DILocation(line: 265, column: 2, scope: !5120)
!5128 = !DILocalVariable(name: "fb2", scope: !5129, file: !3, line: 266, type: !120)
!5129 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 265, column: 40)
!5130 = !DILocation(line: 266, column: 15, scope: !5129)
!5131 = !DILocation(line: 266, column: 21, scope: !5129)
!5132 = !DILocation(line: 267, column: 11, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5129, file: !3, line: 267, column: 3)
!5134 = !DILocation(line: 267, column: 8, scope: !5133)
!5135 = !DILocation(line: 267, column: 16, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 267, column: 3)
!5137 = !DILocation(line: 267, column: 21, scope: !5136)
!5138 = !DILocation(line: 267, column: 27, scope: !5136)
!5139 = !DILocation(line: 267, column: 19, scope: !5136)
!5140 = !DILocation(line: 267, column: 3, scope: !5133)
!5141 = !DILocation(line: 268, column: 14, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 267, column: 40)
!5143 = !DILocation(line: 268, column: 20, scope: !5142)
!5144 = !DILocation(line: 268, column: 27, scope: !5142)
!5145 = !DILocation(line: 268, column: 4, scope: !5142)
!5146 = !DILocation(line: 269, column: 14, scope: !5142)
!5147 = !DILocation(line: 269, column: 20, scope: !5142)
!5148 = !DILocation(line: 269, column: 24, scope: !5142)
!5149 = !DILocation(line: 269, column: 4, scope: !5142)
!5150 = !DILocation(line: 270, column: 11, scope: !5142)
!5151 = !DILocation(line: 270, column: 8, scope: !5142)
!5152 = !DILocation(line: 271, column: 3, scope: !5142)
!5153 = !DILocation(line: 267, column: 36, scope: !5136)
!5154 = !DILocation(line: 267, column: 3, scope: !5136)
!5155 = distinct !{!5155, !5140, !5156}
!5156 = !DILocation(line: 271, column: 3, scope: !5133)
!5157 = !DILocation(line: 272, column: 9, scope: !5129)
!5158 = !DILocation(line: 272, column: 6, scope: !5129)
!5159 = !DILocation(line: 273, column: 2, scope: !5129)
!5160 = !DILocation(line: 265, column: 36, scope: !5123)
!5161 = !DILocation(line: 265, column: 2, scope: !5123)
!5162 = distinct !{!5162, !5127, !5163}
!5163 = !DILocation(line: 273, column: 2, scope: !5120)
!5164 = !DILocation(line: 274, column: 1, scope: !5071)
!5165 = distinct !DISubprogram(name: "svga_tileblit", scope: !3, file: !3, line: 277, type: !4729, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!5166 = !DILocalVariable(name: "info", arg: 1, scope: !5165, file: !3, line: 277, type: !581)
!5167 = !DILocation(line: 277, column: 36, scope: !5165)
!5168 = !DILocalVariable(name: "blit", arg: 2, scope: !5165, file: !3, line: 277, type: !4731)
!5169 = !DILocation(line: 277, column: 62, scope: !5165)
!5170 = !DILocalVariable(name: "dx", scope: !5165, file: !3, line: 279, type: !591)
!5171 = !DILocation(line: 279, column: 6, scope: !5165)
!5172 = !DILocalVariable(name: "dy", scope: !5165, file: !3, line: 279, type: !591)
!5173 = !DILocation(line: 279, column: 10, scope: !5165)
!5174 = !DILocalVariable(name: "i", scope: !5165, file: !3, line: 279, type: !591)
!5175 = !DILocation(line: 279, column: 14, scope: !5165)
!5176 = !DILocalVariable(name: "colstride", scope: !5165, file: !3, line: 280, type: !591)
!5177 = !DILocation(line: 280, column: 6, scope: !5165)
!5178 = !DILocation(line: 280, column: 24, scope: !5165)
!5179 = !DILocation(line: 280, column: 30, scope: !5165)
!5180 = !DILocation(line: 280, column: 34, scope: !5165)
!5181 = !DILocation(line: 280, column: 43, scope: !5165)
!5182 = !DILocation(line: 280, column: 20, scope: !5165)
!5183 = !DILocalVariable(name: "rowstride", scope: !5165, file: !3, line: 281, type: !591)
!5184 = !DILocation(line: 281, column: 6, scope: !5165)
!5185 = !DILocation(line: 281, column: 18, scope: !5165)
!5186 = !DILocation(line: 281, column: 31, scope: !5165)
!5187 = !DILocation(line: 281, column: 37, scope: !5165)
!5188 = !DILocation(line: 281, column: 41, scope: !5165)
!5189 = !DILocation(line: 281, column: 54, scope: !5165)
!5190 = !DILocation(line: 281, column: 28, scope: !5165)
!5191 = !DILocalVariable(name: "attr", scope: !5165, file: !3, line: 282, type: !591)
!5192 = !DILocation(line: 282, column: 6, scope: !5165)
!5193 = !DILocation(line: 282, column: 21, scope: !5165)
!5194 = !DILocation(line: 282, column: 27, scope: !5165)
!5195 = !DILocation(line: 282, column: 19, scope: !5165)
!5196 = !DILocation(line: 282, column: 31, scope: !5165)
!5197 = !DILocation(line: 282, column: 46, scope: !5165)
!5198 = !DILocation(line: 282, column: 52, scope: !5165)
!5199 = !DILocation(line: 282, column: 44, scope: !5165)
!5200 = !DILocation(line: 282, column: 36, scope: !5165)
!5201 = !DILocalVariable(name: "fb", scope: !5165, file: !3, line: 283, type: !120)
!5202 = !DILocation(line: 283, column: 14, scope: !5165)
!5203 = !DILocation(line: 283, column: 33, scope: !5165)
!5204 = !DILocation(line: 283, column: 39, scope: !5165)
!5205 = !DILocation(line: 284, column: 8, scope: !5165)
!5206 = !DILocation(line: 284, column: 14, scope: !5165)
!5207 = !DILocation(line: 284, column: 19, scope: !5165)
!5208 = !DILocation(line: 284, column: 17, scope: !5165)
!5209 = !DILocation(line: 284, column: 31, scope: !5165)
!5210 = !DILocation(line: 284, column: 37, scope: !5165)
!5211 = !DILocation(line: 284, column: 42, scope: !5165)
!5212 = !DILocation(line: 284, column: 40, scope: !5165)
!5213 = !DILocation(line: 284, column: 29, scope: !5165)
!5214 = !DILocation(line: 284, column: 5, scope: !5165)
!5215 = !DILocation(line: 286, column: 3, scope: !5165)
!5216 = !DILocation(line: 287, column: 9, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 287, column: 2)
!5218 = !DILocation(line: 287, column: 7, scope: !5217)
!5219 = !DILocation(line: 287, column: 13, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 287, column: 2)
!5221 = !DILocation(line: 287, column: 18, scope: !5220)
!5222 = !DILocation(line: 287, column: 24, scope: !5220)
!5223 = !DILocation(line: 287, column: 16, scope: !5220)
!5224 = !DILocation(line: 287, column: 2, scope: !5217)
!5225 = !DILocalVariable(name: "fb2", scope: !5226, file: !3, line: 288, type: !120)
!5226 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 287, column: 39)
!5227 = !DILocation(line: 288, column: 15, scope: !5226)
!5228 = !DILocation(line: 288, column: 21, scope: !5226)
!5229 = !DILocation(line: 289, column: 11, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 289, column: 3)
!5231 = !DILocation(line: 289, column: 8, scope: !5230)
!5232 = !DILocation(line: 289, column: 16, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 289, column: 3)
!5234 = !DILocation(line: 289, column: 21, scope: !5233)
!5235 = !DILocation(line: 289, column: 27, scope: !5233)
!5236 = !DILocation(line: 289, column: 19, scope: !5233)
!5237 = !DILocation(line: 289, column: 3, scope: !5230)
!5238 = !DILocation(line: 290, column: 14, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 289, column: 41)
!5240 = !DILocation(line: 290, column: 20, scope: !5239)
!5241 = !DILocation(line: 290, column: 28, scope: !5239)
!5242 = !DILocation(line: 290, column: 32, scope: !5239)
!5243 = !DILocation(line: 290, column: 4, scope: !5239)
!5244 = !DILocation(line: 291, column: 14, scope: !5239)
!5245 = !DILocation(line: 291, column: 20, scope: !5239)
!5246 = !DILocation(line: 291, column: 24, scope: !5239)
!5247 = !DILocation(line: 291, column: 4, scope: !5239)
!5248 = !DILocation(line: 292, column: 11, scope: !5239)
!5249 = !DILocation(line: 292, column: 8, scope: !5239)
!5250 = !DILocation(line: 293, column: 6, scope: !5239)
!5251 = !DILocation(line: 294, column: 8, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 294, column: 8)
!5253 = !DILocation(line: 294, column: 13, scope: !5252)
!5254 = !DILocation(line: 294, column: 19, scope: !5252)
!5255 = !DILocation(line: 294, column: 10, scope: !5252)
!5256 = !DILocation(line: 294, column: 8, scope: !5239)
!5257 = !DILocation(line: 294, column: 27, scope: !5252)
!5258 = !DILocation(line: 295, column: 3, scope: !5239)
!5259 = !DILocation(line: 289, column: 37, scope: !5233)
!5260 = !DILocation(line: 289, column: 3, scope: !5233)
!5261 = distinct !{!5261, !5237, !5262}
!5262 = !DILocation(line: 295, column: 3, scope: !5230)
!5263 = !DILocation(line: 296, column: 9, scope: !5226)
!5264 = !DILocation(line: 296, column: 6, scope: !5226)
!5265 = !DILocation(line: 297, column: 2, scope: !5226)
!5266 = !DILocation(line: 287, column: 35, scope: !5220)
!5267 = !DILocation(line: 287, column: 2, scope: !5220)
!5268 = distinct !{!5268, !5224, !5269}
!5269 = !DILocation(line: 297, column: 2, scope: !5217)
!5270 = !DILocation(line: 299, column: 1, scope: !5165)
!5271 = distinct !DISubprogram(name: "svga_tilecursor", scope: !3, file: !3, line: 302, type: !5272, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{null, !132, !581, !4747}
!5274 = !DILocalVariable(name: "regbase", arg: 1, scope: !5271, file: !3, line: 302, type: !132)
!5275 = !DILocation(line: 302, column: 36, scope: !5271)
!5276 = !DILocalVariable(name: "info", arg: 2, scope: !5271, file: !3, line: 302, type: !581)
!5277 = !DILocation(line: 302, column: 61, scope: !5271)
!5278 = !DILocalVariable(name: "cursor", arg: 3, scope: !5271, file: !3, line: 302, type: !4747)
!5279 = !DILocation(line: 302, column: 89, scope: !5271)
!5280 = !DILocalVariable(name: "cs", scope: !5271, file: !3, line: 304, type: !121)
!5281 = !DILocation(line: 304, column: 5, scope: !5271)
!5282 = !DILocalVariable(name: "ce", scope: !5271, file: !3, line: 305, type: !121)
!5283 = !DILocation(line: 305, column: 5, scope: !5271)
!5284 = !DILocalVariable(name: "pos", scope: !5271, file: !3, line: 306, type: !127)
!5285 = !DILocation(line: 306, column: 6, scope: !5271)
!5286 = !DILocation(line: 306, column: 13, scope: !5271)
!5287 = !DILocation(line: 306, column: 21, scope: !5271)
!5288 = !DILocation(line: 306, column: 27, scope: !5271)
!5289 = !DILocation(line: 306, column: 33, scope: !5271)
!5290 = !DILocation(line: 306, column: 37, scope: !5271)
!5291 = !DILocation(line: 306, column: 45, scope: !5271)
!5292 = !DILocation(line: 306, column: 24, scope: !5271)
!5293 = !DILocation(line: 307, column: 6, scope: !5271)
!5294 = !DILocation(line: 307, column: 14, scope: !5271)
!5295 = !DILocation(line: 307, column: 20, scope: !5271)
!5296 = !DILocation(line: 307, column: 26, scope: !5271)
!5297 = !DILocation(line: 307, column: 30, scope: !5271)
!5298 = !DILocation(line: 307, column: 38, scope: !5271)
!5299 = !DILocation(line: 307, column: 17, scope: !5271)
!5300 = !DILocation(line: 308, column: 9, scope: !5271)
!5301 = !DILocation(line: 308, column: 15, scope: !5271)
!5302 = !DILocation(line: 308, column: 19, scope: !5271)
!5303 = !DILocation(line: 308, column: 32, scope: !5271)
!5304 = !DILocation(line: 308, column: 6, scope: !5271)
!5305 = !DILocation(line: 307, column: 3, scope: !5271)
!5306 = !DILocation(line: 310, column: 8, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 310, column: 6)
!5308 = !DILocation(line: 310, column: 18, scope: !5307)
!5309 = !DILocation(line: 310, column: 6, scope: !5271)
!5310 = !DILocation(line: 311, column: 3, scope: !5307)
!5311 = !DILocation(line: 313, column: 17, scope: !5271)
!5312 = !DILocation(line: 313, column: 2, scope: !5271)
!5313 = !DILocation(line: 315, column: 6, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 315, column: 6)
!5315 = !DILocation(line: 315, column: 16, scope: !5314)
!5316 = !DILocation(line: 315, column: 22, scope: !5314)
!5317 = !DILocation(line: 315, column: 6, scope: !5271)
!5318 = !DILocation(line: 316, column: 3, scope: !5314)
!5319 = !DILocation(line: 318, column: 10, scope: !5271)
!5320 = !DILocation(line: 318, column: 20, scope: !5271)
!5321 = !DILocation(line: 318, column: 2, scope: !5271)
!5322 = !DILocation(line: 320, column: 6, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 318, column: 27)
!5324 = !DILocation(line: 321, column: 3, scope: !5323)
!5325 = !DILocation(line: 323, column: 6, scope: !5323)
!5326 = !DILocation(line: 324, column: 3, scope: !5323)
!5327 = !DILocation(line: 326, column: 6, scope: !5323)
!5328 = !DILocation(line: 327, column: 3, scope: !5323)
!5329 = !DILocation(line: 329, column: 6, scope: !5323)
!5330 = !DILocation(line: 330, column: 3, scope: !5323)
!5331 = !DILocation(line: 332, column: 6, scope: !5323)
!5332 = !DILocation(line: 333, column: 3, scope: !5323)
!5333 = !DILocation(line: 337, column: 11, scope: !5271)
!5334 = !DILocation(line: 337, column: 26, scope: !5271)
!5335 = !DILocation(line: 337, column: 30, scope: !5271)
!5336 = !DILocation(line: 337, column: 2, scope: !5271)
!5337 = !DILocation(line: 338, column: 11, scope: !5271)
!5338 = !DILocation(line: 338, column: 26, scope: !5271)
!5339 = !DILocation(line: 338, column: 30, scope: !5271)
!5340 = !DILocation(line: 338, column: 2, scope: !5271)
!5341 = !DILocation(line: 340, column: 11, scope: !5271)
!5342 = !DILocation(line: 340, column: 26, scope: !5271)
!5343 = !DILocation(line: 340, column: 2, scope: !5271)
!5344 = !DILocation(line: 341, column: 11, scope: !5271)
!5345 = !DILocation(line: 341, column: 26, scope: !5271)
!5346 = !DILocation(line: 341, column: 2, scope: !5271)
!5347 = !DILocation(line: 342, column: 1, scope: !5271)
!5348 = distinct !DISubprogram(name: "svga_get_tilemax", scope: !3, file: !3, line: 344, type: !4588, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!5349 = !DILocalVariable(name: "info", arg: 1, scope: !5348, file: !3, line: 344, type: !581)
!5350 = !DILocation(line: 344, column: 38, scope: !5348)
!5351 = !DILocation(line: 346, column: 2, scope: !5348)
!5352 = distinct !DISubprogram(name: "svga_get_caps", scope: !3, file: !3, line: 351, type: !4678, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!5353 = !DILocalVariable(name: "info", arg: 1, scope: !5352, file: !3, line: 351, type: !581)
!5354 = !DILocation(line: 351, column: 36, scope: !5352)
!5355 = !DILocalVariable(name: "caps", arg: 2, scope: !5352, file: !3, line: 351, type: !4680)
!5356 = !DILocation(line: 351, column: 63, scope: !5352)
!5357 = !DILocalVariable(name: "var", arg: 3, scope: !5352, file: !3, line: 352, type: !4585)
!5358 = !DILocation(line: 352, column: 32, scope: !5352)
!5359 = !DILocation(line: 354, column: 6, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 354, column: 6)
!5361 = !DILocation(line: 354, column: 11, scope: !5360)
!5362 = !DILocation(line: 354, column: 26, scope: !5360)
!5363 = !DILocation(line: 354, column: 6, scope: !5352)
!5364 = !DILocation(line: 356, column: 3, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 354, column: 32)
!5366 = !DILocation(line: 356, column: 9, scope: !5365)
!5367 = !DILocation(line: 356, column: 11, scope: !5365)
!5368 = !DILocation(line: 357, column: 3, scope: !5365)
!5369 = !DILocation(line: 357, column: 9, scope: !5365)
!5370 = !DILocation(line: 357, column: 11, scope: !5365)
!5371 = !DILocation(line: 358, column: 3, scope: !5365)
!5372 = !DILocation(line: 358, column: 9, scope: !5365)
!5373 = !DILocation(line: 358, column: 13, scope: !5365)
!5374 = !DILocation(line: 359, column: 2, scope: !5365)
!5375 = !DILocation(line: 360, column: 14, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 359, column: 9)
!5377 = !DILocation(line: 360, column: 19, scope: !5376)
!5378 = !DILocation(line: 360, column: 34, scope: !5376)
!5379 = !DILocation(line: 360, column: 13, scope: !5376)
!5380 = !DILocation(line: 360, column: 3, scope: !5376)
!5381 = !DILocation(line: 360, column: 9, scope: !5376)
!5382 = !DILocation(line: 360, column: 11, scope: !5376)
!5383 = !DILocation(line: 361, column: 3, scope: !5376)
!5384 = !DILocation(line: 361, column: 9, scope: !5376)
!5385 = !DILocation(line: 361, column: 11, scope: !5376)
!5386 = !DILocation(line: 362, column: 3, scope: !5376)
!5387 = !DILocation(line: 362, column: 9, scope: !5376)
!5388 = !DILocation(line: 362, column: 13, scope: !5376)
!5389 = !DILocation(line: 364, column: 1, scope: !5352)
!5390 = distinct !DISubprogram(name: "svga_compute_pll", scope: !3, file: !3, line: 381, type: !5391, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!591, !5393, !130, !126, !126, !126, !591}
!5393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5394, size: 64)
!5394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5395)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svga_pll", file: !169, line: 56, size: 192, elements: !5396)
!5396 = !{!5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "m_min", scope: !5395, file: !169, line: 57, baseType: !127, size: 16)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "m_max", scope: !5395, file: !169, line: 58, baseType: !127, size: 16, offset: 16)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "n_min", scope: !5395, file: !169, line: 59, baseType: !127, size: 16, offset: 32)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "n_max", scope: !5395, file: !169, line: 60, baseType: !127, size: 16, offset: 48)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "r_min", scope: !5395, file: !169, line: 61, baseType: !127, size: 16, offset: 64)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "r_max", scope: !5395, file: !169, line: 62, baseType: !127, size: 16, offset: 80)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "f_vco_min", scope: !5395, file: !169, line: 63, baseType: !130, size: 32, offset: 96)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "f_vco_max", scope: !5395, file: !169, line: 64, baseType: !130, size: 32, offset: 128)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "f_base", scope: !5395, file: !169, line: 65, baseType: !130, size: 32, offset: 160)
!5406 = !DILocalVariable(name: "pll", arg: 1, scope: !5390, file: !3, line: 381, type: !5393)
!5407 = !DILocation(line: 381, column: 45, scope: !5390)
!5408 = !DILocalVariable(name: "f_wanted", arg: 2, scope: !5390, file: !3, line: 381, type: !130)
!5409 = !DILocation(line: 381, column: 54, scope: !5390)
!5410 = !DILocalVariable(name: "m", arg: 3, scope: !5390, file: !3, line: 381, type: !126)
!5411 = !DILocation(line: 381, column: 69, scope: !5390)
!5412 = !DILocalVariable(name: "n", arg: 4, scope: !5390, file: !3, line: 381, type: !126)
!5413 = !DILocation(line: 381, column: 77, scope: !5390)
!5414 = !DILocalVariable(name: "r", arg: 5, scope: !5390, file: !3, line: 381, type: !126)
!5415 = !DILocation(line: 381, column: 85, scope: !5390)
!5416 = !DILocalVariable(name: "node", arg: 6, scope: !5390, file: !3, line: 381, type: !591)
!5417 = !DILocation(line: 381, column: 92, scope: !5390)
!5418 = !DILocalVariable(name: "am", scope: !5390, file: !3, line: 383, type: !127)
!5419 = !DILocation(line: 383, column: 6, scope: !5390)
!5420 = !DILocalVariable(name: "an", scope: !5390, file: !3, line: 383, type: !127)
!5421 = !DILocation(line: 383, column: 10, scope: !5390)
!5422 = !DILocalVariable(name: "ar", scope: !5390, file: !3, line: 383, type: !127)
!5423 = !DILocation(line: 383, column: 14, scope: !5390)
!5424 = !DILocalVariable(name: "f_vco", scope: !5390, file: !3, line: 384, type: !130)
!5425 = !DILocation(line: 384, column: 6, scope: !5390)
!5426 = !DILocalVariable(name: "f_current", scope: !5390, file: !3, line: 384, type: !130)
!5427 = !DILocation(line: 384, column: 13, scope: !5390)
!5428 = !DILocalVariable(name: "delta_current", scope: !5390, file: !3, line: 384, type: !130)
!5429 = !DILocation(line: 384, column: 24, scope: !5390)
!5430 = !DILocalVariable(name: "delta_best", scope: !5390, file: !3, line: 384, type: !130)
!5431 = !DILocation(line: 384, column: 39, scope: !5390)
!5432 = !DILocation(line: 386, column: 2, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 386, column: 2)
!5434 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 386, column: 2)
!5435 = !DILocation(line: 386, column: 2, scope: !5434)
!5436 = !DILocation(line: 388, column: 7, scope: !5390)
!5437 = !DILocation(line: 388, column: 12, scope: !5390)
!5438 = !DILocation(line: 388, column: 5, scope: !5390)
!5439 = !DILocation(line: 389, column: 10, scope: !5390)
!5440 = !DILocation(line: 389, column: 22, scope: !5390)
!5441 = !DILocation(line: 389, column: 19, scope: !5390)
!5442 = !DILocation(line: 389, column: 8, scope: !5390)
!5443 = !DILocation(line: 392, column: 7, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 392, column: 6)
!5445 = !DILocation(line: 392, column: 16, scope: !5444)
!5446 = !DILocation(line: 392, column: 13, scope: !5444)
!5447 = !DILocation(line: 392, column: 23, scope: !5444)
!5448 = !DILocation(line: 392, column: 20, scope: !5444)
!5449 = !DILocation(line: 392, column: 6, scope: !5390)
!5450 = !DILocation(line: 393, column: 3, scope: !5444)
!5451 = !DILocation(line: 398, column: 2, scope: !5390)
!5452 = !DILocation(line: 398, column: 10, scope: !5390)
!5453 = !DILocation(line: 398, column: 15, scope: !5390)
!5454 = !DILocation(line: 398, column: 20, scope: !5390)
!5455 = !DILocation(line: 398, column: 13, scope: !5390)
!5456 = !DILocation(line: 398, column: 27, scope: !5390)
!5457 = !DILocation(line: 398, column: 31, scope: !5390)
!5458 = !DILocation(line: 398, column: 39, scope: !5390)
!5459 = !DILocation(line: 398, column: 44, scope: !5390)
!5460 = !DILocation(line: 398, column: 37, scope: !5390)
!5461 = !DILocation(line: 0, scope: !5390)
!5462 = !DILocation(line: 399, column: 5, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 398, column: 56)
!5464 = !DILocation(line: 400, column: 11, scope: !5463)
!5465 = !DILocation(line: 400, column: 17, scope: !5463)
!5466 = !DILocation(line: 400, column: 9, scope: !5463)
!5467 = distinct !{!5467, !5451, !5468}
!5468 = !DILocation(line: 401, column: 2, scope: !5390)
!5469 = !DILocation(line: 404, column: 7, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 404, column: 6)
!5471 = !DILocation(line: 404, column: 15, scope: !5470)
!5472 = !DILocation(line: 404, column: 20, scope: !5470)
!5473 = !DILocation(line: 404, column: 13, scope: !5470)
!5474 = !DILocation(line: 404, column: 31, scope: !5470)
!5475 = !DILocation(line: 404, column: 35, scope: !5470)
!5476 = !DILocation(line: 404, column: 43, scope: !5470)
!5477 = !DILocation(line: 404, column: 48, scope: !5470)
!5478 = !DILocation(line: 404, column: 41, scope: !5470)
!5479 = !DILocation(line: 404, column: 6, scope: !5390)
!5480 = !DILocation(line: 405, column: 3, scope: !5470)
!5481 = !DILocation(line: 407, column: 13, scope: !5390)
!5482 = !DILocation(line: 408, column: 3, scope: !5390)
!5483 = !DILocation(line: 408, column: 5, scope: !5390)
!5484 = !DILocation(line: 409, column: 3, scope: !5390)
!5485 = !DILocation(line: 409, column: 5, scope: !5390)
!5486 = !DILocation(line: 410, column: 7, scope: !5390)
!5487 = !DILocation(line: 410, column: 3, scope: !5390)
!5488 = !DILocation(line: 410, column: 5, scope: !5390)
!5489 = !DILocation(line: 412, column: 7, scope: !5390)
!5490 = !DILocation(line: 412, column: 12, scope: !5390)
!5491 = !DILocation(line: 412, column: 5, scope: !5390)
!5492 = !DILocation(line: 413, column: 7, scope: !5390)
!5493 = !DILocation(line: 413, column: 12, scope: !5390)
!5494 = !DILocation(line: 413, column: 5, scope: !5390)
!5495 = !DILocation(line: 415, column: 2, scope: !5390)
!5496 = !DILocation(line: 415, column: 10, scope: !5390)
!5497 = !DILocation(line: 415, column: 16, scope: !5390)
!5498 = !DILocation(line: 415, column: 21, scope: !5390)
!5499 = !DILocation(line: 415, column: 13, scope: !5390)
!5500 = !DILocation(line: 415, column: 28, scope: !5390)
!5501 = !DILocation(line: 415, column: 32, scope: !5390)
!5502 = !DILocation(line: 415, column: 38, scope: !5390)
!5503 = !DILocation(line: 415, column: 43, scope: !5390)
!5504 = !DILocation(line: 415, column: 35, scope: !5390)
!5505 = !DILocation(line: 416, column: 16, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 415, column: 51)
!5507 = !DILocation(line: 416, column: 21, scope: !5506)
!5508 = !DILocation(line: 416, column: 30, scope: !5506)
!5509 = !DILocation(line: 416, column: 28, scope: !5506)
!5510 = !DILocation(line: 416, column: 36, scope: !5506)
!5511 = !DILocation(line: 416, column: 34, scope: !5506)
!5512 = !DILocation(line: 416, column: 13, scope: !5506)
!5513 = !DILocation(line: 417, column: 29, scope: !5506)
!5514 = !DILocation(line: 417, column: 40, scope: !5506)
!5515 = !DILocation(line: 417, column: 19, scope: !5506)
!5516 = !DILocation(line: 417, column: 17, scope: !5506)
!5517 = !DILocation(line: 419, column: 7, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 419, column: 7)
!5519 = !DILocation(line: 419, column: 23, scope: !5518)
!5520 = !DILocation(line: 419, column: 21, scope: !5518)
!5521 = !DILocation(line: 419, column: 7, scope: !5506)
!5522 = !DILocation(line: 420, column: 17, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 419, column: 35)
!5524 = !DILocation(line: 420, column: 15, scope: !5523)
!5525 = !DILocation(line: 421, column: 9, scope: !5523)
!5526 = !DILocation(line: 421, column: 5, scope: !5523)
!5527 = !DILocation(line: 421, column: 7, scope: !5523)
!5528 = !DILocation(line: 422, column: 9, scope: !5523)
!5529 = !DILocation(line: 422, column: 5, scope: !5523)
!5530 = !DILocation(line: 422, column: 7, scope: !5523)
!5531 = !DILocation(line: 423, column: 3, scope: !5523)
!5532 = !DILocation(line: 425, column: 7, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 425, column: 7)
!5534 = !DILocation(line: 425, column: 20, scope: !5533)
!5535 = !DILocation(line: 425, column: 17, scope: !5533)
!5536 = !DILocation(line: 425, column: 7, scope: !5506)
!5537 = !DILocation(line: 426, column: 7, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 425, column: 27)
!5539 = !DILocation(line: 427, column: 3, scope: !5538)
!5540 = !DILocation(line: 428, column: 7, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 427, column: 10)
!5542 = distinct !{!5542, !5495, !5543}
!5543 = !DILocation(line: 430, column: 2, scope: !5390)
!5544 = !DILocation(line: 432, column: 15, scope: !5390)
!5545 = !DILocation(line: 432, column: 20, scope: !5390)
!5546 = !DILocation(line: 432, column: 30, scope: !5390)
!5547 = !DILocation(line: 432, column: 29, scope: !5390)
!5548 = !DILocation(line: 432, column: 27, scope: !5390)
!5549 = !DILocation(line: 432, column: 36, scope: !5390)
!5550 = !DILocation(line: 432, column: 35, scope: !5390)
!5551 = !DILocation(line: 432, column: 33, scope: !5390)
!5552 = !DILocation(line: 432, column: 12, scope: !5390)
!5553 = !DILocation(line: 433, column: 2, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 433, column: 2)
!5555 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 433, column: 2)
!5556 = !DILocation(line: 433, column: 2, scope: !5555)
!5557 = !DILocation(line: 434, column: 2, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 434, column: 2)
!5559 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 434, column: 2)
!5560 = !DILocation(line: 434, column: 2, scope: !5559)
!5561 = !DILocation(line: 435, column: 2, scope: !5390)
!5562 = !DILocation(line: 436, column: 1, scope: !5390)
!5563 = distinct !DISubprogram(name: "abs_diff", scope: !3, file: !3, line: 376, type: !5564, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!5564 = !DISubroutineType(types: !5565)
!5565 = !{!130, !130, !130}
!5566 = !DILocalVariable(name: "a", arg: 1, scope: !5563, file: !3, line: 376, type: !130)
!5567 = !DILocation(line: 376, column: 32, scope: !5563)
!5568 = !DILocalVariable(name: "b", arg: 2, scope: !5563, file: !3, line: 376, type: !130)
!5569 = !DILocation(line: 376, column: 39, scope: !5563)
!5570 = !DILocation(line: 378, column: 10, scope: !5563)
!5571 = !DILocation(line: 378, column: 14, scope: !5563)
!5572 = !DILocation(line: 378, column: 12, scope: !5563)
!5573 = !DILocation(line: 378, column: 9, scope: !5563)
!5574 = !DILocation(line: 378, column: 20, scope: !5563)
!5575 = !DILocation(line: 378, column: 24, scope: !5563)
!5576 = !DILocation(line: 378, column: 22, scope: !5563)
!5577 = !DILocation(line: 378, column: 30, scope: !5563)
!5578 = !DILocation(line: 378, column: 34, scope: !5563)
!5579 = !DILocation(line: 378, column: 32, scope: !5563)
!5580 = !DILocation(line: 378, column: 2, scope: !5563)
!5581 = distinct !DISubprogram(name: "svga_check_timings", scope: !3, file: !3, line: 443, type: !5582, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{!591, !5584, !4585, !591}
!5584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5585, size: 64)
!5585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5586)
!5586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svga_timing_regs", file: !169, line: 40, size: 768, elements: !5587)
!5587 = !{!5588, !5589, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598, !5599}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "h_total_regs", scope: !5586, file: !169, line: 41, baseType: !166, size: 64)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "h_display_regs", scope: !5586, file: !169, line: 42, baseType: !166, size: 64, offset: 64)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "h_blank_start_regs", scope: !5586, file: !169, line: 43, baseType: !166, size: 64, offset: 128)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "h_blank_end_regs", scope: !5586, file: !169, line: 44, baseType: !166, size: 64, offset: 192)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "h_sync_start_regs", scope: !5586, file: !169, line: 45, baseType: !166, size: 64, offset: 256)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "h_sync_end_regs", scope: !5586, file: !169, line: 46, baseType: !166, size: 64, offset: 320)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "v_total_regs", scope: !5586, file: !169, line: 48, baseType: !166, size: 64, offset: 384)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "v_display_regs", scope: !5586, file: !169, line: 49, baseType: !166, size: 64, offset: 448)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "v_blank_start_regs", scope: !5586, file: !169, line: 50, baseType: !166, size: 64, offset: 512)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "v_blank_end_regs", scope: !5586, file: !169, line: 51, baseType: !166, size: 64, offset: 576)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "v_sync_start_regs", scope: !5586, file: !169, line: 52, baseType: !166, size: 64, offset: 640)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "v_sync_end_regs", scope: !5586, file: !169, line: 53, baseType: !166, size: 64, offset: 704)
!5600 = !DILocalVariable(name: "tm", arg: 1, scope: !5581, file: !3, line: 443, type: !5584)
!5601 = !DILocation(line: 443, column: 55, scope: !5581)
!5602 = !DILocalVariable(name: "var", arg: 2, scope: !5581, file: !3, line: 443, type: !4585)
!5603 = !DILocation(line: 443, column: 85, scope: !5581)
!5604 = !DILocalVariable(name: "node", arg: 3, scope: !5581, file: !3, line: 443, type: !591)
!5605 = !DILocation(line: 443, column: 94, scope: !5581)
!5606 = !DILocalVariable(name: "value", scope: !5581, file: !3, line: 445, type: !130)
!5607 = !DILocation(line: 445, column: 6, scope: !5581)
!5608 = !DILocation(line: 447, column: 23, scope: !5581)
!5609 = !DILocation(line: 447, column: 28, scope: !5581)
!5610 = !DILocation(line: 447, column: 32, scope: !5581)
!5611 = !DILocation(line: 447, column: 35, scope: !5581)
!5612 = !DILocation(line: 447, column: 2, scope: !5581)
!5613 = !DILocation(line: 447, column: 7, scope: !5581)
!5614 = !DILocation(line: 447, column: 20, scope: !5581)
!5615 = !DILocation(line: 448, column: 23, scope: !5581)
!5616 = !DILocation(line: 448, column: 28, scope: !5581)
!5617 = !DILocation(line: 448, column: 39, scope: !5581)
!5618 = !DILocation(line: 448, column: 42, scope: !5581)
!5619 = !DILocation(line: 448, column: 2, scope: !5581)
!5620 = !DILocation(line: 448, column: 7, scope: !5581)
!5621 = !DILocation(line: 448, column: 20, scope: !5581)
!5622 = !DILocation(line: 449, column: 23, scope: !5581)
!5623 = !DILocation(line: 449, column: 28, scope: !5581)
!5624 = !DILocation(line: 449, column: 40, scope: !5581)
!5625 = !DILocation(line: 449, column: 43, scope: !5581)
!5626 = !DILocation(line: 449, column: 2, scope: !5581)
!5627 = !DILocation(line: 449, column: 7, scope: !5581)
!5628 = !DILocation(line: 449, column: 20, scope: !5581)
!5629 = !DILocation(line: 450, column: 23, scope: !5581)
!5630 = !DILocation(line: 450, column: 28, scope: !5581)
!5631 = !DILocation(line: 450, column: 37, scope: !5581)
!5632 = !DILocation(line: 450, column: 40, scope: !5581)
!5633 = !DILocation(line: 450, column: 2, scope: !5581)
!5634 = !DILocation(line: 450, column: 7, scope: !5581)
!5635 = !DILocation(line: 450, column: 20, scope: !5581)
!5636 = !DILocation(line: 453, column: 10, scope: !5581)
!5637 = !DILocation(line: 453, column: 15, scope: !5581)
!5638 = !DILocation(line: 453, column: 22, scope: !5581)
!5639 = !DILocation(line: 453, column: 27, scope: !5581)
!5640 = !DILocation(line: 453, column: 20, scope: !5581)
!5641 = !DILocation(line: 453, column: 41, scope: !5581)
!5642 = !DILocation(line: 453, column: 46, scope: !5581)
!5643 = !DILocation(line: 453, column: 39, scope: !5581)
!5644 = !DILocation(line: 453, column: 61, scope: !5581)
!5645 = !DILocation(line: 453, column: 66, scope: !5581)
!5646 = !DILocation(line: 453, column: 59, scope: !5581)
!5647 = !DILocation(line: 453, column: 8, scope: !5581)
!5648 = !DILocation(line: 454, column: 8, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 454, column: 6)
!5650 = !DILocation(line: 454, column: 14, scope: !5649)
!5651 = !DILocation(line: 454, column: 19, scope: !5649)
!5652 = !DILocation(line: 454, column: 45, scope: !5649)
!5653 = !DILocation(line: 454, column: 49, scope: !5649)
!5654 = !DILocation(line: 454, column: 27, scope: !5649)
!5655 = !DILocation(line: 454, column: 24, scope: !5649)
!5656 = !DILocation(line: 454, column: 6, scope: !5581)
!5657 = !DILocation(line: 455, column: 3, scope: !5649)
!5658 = !DILocation(line: 458, column: 10, scope: !5581)
!5659 = !DILocation(line: 458, column: 15, scope: !5581)
!5660 = !DILocation(line: 458, column: 8, scope: !5581)
!5661 = !DILocation(line: 459, column: 8, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 459, column: 6)
!5663 = !DILocation(line: 459, column: 14, scope: !5662)
!5664 = !DILocation(line: 459, column: 19, scope: !5662)
!5665 = !DILocation(line: 459, column: 45, scope: !5662)
!5666 = !DILocation(line: 459, column: 49, scope: !5662)
!5667 = !DILocation(line: 459, column: 27, scope: !5662)
!5668 = !DILocation(line: 459, column: 24, scope: !5662)
!5669 = !DILocation(line: 459, column: 6, scope: !5581)
!5670 = !DILocation(line: 460, column: 3, scope: !5662)
!5671 = !DILocation(line: 461, column: 8, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 461, column: 6)
!5673 = !DILocation(line: 461, column: 14, scope: !5672)
!5674 = !DILocation(line: 461, column: 19, scope: !5672)
!5675 = !DILocation(line: 461, column: 45, scope: !5672)
!5676 = !DILocation(line: 461, column: 49, scope: !5672)
!5677 = !DILocation(line: 461, column: 27, scope: !5672)
!5678 = !DILocation(line: 461, column: 24, scope: !5672)
!5679 = !DILocation(line: 461, column: 6, scope: !5581)
!5680 = !DILocation(line: 462, column: 3, scope: !5672)
!5681 = !DILocation(line: 465, column: 10, scope: !5581)
!5682 = !DILocation(line: 465, column: 15, scope: !5581)
!5683 = !DILocation(line: 465, column: 22, scope: !5581)
!5684 = !DILocation(line: 465, column: 27, scope: !5581)
!5685 = !DILocation(line: 465, column: 20, scope: !5581)
!5686 = !DILocation(line: 465, column: 8, scope: !5581)
!5687 = !DILocation(line: 466, column: 8, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 466, column: 6)
!5689 = !DILocation(line: 466, column: 14, scope: !5688)
!5690 = !DILocation(line: 466, column: 19, scope: !5688)
!5691 = !DILocation(line: 466, column: 45, scope: !5688)
!5692 = !DILocation(line: 466, column: 49, scope: !5688)
!5693 = !DILocation(line: 466, column: 27, scope: !5688)
!5694 = !DILocation(line: 466, column: 24, scope: !5688)
!5695 = !DILocation(line: 466, column: 6, scope: !5581)
!5696 = !DILocation(line: 467, column: 3, scope: !5688)
!5697 = !DILocation(line: 470, column: 10, scope: !5581)
!5698 = !DILocation(line: 470, column: 15, scope: !5581)
!5699 = !DILocation(line: 470, column: 29, scope: !5581)
!5700 = !DILocation(line: 470, column: 34, scope: !5581)
!5701 = !DILocation(line: 470, column: 27, scope: !5581)
!5702 = !DILocation(line: 470, column: 49, scope: !5581)
!5703 = !DILocation(line: 470, column: 54, scope: !5581)
!5704 = !DILocation(line: 470, column: 47, scope: !5581)
!5705 = !DILocation(line: 470, column: 8, scope: !5581)
!5706 = !DILocation(line: 471, column: 7, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 471, column: 6)
!5708 = !DILocation(line: 471, column: 13, scope: !5707)
!5709 = !DILocation(line: 471, column: 19, scope: !5707)
!5710 = !DILocation(line: 471, column: 24, scope: !5707)
!5711 = !DILocation(line: 471, column: 30, scope: !5707)
!5712 = !DILocation(line: 471, column: 56, scope: !5707)
!5713 = !DILocation(line: 471, column: 60, scope: !5707)
!5714 = !DILocation(line: 471, column: 38, scope: !5707)
!5715 = !DILocation(line: 471, column: 35, scope: !5707)
!5716 = !DILocation(line: 471, column: 6, scope: !5581)
!5717 = !DILocation(line: 472, column: 3, scope: !5707)
!5718 = !DILocation(line: 475, column: 10, scope: !5581)
!5719 = !DILocation(line: 475, column: 15, scope: !5581)
!5720 = !DILocation(line: 475, column: 8, scope: !5581)
!5721 = !DILocation(line: 476, column: 7, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 476, column: 6)
!5723 = !DILocation(line: 476, column: 13, scope: !5722)
!5724 = !DILocation(line: 476, column: 19, scope: !5722)
!5725 = !DILocation(line: 476, column: 24, scope: !5722)
!5726 = !DILocation(line: 476, column: 30, scope: !5722)
!5727 = !DILocation(line: 476, column: 56, scope: !5722)
!5728 = !DILocation(line: 476, column: 60, scope: !5722)
!5729 = !DILocation(line: 476, column: 38, scope: !5722)
!5730 = !DILocation(line: 476, column: 35, scope: !5722)
!5731 = !DILocation(line: 476, column: 6, scope: !5581)
!5732 = !DILocation(line: 477, column: 3, scope: !5722)
!5733 = !DILocation(line: 480, column: 10, scope: !5581)
!5734 = !DILocation(line: 480, column: 15, scope: !5581)
!5735 = !DILocation(line: 480, column: 22, scope: !5581)
!5736 = !DILocation(line: 480, column: 27, scope: !5581)
!5737 = !DILocation(line: 480, column: 20, scope: !5581)
!5738 = !DILocation(line: 480, column: 42, scope: !5581)
!5739 = !DILocation(line: 480, column: 47, scope: !5581)
!5740 = !DILocation(line: 480, column: 40, scope: !5581)
!5741 = !DILocation(line: 480, column: 62, scope: !5581)
!5742 = !DILocation(line: 480, column: 67, scope: !5581)
!5743 = !DILocation(line: 480, column: 60, scope: !5581)
!5744 = !DILocation(line: 480, column: 8, scope: !5581)
!5745 = !DILocation(line: 481, column: 7, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 481, column: 6)
!5747 = !DILocation(line: 481, column: 13, scope: !5746)
!5748 = !DILocation(line: 481, column: 38, scope: !5746)
!5749 = !DILocation(line: 481, column: 42, scope: !5746)
!5750 = !DILocation(line: 481, column: 21, scope: !5746)
!5751 = !DILocation(line: 481, column: 18, scope: !5746)
!5752 = !DILocation(line: 481, column: 6, scope: !5581)
!5753 = !DILocation(line: 482, column: 3, scope: !5746)
!5754 = !DILocation(line: 485, column: 10, scope: !5581)
!5755 = !DILocation(line: 485, column: 15, scope: !5581)
!5756 = !DILocation(line: 485, column: 8, scope: !5581)
!5757 = !DILocation(line: 486, column: 7, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 486, column: 6)
!5759 = !DILocation(line: 486, column: 13, scope: !5758)
!5760 = !DILocation(line: 486, column: 38, scope: !5758)
!5761 = !DILocation(line: 486, column: 42, scope: !5758)
!5762 = !DILocation(line: 486, column: 21, scope: !5758)
!5763 = !DILocation(line: 486, column: 18, scope: !5758)
!5764 = !DILocation(line: 486, column: 6, scope: !5581)
!5765 = !DILocation(line: 487, column: 3, scope: !5758)
!5766 = !DILocation(line: 488, column: 7, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 488, column: 6)
!5768 = !DILocation(line: 488, column: 13, scope: !5767)
!5769 = !DILocation(line: 488, column: 38, scope: !5767)
!5770 = !DILocation(line: 488, column: 42, scope: !5767)
!5771 = !DILocation(line: 488, column: 21, scope: !5767)
!5772 = !DILocation(line: 488, column: 18, scope: !5767)
!5773 = !DILocation(line: 488, column: 6, scope: !5581)
!5774 = !DILocation(line: 489, column: 3, scope: !5767)
!5775 = !DILocation(line: 492, column: 10, scope: !5581)
!5776 = !DILocation(line: 492, column: 15, scope: !5581)
!5777 = !DILocation(line: 492, column: 22, scope: !5581)
!5778 = !DILocation(line: 492, column: 27, scope: !5581)
!5779 = !DILocation(line: 492, column: 20, scope: !5581)
!5780 = !DILocation(line: 492, column: 8, scope: !5581)
!5781 = !DILocation(line: 493, column: 7, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 493, column: 6)
!5783 = !DILocation(line: 493, column: 13, scope: !5782)
!5784 = !DILocation(line: 493, column: 38, scope: !5782)
!5785 = !DILocation(line: 493, column: 42, scope: !5782)
!5786 = !DILocation(line: 493, column: 21, scope: !5782)
!5787 = !DILocation(line: 493, column: 18, scope: !5782)
!5788 = !DILocation(line: 493, column: 6, scope: !5581)
!5789 = !DILocation(line: 494, column: 3, scope: !5782)
!5790 = !DILocation(line: 497, column: 10, scope: !5581)
!5791 = !DILocation(line: 497, column: 15, scope: !5581)
!5792 = !DILocation(line: 497, column: 30, scope: !5581)
!5793 = !DILocation(line: 497, column: 35, scope: !5581)
!5794 = !DILocation(line: 497, column: 28, scope: !5581)
!5795 = !DILocation(line: 497, column: 50, scope: !5581)
!5796 = !DILocation(line: 497, column: 55, scope: !5581)
!5797 = !DILocation(line: 497, column: 48, scope: !5581)
!5798 = !DILocation(line: 497, column: 8, scope: !5581)
!5799 = !DILocation(line: 498, column: 7, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 498, column: 6)
!5801 = !DILocation(line: 498, column: 13, scope: !5800)
!5802 = !DILocation(line: 498, column: 19, scope: !5800)
!5803 = !DILocation(line: 498, column: 23, scope: !5800)
!5804 = !DILocation(line: 498, column: 50, scope: !5800)
!5805 = !DILocation(line: 498, column: 54, scope: !5800)
!5806 = !DILocation(line: 498, column: 32, scope: !5800)
!5807 = !DILocation(line: 498, column: 29, scope: !5800)
!5808 = !DILocation(line: 498, column: 6, scope: !5581)
!5809 = !DILocation(line: 499, column: 3, scope: !5800)
!5810 = !DILocation(line: 502, column: 10, scope: !5581)
!5811 = !DILocation(line: 502, column: 15, scope: !5581)
!5812 = !DILocation(line: 502, column: 8, scope: !5581)
!5813 = !DILocation(line: 503, column: 7, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 503, column: 6)
!5815 = !DILocation(line: 503, column: 13, scope: !5814)
!5816 = !DILocation(line: 503, column: 19, scope: !5814)
!5817 = !DILocation(line: 503, column: 23, scope: !5814)
!5818 = !DILocation(line: 503, column: 50, scope: !5814)
!5819 = !DILocation(line: 503, column: 54, scope: !5814)
!5820 = !DILocation(line: 503, column: 32, scope: !5814)
!5821 = !DILocation(line: 503, column: 29, scope: !5814)
!5822 = !DILocation(line: 503, column: 6, scope: !5581)
!5823 = !DILocation(line: 504, column: 3, scope: !5814)
!5824 = !DILocation(line: 506, column: 2, scope: !5581)
!5825 = !DILocation(line: 507, column: 1, scope: !5581)
!5826 = distinct !DISubprogram(name: "svga_regset_size", scope: !3, file: !3, line: 62, type: !5827, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!5827 = !DISubroutineType(types: !5828)
!5828 = !{!7, !166}
!5829 = !DILocalVariable(name: "regset", arg: 1, scope: !5826, file: !3, line: 62, type: !166)
!5830 = !DILocation(line: 62, column: 63, scope: !5826)
!5831 = !DILocalVariable(name: "count", scope: !5826, file: !3, line: 64, type: !121)
!5832 = !DILocation(line: 64, column: 5, scope: !5826)
!5833 = !DILocation(line: 66, column: 2, scope: !5826)
!5834 = !DILocation(line: 66, column: 9, scope: !5826)
!5835 = !DILocation(line: 66, column: 17, scope: !5826)
!5836 = !DILocation(line: 66, column: 24, scope: !5826)
!5837 = !DILocation(line: 67, column: 12, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5826, file: !3, line: 66, column: 47)
!5839 = !DILocation(line: 67, column: 20, scope: !5838)
!5840 = !DILocation(line: 67, column: 30, scope: !5838)
!5841 = !DILocation(line: 67, column: 38, scope: !5838)
!5842 = !DILocation(line: 67, column: 28, scope: !5838)
!5843 = !DILocation(line: 67, column: 45, scope: !5838)
!5844 = !DILocation(line: 67, column: 9, scope: !5838)
!5845 = !DILocation(line: 68, column: 10, scope: !5838)
!5846 = distinct !{!5846, !5833, !5847}
!5847 = !DILocation(line: 69, column: 2, scope: !5826)
!5848 = !DILocation(line: 70, column: 14, scope: !5826)
!5849 = !DILocation(line: 70, column: 11, scope: !5826)
!5850 = !DILocation(line: 70, column: 2, scope: !5826)
!5851 = distinct !DISubprogram(name: "svga_set_timings", scope: !3, file: !3, line: 510, type: !5852, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!5852 = !DISubroutineType(types: !5853)
!5853 = !{null, !132, !5584, !4585, !130, !130, !130, !130, !130, !591}
!5854 = !DILocalVariable(name: "regbase", arg: 1, scope: !5851, file: !3, line: 510, type: !132)
!5855 = !DILocation(line: 510, column: 37, scope: !5851)
!5856 = !DILocalVariable(name: "tm", arg: 2, scope: !5851, file: !3, line: 510, type: !5584)
!5857 = !DILocation(line: 510, column: 77, scope: !5851)
!5858 = !DILocalVariable(name: "var", arg: 3, scope: !5851, file: !3, line: 511, type: !4585)
!5859 = !DILocation(line: 511, column: 35, scope: !5851)
!5860 = !DILocalVariable(name: "hmul", arg: 4, scope: !5851, file: !3, line: 512, type: !130)
!5861 = !DILocation(line: 512, column: 13, scope: !5851)
!5862 = !DILocalVariable(name: "hdiv", arg: 5, scope: !5851, file: !3, line: 512, type: !130)
!5863 = !DILocation(line: 512, column: 23, scope: !5851)
!5864 = !DILocalVariable(name: "vmul", arg: 6, scope: !5851, file: !3, line: 512, type: !130)
!5865 = !DILocation(line: 512, column: 33, scope: !5851)
!5866 = !DILocalVariable(name: "vdiv", arg: 7, scope: !5851, file: !3, line: 512, type: !130)
!5867 = !DILocation(line: 512, column: 43, scope: !5851)
!5868 = !DILocalVariable(name: "hborder", arg: 8, scope: !5851, file: !3, line: 512, type: !130)
!5869 = !DILocation(line: 512, column: 53, scope: !5851)
!5870 = !DILocalVariable(name: "node", arg: 9, scope: !5851, file: !3, line: 512, type: !591)
!5871 = !DILocation(line: 512, column: 66, scope: !5851)
!5872 = !DILocalVariable(name: "regval", scope: !5851, file: !3, line: 514, type: !121)
!5873 = !DILocation(line: 514, column: 5, scope: !5851)
!5874 = !DILocalVariable(name: "value", scope: !5851, file: !3, line: 515, type: !130)
!5875 = !DILocation(line: 515, column: 6, scope: !5851)
!5876 = !DILocation(line: 517, column: 10, scope: !5851)
!5877 = !DILocation(line: 517, column: 15, scope: !5851)
!5878 = !DILocation(line: 517, column: 22, scope: !5851)
!5879 = !DILocation(line: 517, column: 27, scope: !5851)
!5880 = !DILocation(line: 517, column: 20, scope: !5851)
!5881 = !DILocation(line: 517, column: 41, scope: !5851)
!5882 = !DILocation(line: 517, column: 46, scope: !5851)
!5883 = !DILocation(line: 517, column: 39, scope: !5851)
!5884 = !DILocation(line: 517, column: 61, scope: !5851)
!5885 = !DILocation(line: 517, column: 66, scope: !5851)
!5886 = !DILocation(line: 517, column: 59, scope: !5851)
!5887 = !DILocation(line: 517, column: 8, scope: !5851)
!5888 = !DILocation(line: 518, column: 11, scope: !5851)
!5889 = !DILocation(line: 518, column: 19, scope: !5851)
!5890 = !DILocation(line: 518, column: 17, scope: !5851)
!5891 = !DILocation(line: 518, column: 27, scope: !5851)
!5892 = !DILocation(line: 518, column: 25, scope: !5851)
!5893 = !DILocation(line: 518, column: 8, scope: !5851)
!5894 = !DILocation(line: 519, column: 2, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 519, column: 2)
!5896 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 519, column: 2)
!5897 = !DILocation(line: 519, column: 2, scope: !5896)
!5898 = !DILocation(line: 520, column: 18, scope: !5851)
!5899 = !DILocation(line: 520, column: 27, scope: !5851)
!5900 = !DILocation(line: 520, column: 31, scope: !5851)
!5901 = !DILocation(line: 520, column: 46, scope: !5851)
!5902 = !DILocation(line: 520, column: 52, scope: !5851)
!5903 = !DILocation(line: 520, column: 57, scope: !5851)
!5904 = !DILocation(line: 520, column: 2, scope: !5851)
!5905 = !DILocation(line: 522, column: 10, scope: !5851)
!5906 = !DILocation(line: 522, column: 15, scope: !5851)
!5907 = !DILocation(line: 522, column: 8, scope: !5851)
!5908 = !DILocation(line: 523, column: 11, scope: !5851)
!5909 = !DILocation(line: 523, column: 19, scope: !5851)
!5910 = !DILocation(line: 523, column: 17, scope: !5851)
!5911 = !DILocation(line: 523, column: 27, scope: !5851)
!5912 = !DILocation(line: 523, column: 25, scope: !5851)
!5913 = !DILocation(line: 523, column: 8, scope: !5851)
!5914 = !DILocation(line: 524, column: 2, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 524, column: 2)
!5916 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 524, column: 2)
!5917 = !DILocation(line: 524, column: 2, scope: !5916)
!5918 = !DILocation(line: 525, column: 18, scope: !5851)
!5919 = !DILocation(line: 525, column: 27, scope: !5851)
!5920 = !DILocation(line: 525, column: 31, scope: !5851)
!5921 = !DILocation(line: 525, column: 48, scope: !5851)
!5922 = !DILocation(line: 525, column: 54, scope: !5851)
!5923 = !DILocation(line: 525, column: 59, scope: !5851)
!5924 = !DILocation(line: 525, column: 2, scope: !5851)
!5925 = !DILocation(line: 527, column: 10, scope: !5851)
!5926 = !DILocation(line: 527, column: 15, scope: !5851)
!5927 = !DILocation(line: 527, column: 8, scope: !5851)
!5928 = !DILocation(line: 528, column: 11, scope: !5851)
!5929 = !DILocation(line: 528, column: 19, scope: !5851)
!5930 = !DILocation(line: 528, column: 17, scope: !5851)
!5931 = !DILocation(line: 528, column: 27, scope: !5851)
!5932 = !DILocation(line: 528, column: 25, scope: !5851)
!5933 = !DILocation(line: 528, column: 8, scope: !5851)
!5934 = !DILocation(line: 529, column: 2, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 529, column: 2)
!5936 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 529, column: 2)
!5937 = !DILocation(line: 529, column: 2, scope: !5936)
!5938 = !DILocation(line: 530, column: 18, scope: !5851)
!5939 = !DILocation(line: 530, column: 27, scope: !5851)
!5940 = !DILocation(line: 530, column: 31, scope: !5851)
!5941 = !DILocation(line: 530, column: 52, scope: !5851)
!5942 = !DILocation(line: 530, column: 58, scope: !5851)
!5943 = !DILocation(line: 530, column: 63, scope: !5851)
!5944 = !DILocation(line: 530, column: 69, scope: !5851)
!5945 = !DILocation(line: 530, column: 67, scope: !5851)
!5946 = !DILocation(line: 530, column: 2, scope: !5851)
!5947 = !DILocation(line: 532, column: 10, scope: !5851)
!5948 = !DILocation(line: 532, column: 15, scope: !5851)
!5949 = !DILocation(line: 532, column: 22, scope: !5851)
!5950 = !DILocation(line: 532, column: 27, scope: !5851)
!5951 = !DILocation(line: 532, column: 20, scope: !5851)
!5952 = !DILocation(line: 532, column: 41, scope: !5851)
!5953 = !DILocation(line: 532, column: 46, scope: !5851)
!5954 = !DILocation(line: 532, column: 39, scope: !5851)
!5955 = !DILocation(line: 532, column: 61, scope: !5851)
!5956 = !DILocation(line: 532, column: 66, scope: !5851)
!5957 = !DILocation(line: 532, column: 59, scope: !5851)
!5958 = !DILocation(line: 532, column: 8, scope: !5851)
!5959 = !DILocation(line: 533, column: 11, scope: !5851)
!5960 = !DILocation(line: 533, column: 19, scope: !5851)
!5961 = !DILocation(line: 533, column: 17, scope: !5851)
!5962 = !DILocation(line: 533, column: 27, scope: !5851)
!5963 = !DILocation(line: 533, column: 25, scope: !5851)
!5964 = !DILocation(line: 533, column: 8, scope: !5851)
!5965 = !DILocation(line: 534, column: 2, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 534, column: 2)
!5967 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 534, column: 2)
!5968 = !DILocation(line: 534, column: 2, scope: !5967)
!5969 = !DILocation(line: 535, column: 18, scope: !5851)
!5970 = !DILocation(line: 535, column: 27, scope: !5851)
!5971 = !DILocation(line: 535, column: 31, scope: !5851)
!5972 = !DILocation(line: 535, column: 50, scope: !5851)
!5973 = !DILocation(line: 535, column: 56, scope: !5851)
!5974 = !DILocation(line: 535, column: 61, scope: !5851)
!5975 = !DILocation(line: 535, column: 67, scope: !5851)
!5976 = !DILocation(line: 535, column: 65, scope: !5851)
!5977 = !DILocation(line: 535, column: 2, scope: !5851)
!5978 = !DILocation(line: 537, column: 10, scope: !5851)
!5979 = !DILocation(line: 537, column: 15, scope: !5851)
!5980 = !DILocation(line: 537, column: 22, scope: !5851)
!5981 = !DILocation(line: 537, column: 27, scope: !5851)
!5982 = !DILocation(line: 537, column: 20, scope: !5851)
!5983 = !DILocation(line: 537, column: 8, scope: !5851)
!5984 = !DILocation(line: 538, column: 11, scope: !5851)
!5985 = !DILocation(line: 538, column: 19, scope: !5851)
!5986 = !DILocation(line: 538, column: 17, scope: !5851)
!5987 = !DILocation(line: 538, column: 27, scope: !5851)
!5988 = !DILocation(line: 538, column: 25, scope: !5851)
!5989 = !DILocation(line: 538, column: 8, scope: !5851)
!5990 = !DILocation(line: 539, column: 2, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5992, file: !3, line: 539, column: 2)
!5992 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 539, column: 2)
!5993 = !DILocation(line: 539, column: 2, scope: !5992)
!5994 = !DILocation(line: 540, column: 18, scope: !5851)
!5995 = !DILocation(line: 540, column: 27, scope: !5851)
!5996 = !DILocation(line: 540, column: 31, scope: !5851)
!5997 = !DILocation(line: 540, column: 51, scope: !5851)
!5998 = !DILocation(line: 540, column: 57, scope: !5851)
!5999 = !DILocation(line: 540, column: 2, scope: !5851)
!6000 = !DILocation(line: 542, column: 10, scope: !5851)
!6001 = !DILocation(line: 542, column: 15, scope: !5851)
!6002 = !DILocation(line: 542, column: 22, scope: !5851)
!6003 = !DILocation(line: 542, column: 27, scope: !5851)
!6004 = !DILocation(line: 542, column: 20, scope: !5851)
!6005 = !DILocation(line: 542, column: 42, scope: !5851)
!6006 = !DILocation(line: 542, column: 47, scope: !5851)
!6007 = !DILocation(line: 542, column: 40, scope: !5851)
!6008 = !DILocation(line: 542, column: 8, scope: !5851)
!6009 = !DILocation(line: 543, column: 11, scope: !5851)
!6010 = !DILocation(line: 543, column: 19, scope: !5851)
!6011 = !DILocation(line: 543, column: 17, scope: !5851)
!6012 = !DILocation(line: 543, column: 27, scope: !5851)
!6013 = !DILocation(line: 543, column: 25, scope: !5851)
!6014 = !DILocation(line: 543, column: 8, scope: !5851)
!6015 = !DILocation(line: 544, column: 2, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 544, column: 2)
!6017 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 544, column: 2)
!6018 = !DILocation(line: 544, column: 2, scope: !6017)
!6019 = !DILocation(line: 545, column: 18, scope: !5851)
!6020 = !DILocation(line: 545, column: 27, scope: !5851)
!6021 = !DILocation(line: 545, column: 31, scope: !5851)
!6022 = !DILocation(line: 545, column: 49, scope: !5851)
!6023 = !DILocation(line: 545, column: 55, scope: !5851)
!6024 = !DILocation(line: 545, column: 2, scope: !5851)
!6025 = !DILocation(line: 547, column: 10, scope: !5851)
!6026 = !DILocation(line: 547, column: 15, scope: !5851)
!6027 = !DILocation(line: 547, column: 22, scope: !5851)
!6028 = !DILocation(line: 547, column: 27, scope: !5851)
!6029 = !DILocation(line: 547, column: 20, scope: !5851)
!6030 = !DILocation(line: 547, column: 42, scope: !5851)
!6031 = !DILocation(line: 547, column: 47, scope: !5851)
!6032 = !DILocation(line: 547, column: 40, scope: !5851)
!6033 = !DILocation(line: 547, column: 62, scope: !5851)
!6034 = !DILocation(line: 547, column: 67, scope: !5851)
!6035 = !DILocation(line: 547, column: 60, scope: !5851)
!6036 = !DILocation(line: 547, column: 8, scope: !5851)
!6037 = !DILocation(line: 548, column: 11, scope: !5851)
!6038 = !DILocation(line: 548, column: 19, scope: !5851)
!6039 = !DILocation(line: 548, column: 17, scope: !5851)
!6040 = !DILocation(line: 548, column: 27, scope: !5851)
!6041 = !DILocation(line: 548, column: 25, scope: !5851)
!6042 = !DILocation(line: 548, column: 8, scope: !5851)
!6043 = !DILocation(line: 549, column: 2, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6045, file: !3, line: 549, column: 2)
!6045 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 549, column: 2)
!6046 = !DILocation(line: 549, column: 2, scope: !6045)
!6047 = !DILocation(line: 550, column: 18, scope: !5851)
!6048 = !DILocation(line: 550, column: 27, scope: !5851)
!6049 = !DILocation(line: 550, column: 31, scope: !5851)
!6050 = !DILocation(line: 550, column: 45, scope: !5851)
!6051 = !DILocation(line: 550, column: 51, scope: !5851)
!6052 = !DILocation(line: 550, column: 2, scope: !5851)
!6053 = !DILocation(line: 552, column: 10, scope: !5851)
!6054 = !DILocation(line: 552, column: 15, scope: !5851)
!6055 = !DILocation(line: 552, column: 8, scope: !5851)
!6056 = !DILocation(line: 553, column: 11, scope: !5851)
!6057 = !DILocation(line: 553, column: 19, scope: !5851)
!6058 = !DILocation(line: 553, column: 17, scope: !5851)
!6059 = !DILocation(line: 553, column: 27, scope: !5851)
!6060 = !DILocation(line: 553, column: 25, scope: !5851)
!6061 = !DILocation(line: 553, column: 8, scope: !5851)
!6062 = !DILocation(line: 554, column: 2, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6064, file: !3, line: 554, column: 2)
!6064 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 554, column: 2)
!6065 = !DILocation(line: 554, column: 2, scope: !6064)
!6066 = !DILocation(line: 555, column: 18, scope: !5851)
!6067 = !DILocation(line: 555, column: 27, scope: !5851)
!6068 = !DILocation(line: 555, column: 31, scope: !5851)
!6069 = !DILocation(line: 555, column: 47, scope: !5851)
!6070 = !DILocation(line: 555, column: 53, scope: !5851)
!6071 = !DILocation(line: 555, column: 2, scope: !5851)
!6072 = !DILocation(line: 557, column: 10, scope: !5851)
!6073 = !DILocation(line: 557, column: 15, scope: !5851)
!6074 = !DILocation(line: 557, column: 8, scope: !5851)
!6075 = !DILocation(line: 558, column: 11, scope: !5851)
!6076 = !DILocation(line: 558, column: 19, scope: !5851)
!6077 = !DILocation(line: 558, column: 17, scope: !5851)
!6078 = !DILocation(line: 558, column: 27, scope: !5851)
!6079 = !DILocation(line: 558, column: 25, scope: !5851)
!6080 = !DILocation(line: 558, column: 8, scope: !5851)
!6081 = !DILocation(line: 559, column: 2, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 559, column: 2)
!6083 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 559, column: 2)
!6084 = !DILocation(line: 559, column: 2, scope: !6083)
!6085 = !DILocation(line: 560, column: 18, scope: !5851)
!6086 = !DILocation(line: 560, column: 27, scope: !5851)
!6087 = !DILocation(line: 560, column: 31, scope: !5851)
!6088 = !DILocation(line: 560, column: 51, scope: !5851)
!6089 = !DILocation(line: 560, column: 2, scope: !5851)
!6090 = !DILocation(line: 562, column: 10, scope: !5851)
!6091 = !DILocation(line: 562, column: 15, scope: !5851)
!6092 = !DILocation(line: 562, column: 22, scope: !5851)
!6093 = !DILocation(line: 562, column: 27, scope: !5851)
!6094 = !DILocation(line: 562, column: 20, scope: !5851)
!6095 = !DILocation(line: 562, column: 42, scope: !5851)
!6096 = !DILocation(line: 562, column: 47, scope: !5851)
!6097 = !DILocation(line: 562, column: 40, scope: !5851)
!6098 = !DILocation(line: 562, column: 62, scope: !5851)
!6099 = !DILocation(line: 562, column: 67, scope: !5851)
!6100 = !DILocation(line: 562, column: 60, scope: !5851)
!6101 = !DILocation(line: 562, column: 8, scope: !5851)
!6102 = !DILocation(line: 563, column: 11, scope: !5851)
!6103 = !DILocation(line: 563, column: 19, scope: !5851)
!6104 = !DILocation(line: 563, column: 17, scope: !5851)
!6105 = !DILocation(line: 563, column: 27, scope: !5851)
!6106 = !DILocation(line: 563, column: 25, scope: !5851)
!6107 = !DILocation(line: 563, column: 8, scope: !5851)
!6108 = !DILocation(line: 564, column: 2, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 564, column: 2)
!6110 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 564, column: 2)
!6111 = !DILocation(line: 564, column: 2, scope: !6110)
!6112 = !DILocation(line: 565, column: 18, scope: !5851)
!6113 = !DILocation(line: 565, column: 27, scope: !5851)
!6114 = !DILocation(line: 565, column: 31, scope: !5851)
!6115 = !DILocation(line: 565, column: 49, scope: !5851)
!6116 = !DILocation(line: 565, column: 55, scope: !5851)
!6117 = !DILocation(line: 565, column: 2, scope: !5851)
!6118 = !DILocation(line: 567, column: 10, scope: !5851)
!6119 = !DILocation(line: 567, column: 15, scope: !5851)
!6120 = !DILocation(line: 567, column: 22, scope: !5851)
!6121 = !DILocation(line: 567, column: 27, scope: !5851)
!6122 = !DILocation(line: 567, column: 20, scope: !5851)
!6123 = !DILocation(line: 567, column: 8, scope: !5851)
!6124 = !DILocation(line: 568, column: 11, scope: !5851)
!6125 = !DILocation(line: 568, column: 19, scope: !5851)
!6126 = !DILocation(line: 568, column: 17, scope: !5851)
!6127 = !DILocation(line: 568, column: 27, scope: !5851)
!6128 = !DILocation(line: 568, column: 25, scope: !5851)
!6129 = !DILocation(line: 568, column: 8, scope: !5851)
!6130 = !DILocation(line: 569, column: 2, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 569, column: 2)
!6132 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 569, column: 2)
!6133 = !DILocation(line: 569, column: 2, scope: !6132)
!6134 = !DILocation(line: 570, column: 18, scope: !5851)
!6135 = !DILocation(line: 570, column: 27, scope: !5851)
!6136 = !DILocation(line: 570, column: 31, scope: !5851)
!6137 = !DILocation(line: 570, column: 50, scope: !5851)
!6138 = !DILocation(line: 570, column: 2, scope: !5851)
!6139 = !DILocation(line: 572, column: 10, scope: !5851)
!6140 = !DILocation(line: 572, column: 15, scope: !5851)
!6141 = !DILocation(line: 572, column: 22, scope: !5851)
!6142 = !DILocation(line: 572, column: 27, scope: !5851)
!6143 = !DILocation(line: 572, column: 20, scope: !5851)
!6144 = !DILocation(line: 572, column: 42, scope: !5851)
!6145 = !DILocation(line: 572, column: 47, scope: !5851)
!6146 = !DILocation(line: 572, column: 40, scope: !5851)
!6147 = !DILocation(line: 572, column: 8, scope: !5851)
!6148 = !DILocation(line: 573, column: 11, scope: !5851)
!6149 = !DILocation(line: 573, column: 19, scope: !5851)
!6150 = !DILocation(line: 573, column: 17, scope: !5851)
!6151 = !DILocation(line: 573, column: 27, scope: !5851)
!6152 = !DILocation(line: 573, column: 25, scope: !5851)
!6153 = !DILocation(line: 573, column: 8, scope: !5851)
!6154 = !DILocation(line: 574, column: 2, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 574, column: 2)
!6156 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 574, column: 2)
!6157 = !DILocation(line: 574, column: 2, scope: !6156)
!6158 = !DILocation(line: 575, column: 18, scope: !5851)
!6159 = !DILocation(line: 575, column: 27, scope: !5851)
!6160 = !DILocation(line: 575, column: 31, scope: !5851)
!6161 = !DILocation(line: 575, column: 48, scope: !5851)
!6162 = !DILocation(line: 575, column: 2, scope: !5851)
!6163 = !DILocation(line: 579, column: 17, scope: !5851)
!6164 = !DILocation(line: 579, column: 11, scope: !5851)
!6165 = !DILocation(line: 579, column: 9, scope: !5851)
!6166 = !DILocation(line: 580, column: 6, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 580, column: 6)
!6168 = !DILocation(line: 580, column: 11, scope: !6167)
!6169 = !DILocation(line: 580, column: 16, scope: !6167)
!6170 = !DILocation(line: 580, column: 6, scope: !5851)
!6171 = !DILocation(line: 581, column: 3, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6173, file: !3, line: 581, column: 3)
!6173 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 581, column: 3)
!6174 = distinct !DILexicalBlock(scope: !6167, file: !3, line: 580, column: 40)
!6175 = !DILocation(line: 581, column: 3, scope: !6173)
!6176 = !DILocation(line: 582, column: 12, scope: !6174)
!6177 = !DILocation(line: 582, column: 19, scope: !6174)
!6178 = !DILocation(line: 582, column: 10, scope: !6174)
!6179 = !DILocation(line: 583, column: 2, scope: !6174)
!6180 = !DILocation(line: 584, column: 3, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6182, file: !3, line: 584, column: 3)
!6182 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 584, column: 3)
!6183 = distinct !DILexicalBlock(scope: !6167, file: !3, line: 583, column: 9)
!6184 = !DILocation(line: 584, column: 3, scope: !6182)
!6185 = !DILocation(line: 585, column: 12, scope: !6183)
!6186 = !DILocation(line: 585, column: 19, scope: !6183)
!6187 = !DILocation(line: 585, column: 10, scope: !6183)
!6188 = !DILocation(line: 587, column: 6, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 587, column: 6)
!6190 = !DILocation(line: 587, column: 11, scope: !6189)
!6191 = !DILocation(line: 587, column: 16, scope: !6189)
!6192 = !DILocation(line: 587, column: 6, scope: !5851)
!6193 = !DILocation(line: 588, column: 3, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6195, file: !3, line: 588, column: 3)
!6195 = distinct !DILexicalBlock(scope: !6196, file: !3, line: 588, column: 3)
!6196 = distinct !DILexicalBlock(scope: !6189, file: !3, line: 587, column: 41)
!6197 = !DILocation(line: 588, column: 3, scope: !6195)
!6198 = !DILocation(line: 589, column: 12, scope: !6196)
!6199 = !DILocation(line: 589, column: 19, scope: !6196)
!6200 = !DILocation(line: 589, column: 10, scope: !6196)
!6201 = !DILocation(line: 590, column: 2, scope: !6196)
!6202 = !DILocation(line: 591, column: 3, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6204, file: !3, line: 591, column: 3)
!6204 = distinct !DILexicalBlock(scope: !6205, file: !3, line: 591, column: 3)
!6205 = distinct !DILexicalBlock(scope: !6189, file: !3, line: 590, column: 9)
!6206 = !DILocation(line: 591, column: 3, scope: !6204)
!6207 = !DILocation(line: 592, column: 12, scope: !6205)
!6208 = !DILocation(line: 592, column: 19, scope: !6205)
!6209 = !DILocation(line: 592, column: 10, scope: !6205)
!6210 = !DILocation(line: 594, column: 8, scope: !5851)
!6211 = !DILocation(line: 594, column: 28, scope: !5851)
!6212 = !DILocation(line: 594, column: 2, scope: !5851)
!6213 = !DILocation(line: 595, column: 1, scope: !5851)
!6214 = distinct !DISubprogram(name: "svga_match_format", scope: !3, file: !3, line: 624, type: !6215, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6215 = !DISubroutineType(types: !6216)
!6216 = !{!591, !6217, !4585, !6232}
!6217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6218, size: 64)
!6218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6219)
!6219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svga_fb_format", file: !169, line: 24, size: 608, elements: !6220)
!6220 = !{!6221, !6222, !6223, !6224, !6225, !6226, !6227, !6228, !6229, !6230, !6231}
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !6219, file: !169, line: 26, baseType: !130, size: 32)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !6219, file: !169, line: 27, baseType: !644, size: 96, offset: 32)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !6219, file: !169, line: 28, baseType: !644, size: 96, offset: 128)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !6219, file: !169, line: 29, baseType: !644, size: 96, offset: 224)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !6219, file: !169, line: 30, baseType: !644, size: 96, offset: 320)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !6219, file: !169, line: 31, baseType: !130, size: 32, offset: 416)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6219, file: !169, line: 33, baseType: !130, size: 32, offset: 448)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "type_aux", scope: !6219, file: !169, line: 34, baseType: !130, size: 32, offset: 480)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !6219, file: !169, line: 35, baseType: !130, size: 32, offset: 512)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "xpanstep", scope: !6219, file: !169, line: 36, baseType: !130, size: 32, offset: 544)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "xresstep", scope: !6219, file: !169, line: 37, baseType: !130, size: 32, offset: 576)
!6232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!6233 = !DILocalVariable(name: "frm", arg: 1, scope: !6214, file: !3, line: 624, type: !6217)
!6234 = !DILocation(line: 624, column: 52, scope: !6214)
!6235 = !DILocalVariable(name: "var", arg: 2, scope: !6214, file: !3, line: 625, type: !4585)
!6236 = !DILocation(line: 625, column: 35, scope: !6214)
!6237 = !DILocalVariable(name: "fix", arg: 3, scope: !6214, file: !3, line: 626, type: !6232)
!6238 = !DILocation(line: 626, column: 35, scope: !6214)
!6239 = !DILocalVariable(name: "i", scope: !6214, file: !3, line: 628, type: !591)
!6240 = !DILocation(line: 628, column: 6, scope: !6214)
!6241 = !DILocation(line: 628, column: 23, scope: !6214)
!6242 = !DILocation(line: 628, column: 28, scope: !6214)
!6243 = !DILocation(line: 628, column: 10, scope: !6214)
!6244 = !DILocation(line: 630, column: 6, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 630, column: 6)
!6246 = !DILocation(line: 630, column: 8, scope: !6245)
!6247 = !DILocation(line: 630, column: 6, scope: !6214)
!6248 = !DILocation(line: 631, column: 25, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6245, file: !3, line: 630, column: 14)
!6250 = !DILocation(line: 631, column: 29, scope: !6249)
!6251 = !DILocation(line: 631, column: 32, scope: !6249)
!6252 = !DILocation(line: 631, column: 3, scope: !6249)
!6253 = !DILocation(line: 631, column: 8, scope: !6249)
!6254 = !DILocation(line: 631, column: 23, scope: !6249)
!6255 = !DILocation(line: 632, column: 3, scope: !6249)
!6256 = !DILocation(line: 632, column: 8, scope: !6249)
!6257 = !DILocation(line: 632, column: 25, scope: !6249)
!6258 = !DILocation(line: 632, column: 29, scope: !6249)
!6259 = !DILocation(line: 632, column: 32, scope: !6249)
!6260 = !DILocation(line: 633, column: 3, scope: !6249)
!6261 = !DILocation(line: 633, column: 8, scope: !6249)
!6262 = !DILocation(line: 633, column: 25, scope: !6249)
!6263 = !DILocation(line: 633, column: 29, scope: !6249)
!6264 = !DILocation(line: 633, column: 32, scope: !6249)
!6265 = !DILocation(line: 634, column: 3, scope: !6249)
!6266 = !DILocation(line: 634, column: 8, scope: !6249)
!6267 = !DILocation(line: 634, column: 25, scope: !6249)
!6268 = !DILocation(line: 634, column: 29, scope: !6249)
!6269 = !DILocation(line: 634, column: 32, scope: !6249)
!6270 = !DILocation(line: 635, column: 3, scope: !6249)
!6271 = !DILocation(line: 635, column: 8, scope: !6249)
!6272 = !DILocation(line: 635, column: 25, scope: !6249)
!6273 = !DILocation(line: 635, column: 29, scope: !6249)
!6274 = !DILocation(line: 635, column: 32, scope: !6249)
!6275 = !DILocation(line: 636, column: 25, scope: !6249)
!6276 = !DILocation(line: 636, column: 29, scope: !6249)
!6277 = !DILocation(line: 636, column: 32, scope: !6249)
!6278 = !DILocation(line: 636, column: 3, scope: !6249)
!6279 = !DILocation(line: 636, column: 8, scope: !6249)
!6280 = !DILocation(line: 636, column: 23, scope: !6249)
!6281 = !DILocation(line: 637, column: 7, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 637, column: 7)
!6283 = !DILocation(line: 637, column: 11, scope: !6282)
!6284 = !DILocation(line: 637, column: 7, scope: !6249)
!6285 = !DILocation(line: 638, column: 21, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 637, column: 20)
!6287 = !DILocation(line: 638, column: 25, scope: !6286)
!6288 = !DILocation(line: 638, column: 28, scope: !6286)
!6289 = !DILocation(line: 638, column: 4, scope: !6286)
!6290 = !DILocation(line: 638, column: 9, scope: !6286)
!6291 = !DILocation(line: 638, column: 19, scope: !6286)
!6292 = !DILocation(line: 639, column: 21, scope: !6286)
!6293 = !DILocation(line: 639, column: 25, scope: !6286)
!6294 = !DILocation(line: 639, column: 28, scope: !6286)
!6295 = !DILocation(line: 639, column: 4, scope: !6286)
!6296 = !DILocation(line: 639, column: 9, scope: !6286)
!6297 = !DILocation(line: 639, column: 19, scope: !6286)
!6298 = !DILocation(line: 640, column: 21, scope: !6286)
!6299 = !DILocation(line: 640, column: 25, scope: !6286)
!6300 = !DILocation(line: 640, column: 28, scope: !6286)
!6301 = !DILocation(line: 640, column: 4, scope: !6286)
!6302 = !DILocation(line: 640, column: 9, scope: !6286)
!6303 = !DILocation(line: 640, column: 19, scope: !6286)
!6304 = !DILocation(line: 641, column: 21, scope: !6286)
!6305 = !DILocation(line: 641, column: 25, scope: !6286)
!6306 = !DILocation(line: 641, column: 28, scope: !6286)
!6307 = !DILocation(line: 641, column: 4, scope: !6286)
!6308 = !DILocation(line: 641, column: 9, scope: !6286)
!6309 = !DILocation(line: 641, column: 19, scope: !6286)
!6310 = !DILocation(line: 642, column: 3, scope: !6286)
!6311 = !DILocation(line: 643, column: 2, scope: !6249)
!6312 = !DILocation(line: 645, column: 9, scope: !6214)
!6313 = !DILocation(line: 645, column: 2, scope: !6214)
!6314 = distinct !DISubprogram(name: "match_format", scope: !3, file: !3, line: 601, type: !6315, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6315 = !DISubroutineType(types: !6316)
!6316 = !{!591, !6217, !4585}
!6317 = !DILocalVariable(name: "frm", arg: 1, scope: !6314, file: !3, line: 601, type: !6217)
!6318 = !DILocation(line: 601, column: 61, scope: !6314)
!6319 = !DILocalVariable(name: "var", arg: 2, scope: !6314, file: !3, line: 602, type: !4585)
!6320 = !DILocation(line: 602, column: 37, scope: !6314)
!6321 = !DILocalVariable(name: "i", scope: !6314, file: !3, line: 604, type: !591)
!6322 = !DILocation(line: 604, column: 6, scope: !6314)
!6323 = !DILocalVariable(name: "stored", scope: !6314, file: !3, line: 605, type: !591)
!6324 = !DILocation(line: 605, column: 6, scope: !6314)
!6325 = !DILocation(line: 607, column: 2, scope: !6314)
!6326 = !DILocation(line: 607, column: 9, scope: !6314)
!6327 = !DILocation(line: 607, column: 14, scope: !6314)
!6328 = !DILocation(line: 607, column: 29, scope: !6314)
!6329 = !DILocation(line: 609, column: 8, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 609, column: 7)
!6331 = distinct !DILexicalBlock(scope: !6314, file: !3, line: 608, column: 2)
!6332 = !DILocation(line: 609, column: 13, scope: !6330)
!6333 = !DILocation(line: 609, column: 31, scope: !6330)
!6334 = !DILocation(line: 609, column: 36, scope: !6330)
!6335 = !DILocation(line: 609, column: 28, scope: !6330)
!6336 = !DILocation(line: 609, column: 52, scope: !6330)
!6337 = !DILocation(line: 610, column: 8, scope: !6330)
!6338 = !DILocation(line: 610, column: 13, scope: !6330)
!6339 = !DILocation(line: 610, column: 17, scope: !6330)
!6340 = !DILocation(line: 610, column: 31, scope: !6330)
!6341 = !DILocation(line: 610, column: 36, scope: !6330)
!6342 = !DILocation(line: 610, column: 40, scope: !6330)
!6343 = !DILocation(line: 610, column: 28, scope: !6330)
!6344 = !DILocation(line: 610, column: 52, scope: !6330)
!6345 = !DILocation(line: 611, column: 8, scope: !6330)
!6346 = !DILocation(line: 611, column: 13, scope: !6330)
!6347 = !DILocation(line: 611, column: 19, scope: !6330)
!6348 = !DILocation(line: 611, column: 31, scope: !6330)
!6349 = !DILocation(line: 611, column: 36, scope: !6330)
!6350 = !DILocation(line: 611, column: 42, scope: !6330)
!6351 = !DILocation(line: 611, column: 28, scope: !6330)
!6352 = !DILocation(line: 611, column: 52, scope: !6330)
!6353 = !DILocation(line: 612, column: 8, scope: !6330)
!6354 = !DILocation(line: 612, column: 13, scope: !6330)
!6355 = !DILocation(line: 612, column: 18, scope: !6330)
!6356 = !DILocation(line: 612, column: 31, scope: !6330)
!6357 = !DILocation(line: 612, column: 36, scope: !6330)
!6358 = !DILocation(line: 612, column: 41, scope: !6330)
!6359 = !DILocation(line: 612, column: 28, scope: !6330)
!6360 = !DILocation(line: 612, column: 52, scope: !6330)
!6361 = !DILocation(line: 613, column: 8, scope: !6330)
!6362 = !DILocation(line: 613, column: 13, scope: !6330)
!6363 = !DILocation(line: 613, column: 20, scope: !6330)
!6364 = !DILocation(line: 613, column: 31, scope: !6330)
!6365 = !DILocation(line: 613, column: 36, scope: !6330)
!6366 = !DILocation(line: 613, column: 43, scope: !6330)
!6367 = !DILocation(line: 613, column: 28, scope: !6330)
!6368 = !DILocation(line: 613, column: 52, scope: !6330)
!6369 = !DILocation(line: 614, column: 8, scope: !6330)
!6370 = !DILocation(line: 614, column: 13, scope: !6330)
!6371 = !DILocation(line: 614, column: 24, scope: !6330)
!6372 = !DILocation(line: 614, column: 29, scope: !6330)
!6373 = !DILocation(line: 614, column: 21, scope: !6330)
!6374 = !DILocation(line: 609, column: 7, scope: !6331)
!6375 = !DILocation(line: 615, column: 11, scope: !6330)
!6376 = !DILocation(line: 615, column: 4, scope: !6330)
!6377 = !DILocation(line: 616, column: 7, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 616, column: 7)
!6379 = !DILocation(line: 616, column: 12, scope: !6378)
!6380 = !DILocation(line: 616, column: 30, scope: !6378)
!6381 = !DILocation(line: 616, column: 35, scope: !6378)
!6382 = !DILocation(line: 616, column: 27, scope: !6378)
!6383 = !DILocation(line: 616, column: 7, scope: !6331)
!6384 = !DILocation(line: 617, column: 13, scope: !6378)
!6385 = !DILocation(line: 617, column: 11, scope: !6378)
!6386 = !DILocation(line: 617, column: 4, scope: !6378)
!6387 = !DILocation(line: 618, column: 4, scope: !6331)
!6388 = !DILocation(line: 619, column: 6, scope: !6331)
!6389 = distinct !{!6389, !6325, !6390}
!6390 = !DILocation(line: 620, column: 2, scope: !6314)
!6391 = !DILocation(line: 621, column: 9, scope: !6314)
!6392 = !DILocation(line: 621, column: 2, scope: !6314)
!6393 = !DILocation(line: 622, column: 1, scope: !6314)
!6394 = distinct !DISubprogram(name: "vga_w_fast", scope: !240, file: !240, line: 251, type: !6395, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6395 = !DISubroutineType(types: !6396)
!6396 = !{null, !132, !129, !125, !125}
!6397 = !DILocalVariable(name: "regbase", arg: 1, scope: !6394, file: !240, line: 251, type: !132)
!6398 = !DILocation(line: 251, column: 46, scope: !6394)
!6399 = !DILocalVariable(name: "port", arg: 2, scope: !6394, file: !240, line: 251, type: !129)
!6400 = !DILocation(line: 251, column: 70, scope: !6394)
!6401 = !DILocalVariable(name: "reg", arg: 3, scope: !6394, file: !240, line: 252, type: !125)
!6402 = !DILocation(line: 252, column: 25, scope: !6394)
!6403 = !DILocalVariable(name: "val", arg: 4, scope: !6394, file: !240, line: 252, type: !125)
!6404 = !DILocation(line: 252, column: 44, scope: !6394)
!6405 = !DILocation(line: 254, column: 6, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6394, file: !240, line: 254, column: 6)
!6407 = !DILocation(line: 254, column: 6, scope: !6394)
!6408 = !DILocation(line: 255, column: 18, scope: !6406)
!6409 = !DILocation(line: 255, column: 27, scope: !6406)
!6410 = !DILocation(line: 255, column: 33, scope: !6406)
!6411 = !DILocation(line: 255, column: 38, scope: !6406)
!6412 = !DILocation(line: 255, column: 3, scope: !6406)
!6413 = !DILocation(line: 257, column: 18, scope: !6406)
!6414 = !DILocation(line: 257, column: 24, scope: !6406)
!6415 = !DILocation(line: 257, column: 29, scope: !6406)
!6416 = !DILocation(line: 257, column: 3, scope: !6406)
!6417 = !DILocation(line: 258, column: 1, scope: !6394)
!6418 = distinct !DISubprogram(name: "vga_mm_w_fast", scope: !240, file: !240, line: 228, type: !6395, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6419 = !DILocalVariable(name: "regbase", arg: 1, scope: !6418, file: !240, line: 228, type: !132)
!6420 = !DILocation(line: 228, column: 49, scope: !6418)
!6421 = !DILocalVariable(name: "port", arg: 2, scope: !6418, file: !240, line: 228, type: !129)
!6422 = !DILocation(line: 228, column: 73, scope: !6418)
!6423 = !DILocalVariable(name: "reg", arg: 3, scope: !6418, file: !240, line: 229, type: !125)
!6424 = !DILocation(line: 229, column: 21, scope: !6418)
!6425 = !DILocalVariable(name: "val", arg: 4, scope: !6418, file: !240, line: 229, type: !125)
!6426 = !DILocation(line: 229, column: 40, scope: !6418)
!6427 = !DILocation(line: 231, column: 10, scope: !6418)
!6428 = !DILocation(line: 231, column: 35, scope: !6418)
!6429 = !DILocation(line: 231, column: 45, scope: !6418)
!6430 = !DILocation(line: 231, column: 43, scope: !6418)
!6431 = !DILocation(line: 231, column: 2, scope: !6418)
!6432 = !DILocation(line: 232, column: 1, scope: !6418)
!6433 = distinct !DISubprogram(name: "vga_io_w_fast", scope: !240, file: !240, line: 212, type: !6434, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6434 = !DISubroutineType(types: !6435)
!6435 = !{null, !129, !125, !125}
!6436 = !DILocalVariable(name: "port", arg: 1, scope: !6433, file: !240, line: 212, type: !129)
!6437 = !DILocation(line: 212, column: 50, scope: !6433)
!6438 = !DILocalVariable(name: "reg", arg: 2, scope: !6433, file: !240, line: 212, type: !125)
!6439 = !DILocation(line: 212, column: 70, scope: !6433)
!6440 = !DILocalVariable(name: "val", arg: 3, scope: !6433, file: !240, line: 213, type: !125)
!6441 = !DILocation(line: 213, column: 21, scope: !6433)
!6442 = !DILocation(line: 215, column: 7, scope: !6433)
!6443 = !DILocation(line: 215, column: 32, scope: !6433)
!6444 = !DILocation(line: 215, column: 2, scope: !6433)
!6445 = !DILocation(line: 216, column: 1, scope: !6433)
!6446 = distinct !DISubprogram(name: "writew", scope: !4872, file: !4872, line: 66, type: !5056, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6447 = !DILocalVariable(name: "val", arg: 1, scope: !6446, file: !4872, line: 66, type: !129)
!6448 = !DILocation(line: 66, column: 1, scope: !6446)
!6449 = !DILocalVariable(name: "addr", arg: 2, scope: !6446, file: !4872, line: 66, type: !4875)
!6450 = !{i32 -2141465533}
!6451 = distinct !DISubprogram(name: "outw", scope: !4872, file: !4872, line: 335, type: !6452, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6452 = !DISubroutineType(types: !6453)
!6453 = !{null, !129, !591}
!6454 = !DILocalVariable(name: "value", arg: 1, scope: !6451, file: !4872, line: 335, type: !129)
!6455 = !DILocation(line: 335, column: 1, scope: !6451)
!6456 = !DILocalVariable(name: "port", arg: 2, scope: !6451, file: !4872, line: 335, type: !591)
!6457 = !{i32 -2141452534}
!6458 = distinct !DISubprogram(name: "vga_mm_r", scope: !240, file: !240, line: 218, type: !431, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6459 = !DILocalVariable(name: "regbase", arg: 1, scope: !6458, file: !240, line: 218, type: !132)
!6460 = !DILocation(line: 218, column: 53, scope: !6458)
!6461 = !DILocalVariable(name: "port", arg: 2, scope: !6458, file: !240, line: 218, type: !129)
!6462 = !DILocation(line: 218, column: 77, scope: !6458)
!6463 = !DILocation(line: 220, column: 16, scope: !6458)
!6464 = !DILocation(line: 220, column: 26, scope: !6458)
!6465 = !DILocation(line: 220, column: 24, scope: !6458)
!6466 = !DILocation(line: 220, column: 9, scope: !6458)
!6467 = !DILocation(line: 220, column: 2, scope: !6458)
!6468 = distinct !DISubprogram(name: "vga_io_r", scope: !240, file: !240, line: 202, type: !6469, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6469 = !DISubroutineType(types: !6470)
!6470 = !{!125, !129}
!6471 = !DILocalVariable(name: "port", arg: 1, scope: !6468, file: !240, line: 202, type: !129)
!6472 = !DILocation(line: 202, column: 54, scope: !6468)
!6473 = !DILocation(line: 204, column: 15, scope: !6468)
!6474 = !DILocation(line: 204, column: 9, scope: !6468)
!6475 = !DILocation(line: 204, column: 2, scope: !6468)
!6476 = distinct !DISubprogram(name: "readb", scope: !4872, file: !4872, line: 57, type: !6477, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6477 = !DISubroutineType(types: !6478)
!6478 = !{!125, !5065}
!6479 = !DILocalVariable(name: "addr", arg: 1, scope: !6476, file: !4872, line: 57, type: !5065)
!6480 = !DILocation(line: 57, column: 1, scope: !6476)
!6481 = !DILocalVariable(name: "ret", scope: !6476, file: !4872, line: 57, type: !125)
!6482 = !{i32 -2141468371}
!6483 = distinct !DISubprogram(name: "inb_p", scope: !4872, file: !4872, line: 334, type: !6484, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6484 = !DISubroutineType(types: !6485)
!6485 = !{!125, !591}
!6486 = !DILocalVariable(name: "port", arg: 1, scope: !6483, file: !4872, line: 334, type: !591)
!6487 = !DILocation(line: 334, column: 1, scope: !6483)
!6488 = !DILocalVariable(name: "value", scope: !6483, file: !4872, line: 334, type: !125)
!6489 = distinct !DISubprogram(name: "inb", scope: !4872, file: !4872, line: 334, type: !6484, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6490 = !DILocalVariable(name: "port", arg: 1, scope: !6489, file: !4872, line: 334, type: !591)
!6491 = !DILocation(line: 334, column: 1, scope: !6489)
!6492 = !DILocalVariable(name: "value", scope: !6489, file: !4872, line: 334, type: !125)
!6493 = !{i32 -2141455075}
!6494 = distinct !DISubprogram(name: "slow_down_io", scope: !6495, file: !6495, line: 40, type: !2516, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6495 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!6496 = !DILocation(line: 42, column: 13, scope: !6494)
!6497 = !DILocation(line: 42, column: 2, scope: !6494)
!6498 = !DILocation(line: 48, column: 1, scope: !6494)
!6499 = distinct !DISubprogram(name: "vga_mm_w", scope: !240, file: !240, line: 223, type: !449, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6500 = !DILocalVariable(name: "regbase", arg: 1, scope: !6499, file: !240, line: 223, type: !132)
!6501 = !DILocation(line: 223, column: 44, scope: !6499)
!6502 = !DILocalVariable(name: "port", arg: 2, scope: !6499, file: !240, line: 223, type: !129)
!6503 = !DILocation(line: 223, column: 68, scope: !6499)
!6504 = !DILocalVariable(name: "val", arg: 3, scope: !6499, file: !240, line: 223, type: !125)
!6505 = !DILocation(line: 223, column: 88, scope: !6499)
!6506 = !DILocation(line: 225, column: 10, scope: !6499)
!6507 = !DILocation(line: 225, column: 15, scope: !6499)
!6508 = !DILocation(line: 225, column: 25, scope: !6499)
!6509 = !DILocation(line: 225, column: 23, scope: !6499)
!6510 = !DILocation(line: 225, column: 2, scope: !6499)
!6511 = !DILocation(line: 226, column: 1, scope: !6499)
!6512 = distinct !DISubprogram(name: "vga_io_w", scope: !240, file: !240, line: 207, type: !6513, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6513 = !DISubroutineType(types: !6514)
!6514 = !{null, !129, !125}
!6515 = !DILocalVariable(name: "port", arg: 1, scope: !6512, file: !240, line: 207, type: !129)
!6516 = !DILocation(line: 207, column: 45, scope: !6512)
!6517 = !DILocalVariable(name: "val", arg: 2, scope: !6512, file: !240, line: 207, type: !125)
!6518 = !DILocation(line: 207, column: 65, scope: !6512)
!6519 = !DILocation(line: 209, column: 9, scope: !6512)
!6520 = !DILocation(line: 209, column: 14, scope: !6512)
!6521 = !DILocation(line: 209, column: 2, scope: !6512)
!6522 = !DILocation(line: 210, column: 1, scope: !6512)
!6523 = distinct !DISubprogram(name: "writeb", scope: !4872, file: !4872, line: 65, type: !4873, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6524 = !DILocalVariable(name: "val", arg: 1, scope: !6523, file: !4872, line: 65, type: !125)
!6525 = !DILocation(line: 65, column: 1, scope: !6523)
!6526 = !DILocalVariable(name: "addr", arg: 2, scope: !6523, file: !4872, line: 65, type: !4875)
!6527 = !{i32 -2141465917}
!6528 = distinct !DISubprogram(name: "outb_p", scope: !4872, file: !4872, line: 334, type: !6529, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6529 = !DISubroutineType(types: !6530)
!6530 = !{null, !125, !591}
!6531 = !DILocalVariable(name: "value", arg: 1, scope: !6528, file: !4872, line: 334, type: !125)
!6532 = !DILocation(line: 334, column: 1, scope: !6528)
!6533 = !DILocalVariable(name: "port", arg: 2, scope: !6528, file: !4872, line: 334, type: !591)
!6534 = distinct !DISubprogram(name: "outb", scope: !4872, file: !4872, line: 334, type: !6529, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !174)
!6535 = !DILocalVariable(name: "value", arg: 1, scope: !6534, file: !4872, line: 334, type: !125)
!6536 = !DILocation(line: 334, column: 1, scope: !6534)
!6537 = !DILocalVariable(name: "port", arg: 2, scope: !6534, file: !4872, line: 334, type: !591)
!6538 = !{i32 -2141455277}
