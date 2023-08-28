; ModuleID = '../bcout/drivers/staging/comedi/comedi_buf.llvm.bc'
source_filename = "drivers/staging/comedi/comedi_buf.c"
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.kmem_cache = type opaque
%struct.comedi_buf_map = type { %struct.device*, %struct.comedi_buf_page*, i32, i32, %struct.kref }
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.comedi_buf_page = type { i8*, i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.comedi_subdevice = type { %struct.comedi_device*, i32, i32, i32, i32, i32, i8*, %struct.comedi_async*, i8*, i8*, i32, %struct.spinlock, i32, i32, i32*, %struct.comedi_lrange*, %struct.comedi_lrange**, i32*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)*, i32, i32, %struct.device*, i32, i32* }
%struct.comedi_device = type { i32, %struct.comedi_driver*, %struct.comedi_8254*, i8*, %struct.device*, i32, i32, %struct.device*, i8*, i8*, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, %struct.comedi_subdevice*, i8*, i64, i64, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, %struct.fasync_struct*, i32 (%struct.comedi_device*)*, void (%struct.comedi_device*)*, i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, i32, i32*)* }
%struct.comedi_driver = type { %struct.comedi_driver*, i8*, %struct.module*, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)*, void (%struct.comedi_device*)*, i32 (%struct.comedi_device*, i64)*, i32, i8**, i32 }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.comedi_8254 = type opaque
%struct.comedi_insn = type { i32, i32, i32*, i32, i32, [3 x i32] }
%struct.comedi_async = type { i8*, i32, %struct.comedi_buf_map*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i16*, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"buffer overrun\0A\00", align 1
@vmemmap_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@__default_kernel_pte_mask = external dso_local global i64, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_buf_map_get(%struct.comedi_buf_map* %bm) #0 !dbg !3787 {
entry:
  %bm.addr = alloca %struct.comedi_buf_map*, align 8
  store %struct.comedi_buf_map* %bm, %struct.comedi_buf_map** %bm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_buf_map** %bm.addr, metadata !3790, metadata !DIExpression()), !dbg !3791
  %0 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm.addr, align 8, !dbg !3792
  %tobool = icmp ne %struct.comedi_buf_map* %0, null, !dbg !3792
  br i1 %tobool, label %if.then, label %if.end, !dbg !3794

if.then:                                          ; preds = %entry
  %1 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm.addr, align 8, !dbg !3795
  %refcount = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %1, i32 0, i32 4, !dbg !3796
  call void @kref_get(%struct.kref* %refcount) #10, !dbg !3797
  br label %if.end, !dbg !3797

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3798
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !3799 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !3803, metadata !DIExpression()), !dbg !3804
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !3805
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !3806
  call void @refcount_inc(%struct.refcount_struct* %refcount) #10, !dbg !3807
  ret void, !dbg !3808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_buf_map_put(%struct.comedi_buf_map* %bm) #0 !dbg !3809 {
entry:
  %retval = alloca i32, align 4
  %bm.addr = alloca %struct.comedi_buf_map*, align 8
  store %struct.comedi_buf_map* %bm, %struct.comedi_buf_map** %bm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_buf_map** %bm.addr, metadata !3812, metadata !DIExpression()), !dbg !3813
  %0 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm.addr, align 8, !dbg !3814
  %tobool = icmp ne %struct.comedi_buf_map* %0, null, !dbg !3814
  br i1 %tobool, label %if.then, label %if.end, !dbg !3816

if.then:                                          ; preds = %entry
  %1 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm.addr, align 8, !dbg !3817
  %refcount = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %1, i32 0, i32 4, !dbg !3818
  %call = call i32 @kref_put(%struct.kref* %refcount, void (%struct.kref*)* @comedi_buf_map_kref_release) #10, !dbg !3819
  store i32 %call, i32* %retval, align 4, !dbg !3820
  br label %return, !dbg !3820

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !3821
  br label %return, !dbg !3821

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !3822
  ret i32 %2, !dbg !3822
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !3823 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !3827, metadata !DIExpression()), !dbg !3828
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !3829, metadata !DIExpression()), !dbg !3830
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !3831
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !3833
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #10, !dbg !3834
  br i1 %call, label %if.then, label %if.end, !dbg !3835

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !3836
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !3838
  call void %1(%struct.kref* %2) #10, !dbg !3836
  store i32 1, i32* %retval, align 4, !dbg !3839
  br label %return, !dbg !3839

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3840
  br label %return, !dbg !3840

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !3841
  ret i32 %3, !dbg !3841
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @comedi_buf_map_kref_release(%struct.kref* %kref) #0 !dbg !3842 {
entry:
  %page.addr.i = alloca %struct.page*, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr.i, metadata !3843, metadata !DIExpression()), !dbg !3845
  %tmp.i = alloca %struct.page*, align 8
  %tmp1.i = alloca %struct.page*, align 8
  %kref.addr = alloca %struct.kref*, align 8
  %bm = alloca %struct.comedi_buf_map*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.comedi_buf_map*, align 8
  %buf = alloca %struct.comedi_buf_page*, align 8
  %i = alloca i32, align 4
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !3854, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.declare(metadata %struct.comedi_buf_map** %bm, metadata !3856, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3858, metadata !DIExpression()), !dbg !3860
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !3860
  %1 = bitcast %struct.kref* %0 to i8*, !dbg !3860
  store i8* %1, i8** %__mptr, align 8, !dbg !3860
  br label %do.body, !dbg !3860

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3861

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3860
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3860
  %3 = bitcast i8* %add.ptr to %struct.comedi_buf_map*, !dbg !3860
  store %struct.comedi_buf_map* %3, %struct.comedi_buf_map** %tmp, align 8, !dbg !3861
  %4 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %tmp, align 8, !dbg !3860
  store %struct.comedi_buf_map* %4, %struct.comedi_buf_map** %bm, align 8, !dbg !3857
  call void @llvm.dbg.declare(metadata %struct.comedi_buf_page** %buf, metadata !3863, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3865, metadata !DIExpression()), !dbg !3866
  %5 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !3867
  %page_list = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %5, i32 0, i32 1, !dbg !3868
  %6 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %page_list, align 8, !dbg !3868
  %tobool = icmp ne %struct.comedi_buf_page* %6, null, !dbg !3867
  br i1 %tobool, label %if.then, label %if.end12, !dbg !3869

if.then:                                          ; preds = %do.end
  %7 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !3870
  %dma_dir = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %7, i32 0, i32 3, !dbg !3871
  %8 = load i32, i32* %dma_dir, align 4, !dbg !3871
  %cmp = icmp ne i32 %8, 3, !dbg !3872
  br i1 %cmp, label %if.then1, label %if.else, !dbg !3873

if.then1:                                         ; preds = %if.then
  %9 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !3874
  %page_list2 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %9, i32 0, i32 1, !dbg !3876
  %10 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %page_list2, align 8, !dbg !3876
  %arrayidx = getelementptr %struct.comedi_buf_page, %struct.comedi_buf_page* %10, i64 0, !dbg !3874
  store %struct.comedi_buf_page* %arrayidx, %struct.comedi_buf_page** %buf, align 8, !dbg !3877
  %11 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !3878
  %dma_hw_dev = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %11, i32 0, i32 0, !dbg !3879
  %12 = load %struct.device*, %struct.device** %dma_hw_dev, align 8, !dbg !3879
  %13 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !3880
  %n_pages = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %13, i32 0, i32 2, !dbg !3881
  %14 = load i32, i32* %n_pages, align 8, !dbg !3881
  %conv = zext i32 %14 to i64, !dbg !3880
  %mul = mul i64 4096, %conv, !dbg !3882
  %15 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %buf, align 8, !dbg !3883
  %virt_addr = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %15, i32 0, i32 0, !dbg !3884
  %16 = load i8*, i8** %virt_addr, align 8, !dbg !3884
  %17 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %buf, align 8, !dbg !3885
  %dma_addr = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %17, i32 0, i32 1, !dbg !3886
  %18 = load i64, i64* %dma_addr, align 8, !dbg !3886
  call void @dma_free_coherent(%struct.device* %12, i64 %mul, i8* %16, i64 %18) #10, !dbg !3887
  br label %if.end, !dbg !3888

if.else:                                          ; preds = %if.then
  store i32 0, i32* %i, align 4, !dbg !3889
  br label %for.cond, !dbg !3890

for.cond:                                         ; preds = %for.inc, %if.else
  %19 = load i32, i32* %i, align 4, !dbg !3891
  %20 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !3892
  %n_pages3 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %20, i32 0, i32 2, !dbg !3893
  %21 = load i32, i32* %n_pages3, align 8, !dbg !3893
  %cmp4 = icmp ult i32 %19, %21, !dbg !3894
  br i1 %cmp4, label %for.body, label %for.end, !dbg !3895

for.body:                                         ; preds = %for.cond
  %22 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !3896
  %page_list6 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %22, i32 0, i32 1, !dbg !3897
  %23 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %page_list6, align 8, !dbg !3897
  %24 = load i32, i32* %i, align 4, !dbg !3898
  %idxprom = zext i32 %24 to i64, !dbg !3896
  %arrayidx7 = getelementptr %struct.comedi_buf_page, %struct.comedi_buf_page* %23, i64 %idxprom, !dbg !3896
  store %struct.comedi_buf_page* %arrayidx7, %struct.comedi_buf_page** %buf, align 8, !dbg !3899
  %25 = load i64, i64* @vmemmap_base, align 8, !dbg !3900
  %26 = inttoptr i64 %25 to %struct.page*, !dbg !3900
  %27 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %buf, align 8, !dbg !3900
  %virt_addr8 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %27, i32 0, i32 0, !dbg !3900
  %28 = load i8*, i8** %virt_addr8, align 8, !dbg !3900
  %29 = ptrtoint i8* %28 to i64, !dbg !3900
  %call = call i64 @__phys_addr_nodebug(i64 %29) #10, !dbg !3900
  %shr = lshr i64 %call, 12, !dbg !3900
  %add.ptr9 = getelementptr %struct.page, %struct.page* %26, i64 %shr, !dbg !3900
  store %struct.page* %add.ptr9, %struct.page** %page.addr.i, align 8
  %30 = load %struct.page*, %struct.page** %page.addr.i, align 8, !dbg !3901
  store %struct.page* %30, %struct.page** %tmp1.i, align 8, !dbg !3901
  %31 = load %struct.page*, %struct.page** %tmp1.i, align 8, !dbg !3901
  store %struct.page* %31, %struct.page** %tmp.i, align 8, !dbg !3904
  %32 = load %struct.page*, %struct.page** %tmp.i, align 8, !dbg !3904
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 0, !dbg !3845
  call void @clear_bit(i64 12, i64* %flags.i) #11, !dbg !3845
  %33 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %buf, align 8, !dbg !3905
  %virt_addr10 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %33, i32 0, i32 0, !dbg !3905
  %34 = load i8*, i8** %virt_addr10, align 8, !dbg !3905
  %35 = ptrtoint i8* %34 to i64, !dbg !3905
  call void @free_pages(i64 %35, i32 0) #10, !dbg !3905
  br label %for.inc, !dbg !3906

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !dbg !3907
  %inc = add i32 %36, 1, !dbg !3907
  store i32 %inc, i32* %i, align 4, !dbg !3907
  br label %for.cond, !dbg !3908, !llvm.loop !3909

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then1
  %37 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !3911
  %page_list11 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %37, i32 0, i32 1, !dbg !3912
  %38 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %page_list11, align 8, !dbg !3912
  %39 = bitcast %struct.comedi_buf_page* %38 to i8*, !dbg !3911
  call void @vfree(i8* %39) #10, !dbg !3913
  br label %if.end12, !dbg !3914

if.end12:                                         ; preds = %if.end, %do.end
  %40 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !3915
  %dma_dir13 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %40, i32 0, i32 3, !dbg !3917
  %41 = load i32, i32* %dma_dir13, align 4, !dbg !3917
  %cmp14 = icmp ne i32 %41, 3, !dbg !3918
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !3919

if.then16:                                        ; preds = %if.end12
  %42 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !3920
  %dma_hw_dev17 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %42, i32 0, i32 0, !dbg !3921
  %43 = load %struct.device*, %struct.device** %dma_hw_dev17, align 8, !dbg !3921
  call void @put_device(%struct.device* %43) #10, !dbg !3922
  br label %if.end18, !dbg !3922

if.end18:                                         ; preds = %if.then16, %if.end12
  %44 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !3923
  %45 = bitcast %struct.comedi_buf_map* %44 to i8*, !dbg !3923
  call void @kfree(i8* %45) #10, !dbg !3924
  ret void, !dbg !3925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_buf_map_access(%struct.comedi_buf_map* %bm, i64 %offset, i8* %buf, i32 %len, i32 %write) #0 !dbg !3926 {
entry:
  %bm.addr = alloca %struct.comedi_buf_map*, align 8
  %offset.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %write.addr = alloca i32, align 4
  %pgoff = alloca i32, align 4
  %pg = alloca i64, align 8
  %done = alloca i32, align 4
  %l = alloca i32, align 4
  %__UNIQUE_ID___x228 = alloca i32, align 4
  %__UNIQUE_ID___y229 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %b = alloca i8*, align 8
  store %struct.comedi_buf_map* %bm, %struct.comedi_buf_map** %bm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_buf_map** %bm.addr, metadata !3929, metadata !DIExpression()), !dbg !3930
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !3931, metadata !DIExpression()), !dbg !3932
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3933, metadata !DIExpression()), !dbg !3934
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !3935, metadata !DIExpression()), !dbg !3936
  store i32 %write, i32* %write.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %write.addr, metadata !3937, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.declare(metadata i32* %pgoff, metadata !3939, metadata !DIExpression()), !dbg !3940
  %0 = load i64, i64* %offset.addr, align 8, !dbg !3941
  %and = and i64 %0, 4095, !dbg !3941
  %conv = trunc i64 %and to i32, !dbg !3941
  store i32 %conv, i32* %pgoff, align 4, !dbg !3940
  call void @llvm.dbg.declare(metadata i64* %pg, metadata !3942, metadata !DIExpression()), !dbg !3943
  %1 = load i64, i64* %offset.addr, align 8, !dbg !3944
  %shr = lshr i64 %1, 12, !dbg !3945
  store i64 %shr, i64* %pg, align 8, !dbg !3943
  call void @llvm.dbg.declare(metadata i32* %done, metadata !3946, metadata !DIExpression()), !dbg !3947
  store i32 0, i32* %done, align 4, !dbg !3947
  br label %while.cond, !dbg !3948

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %done, align 4, !dbg !3949
  %3 = load i32, i32* %len.addr, align 4, !dbg !3950
  %cmp = icmp slt i32 %2, %3, !dbg !3951
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3952

land.rhs:                                         ; preds = %while.cond
  %4 = load i64, i64* %pg, align 8, !dbg !3953
  %5 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm.addr, align 8, !dbg !3954
  %n_pages = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %5, i32 0, i32 2, !dbg !3955
  %6 = load i32, i32* %n_pages, align 8, !dbg !3955
  %conv2 = zext i32 %6 to i64, !dbg !3954
  %cmp3 = icmp ult i64 %4, %conv2, !dbg !3956
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ], !dbg !3957
  br i1 %7, label %while.body, label %while.end, !dbg !3948

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %l, metadata !3958, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x228, metadata !3961, metadata !DIExpression()), !dbg !3963
  %8 = load i32, i32* %len.addr, align 4, !dbg !3963
  %9 = load i32, i32* %done, align 4, !dbg !3963
  %sub = sub i32 %8, %9, !dbg !3963
  store i32 %sub, i32* %__UNIQUE_ID___x228, align 4, !dbg !3963
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y229, metadata !3964, metadata !DIExpression()), !dbg !3963
  %10 = load i32, i32* %pgoff, align 4, !dbg !3963
  %conv5 = zext i32 %10 to i64, !dbg !3963
  %sub6 = sub i64 4096, %conv5, !dbg !3963
  %conv7 = trunc i64 %sub6 to i32, !dbg !3963
  store i32 %conv7, i32* %__UNIQUE_ID___y229, align 4, !dbg !3963
  %11 = load i32, i32* %__UNIQUE_ID___x228, align 4, !dbg !3963
  %12 = load i32, i32* %__UNIQUE_ID___y229, align 4, !dbg !3963
  %cmp8 = icmp slt i32 %11, %12, !dbg !3963
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !3963

cond.true:                                        ; preds = %while.body
  %13 = load i32, i32* %__UNIQUE_ID___x228, align 4, !dbg !3963
  br label %cond.end, !dbg !3963

cond.false:                                       ; preds = %while.body
  %14 = load i32, i32* %__UNIQUE_ID___y229, align 4, !dbg !3963
  br label %cond.end, !dbg !3963

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !3963
  store i32 %cond, i32* %tmp, align 4, !dbg !3963
  %15 = load i32, i32* %tmp, align 4, !dbg !3963
  store i32 %15, i32* %l, align 4, !dbg !3960
  call void @llvm.dbg.declare(metadata i8** %b, metadata !3965, metadata !DIExpression()), !dbg !3966
  %16 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm.addr, align 8, !dbg !3967
  %page_list = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %16, i32 0, i32 1, !dbg !3968
  %17 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %page_list, align 8, !dbg !3968
  %18 = load i64, i64* %pg, align 8, !dbg !3969
  %arrayidx = getelementptr %struct.comedi_buf_page, %struct.comedi_buf_page* %17, i64 %18, !dbg !3967
  %virt_addr = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %arrayidx, i32 0, i32 0, !dbg !3970
  %19 = load i8*, i8** %virt_addr, align 8, !dbg !3970
  %20 = load i32, i32* %pgoff, align 4, !dbg !3971
  %idx.ext = zext i32 %20 to i64, !dbg !3972
  %add.ptr = getelementptr i8, i8* %19, i64 %idx.ext, !dbg !3972
  store i8* %add.ptr, i8** %b, align 8, !dbg !3966
  %21 = load i32, i32* %write.addr, align 4, !dbg !3973
  %tobool = icmp ne i32 %21, 0, !dbg !3973
  br i1 %tobool, label %if.then, label %if.else, !dbg !3975

if.then:                                          ; preds = %cond.end
  %22 = load i8*, i8** %b, align 8, !dbg !3976
  %23 = load i8*, i8** %buf.addr, align 8, !dbg !3977
  %24 = load i32, i32* %l, align 4, !dbg !3978
  %conv10 = sext i32 %24 to i64, !dbg !3978
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %23, i64 %conv10, i1 false), !dbg !3979
  br label %if.end, !dbg !3979

if.else:                                          ; preds = %cond.end
  %25 = load i8*, i8** %buf.addr, align 8, !dbg !3980
  %26 = load i8*, i8** %b, align 8, !dbg !3981
  %27 = load i32, i32* %l, align 4, !dbg !3982
  %conv11 = sext i32 %27 to i64, !dbg !3982
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 %26, i64 %conv11, i1 false), !dbg !3983
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %28 = load i32, i32* %l, align 4, !dbg !3984
  %29 = load i8*, i8** %buf.addr, align 8, !dbg !3985
  %idx.ext12 = sext i32 %28 to i64, !dbg !3985
  %add.ptr13 = getelementptr i8, i8* %29, i64 %idx.ext12, !dbg !3985
  store i8* %add.ptr13, i8** %buf.addr, align 8, !dbg !3985
  %30 = load i32, i32* %l, align 4, !dbg !3986
  %31 = load i32, i32* %done, align 4, !dbg !3987
  %add = add i32 %31, %30, !dbg !3987
  store i32 %add, i32* %done, align 4, !dbg !3987
  %32 = load i64, i64* %pg, align 8, !dbg !3988
  %inc = add i64 %32, 1, !dbg !3988
  store i64 %inc, i64* %pg, align 8, !dbg !3988
  store i32 0, i32* %pgoff, align 4, !dbg !3989
  br label %while.cond, !dbg !3948, !llvm.loop !3990

while.end:                                        ; preds = %land.end
  %33 = load i32, i32* %done, align 4, !dbg !3992
  ret i32 %33, !dbg !3993
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.comedi_buf_map* @comedi_buf_map_from_subdev_get(%struct.comedi_subdevice* %s) #0 !dbg !3994 {
entry:
  %lock.addr.i25 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i25, metadata !4191, metadata !DIExpression()), !dbg !4196
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4198, metadata !DIExpression()), !dbg !4199
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4200, metadata !DIExpression()), !dbg !4205
  %retval = alloca %struct.comedi_buf_map*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %bm = alloca %struct.comedi_buf_map*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4212, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4214, metadata !DIExpression()), !dbg !4215
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4216
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4217
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4217
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4215
  call void @llvm.dbg.declare(metadata %struct.comedi_buf_map** %bm, metadata !4218, metadata !DIExpression()), !dbg !4219
  store %struct.comedi_buf_map* null, %struct.comedi_buf_map** %bm, align 8, !dbg !4219
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4220, metadata !DIExpression()), !dbg !4221
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4222
  %tobool = icmp ne %struct.comedi_async* %2, null, !dbg !4222
  br i1 %tobool, label %if.end, label %if.then, !dbg !4224

if.then:                                          ; preds = %entry
  store %struct.comedi_buf_map* null, %struct.comedi_buf_map** %retval, align 8, !dbg !4225
  br label %return, !dbg !4225

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4226

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !4227

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4228, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4231, metadata !DIExpression()), !dbg !4230
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4230
  %conv = zext i1 %cmp to i32, !dbg !4230
  store i32 1, i32* %tmp, align 4, !dbg !4230
  %3 = load i32, i32* %tmp, align 4, !dbg !4230
  br label %do.body3, !dbg !4232

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4233

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !4234

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !4236, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !4240, metadata !DIExpression()), !dbg !4239
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !4239
  %conv9 = zext i1 %cmp8 to i32, !dbg !4239
  store i32 1, i32* %tmp10, align 4, !dbg !4239
  %4 = load i32, i32* %tmp10, align 4, !dbg !4239
  %call = call i64 @arch_local_irq_save() #10, !dbg !4241
  store i64 %call, i64* %flags, align 8, !dbg !4241
  br label %do.end, !dbg !4241

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !4234

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !4233

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4242, !srcloc !4243
  br label %do.body13, !dbg !4242

do.body13:                                        ; preds = %do.body12
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4244
  %spin_lock = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 11, !dbg !4244
  store %struct.spinlock* %spin_lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4245
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !4246
  %rlock.i = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !4246
  br label %do.end15, !dbg !4244

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !4242

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4233

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4232

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !4227

do.end19:                                         ; preds = %do.end18
  %8 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4247
  %buf_map = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %8, i32 0, i32 2, !dbg !4248
  %9 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %buf_map, align 8, !dbg !4248
  store %struct.comedi_buf_map* %9, %struct.comedi_buf_map** %bm, align 8, !dbg !4249
  %10 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !4250
  %tobool20 = icmp ne %struct.comedi_buf_map* %10, null, !dbg !4250
  br i1 %tobool20, label %land.lhs.true, label %if.else, !dbg !4252

land.lhs.true:                                    ; preds = %do.end19
  %11 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !4253
  %n_pages = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %11, i32 0, i32 2, !dbg !4254
  %12 = load i32, i32* %n_pages, align 8, !dbg !4254
  %tobool21 = icmp ne i32 %12, 0, !dbg !4253
  br i1 %tobool21, label %if.then22, label %if.else, !dbg !4255

if.then22:                                        ; preds = %land.lhs.true
  %13 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !4256
  call void @comedi_buf_map_get(%struct.comedi_buf_map* %13) #10, !dbg !4257
  br label %if.end23, !dbg !4257

if.else:                                          ; preds = %land.lhs.true, %do.end19
  store %struct.comedi_buf_map* null, %struct.comedi_buf_map** %bm, align 8, !dbg !4258
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then22
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4259
  %spin_lock24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 11, !dbg !4260
  %15 = load i64, i64* %flags, align 8, !dbg !4261
  store %struct.spinlock* %spin_lock24, %struct.spinlock** %lock.addr.i25, align 8
  store i64 %15, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !226, metadata !4262, metadata !DIExpression()) #7, !dbg !4265
  call void @llvm.dbg.declare(metadata !226, metadata !4266, metadata !DIExpression()) #7, !dbg !4265
  store i32 1, i32* %tmp.i, align 4, !dbg !4265
  %16 = load i32, i32* %tmp.i, align 4, !dbg !4265
  call void @llvm.dbg.declare(metadata !226, metadata !4267, metadata !DIExpression()) #7, !dbg !4272
  call void @llvm.dbg.declare(metadata !226, metadata !4273, metadata !DIExpression()) #7, !dbg !4272
  store i32 1, i32* %tmp8.i, align 4, !dbg !4272
  %17 = load i32, i32* %tmp8.i, align 4, !dbg !4272
  %18 = load i64, i64* %flags.addr.i, align 8, !dbg !4274
  call void @arch_local_irq_restore(i64 %18) #11, !dbg !4274
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4275, !srcloc !4277
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i25, align 8, !dbg !4278
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !4278
  %rlock.i26 = bitcast %union.anon.3* %20 to %struct.raw_spinlock*, !dbg !4278
  %21 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !4280
  store %struct.comedi_buf_map* %21, %struct.comedi_buf_map** %retval, align 8, !dbg !4281
  br label %return, !dbg !4281

return:                                           ; preds = %if.end23, %if.then
  %22 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %retval, align 8, !dbg !4282
  ret %struct.comedi_buf_map* %22, !dbg !4282
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4283 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4287, metadata !DIExpression()), !dbg !4288
  %call = call i64 @arch_local_save_flags() #10, !dbg !4289
  store i64 %call, i64* %f, align 8, !dbg !4290
  call void @arch_local_irq_disable() #10, !dbg !4291
  %0 = load i64, i64* %f, align 8, !dbg !4292
  ret i64 %0, !dbg !4293
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @comedi_buf_is_mmapped(%struct.comedi_subdevice* %s) #0 !dbg !4294 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %bm = alloca %struct.comedi_buf_map*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4297, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.declare(metadata %struct.comedi_buf_map** %bm, metadata !4299, metadata !DIExpression()), !dbg !4300
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4301
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4302
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4302
  %buf_map = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %1, i32 0, i32 2, !dbg !4303
  %2 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %buf_map, align 8, !dbg !4303
  store %struct.comedi_buf_map* %2, %struct.comedi_buf_map** %bm, align 8, !dbg !4300
  %3 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !4304
  %tobool = icmp ne %struct.comedi_buf_map* %3, null, !dbg !4304
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4305

land.rhs:                                         ; preds = %entry
  %4 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !4306
  %refcount = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %4, i32 0, i32 4, !dbg !4307
  %call = call i32 @kref_read(%struct.kref* %refcount) #10, !dbg !4308
  %cmp = icmp ugt i32 %call, 1, !dbg !4309
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !4310
  ret i1 %5, !dbg !4311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_read(%struct.kref* %kref) #0 !dbg !4312 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4317, metadata !DIExpression()), !dbg !4318
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4319
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4320
  %call = call i32 @refcount_read(%struct.refcount_struct* %refcount) #10, !dbg !4321
  ret i32 %call, !dbg !4322
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_buf_alloc(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i64 %new_size) #0 !dbg !4323 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %new_size.addr = alloca i64, align 8
  %async = alloca %struct.comedi_async*, align 8
  %n_pages = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4326, metadata !DIExpression()), !dbg !4327
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4328, metadata !DIExpression()), !dbg !4329
  store i64 %new_size, i64* %new_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %new_size.addr, metadata !4330, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4332, metadata !DIExpression()), !dbg !4333
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4334
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4335
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4335
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4333
  br label %do.body, !dbg !4336

do.body:                                          ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4337
  %mutex = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 12, !dbg !4337
  br label %do.end, !dbg !4337

do.end:                                           ; preds = %do.body
  %3 = load i64, i64* %new_size.addr, align 8, !dbg !4339
  %add = add i64 %3, 4096, !dbg !4340
  %sub = sub i64 %add, 1, !dbg !4341
  %and = and i64 %sub, -4096, !dbg !4342
  store i64 %and, i64* %new_size.addr, align 8, !dbg !4343
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4344
  %prealloc_buf = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 0, !dbg !4346
  %5 = load i8*, i8** %prealloc_buf, align 8, !dbg !4346
  %tobool = icmp ne i8* %5, null, !dbg !4344
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4347

land.lhs.true:                                    ; preds = %do.end
  %6 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4348
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %6, i32 0, i32 1, !dbg !4349
  %7 = load i32, i32* %prealloc_bufsz, align 8, !dbg !4349
  %conv = zext i32 %7 to i64, !dbg !4348
  %8 = load i64, i64* %new_size.addr, align 8, !dbg !4350
  %cmp = icmp eq i64 %conv, %8, !dbg !4351
  br i1 %cmp, label %if.then, label %if.end, !dbg !4352

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !4353
  br label %return, !dbg !4353

if.end:                                           ; preds = %land.lhs.true, %do.end
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4354
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4355
  call void @__comedi_buf_free(%struct.comedi_device* %9, %struct.comedi_subdevice* %10) #10, !dbg !4356
  %11 = load i64, i64* %new_size.addr, align 8, !dbg !4357
  %tobool3 = icmp ne i64 %11, 0, !dbg !4357
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !4359

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %n_pages, metadata !4360, metadata !DIExpression()), !dbg !4362
  %12 = load i64, i64* %new_size.addr, align 8, !dbg !4363
  %shr = lshr i64 %12, 12, !dbg !4364
  %conv5 = trunc i64 %shr to i32, !dbg !4363
  store i32 %conv5, i32* %n_pages, align 4, !dbg !4362
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4365
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4366
  %15 = load i32, i32* %n_pages, align 4, !dbg !4367
  call void @__comedi_buf_alloc(%struct.comedi_device* %13, %struct.comedi_subdevice* %14, i32 %15) #10, !dbg !4368
  %16 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4369
  %prealloc_buf6 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %16, i32 0, i32 0, !dbg !4371
  %17 = load i8*, i8** %prealloc_buf6, align 8, !dbg !4371
  %tobool7 = icmp ne i8* %17, null, !dbg !4369
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4372

if.then8:                                         ; preds = %if.then4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4373
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4375
  call void @__comedi_buf_free(%struct.comedi_device* %18, %struct.comedi_subdevice* %19) #10, !dbg !4376
  store i32 -12, i32* %retval, align 4, !dbg !4377
  br label %return, !dbg !4377

if.end9:                                          ; preds = %if.then4
  br label %if.end10, !dbg !4378

if.end10:                                         ; preds = %if.end9, %if.end
  %20 = load i64, i64* %new_size.addr, align 8, !dbg !4379
  %conv11 = trunc i64 %20 to i32, !dbg !4379
  %21 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4380
  %prealloc_bufsz12 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %21, i32 0, i32 1, !dbg !4381
  store i32 %conv11, i32* %prealloc_bufsz12, align 8, !dbg !4382
  store i32 0, i32* %retval, align 4, !dbg !4383
  br label %return, !dbg !4383

return:                                           ; preds = %if.end10, %if.then8, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !4384
  ret i32 %22, !dbg !4384
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__comedi_buf_free(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #0 !dbg !4385 {
entry:
  %lock.addr.i28 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i28, metadata !4191, metadata !DIExpression()), !dbg !4388
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4198, metadata !DIExpression()), !dbg !4390
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4200, metadata !DIExpression()), !dbg !4391
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %bm = alloca %struct.comedi_buf_map*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy11 = alloca i64, align 8
  %__dummy212 = alloca i64, align 8
  %tmp15 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4398, metadata !DIExpression()), !dbg !4399
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4400, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4402, metadata !DIExpression()), !dbg !4403
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4404
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4405
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4405
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4403
  call void @llvm.dbg.declare(metadata %struct.comedi_buf_map** %bm, metadata !4406, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4408, metadata !DIExpression()), !dbg !4409
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4410
  %prealloc_buf = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %2, i32 0, i32 0, !dbg !4412
  %3 = load i8*, i8** %prealloc_buf, align 8, !dbg !4412
  %tobool = icmp ne i8* %3, null, !dbg !4410
  br i1 %tobool, label %if.then, label %if.end5, !dbg !4413

if.then:                                          ; preds = %entry
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4414
  %async_dma_dir = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %4, i32 0, i32 28, !dbg !4417
  %5 = load i32, i32* %async_dma_dir, align 8, !dbg !4417
  %cmp = icmp eq i32 %5, 3, !dbg !4418
  br i1 %cmp, label %if.then2, label %if.end, !dbg !4419

if.then2:                                         ; preds = %if.then
  %6 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4420
  %prealloc_buf3 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %6, i32 0, i32 0, !dbg !4421
  %7 = load i8*, i8** %prealloc_buf3, align 8, !dbg !4421
  call void @vunmap(i8* %7) #10, !dbg !4422
  br label %if.end, !dbg !4422

if.end:                                           ; preds = %if.then2, %if.then
  %8 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4423
  %prealloc_buf4 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %8, i32 0, i32 0, !dbg !4424
  store i8* null, i8** %prealloc_buf4, align 8, !dbg !4425
  %9 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4426
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %9, i32 0, i32 1, !dbg !4427
  store i32 0, i32* %prealloc_bufsz, align 8, !dbg !4428
  br label %if.end5, !dbg !4429

if.end5:                                          ; preds = %if.end, %entry
  br label %do.body, !dbg !4430

do.body:                                          ; preds = %if.end5
  br label %do.body6, !dbg !4431

do.body6:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4432, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4435, metadata !DIExpression()), !dbg !4434
  %cmp7 = icmp eq i64* %__dummy, %__dummy2, !dbg !4434
  %conv = zext i1 %cmp7 to i32, !dbg !4434
  store i32 1, i32* %tmp, align 4, !dbg !4434
  %10 = load i32, i32* %tmp, align 4, !dbg !4434
  br label %do.body8, !dbg !4436

do.body8:                                         ; preds = %do.body6
  br label %do.body9, !dbg !4437

do.body9:                                         ; preds = %do.body8
  br label %do.body10, !dbg !4438

do.body10:                                        ; preds = %do.body9
  call void @llvm.dbg.declare(metadata i64* %__dummy11, metadata !4440, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.declare(metadata i64* %__dummy212, metadata !4444, metadata !DIExpression()), !dbg !4443
  %cmp13 = icmp eq i64* %__dummy11, %__dummy212, !dbg !4443
  %conv14 = zext i1 %cmp13 to i32, !dbg !4443
  store i32 1, i32* %tmp15, align 4, !dbg !4443
  %11 = load i32, i32* %tmp15, align 4, !dbg !4443
  %call = call i64 @arch_local_irq_save() #10, !dbg !4445
  store i64 %call, i64* %flags, align 8, !dbg !4445
  br label %do.end, !dbg !4445

do.end:                                           ; preds = %do.body10
  br label %do.end16, !dbg !4438

do.end16:                                         ; preds = %do.end
  br label %do.body17, !dbg !4437

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4446, !srcloc !4447
  br label %do.body18, !dbg !4446

do.body18:                                        ; preds = %do.body17
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4448
  %spin_lock = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 11, !dbg !4448
  store %struct.spinlock* %spin_lock, %struct.spinlock** %lock.addr.i, align 8
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4449
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !4450
  %rlock.i = bitcast %union.anon.3* %14 to %struct.raw_spinlock*, !dbg !4450
  br label %do.end20, !dbg !4448

do.end20:                                         ; preds = %do.body18
  br label %do.end21, !dbg !4446

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !4437

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !4436

do.end23:                                         ; preds = %do.end22
  br label %do.end24, !dbg !4431

do.end24:                                         ; preds = %do.end23
  %15 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4451
  %buf_map = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %15, i32 0, i32 2, !dbg !4452
  %16 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %buf_map, align 8, !dbg !4452
  store %struct.comedi_buf_map* %16, %struct.comedi_buf_map** %bm, align 8, !dbg !4453
  %17 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4454
  %buf_map25 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 2, !dbg !4455
  store %struct.comedi_buf_map* null, %struct.comedi_buf_map** %buf_map25, align 8, !dbg !4456
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4457
  %spin_lock26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 11, !dbg !4458
  %19 = load i64, i64* %flags, align 8, !dbg !4459
  store %struct.spinlock* %spin_lock26, %struct.spinlock** %lock.addr.i28, align 8
  store i64 %19, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !226, metadata !4262, metadata !DIExpression()) #7, !dbg !4460
  call void @llvm.dbg.declare(metadata !226, metadata !4266, metadata !DIExpression()) #7, !dbg !4460
  store i32 1, i32* %tmp.i, align 4, !dbg !4460
  %20 = load i32, i32* %tmp.i, align 4, !dbg !4460
  call void @llvm.dbg.declare(metadata !226, metadata !4267, metadata !DIExpression()) #7, !dbg !4461
  call void @llvm.dbg.declare(metadata !226, metadata !4273, metadata !DIExpression()) #7, !dbg !4461
  store i32 1, i32* %tmp8.i, align 4, !dbg !4461
  %21 = load i32, i32* %tmp8.i, align 4, !dbg !4461
  %22 = load i64, i64* %flags.addr.i, align 8, !dbg !4462
  call void @arch_local_irq_restore(i64 %22) #11, !dbg !4462
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4463, !srcloc !4277
  %23 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i28, align 8, !dbg !4464
  %24 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i32 0, i32 0, !dbg !4464
  %rlock.i29 = bitcast %union.anon.3* %24 to %struct.raw_spinlock*, !dbg !4464
  %25 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !4465
  %call27 = call i32 @comedi_buf_map_put(%struct.comedi_buf_map* %25) #10, !dbg !4466
  ret void, !dbg !4467
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__comedi_buf_alloc(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %n_pages) #0 !dbg !4468 {
entry:
  %lock.addr.i42 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i42, metadata !4191, metadata !DIExpression()), !dbg !4471
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4198, metadata !DIExpression()), !dbg !4473
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4200, metadata !DIExpression()), !dbg !4474
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %n_pages.addr = alloca i32, align 4
  %async = alloca %struct.comedi_async*, align 8
  %pages = alloca %struct.page**, align 8
  %bm = alloca %struct.comedi_buf_map*, align 8
  %buf = alloca %struct.comedi_buf_page*, align 8
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %.compoundliteral = alloca %struct.pgprot, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4481, metadata !DIExpression()), !dbg !4482
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4483, metadata !DIExpression()), !dbg !4484
  store i32 %n_pages, i32* %n_pages.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n_pages.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4487, metadata !DIExpression()), !dbg !4488
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4489
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4490
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4490
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4488
  call void @llvm.dbg.declare(metadata %struct.page*** %pages, metadata !4491, metadata !DIExpression()), !dbg !4492
  store %struct.page** null, %struct.page*** %pages, align 8, !dbg !4492
  call void @llvm.dbg.declare(metadata %struct.comedi_buf_map** %bm, metadata !4493, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.declare(metadata %struct.comedi_buf_page** %buf, metadata !4495, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4497, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4499, metadata !DIExpression()), !dbg !4500
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4501
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4502
  %async_dma_dir = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 28, !dbg !4503
  %4 = load i32, i32* %async_dma_dir, align 8, !dbg !4503
  %5 = load i32, i32* %n_pages.addr, align 4, !dbg !4504
  %call = call %struct.comedi_buf_map* @comedi_buf_map_alloc(%struct.comedi_device* %2, i32 %4, i32 %5) #10, !dbg !4505
  store %struct.comedi_buf_map* %call, %struct.comedi_buf_map** %bm, align 8, !dbg !4506
  %6 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !4507
  %tobool = icmp ne %struct.comedi_buf_map* %6, null, !dbg !4507
  br i1 %tobool, label %if.end, label %if.then, !dbg !4509

if.then:                                          ; preds = %entry
  br label %if.end41, !dbg !4510

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4511

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !4512

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4513, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4516, metadata !DIExpression()), !dbg !4515
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4515
  %conv = zext i1 %cmp to i32, !dbg !4515
  store i32 1, i32* %tmp, align 4, !dbg !4515
  %7 = load i32, i32* %tmp, align 4, !dbg !4515
  br label %do.body3, !dbg !4517

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4518

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !4519

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !4521, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !4525, metadata !DIExpression()), !dbg !4524
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !4524
  %conv9 = zext i1 %cmp8 to i32, !dbg !4524
  store i32 1, i32* %tmp10, align 4, !dbg !4524
  %8 = load i32, i32* %tmp10, align 4, !dbg !4524
  %call11 = call i64 @arch_local_irq_save() #10, !dbg !4526
  store i64 %call11, i64* %flags, align 8, !dbg !4526
  br label %do.end, !dbg !4526

do.end:                                           ; preds = %do.body5
  br label %do.end12, !dbg !4519

do.end12:                                         ; preds = %do.end
  br label %do.body13, !dbg !4518

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4527, !srcloc !4528
  br label %do.body14, !dbg !4527

do.body14:                                        ; preds = %do.body13
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4529
  %spin_lock = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 11, !dbg !4529
  store %struct.spinlock* %spin_lock, %struct.spinlock** %lock.addr.i, align 8
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4530
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !4531
  %rlock.i = bitcast %union.anon.3* %11 to %struct.raw_spinlock*, !dbg !4531
  br label %do.end16, !dbg !4529

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !4527

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4518

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !4517

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !4512

do.end20:                                         ; preds = %do.end19
  %12 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !4532
  %13 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4533
  %buf_map = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 2, !dbg !4534
  store %struct.comedi_buf_map* %12, %struct.comedi_buf_map** %buf_map, align 8, !dbg !4535
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4536
  %spin_lock21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 11, !dbg !4537
  %15 = load i64, i64* %flags, align 8, !dbg !4538
  store %struct.spinlock* %spin_lock21, %struct.spinlock** %lock.addr.i42, align 8
  store i64 %15, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !226, metadata !4262, metadata !DIExpression()) #7, !dbg !4539
  call void @llvm.dbg.declare(metadata !226, metadata !4266, metadata !DIExpression()) #7, !dbg !4539
  store i32 1, i32* %tmp.i, align 4, !dbg !4539
  %16 = load i32, i32* %tmp.i, align 4, !dbg !4539
  call void @llvm.dbg.declare(metadata !226, metadata !4267, metadata !DIExpression()) #7, !dbg !4540
  call void @llvm.dbg.declare(metadata !226, metadata !4273, metadata !DIExpression()) #7, !dbg !4540
  store i32 1, i32* %tmp8.i, align 4, !dbg !4540
  %17 = load i32, i32* %tmp8.i, align 4, !dbg !4540
  %18 = load i64, i64* %flags.addr.i, align 8, !dbg !4541
  call void @arch_local_irq_restore(i64 %18) #11, !dbg !4541
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4542, !srcloc !4277
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i42, align 8, !dbg !4543
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !4543
  %rlock.i43 = bitcast %union.anon.3* %20 to %struct.raw_spinlock*, !dbg !4543
  %21 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !4544
  %dma_dir = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %21, i32 0, i32 3, !dbg !4546
  %22 = load i32, i32* %dma_dir, align 4, !dbg !4546
  %cmp22 = icmp ne i32 %22, 3, !dbg !4547
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !4548

if.then24:                                        ; preds = %do.end20
  %23 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !4549
  %page_list = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %23, i32 0, i32 1, !dbg !4551
  %24 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %page_list, align 8, !dbg !4551
  %arrayidx = getelementptr %struct.comedi_buf_page, %struct.comedi_buf_page* %24, i64 0, !dbg !4549
  store %struct.comedi_buf_page* %arrayidx, %struct.comedi_buf_page** %buf, align 8, !dbg !4552
  %25 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %buf, align 8, !dbg !4553
  %virt_addr = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %25, i32 0, i32 0, !dbg !4554
  %26 = load i8*, i8** %virt_addr, align 8, !dbg !4554
  %27 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4555
  %prealloc_buf = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %27, i32 0, i32 0, !dbg !4556
  store i8* %26, i8** %prealloc_buf, align 8, !dbg !4557
  br label %if.end41, !dbg !4558

if.else:                                          ; preds = %do.end20
  %28 = load i32, i32* %n_pages.addr, align 4, !dbg !4559
  %conv25 = zext i32 %28 to i64, !dbg !4559
  %mul = mul i64 8, %conv25, !dbg !4561
  %call26 = call i8* @vmalloc(i64 %mul) #10, !dbg !4562
  %29 = bitcast i8* %call26 to %struct.page**, !dbg !4562
  store %struct.page** %29, %struct.page*** %pages, align 8, !dbg !4563
  %30 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4564
  %tobool27 = icmp ne %struct.page** %30, null, !dbg !4564
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !4566

if.then28:                                        ; preds = %if.else
  br label %if.end41, !dbg !4567

if.end29:                                         ; preds = %if.else
  store i32 0, i32* %i, align 4, !dbg !4568
  br label %for.cond, !dbg !4570

for.cond:                                         ; preds = %for.inc, %if.end29
  %31 = load i32, i32* %i, align 4, !dbg !4571
  %32 = load i32, i32* %n_pages.addr, align 4, !dbg !4573
  %cmp30 = icmp ult i32 %31, %32, !dbg !4574
  br i1 %cmp30, label %for.body, label %for.end, !dbg !4575

for.body:                                         ; preds = %for.cond
  %33 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !4576
  %page_list32 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %33, i32 0, i32 1, !dbg !4578
  %34 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %page_list32, align 8, !dbg !4578
  %35 = load i32, i32* %i, align 4, !dbg !4579
  %idxprom = zext i32 %35 to i64, !dbg !4576
  %arrayidx33 = getelementptr %struct.comedi_buf_page, %struct.comedi_buf_page* %34, i64 %idxprom, !dbg !4576
  store %struct.comedi_buf_page* %arrayidx33, %struct.comedi_buf_page** %buf, align 8, !dbg !4580
  %36 = load i64, i64* @vmemmap_base, align 8, !dbg !4581
  %37 = inttoptr i64 %36 to %struct.page*, !dbg !4581
  %38 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %buf, align 8, !dbg !4581
  %virt_addr34 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %38, i32 0, i32 0, !dbg !4581
  %39 = load i8*, i8** %virt_addr34, align 8, !dbg !4581
  %40 = ptrtoint i8* %39 to i64, !dbg !4581
  %call35 = call i64 @__phys_addr_nodebug(i64 %40) #10, !dbg !4581
  %shr = lshr i64 %call35, 12, !dbg !4581
  %add.ptr = getelementptr %struct.page, %struct.page* %37, i64 %shr, !dbg !4581
  %41 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4582
  %42 = load i32, i32* %i, align 4, !dbg !4583
  %idxprom36 = zext i32 %42 to i64, !dbg !4582
  %arrayidx37 = getelementptr %struct.page*, %struct.page** %41, i64 %idxprom36, !dbg !4582
  store %struct.page* %add.ptr, %struct.page** %arrayidx37, align 8, !dbg !4584
  br label %for.inc, !dbg !4585

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4, !dbg !4586
  %inc = add i32 %43, 1, !dbg !4586
  store i32 %inc, i32* %i, align 4, !dbg !4586
  br label %for.cond, !dbg !4587, !llvm.loop !4588

for.end:                                          ; preds = %for.cond
  %44 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4590
  %45 = load i32, i32* %n_pages.addr, align 4, !dbg !4591
  %pgprot = getelementptr inbounds %struct.pgprot, %struct.pgprot* %.compoundliteral, i32 0, i32 0, !dbg !4592
  %call38 = call i64 @cachemode2protval(i32 3) #10, !dbg !4592
  %or = or i64 -9223372036854775453, %call38, !dbg !4592
  %46 = load i64, i64* @__default_kernel_pte_mask, align 8, !dbg !4592
  %and = and i64 %or, %46, !dbg !4592
  store i64 %and, i64* %pgprot, align 8, !dbg !4592
  %coerce.dive = getelementptr inbounds %struct.pgprot, %struct.pgprot* %.compoundliteral, i32 0, i32 0, !dbg !4593
  %47 = load i64, i64* %coerce.dive, align 8, !dbg !4593
  %call39 = call i8* @vmap(%struct.page** %44, i32 %45, i64 4, i64 %47) #10, !dbg !4593
  %48 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4594
  %prealloc_buf40 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %48, i32 0, i32 0, !dbg !4595
  store i8* %call39, i8** %prealloc_buf40, align 8, !dbg !4596
  %49 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4597
  %50 = bitcast %struct.page** %49 to i8*, !dbg !4597
  call void @vfree(i8* %50) #10, !dbg !4598
  br label %if.end41

if.end41:                                         ; preds = %if.then, %if.then28, %for.end, %if.then24
  ret void, !dbg !4599
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_buf_reset(%struct.comedi_subdevice* %s) #0 !dbg !4600 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %async = alloca %struct.comedi_async*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4603, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4605, metadata !DIExpression()), !dbg !4606
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4607
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4608
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4608
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4606
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4609
  %buf_write_alloc_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %2, i32 0, i32 5, !dbg !4610
  store i32 0, i32* %buf_write_alloc_count, align 8, !dbg !4611
  %3 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4612
  %buf_write_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %3, i32 0, i32 4, !dbg !4613
  store i32 0, i32* %buf_write_count, align 4, !dbg !4614
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4615
  %buf_read_alloc_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 7, !dbg !4616
  store i32 0, i32* %buf_read_alloc_count, align 8, !dbg !4617
  %5 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4618
  %buf_read_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %5, i32 0, i32 6, !dbg !4619
  store i32 0, i32* %buf_read_count, align 4, !dbg !4620
  %6 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4621
  %buf_write_ptr = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %6, i32 0, i32 8, !dbg !4622
  store i32 0, i32* %buf_write_ptr, align 4, !dbg !4623
  %7 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4624
  %buf_read_ptr = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %7, i32 0, i32 9, !dbg !4625
  store i32 0, i32* %buf_read_ptr, align 8, !dbg !4626
  %8 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4627
  %cur_chan = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %8, i32 0, i32 10, !dbg !4628
  store i32 0, i32* %cur_chan, align 4, !dbg !4629
  %9 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4630
  %scans_done = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %9, i32 0, i32 11, !dbg !4631
  store i32 0, i32* %scans_done, align 8, !dbg !4632
  %10 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4633
  %scan_progress = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %10, i32 0, i32 12, !dbg !4634
  store i32 0, i32* %scan_progress, align 4, !dbg !4635
  %11 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4636
  %munge_chan = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %11, i32 0, i32 13, !dbg !4637
  store i32 0, i32* %munge_chan, align 8, !dbg !4638
  %12 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4639
  %munge_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %12, i32 0, i32 14, !dbg !4640
  store i32 0, i32* %munge_count, align 4, !dbg !4641
  %13 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4642
  %munge_ptr = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 15, !dbg !4643
  store i32 0, i32* %munge_ptr, align 8, !dbg !4644
  %14 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4645
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %14, i32 0, i32 16, !dbg !4646
  store i32 0, i32* %events, align 4, !dbg !4647
  ret void, !dbg !4648
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_buf_write_n_available(%struct.comedi_subdevice* %s) #0 !dbg !4649 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %free_end = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4652, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4654, metadata !DIExpression()), !dbg !4655
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4656
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4657
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4657
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4655
  call void @llvm.dbg.declare(metadata i32* %free_end, metadata !4658, metadata !DIExpression()), !dbg !4659
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4660
  %buf_read_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %2, i32 0, i32 6, !dbg !4661
  %3 = load i32, i32* %buf_read_count, align 4, !dbg !4661
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4662
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 1, !dbg !4663
  %5 = load i32, i32* %prealloc_bufsz, align 8, !dbg !4663
  %add = add i32 %3, %5, !dbg !4664
  store i32 %add, i32* %free_end, align 4, !dbg !4659
  %6 = load i32, i32* %free_end, align 4, !dbg !4665
  %7 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4666
  %buf_write_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %7, i32 0, i32 4, !dbg !4667
  %8 = load i32, i32* %buf_write_count, align 4, !dbg !4667
  %sub = sub i32 %6, %8, !dbg !4668
  ret i32 %sub, !dbg !4669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_buf_write_alloc(%struct.comedi_subdevice* %s, i32 %nbytes) #0 !dbg !4670 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nbytes.addr = alloca i32, align 4
  %async = alloca %struct.comedi_async*, align 8
  %unalloc = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4673, metadata !DIExpression()), !dbg !4674
  store i32 %nbytes, i32* %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbytes.addr, metadata !4675, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4677, metadata !DIExpression()), !dbg !4678
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4679
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4680
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4680
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4678
  call void @llvm.dbg.declare(metadata i32* %unalloc, metadata !4681, metadata !DIExpression()), !dbg !4682
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4683
  %call = call i32 @comedi_buf_write_n_unalloc(%struct.comedi_subdevice* %2) #10, !dbg !4684
  store i32 %call, i32* %unalloc, align 4, !dbg !4682
  %3 = load i32, i32* %nbytes.addr, align 4, !dbg !4685
  %4 = load i32, i32* %unalloc, align 4, !dbg !4687
  %cmp = icmp ugt i32 %3, %4, !dbg !4688
  br i1 %cmp, label %if.then, label %if.end, !dbg !4689

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %unalloc, align 4, !dbg !4690
  store i32 %5, i32* %nbytes.addr, align 4, !dbg !4691
  br label %if.end, !dbg !4692

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %nbytes.addr, align 4, !dbg !4693
  %7 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4694
  %buf_write_alloc_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %7, i32 0, i32 5, !dbg !4695
  %8 = load i32, i32* %buf_write_alloc_count, align 8, !dbg !4696
  %add = add i32 %8, %6, !dbg !4696
  store i32 %add, i32* %buf_write_alloc_count, align 8, !dbg !4696
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4697, !srcloc !4698
  %9 = load i32, i32* %nbytes.addr, align 4, !dbg !4699
  ret i32 %9, !dbg !4700
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_buf_write_n_unalloc(%struct.comedi_subdevice* %s) #0 !dbg !4701 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %free_end = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4702, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4704, metadata !DIExpression()), !dbg !4705
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4706
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4707
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4707
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4705
  call void @llvm.dbg.declare(metadata i32* %free_end, metadata !4708, metadata !DIExpression()), !dbg !4709
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4710
  %buf_read_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %2, i32 0, i32 6, !dbg !4711
  %3 = load i32, i32* %buf_read_count, align 4, !dbg !4711
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4712
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 1, !dbg !4713
  %5 = load i32, i32* %prealloc_bufsz, align 8, !dbg !4713
  %add = add i32 %3, %5, !dbg !4714
  store i32 %add, i32* %free_end, align 4, !dbg !4709
  %6 = load i32, i32* %free_end, align 4, !dbg !4715
  %7 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4716
  %buf_write_alloc_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %7, i32 0, i32 5, !dbg !4717
  %8 = load i32, i32* %buf_write_alloc_count, align 8, !dbg !4717
  %sub = sub i32 %6, %8, !dbg !4718
  ret i32 %sub, !dbg !4719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_buf_write_n_allocated(%struct.comedi_subdevice* %s) #0 !dbg !4720 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %async = alloca %struct.comedi_async*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4721, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4723, metadata !DIExpression()), !dbg !4724
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4725
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4726
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4726
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4724
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4727
  %buf_write_alloc_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %2, i32 0, i32 5, !dbg !4728
  %3 = load i32, i32* %buf_write_alloc_count, align 8, !dbg !4728
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4729
  %buf_write_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 4, !dbg !4730
  %5 = load i32, i32* %buf_write_count, align 4, !dbg !4730
  %sub = sub i32 %3, %5, !dbg !4731
  ret i32 %sub, !dbg !4732
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_buf_write_free(%struct.comedi_subdevice* %s, i32 %nbytes) #0 !dbg !4733 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nbytes.addr = alloca i32, align 4
  %async = alloca %struct.comedi_async*, align 8
  %allocated = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4734, metadata !DIExpression()), !dbg !4735
  store i32 %nbytes, i32* %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbytes.addr, metadata !4736, metadata !DIExpression()), !dbg !4737
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4738, metadata !DIExpression()), !dbg !4739
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4740
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4741
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4741
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4739
  call void @llvm.dbg.declare(metadata i32* %allocated, metadata !4742, metadata !DIExpression()), !dbg !4743
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4744
  %call = call i32 @comedi_buf_write_n_allocated(%struct.comedi_subdevice* %2) #10, !dbg !4745
  store i32 %call, i32* %allocated, align 4, !dbg !4743
  %3 = load i32, i32* %nbytes.addr, align 4, !dbg !4746
  %4 = load i32, i32* %allocated, align 4, !dbg !4748
  %cmp = icmp ugt i32 %3, %4, !dbg !4749
  br i1 %cmp, label %if.then, label %if.end, !dbg !4750

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %allocated, align 4, !dbg !4751
  store i32 %5, i32* %nbytes.addr, align 4, !dbg !4752
  br label %if.end, !dbg !4753

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %nbytes.addr, align 4, !dbg !4754
  %7 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4755
  %buf_write_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %7, i32 0, i32 4, !dbg !4756
  %8 = load i32, i32* %buf_write_count, align 4, !dbg !4757
  %add = add i32 %8, %6, !dbg !4757
  store i32 %add, i32* %buf_write_count, align 4, !dbg !4757
  %9 = load i32, i32* %nbytes.addr, align 4, !dbg !4758
  %10 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4759
  %buf_write_ptr = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %10, i32 0, i32 8, !dbg !4760
  %11 = load i32, i32* %buf_write_ptr, align 4, !dbg !4761
  %add2 = add i32 %11, %9, !dbg !4761
  store i32 %add2, i32* %buf_write_ptr, align 4, !dbg !4761
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4762
  %13 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4763
  %buf_write_count3 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 4, !dbg !4764
  %14 = load i32, i32* %buf_write_count3, align 4, !dbg !4764
  %15 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4765
  %munge_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %15, i32 0, i32 14, !dbg !4766
  %16 = load i32, i32* %munge_count, align 4, !dbg !4766
  %sub = sub i32 %14, %16, !dbg !4767
  %call4 = call i32 @comedi_buf_munge(%struct.comedi_subdevice* %12, i32 %sub) #10, !dbg !4768
  %17 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4769
  %buf_write_ptr5 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 8, !dbg !4771
  %18 = load i32, i32* %buf_write_ptr5, align 4, !dbg !4771
  %19 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4772
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 1, !dbg !4773
  %20 = load i32, i32* %prealloc_bufsz, align 8, !dbg !4773
  %cmp6 = icmp uge i32 %18, %20, !dbg !4774
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !4775

if.then7:                                         ; preds = %if.end
  %21 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4776
  %prealloc_bufsz8 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %21, i32 0, i32 1, !dbg !4777
  %22 = load i32, i32* %prealloc_bufsz8, align 8, !dbg !4777
  %23 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4778
  %buf_write_ptr9 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %23, i32 0, i32 8, !dbg !4779
  %24 = load i32, i32* %buf_write_ptr9, align 4, !dbg !4780
  %rem = urem i32 %24, %22, !dbg !4780
  store i32 %rem, i32* %buf_write_ptr9, align 4, !dbg !4780
  br label %if.end10, !dbg !4778

if.end10:                                         ; preds = %if.then7, %if.end
  %25 = load i32, i32* %nbytes.addr, align 4, !dbg !4781
  ret i32 %25, !dbg !4782
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_buf_munge(%struct.comedi_subdevice* %s, i32 %num_bytes) #0 !dbg !4783 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %num_bytes.addr = alloca i32, align 4
  %async = alloca %struct.comedi_async*, align 8
  %count = alloca i32, align 4
  %num_sample_bytes = alloca i32, align 4
  %block_size = alloca i32, align 4
  %buf_end = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4784, metadata !DIExpression()), !dbg !4785
  store i32 %num_bytes, i32* %num_bytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_bytes.addr, metadata !4786, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4788, metadata !DIExpression()), !dbg !4789
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4790
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4791
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4791
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4789
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4792, metadata !DIExpression()), !dbg !4793
  store i32 0, i32* %count, align 4, !dbg !4793
  call void @llvm.dbg.declare(metadata i32* %num_sample_bytes, metadata !4794, metadata !DIExpression()), !dbg !4795
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4796
  %call = call i32 @comedi_bytes_per_sample(%struct.comedi_subdevice* %2) #10, !dbg !4797
  store i32 %call, i32* %num_sample_bytes, align 4, !dbg !4795
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4798
  %munge = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 27, !dbg !4800
  %4 = load void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)*, void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)** %munge, align 8, !dbg !4800
  %tobool = icmp ne void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)* %4, null, !dbg !4798
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4801

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4802
  %cmd = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %5, i32 0, i32 17, !dbg !4803
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %cmd, i32 0, i32 1, !dbg !4804
  %6 = load i32, i32* %flags, align 4, !dbg !4804
  %and = and i32 %6, 128, !dbg !4805
  %tobool2 = icmp ne i32 %and, 0, !dbg !4805
  br i1 %tobool2, label %if.then, label %if.else, !dbg !4806

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load i32, i32* %num_bytes.addr, align 4, !dbg !4807
  %8 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4809
  %munge_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %8, i32 0, i32 14, !dbg !4810
  %9 = load i32, i32* %munge_count, align 4, !dbg !4811
  %add = add i32 %9, %7, !dbg !4811
  store i32 %add, i32* %munge_count, align 4, !dbg !4811
  %10 = load i32, i32* %num_bytes.addr, align 4, !dbg !4812
  store i32 %10, i32* %count, align 4, !dbg !4813
  br label %if.end22, !dbg !4814

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i32, i32* %num_bytes.addr, align 4, !dbg !4815
  %12 = load i32, i32* %num_sample_bytes, align 4, !dbg !4817
  %rem = urem i32 %11, %12, !dbg !4818
  %13 = load i32, i32* %num_bytes.addr, align 4, !dbg !4819
  %sub = sub i32 %13, %rem, !dbg !4819
  store i32 %sub, i32* %num_bytes.addr, align 4, !dbg !4819
  br label %while.cond, !dbg !4820

while.cond:                                       ; preds = %if.end, %if.else
  %14 = load i32, i32* %count, align 4, !dbg !4821
  %15 = load i32, i32* %num_bytes.addr, align 4, !dbg !4822
  %cmp = icmp ult i32 %14, %15, !dbg !4823
  br i1 %cmp, label %while.body, label %while.end, !dbg !4820

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %block_size, metadata !4824, metadata !DIExpression()), !dbg !4826
  %16 = load i32, i32* %num_bytes.addr, align 4, !dbg !4827
  %17 = load i32, i32* %count, align 4, !dbg !4828
  %sub3 = sub i32 %16, %17, !dbg !4829
  store i32 %sub3, i32* %block_size, align 4, !dbg !4826
  call void @llvm.dbg.declare(metadata i32* %buf_end, metadata !4830, metadata !DIExpression()), !dbg !4831
  %18 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4832
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 1, !dbg !4833
  %19 = load i32, i32* %prealloc_bufsz, align 8, !dbg !4833
  %20 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4834
  %munge_ptr = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 15, !dbg !4835
  %21 = load i32, i32* %munge_ptr, align 8, !dbg !4835
  %sub4 = sub i32 %19, %21, !dbg !4836
  store i32 %sub4, i32* %buf_end, align 4, !dbg !4837
  %22 = load i32, i32* %block_size, align 4, !dbg !4838
  %23 = load i32, i32* %buf_end, align 4, !dbg !4840
  %cmp5 = icmp ugt i32 %22, %23, !dbg !4841
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !4842

if.then6:                                         ; preds = %while.body
  %24 = load i32, i32* %buf_end, align 4, !dbg !4843
  store i32 %24, i32* %block_size, align 4, !dbg !4844
  br label %if.end, !dbg !4845

if.end:                                           ; preds = %if.then6, %while.body
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4846
  %munge7 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 27, !dbg !4847
  %26 = load void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)*, void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)** %munge7, align 8, !dbg !4847
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4848
  %device = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 0, !dbg !4849
  %28 = load %struct.comedi_device*, %struct.comedi_device** %device, align 8, !dbg !4849
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4850
  %30 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4851
  %prealloc_buf = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %30, i32 0, i32 0, !dbg !4852
  %31 = load i8*, i8** %prealloc_buf, align 8, !dbg !4852
  %32 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4853
  %munge_ptr8 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %32, i32 0, i32 15, !dbg !4854
  %33 = load i32, i32* %munge_ptr8, align 8, !dbg !4854
  %idx.ext = zext i32 %33 to i64, !dbg !4855
  %add.ptr = getelementptr i8, i8* %31, i64 %idx.ext, !dbg !4855
  %34 = load i32, i32* %block_size, align 4, !dbg !4856
  %35 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4857
  %munge_chan = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %35, i32 0, i32 13, !dbg !4858
  %36 = load i32, i32* %munge_chan, align 8, !dbg !4858
  call void %26(%struct.comedi_device* %28, %struct.comedi_subdevice* %29, i8* %add.ptr, i32 %34, i32 %36) #10, !dbg !4846
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4859, !srcloc !4860
  %37 = load i32, i32* %block_size, align 4, !dbg !4861
  %38 = load i32, i32* %num_sample_bytes, align 4, !dbg !4862
  %div = udiv i32 %37, %38, !dbg !4863
  %39 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4864
  %munge_chan9 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %39, i32 0, i32 13, !dbg !4865
  %40 = load i32, i32* %munge_chan9, align 8, !dbg !4866
  %add10 = add i32 %40, %div, !dbg !4866
  store i32 %add10, i32* %munge_chan9, align 8, !dbg !4866
  %41 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4867
  %cmd11 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %41, i32 0, i32 17, !dbg !4868
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %cmd11, i32 0, i32 13, !dbg !4869
  %42 = load i32, i32* %chanlist_len, align 8, !dbg !4869
  %43 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4870
  %munge_chan12 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %43, i32 0, i32 13, !dbg !4871
  %44 = load i32, i32* %munge_chan12, align 8, !dbg !4872
  %rem13 = urem i32 %44, %42, !dbg !4872
  store i32 %rem13, i32* %munge_chan12, align 8, !dbg !4872
  %45 = load i32, i32* %block_size, align 4, !dbg !4873
  %46 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4874
  %munge_count14 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %46, i32 0, i32 14, !dbg !4875
  %47 = load i32, i32* %munge_count14, align 4, !dbg !4876
  %add15 = add i32 %47, %45, !dbg !4876
  store i32 %add15, i32* %munge_count14, align 4, !dbg !4876
  %48 = load i32, i32* %block_size, align 4, !dbg !4877
  %49 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4878
  %munge_ptr16 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %49, i32 0, i32 15, !dbg !4879
  %50 = load i32, i32* %munge_ptr16, align 8, !dbg !4880
  %add17 = add i32 %50, %48, !dbg !4880
  store i32 %add17, i32* %munge_ptr16, align 8, !dbg !4880
  %51 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4881
  %prealloc_bufsz18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %51, i32 0, i32 1, !dbg !4882
  %52 = load i32, i32* %prealloc_bufsz18, align 8, !dbg !4882
  %53 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4883
  %munge_ptr19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %53, i32 0, i32 15, !dbg !4884
  %54 = load i32, i32* %munge_ptr19, align 8, !dbg !4885
  %rem20 = urem i32 %54, %52, !dbg !4885
  store i32 %rem20, i32* %munge_ptr19, align 8, !dbg !4885
  %55 = load i32, i32* %block_size, align 4, !dbg !4886
  %56 = load i32, i32* %count, align 4, !dbg !4887
  %add21 = add i32 %56, %55, !dbg !4887
  store i32 %add21, i32* %count, align 4, !dbg !4887
  br label %while.cond, !dbg !4820, !llvm.loop !4888

while.end:                                        ; preds = %while.cond
  br label %if.end22

if.end22:                                         ; preds = %while.end, %if.then
  %57 = load i32, i32* %count, align 4, !dbg !4890
  ret i32 %57, !dbg !4891
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_buf_read_n_available(%struct.comedi_subdevice* %s) #0 !dbg !4892 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %num_bytes = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4893, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4895, metadata !DIExpression()), !dbg !4896
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4897
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4898
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4898
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4896
  call void @llvm.dbg.declare(metadata i32* %num_bytes, metadata !4899, metadata !DIExpression()), !dbg !4900
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4901
  %tobool = icmp ne %struct.comedi_async* %2, null, !dbg !4901
  br i1 %tobool, label %if.end, label %if.then, !dbg !4903

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4904
  br label %return, !dbg !4904

if.end:                                           ; preds = %entry
  %3 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4905
  %munge_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %3, i32 0, i32 14, !dbg !4906
  %4 = load i32, i32* %munge_count, align 4, !dbg !4906
  %5 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4907
  %buf_read_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %5, i32 0, i32 6, !dbg !4908
  %6 = load i32, i32* %buf_read_count, align 4, !dbg !4908
  %sub = sub i32 %4, %6, !dbg !4909
  store i32 %sub, i32* %num_bytes, align 4, !dbg !4910
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4911, !srcloc !4912
  %7 = load i32, i32* %num_bytes, align 4, !dbg !4913
  store i32 %7, i32* %retval, align 4, !dbg !4914
  br label %return, !dbg !4914

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4915
  ret i32 %8, !dbg !4915
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_buf_read_alloc(%struct.comedi_subdevice* %s, i32 %nbytes) #0 !dbg !4916 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nbytes.addr = alloca i32, align 4
  %async = alloca %struct.comedi_async*, align 8
  %available = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4917, metadata !DIExpression()), !dbg !4918
  store i32 %nbytes, i32* %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbytes.addr, metadata !4919, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4921, metadata !DIExpression()), !dbg !4922
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4923
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4924
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4924
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4922
  call void @llvm.dbg.declare(metadata i32* %available, metadata !4925, metadata !DIExpression()), !dbg !4926
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4927
  %munge_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %2, i32 0, i32 14, !dbg !4928
  %3 = load i32, i32* %munge_count, align 4, !dbg !4928
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4929
  %buf_read_alloc_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 7, !dbg !4930
  %5 = load i32, i32* %buf_read_alloc_count, align 8, !dbg !4930
  %sub = sub i32 %3, %5, !dbg !4931
  store i32 %sub, i32* %available, align 4, !dbg !4932
  %6 = load i32, i32* %nbytes.addr, align 4, !dbg !4933
  %7 = load i32, i32* %available, align 4, !dbg !4935
  %cmp = icmp ugt i32 %6, %7, !dbg !4936
  br i1 %cmp, label %if.then, label %if.end, !dbg !4937

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %available, align 4, !dbg !4938
  store i32 %8, i32* %nbytes.addr, align 4, !dbg !4939
  br label %if.end, !dbg !4940

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %nbytes.addr, align 4, !dbg !4941
  %10 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4942
  %buf_read_alloc_count2 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %10, i32 0, i32 7, !dbg !4943
  %11 = load i32, i32* %buf_read_alloc_count2, align 8, !dbg !4944
  %add = add i32 %11, %9, !dbg !4944
  store i32 %add, i32* %buf_read_alloc_count2, align 8, !dbg !4944
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4945, !srcloc !4946
  %12 = load i32, i32* %nbytes.addr, align 4, !dbg !4947
  ret i32 %12, !dbg !4948
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_buf_read_free(%struct.comedi_subdevice* %s, i32 %nbytes) #0 !dbg !4949 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nbytes.addr = alloca i32, align 4
  %async = alloca %struct.comedi_async*, align 8
  %allocated = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4950, metadata !DIExpression()), !dbg !4951
  store i32 %nbytes, i32* %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbytes.addr, metadata !4952, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4954, metadata !DIExpression()), !dbg !4955
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4956
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4957
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4957
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4955
  call void @llvm.dbg.declare(metadata i32* %allocated, metadata !4958, metadata !DIExpression()), !dbg !4959
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4960, !srcloc !4961
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4962
  %call = call i32 @comedi_buf_read_n_allocated(%struct.comedi_async* %2) #10, !dbg !4963
  store i32 %call, i32* %allocated, align 4, !dbg !4964
  %3 = load i32, i32* %nbytes.addr, align 4, !dbg !4965
  %4 = load i32, i32* %allocated, align 4, !dbg !4967
  %cmp = icmp ugt i32 %3, %4, !dbg !4968
  br i1 %cmp, label %if.then, label %if.end, !dbg !4969

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %allocated, align 4, !dbg !4970
  store i32 %5, i32* %nbytes.addr, align 4, !dbg !4971
  br label %if.end, !dbg !4972

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %nbytes.addr, align 4, !dbg !4973
  %7 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4974
  %buf_read_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %7, i32 0, i32 6, !dbg !4975
  %8 = load i32, i32* %buf_read_count, align 4, !dbg !4976
  %add = add i32 %8, %6, !dbg !4976
  store i32 %add, i32* %buf_read_count, align 4, !dbg !4976
  %9 = load i32, i32* %nbytes.addr, align 4, !dbg !4977
  %10 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4978
  %buf_read_ptr = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %10, i32 0, i32 9, !dbg !4979
  %11 = load i32, i32* %buf_read_ptr, align 8, !dbg !4980
  %add2 = add i32 %11, %9, !dbg !4980
  store i32 %add2, i32* %buf_read_ptr, align 8, !dbg !4980
  %12 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4981
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %12, i32 0, i32 1, !dbg !4982
  %13 = load i32, i32* %prealloc_bufsz, align 8, !dbg !4982
  %14 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4983
  %buf_read_ptr3 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %14, i32 0, i32 9, !dbg !4984
  %15 = load i32, i32* %buf_read_ptr3, align 8, !dbg !4985
  %rem = urem i32 %15, %13, !dbg !4985
  store i32 %rem, i32* %buf_read_ptr3, align 8, !dbg !4985
  %16 = load i32, i32* %nbytes.addr, align 4, !dbg !4986
  ret i32 %16, !dbg !4987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_buf_read_n_allocated(%struct.comedi_async* %async) #0 !dbg !4988 {
entry:
  %async.addr = alloca %struct.comedi_async*, align 8
  store %struct.comedi_async* %async, %struct.comedi_async** %async.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async.addr, metadata !4991, metadata !DIExpression()), !dbg !4992
  %0 = load %struct.comedi_async*, %struct.comedi_async** %async.addr, align 8, !dbg !4993
  %buf_read_alloc_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %0, i32 0, i32 7, !dbg !4994
  %1 = load i32, i32* %buf_read_alloc_count, align 8, !dbg !4994
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async.addr, align 8, !dbg !4995
  %buf_read_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %2, i32 0, i32 6, !dbg !4996
  %3 = load i32, i32* %buf_read_count, align 4, !dbg !4996
  %sub = sub i32 %1, %3, !dbg !4997
  ret i32 %sub, !dbg !4998
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %s, i8* %data, i32 %nsamples) #0 !dbg !4999 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %data.addr = alloca i8*, align 8
  %nsamples.addr = alloca i32, align 4
  %max_samples = alloca i32, align 4
  %nbytes = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5002, metadata !DIExpression()), !dbg !5003
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  store i32 %nsamples, i32* %nsamples.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nsamples.addr, metadata !5006, metadata !DIExpression()), !dbg !5007
  call void @llvm.dbg.declare(metadata i32* %max_samples, metadata !5008, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.declare(metadata i32* %nbytes, metadata !5010, metadata !DIExpression()), !dbg !5011
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5012
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5013
  %call = call i32 @comedi_buf_write_n_unalloc(%struct.comedi_subdevice* %1) #10, !dbg !5014
  %call1 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %0, i32 %call) #10, !dbg !5015
  store i32 %call1, i32* %max_samples, align 4, !dbg !5016
  %2 = load i32, i32* %nsamples.addr, align 4, !dbg !5017
  %3 = load i32, i32* %max_samples, align 4, !dbg !5019
  %cmp = icmp ugt i32 %2, %3, !dbg !5020
  br i1 %cmp, label %if.then, label %if.end, !dbg !5021

if.then:                                          ; preds = %entry
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5022
  %device = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %4, i32 0, i32 0, !dbg !5022
  %5 = load %struct.comedi_device*, %struct.comedi_device** %device, align 8, !dbg !5022
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 4, !dbg !5022
  %6 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5022
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #12, !dbg !5022
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5024
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 7, !dbg !5025
  %8 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5025
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %8, i32 0, i32 16, !dbg !5026
  %9 = load i32, i32* %events, align 4, !dbg !5027
  %or = or i32 %9, 32, !dbg !5027
  store i32 %or, i32* %events, align 4, !dbg !5027
  %10 = load i32, i32* %max_samples, align 4, !dbg !5028
  store i32 %10, i32* %nsamples.addr, align 4, !dbg !5029
  br label %if.end, !dbg !5030

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %nsamples.addr, align 4, !dbg !5031
  %cmp2 = icmp eq i32 %11, 0, !dbg !5033
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5034

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5035
  br label %return, !dbg !5035

if.end4:                                          ; preds = %if.end
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5036
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5037
  %14 = load i32, i32* %nsamples.addr, align 4, !dbg !5038
  %call5 = call i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %13, i32 %14) #10, !dbg !5039
  %call6 = call i32 @comedi_buf_write_alloc(%struct.comedi_subdevice* %12, i32 %call5) #10, !dbg !5040
  store i32 %call6, i32* %nbytes, align 4, !dbg !5041
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5042
  %16 = load i8*, i8** %data.addr, align 8, !dbg !5043
  %17 = load i32, i32* %nbytes, align 4, !dbg !5044
  call void @comedi_buf_memcpy_to(%struct.comedi_subdevice* %15, i8* %16, i32 %17) #10, !dbg !5045
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5046
  %19 = load i32, i32* %nbytes, align 4, !dbg !5047
  %call7 = call i32 @comedi_buf_write_free(%struct.comedi_subdevice* %18, i32 %19) #10, !dbg !5048
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5049
  %21 = load i32, i32* %nbytes, align 4, !dbg !5050
  call void @comedi_inc_scan_progress(%struct.comedi_subdevice* %20, i32 %21) #10, !dbg !5051
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5052
  %async8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 7, !dbg !5053
  %23 = load %struct.comedi_async*, %struct.comedi_async** %async8, align 8, !dbg !5053
  %events9 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %23, i32 0, i32 16, !dbg !5054
  %24 = load i32, i32* %events9, align 4, !dbg !5055
  %or10 = or i32 %24, 4, !dbg !5055
  store i32 %or10, i32* %events9, align 4, !dbg !5055
  %25 = load i32, i32* %nbytes, align 4, !dbg !5056
  store i32 %25, i32* %retval, align 4, !dbg !5057
  br label %return, !dbg !5057

return:                                           ; preds = %if.end4, %if.then3
  %26 = load i32, i32* %retval, align 4, !dbg !5058
  ret i32 %26, !dbg !5058
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %s, i32 %nbytes) #0 !dbg !5059 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nbytes.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5060, metadata !DIExpression()), !dbg !5061
  store i32 %nbytes, i32* %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbytes.addr, metadata !5062, metadata !DIExpression()), !dbg !5063
  %0 = load i32, i32* %nbytes.addr, align 4, !dbg !5064
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5065
  %call = call i32 @comedi_sample_shift(%struct.comedi_subdevice* %1) #10, !dbg !5066
  %shr = lshr i32 %0, %call, !dbg !5067
  ret i32 %shr, !dbg !5068
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %s, i32 %nsamples) #0 !dbg !5069 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nsamples.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  store i32 %nsamples, i32* %nsamples.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nsamples.addr, metadata !5072, metadata !DIExpression()), !dbg !5073
  %0 = load i32, i32* %nsamples.addr, align 4, !dbg !5074
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5075
  %call = call i32 @comedi_sample_shift(%struct.comedi_subdevice* %1) #10, !dbg !5076
  %shl = shl i32 %0, %call, !dbg !5077
  ret i32 %shl, !dbg !5078
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @comedi_buf_memcpy_to(%struct.comedi_subdevice* %s, i8* %data, i32 %num_bytes) #0 !dbg !5079 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %data.addr = alloca i8*, align 8
  %num_bytes.addr = alloca i32, align 4
  %async = alloca %struct.comedi_async*, align 8
  %write_ptr = alloca i32, align 4
  %block_size = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5082, metadata !DIExpression()), !dbg !5083
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5084, metadata !DIExpression()), !dbg !5085
  store i32 %num_bytes, i32* %num_bytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_bytes.addr, metadata !5086, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !5088, metadata !DIExpression()), !dbg !5089
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5090
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !5091
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !5091
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !5089
  call void @llvm.dbg.declare(metadata i32* %write_ptr, metadata !5092, metadata !DIExpression()), !dbg !5093
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5094
  %buf_write_ptr = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %2, i32 0, i32 8, !dbg !5095
  %3 = load i32, i32* %buf_write_ptr, align 4, !dbg !5095
  store i32 %3, i32* %write_ptr, align 4, !dbg !5093
  br label %while.cond, !dbg !5096

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i32, i32* %num_bytes.addr, align 4, !dbg !5097
  %tobool = icmp ne i32 %4, 0, !dbg !5096
  br i1 %tobool, label %while.body, label %while.end, !dbg !5096

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %block_size, metadata !5098, metadata !DIExpression()), !dbg !5100
  %5 = load i32, i32* %write_ptr, align 4, !dbg !5101
  %6 = load i32, i32* %num_bytes.addr, align 4, !dbg !5103
  %add = add i32 %5, %6, !dbg !5104
  %7 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5105
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %7, i32 0, i32 1, !dbg !5106
  %8 = load i32, i32* %prealloc_bufsz, align 8, !dbg !5106
  %cmp = icmp ugt i32 %add, %8, !dbg !5107
  br i1 %cmp, label %if.then, label %if.else, !dbg !5108

if.then:                                          ; preds = %while.body
  %9 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5109
  %prealloc_bufsz2 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %9, i32 0, i32 1, !dbg !5110
  %10 = load i32, i32* %prealloc_bufsz2, align 8, !dbg !5110
  %11 = load i32, i32* %write_ptr, align 4, !dbg !5111
  %sub = sub i32 %10, %11, !dbg !5112
  store i32 %sub, i32* %block_size, align 4, !dbg !5113
  br label %if.end, !dbg !5114

if.else:                                          ; preds = %while.body
  %12 = load i32, i32* %num_bytes.addr, align 4, !dbg !5115
  store i32 %12, i32* %block_size, align 4, !dbg !5116
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5117
  %prealloc_buf = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 0, !dbg !5118
  %14 = load i8*, i8** %prealloc_buf, align 8, !dbg !5118
  %15 = load i32, i32* %write_ptr, align 4, !dbg !5119
  %idx.ext = zext i32 %15 to i64, !dbg !5120
  %add.ptr = getelementptr i8, i8* %14, i64 %idx.ext, !dbg !5120
  %16 = load i8*, i8** %data.addr, align 8, !dbg !5121
  %17 = load i32, i32* %block_size, align 4, !dbg !5122
  %conv = zext i32 %17 to i64, !dbg !5122
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %16, i64 %conv, i1 false), !dbg !5123
  %18 = load i32, i32* %block_size, align 4, !dbg !5124
  %19 = load i8*, i8** %data.addr, align 8, !dbg !5125
  %idx.ext3 = zext i32 %18 to i64, !dbg !5125
  %add.ptr4 = getelementptr i8, i8* %19, i64 %idx.ext3, !dbg !5125
  store i8* %add.ptr4, i8** %data.addr, align 8, !dbg !5125
  %20 = load i32, i32* %block_size, align 4, !dbg !5126
  %21 = load i32, i32* %num_bytes.addr, align 4, !dbg !5127
  %sub5 = sub i32 %21, %20, !dbg !5127
  store i32 %sub5, i32* %num_bytes.addr, align 4, !dbg !5127
  store i32 0, i32* %write_ptr, align 4, !dbg !5128
  br label %while.cond, !dbg !5096, !llvm.loop !5129

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5131
}

; Function Attrs: noredzone
declare dso_local void @comedi_inc_scan_progress(%struct.comedi_subdevice*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_buf_read_samples(%struct.comedi_subdevice* %s, i8* %data, i32 %nsamples) #0 !dbg !5132 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %data.addr = alloca i8*, align 8
  %nsamples.addr = alloca i32, align 4
  %max_samples = alloca i32, align 4
  %nbytes = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5135, metadata !DIExpression()), !dbg !5136
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  store i32 %nsamples, i32* %nsamples.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nsamples.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.declare(metadata i32* %max_samples, metadata !5141, metadata !DIExpression()), !dbg !5142
  call void @llvm.dbg.declare(metadata i32* %nbytes, metadata !5143, metadata !DIExpression()), !dbg !5144
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5145
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5146
  %call = call i32 @comedi_buf_read_n_available(%struct.comedi_subdevice* %1) #10, !dbg !5147
  %call1 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %0, i32 %call) #10, !dbg !5148
  store i32 %call1, i32* %max_samples, align 4, !dbg !5149
  %2 = load i32, i32* %nsamples.addr, align 4, !dbg !5150
  %3 = load i32, i32* %max_samples, align 4, !dbg !5152
  %cmp = icmp ugt i32 %2, %3, !dbg !5153
  br i1 %cmp, label %if.then, label %if.end, !dbg !5154

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %max_samples, align 4, !dbg !5155
  store i32 %4, i32* %nsamples.addr, align 4, !dbg !5156
  br label %if.end, !dbg !5157

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %nsamples.addr, align 4, !dbg !5158
  %cmp2 = icmp eq i32 %5, 0, !dbg !5160
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5161

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5162
  br label %return, !dbg !5162

if.end4:                                          ; preds = %if.end
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5163
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5164
  %8 = load i32, i32* %nsamples.addr, align 4, !dbg !5165
  %call5 = call i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %7, i32 %8) #10, !dbg !5166
  %call6 = call i32 @comedi_buf_read_alloc(%struct.comedi_subdevice* %6, i32 %call5) #10, !dbg !5167
  store i32 %call6, i32* %nbytes, align 4, !dbg !5168
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5169
  %10 = load i8*, i8** %data.addr, align 8, !dbg !5170
  %11 = load i32, i32* %nbytes, align 4, !dbg !5171
  call void @comedi_buf_memcpy_from(%struct.comedi_subdevice* %9, i8* %10, i32 %11) #10, !dbg !5172
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5173
  %13 = load i32, i32* %nbytes, align 4, !dbg !5174
  %call7 = call i32 @comedi_buf_read_free(%struct.comedi_subdevice* %12, i32 %13) #10, !dbg !5175
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5176
  %15 = load i32, i32* %nbytes, align 4, !dbg !5177
  call void @comedi_inc_scan_progress(%struct.comedi_subdevice* %14, i32 %15) #10, !dbg !5178
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5179
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 7, !dbg !5180
  %17 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5180
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 16, !dbg !5181
  %18 = load i32, i32* %events, align 4, !dbg !5182
  %or = or i32 %18, 4, !dbg !5182
  store i32 %or, i32* %events, align 4, !dbg !5182
  %19 = load i32, i32* %nbytes, align 4, !dbg !5183
  store i32 %19, i32* %retval, align 4, !dbg !5184
  br label %return, !dbg !5184

return:                                           ; preds = %if.end4, %if.then3
  %20 = load i32, i32* %retval, align 4, !dbg !5185
  ret i32 %20, !dbg !5185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @comedi_buf_memcpy_from(%struct.comedi_subdevice* %s, i8* %dest, i32 %nbytes) #0 !dbg !5186 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %dest.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %src = alloca i8*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %read_ptr = alloca i32, align 4
  %block_size = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  store i8* %dest, i8** %dest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dest.addr, metadata !5191, metadata !DIExpression()), !dbg !5192
  store i32 %nbytes, i32* %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbytes.addr, metadata !5193, metadata !DIExpression()), !dbg !5194
  call void @llvm.dbg.declare(metadata i8** %src, metadata !5195, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !5197, metadata !DIExpression()), !dbg !5198
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5199
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !5200
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !5200
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !5198
  call void @llvm.dbg.declare(metadata i32* %read_ptr, metadata !5201, metadata !DIExpression()), !dbg !5202
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5203
  %buf_read_ptr = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %2, i32 0, i32 9, !dbg !5204
  %3 = load i32, i32* %buf_read_ptr, align 8, !dbg !5204
  store i32 %3, i32* %read_ptr, align 4, !dbg !5202
  br label %while.cond, !dbg !5205

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i32, i32* %nbytes.addr, align 4, !dbg !5206
  %tobool = icmp ne i32 %4, 0, !dbg !5205
  br i1 %tobool, label %while.body, label %while.end, !dbg !5205

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %block_size, metadata !5207, metadata !DIExpression()), !dbg !5209
  %5 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5210
  %prealloc_buf = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %5, i32 0, i32 0, !dbg !5211
  %6 = load i8*, i8** %prealloc_buf, align 8, !dbg !5211
  %7 = load i32, i32* %read_ptr, align 4, !dbg !5212
  %idx.ext = zext i32 %7 to i64, !dbg !5213
  %add.ptr = getelementptr i8, i8* %6, i64 %idx.ext, !dbg !5213
  store i8* %add.ptr, i8** %src, align 8, !dbg !5214
  %8 = load i32, i32* %nbytes.addr, align 4, !dbg !5215
  %9 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5217
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %9, i32 0, i32 1, !dbg !5218
  %10 = load i32, i32* %prealloc_bufsz, align 8, !dbg !5218
  %11 = load i32, i32* %read_ptr, align 4, !dbg !5219
  %sub = sub i32 %10, %11, !dbg !5220
  %cmp = icmp uge i32 %8, %sub, !dbg !5221
  br i1 %cmp, label %if.then, label %if.else, !dbg !5222

if.then:                                          ; preds = %while.body
  %12 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5223
  %prealloc_bufsz2 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %12, i32 0, i32 1, !dbg !5224
  %13 = load i32, i32* %prealloc_bufsz2, align 8, !dbg !5224
  %14 = load i32, i32* %read_ptr, align 4, !dbg !5225
  %sub3 = sub i32 %13, %14, !dbg !5226
  store i32 %sub3, i32* %block_size, align 4, !dbg !5227
  br label %if.end, !dbg !5228

if.else:                                          ; preds = %while.body
  %15 = load i32, i32* %nbytes.addr, align 4, !dbg !5229
  store i32 %15, i32* %block_size, align 4, !dbg !5230
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i8*, i8** %dest.addr, align 8, !dbg !5231
  %17 = load i8*, i8** %src, align 8, !dbg !5232
  %18 = load i32, i32* %block_size, align 4, !dbg !5233
  %conv = zext i32 %18 to i64, !dbg !5233
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 %17, i64 %conv, i1 false), !dbg !5234
  %19 = load i32, i32* %block_size, align 4, !dbg !5235
  %20 = load i32, i32* %nbytes.addr, align 4, !dbg !5236
  %sub4 = sub i32 %20, %19, !dbg !5236
  store i32 %sub4, i32* %nbytes.addr, align 4, !dbg !5236
  %21 = load i32, i32* %block_size, align 4, !dbg !5237
  %22 = load i8*, i8** %dest.addr, align 8, !dbg !5238
  %idx.ext5 = zext i32 %21 to i64, !dbg !5238
  %add.ptr6 = getelementptr i8, i8* %22, i64 %idx.ext5, !dbg !5238
  store i8* %add.ptr6, i8** %dest.addr, align 8, !dbg !5238
  store i32 0, i32* %read_ptr, align 4, !dbg !5239
  br label %while.cond, !dbg !5205, !llvm.loop !5240

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5243 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5247, metadata !DIExpression()), !dbg !5248
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5249
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #10, !dbg !5250
  ret void, !dbg !5251
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5252 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5255, metadata !DIExpression()), !dbg !5256
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5257, metadata !DIExpression()), !dbg !5258
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5259
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5260
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #10, !dbg !5261
  ret void, !dbg !5262
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5263 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5266, metadata !DIExpression()), !dbg !5272
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5277, metadata !DIExpression()), !dbg !5278
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5279, metadata !DIExpression()), !dbg !5281
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5282, metadata !DIExpression()), !dbg !5290
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5292, metadata !DIExpression()), !dbg !5293
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5294, metadata !DIExpression()), !dbg !5295
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5296, metadata !DIExpression()), !dbg !5297
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5298, metadata !DIExpression()), !dbg !5299
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5300, metadata !DIExpression()), !dbg !5301
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5302, metadata !DIExpression()), !dbg !5303
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5304, metadata !DIExpression()), !dbg !5305
  %0 = load i32, i32* %i.addr, align 4, !dbg !5306
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5307
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5308
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5309
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5309
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5310
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5311
  %conv.i.i = trunc i64 %5 to i32, !dbg !5311
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #11, !dbg !5312
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5313
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5313
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #11, !dbg !5313
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5314
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5315
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5281
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5281
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5281
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5281
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5281
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #7, !dbg !5281, !srcloc !5316
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5281
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5281
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5281
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5281
  store i32 %15, i32* %old, align 4, !dbg !5305
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5317
  %tobool = icmp ne i32* %16, null, !dbg !5317
  br i1 %tobool, label %if.then, label %if.end, !dbg !5319

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5320
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5321
  store i32 %17, i32* %18, align 4, !dbg !5322
  br label %if.end, !dbg !5323

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5324
  %tobool1 = icmp ne i32 %19, 0, !dbg !5324
  %lnot = xor i1 %tobool1, true, !dbg !5324
  %lnot2 = xor i1 %lnot, true, !dbg !5324
  %lnot3 = xor i1 %lnot2, true, !dbg !5324
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5324
  %conv = sext i32 %lnot.ext to i64, !dbg !5324
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5324
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5326

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5327
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #10, !dbg !5328
  br label %if.end17, !dbg !5328

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5329
  %cmp = icmp slt i32 %21, 0, !dbg !5329
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5329

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5329
  %23 = load i32, i32* %i.addr, align 4, !dbg !5329
  %add = add i32 %22, %23, !dbg !5329
  %cmp7 = icmp slt i32 %add, 0, !dbg !5329
  br label %lor.end, !dbg !5329

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5329
  %lnot11 = xor i1 %lnot9, true, !dbg !5329
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5329
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5329
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5329
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5331

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5332
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #10, !dbg !5333
  br label %if.end16, !dbg !5333

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5334
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5335 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5339, metadata !DIExpression()), !dbg !5340
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5341, metadata !DIExpression()), !dbg !5342
  ret i1 true, !dbg !5343
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5344 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5348, metadata !DIExpression()), !dbg !5349
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  ret void, !dbg !5354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !5355 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5360
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #10, !dbg !5361
  ret i1 %call, !dbg !5362
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5363 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5368, metadata !DIExpression()), !dbg !5369
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5370
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5371
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #10, !dbg !5372
  ret i1 %call, !dbg !5373
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5374 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5377, metadata !DIExpression()), !dbg !5379
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5383, metadata !DIExpression()), !dbg !5384
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5385, metadata !DIExpression()), !dbg !5387
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5282, metadata !DIExpression()), !dbg !5388
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5292, metadata !DIExpression()), !dbg !5390
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5391, metadata !DIExpression()), !dbg !5392
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5393, metadata !DIExpression()), !dbg !5394
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5395, metadata !DIExpression()), !dbg !5396
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5399, metadata !DIExpression()), !dbg !5400
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5401, metadata !DIExpression()), !dbg !5402
  %0 = load i32, i32* %i.addr, align 4, !dbg !5403
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5404
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5405
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5406
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5406
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5407
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5408
  %conv.i.i = trunc i64 %5 to i32, !dbg !5408
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #11, !dbg !5409
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5410
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5410
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #11, !dbg !5410
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5411
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5412
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5387
  %sub.i.i = sub i32 0, %10, !dbg !5387
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5387
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5387
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5387
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5387
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #7, !dbg !5387, !srcloc !5413
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5387
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5387
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5387
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5387
  store i32 %15, i32* %old, align 4, !dbg !5402
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5414
  %tobool = icmp ne i32* %16, null, !dbg !5414
  br i1 %tobool, label %if.then, label %if.end, !dbg !5416

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5417
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5418
  store i32 %17, i32* %18, align 4, !dbg !5419
  br label %if.end, !dbg !5420

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5421
  %20 = load i32, i32* %i.addr, align 4, !dbg !5423
  %cmp = icmp eq i32 %19, %20, !dbg !5424
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5425

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5426, !srcloc !5428
  store i1 true, i1* %retval, align 1, !dbg !5429
  br label %return, !dbg !5429

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5430
  %cmp3 = icmp slt i32 %21, 0, !dbg !5430
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5430

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5430
  %23 = load i32, i32* %i.addr, align 4, !dbg !5430
  %sub = sub i32 %22, %23, !dbg !5430
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5430
  br label %lor.end, !dbg !5430

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5430
  %lnot5 = xor i1 %lnot, true, !dbg !5430
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5430
  %conv = sext i32 %lnot.ext to i64, !dbg !5430
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5430
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5432

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5433
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #10, !dbg !5434
  br label %if.end8, !dbg !5434

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5435
  br label %return, !dbg !5435

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5436
  ret i1 %26, !dbg !5436
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_free_coherent(%struct.device* %dev, i64 %size, i8* %cpu_addr, i64 %dma_handle) #0 !dbg !5437 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %cpu_addr.addr = alloca i8*, align 8
  %dma_handle.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5441, metadata !DIExpression()), !dbg !5442
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5443, metadata !DIExpression()), !dbg !5444
  store i8* %cpu_addr, i8** %cpu_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cpu_addr.addr, metadata !5445, metadata !DIExpression()), !dbg !5446
  store i64 %dma_handle, i64* %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_handle.addr, metadata !5447, metadata !DIExpression()), !dbg !5448
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5449
  %1 = load i64, i64* %size.addr, align 8, !dbg !5450
  %2 = load i8*, i8** %cpu_addr.addr, align 8, !dbg !5451
  %3 = load i64, i64* %dma_handle.addr, align 8, !dbg !5452
  call void @dma_free_attrs(%struct.device* %0, i64 %1, i8* %2, i64 %3, i64 0) #10, !dbg !5453
  ret void, !dbg !5454
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #0 !dbg !5455 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !5459, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.declare(metadata i64* %y, metadata !5461, metadata !DIExpression()), !dbg !5462
  %0 = load i64, i64* %x.addr, align 8, !dbg !5463
  %sub = sub i64 %0, -2147483648, !dbg !5464
  store i64 %sub, i64* %y, align 8, !dbg !5462
  %1 = load i64, i64* %y, align 8, !dbg !5465
  %2 = load i64, i64* %x.addr, align 8, !dbg !5466
  %3 = load i64, i64* %y, align 8, !dbg !5467
  %cmp = icmp ugt i64 %2, %3, !dbg !5468
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5469

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !5470
  br label %cond.end, !dbg !5469

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !5471
  %sub1 = sub i64 -2147483648, %5, !dbg !5472
  br label %cond.end, !dbg !5469

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !5469
  %add = add i64 %1, %cond, !dbg !5473
  store i64 %add, i64* %x.addr, align 8, !dbg !5474
  %6 = load i64, i64* %x.addr, align 8, !dbg !5475
  ret i64 %6, !dbg !5476
}

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #4

; Function Attrs: noredzone
declare dso_local void @vfree(i8*) #4

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #4

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: noredzone
declare dso_local void @dma_free_attrs(%struct.device*, i64, i8*, i64, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !5477 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5483, metadata !DIExpression()), !dbg !5486
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5488, metadata !DIExpression()), !dbg !5489
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5490, metadata !DIExpression()), !dbg !5492
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5494, metadata !DIExpression()), !dbg !5495
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5496, metadata !DIExpression()), !dbg !5497
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5498, metadata !DIExpression()), !dbg !5499
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5500
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5501
  %div = sdiv i64 %1, 64, !dbg !5501
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5502
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5500
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5503
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5504
  %conv.i = trunc i64 %4 to i32, !dbg !5504
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !5505
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5506
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5506
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !5506
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5507
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5508
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5509
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #7, !dbg !5511
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5512

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5513
  %12 = bitcast i64* %11 to i8*, !dbg !5513
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5513
  %shr.i = ashr i64 %13, 3, !dbg !5513
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5513
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5515
  %and.i = and i64 %14, 7, !dbg !5515
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5515
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5515
  %neg.i = xor i32 %shl.i, -1, !dbg !5516
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #7, !dbg !5517, !srcloc !5518
  br label %arch_clear_bit.exit, !dbg !5519

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5520
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5522
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #7, !dbg !5523, !srcloc !5524
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5525
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5526 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5527, metadata !DIExpression()), !dbg !5529
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5530, metadata !DIExpression()), !dbg !5529
  %0 = load i64, i64* %__edi, align 8, !dbg !5529
  store i64 %0, i64* %__edi, align 8, !dbg !5529
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5531, metadata !DIExpression()), !dbg !5529
  %1 = load i64, i64* %__esi, align 8, !dbg !5529
  store i64 %1, i64* %__esi, align 8, !dbg !5529
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5532, metadata !DIExpression()), !dbg !5529
  %2 = load i64, i64* %__edx, align 8, !dbg !5529
  store i64 %2, i64* %__edx, align 8, !dbg !5529
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5533, metadata !DIExpression()), !dbg !5529
  %3 = load i64, i64* %__ecx, align 8, !dbg !5529
  store i64 %3, i64* %__ecx, align 8, !dbg !5529
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5534, metadata !DIExpression()), !dbg !5529
  %4 = load i64, i64* %__eax, align 8, !dbg !5529
  store i64 %4, i64* %__eax, align 8, !dbg !5529
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5529
  %6 = call i64 @llvm.read_register.i64(metadata !3781), !dbg !5535
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !5535, !srcloc !5538
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5535
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5535
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5535
  call void @llvm.write_register.i64(metadata !3781, i64 %asmresult1), !dbg !5535
  %8 = load i64, i64* %__eax, align 8, !dbg !5535
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5539, metadata !DIExpression()), !dbg !5541
  store i64 -1, i64* %__mask, align 8, !dbg !5541
  %9 = load i64, i64* %__mask, align 8, !dbg !5541
  store i64 %9, i64* %tmp, align 8, !dbg !5541
  %10 = load i64, i64* %tmp, align 8, !dbg !5541
  %and = and i64 %8, %10, !dbg !5535
  store i64 %and, i64* %__ret, align 8, !dbg !5535
  %11 = load i64, i64* %__ret, align 8, !dbg !5529
  store i64 %11, i64* %tmp2, align 8, !dbg !5542
  %12 = load i64, i64* %tmp2, align 8, !dbg !5529
  ret i64 %12, !dbg !5543
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5544 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5545, metadata !DIExpression()), !dbg !5547
  %0 = load i64, i64* %__edi, align 8, !dbg !5547
  store i64 %0, i64* %__edi, align 8, !dbg !5547
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5548, metadata !DIExpression()), !dbg !5547
  %1 = load i64, i64* %__esi, align 8, !dbg !5547
  store i64 %1, i64* %__esi, align 8, !dbg !5547
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5549, metadata !DIExpression()), !dbg !5547
  %2 = load i64, i64* %__edx, align 8, !dbg !5547
  store i64 %2, i64* %__edx, align 8, !dbg !5547
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5550, metadata !DIExpression()), !dbg !5547
  %3 = load i64, i64* %__ecx, align 8, !dbg !5547
  store i64 %3, i64* %__ecx, align 8, !dbg !5547
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5551, metadata !DIExpression()), !dbg !5547
  %4 = load i64, i64* %__eax, align 8, !dbg !5547
  store i64 %4, i64* %__eax, align 8, !dbg !5547
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5547
  %6 = call i64 @llvm.read_register.i64(metadata !3781), !dbg !5547
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !5547, !srcloc !5552
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5547
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5547
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5547
  call void @llvm.write_register.i64(metadata !3781, i64 %asmresult1), !dbg !5547
  ret void, !dbg !5553
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5554 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5557, metadata !DIExpression()), !dbg !5558
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5559, metadata !DIExpression()), !dbg !5561
  %0 = load i64, i64* %__edi, align 8, !dbg !5561
  store i64 %0, i64* %__edi, align 8, !dbg !5561
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5562, metadata !DIExpression()), !dbg !5561
  %1 = load i64, i64* %__esi, align 8, !dbg !5561
  store i64 %1, i64* %__esi, align 8, !dbg !5561
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5563, metadata !DIExpression()), !dbg !5561
  %2 = load i64, i64* %__edx, align 8, !dbg !5561
  store i64 %2, i64* %__edx, align 8, !dbg !5561
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5564, metadata !DIExpression()), !dbg !5561
  %3 = load i64, i64* %__ecx, align 8, !dbg !5561
  store i64 %3, i64* %__ecx, align 8, !dbg !5561
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5565, metadata !DIExpression()), !dbg !5561
  %4 = load i64, i64* %__eax, align 8, !dbg !5561
  store i64 %4, i64* %__eax, align 8, !dbg !5561
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5561
  %6 = call i64 @llvm.read_register.i64(metadata !3781), !dbg !5561
  %7 = load i64, i64* %f.addr, align 8, !dbg !5561
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !5561, !srcloc !5566
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5561
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5561
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5561
  call void @llvm.write_register.i64(metadata !3781, i64 %asmresult1), !dbg !5561
  ret void, !dbg !5567
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @refcount_read(%struct.refcount_struct* %r) #0 !dbg !5568 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5573, metadata !DIExpression()), !dbg !5579
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5583, metadata !DIExpression()), !dbg !5585
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5587, metadata !DIExpression()), !dbg !5588
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5589, metadata !DIExpression()), !dbg !5590
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5591, metadata !DIExpression()), !dbg !5592
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5593
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !5594
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5595
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !5595
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5596
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !5597
  %conv.i.i = trunc i64 %4 to i32, !dbg !5597
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #11, !dbg !5598
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5599
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5599
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #11, !dbg !5599
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5600
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5601
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !5601
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !5601
  ret i32 %9, !dbg !5602
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5603 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5604, metadata !DIExpression()), !dbg !5605
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5606, metadata !DIExpression()), !dbg !5607
  ret i1 true, !dbg !5608
}

; Function Attrs: noredzone
declare dso_local void @vunmap(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.comedi_buf_map* @comedi_buf_map_alloc(%struct.comedi_device* %dev, i32 %dma_dir, i32 %n_pages) #0 !dbg !5609 {
entry:
  %page.addr.i = alloca %struct.page*, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr.i, metadata !5612, metadata !DIExpression()), !dbg !5614
  %tmp.i = alloca %struct.page*, align 8
  %tmp1.i = alloca %struct.page*, align 8
  %retval = alloca %struct.comedi_buf_map*, align 8
  %dev.addr = alloca %struct.comedi_device*, align 8
  %dma_dir.addr = alloca i32, align 4
  %n_pages.addr = alloca i32, align 4
  %bm = alloca %struct.comedi_buf_map*, align 8
  %buf = alloca %struct.comedi_buf_page*, align 8
  %i = alloca i32, align 4
  %virt_addr = alloca i8*, align 8
  %dma_addr = alloca i64, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5621, metadata !DIExpression()), !dbg !5622
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !5623, metadata !DIExpression()), !dbg !5624
  store i32 %n_pages, i32* %n_pages.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n_pages.addr, metadata !5625, metadata !DIExpression()), !dbg !5626
  call void @llvm.dbg.declare(metadata %struct.comedi_buf_map** %bm, metadata !5627, metadata !DIExpression()), !dbg !5628
  call void @llvm.dbg.declare(metadata %struct.comedi_buf_page** %buf, metadata !5629, metadata !DIExpression()), !dbg !5630
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5631, metadata !DIExpression()), !dbg !5632
  %call = call i8* @kzalloc(i64 32, i32 3264) #10, !dbg !5633
  %0 = bitcast i8* %call to %struct.comedi_buf_map*, !dbg !5633
  store %struct.comedi_buf_map* %0, %struct.comedi_buf_map** %bm, align 8, !dbg !5634
  %1 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5635
  %tobool = icmp ne %struct.comedi_buf_map* %1, null, !dbg !5635
  br i1 %tobool, label %if.end, label %if.then, !dbg !5637

if.then:                                          ; preds = %entry
  store %struct.comedi_buf_map* null, %struct.comedi_buf_map** %retval, align 8, !dbg !5638
  br label %return, !dbg !5638

if.end:                                           ; preds = %entry
  %2 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5639
  %refcount = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %2, i32 0, i32 4, !dbg !5640
  call void @kref_init(%struct.kref* %refcount) #10, !dbg !5641
  %3 = load i32, i32* %dma_dir.addr, align 4, !dbg !5642
  %4 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5643
  %dma_dir1 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %4, i32 0, i32 3, !dbg !5644
  store i32 %3, i32* %dma_dir1, align 4, !dbg !5645
  %5 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5646
  %dma_dir2 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %5, i32 0, i32 3, !dbg !5648
  %6 = load i32, i32* %dma_dir2, align 4, !dbg !5648
  %cmp = icmp ne i32 %6, 3, !dbg !5649
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !5650

if.then3:                                         ; preds = %if.end
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5651
  %hw_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 7, !dbg !5653
  %8 = load %struct.device*, %struct.device** %hw_dev, align 8, !dbg !5653
  %call4 = call %struct.device* @get_device(%struct.device* %8) #10, !dbg !5654
  %9 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5655
  %dma_hw_dev = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %9, i32 0, i32 0, !dbg !5656
  store %struct.device* %call4, %struct.device** %dma_hw_dev, align 8, !dbg !5657
  br label %if.end5, !dbg !5658

if.end5:                                          ; preds = %if.then3, %if.end
  %10 = load i32, i32* %n_pages.addr, align 4, !dbg !5659
  %conv = zext i32 %10 to i64, !dbg !5659
  %mul = mul i64 16, %conv, !dbg !5660
  %call6 = call i8* @vzalloc(i64 %mul) #10, !dbg !5661
  %11 = bitcast i8* %call6 to %struct.comedi_buf_page*, !dbg !5661
  %12 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5662
  %page_list = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %12, i32 0, i32 1, !dbg !5663
  store %struct.comedi_buf_page* %11, %struct.comedi_buf_page** %page_list, align 8, !dbg !5664
  %13 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5665
  %page_list7 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %13, i32 0, i32 1, !dbg !5667
  %14 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %page_list7, align 8, !dbg !5667
  %tobool8 = icmp ne %struct.comedi_buf_page* %14, null, !dbg !5665
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5668

if.then9:                                         ; preds = %if.end5
  br label %err, !dbg !5669

if.end10:                                         ; preds = %if.end5
  %15 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5670
  %dma_dir11 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %15, i32 0, i32 3, !dbg !5671
  %16 = load i32, i32* %dma_dir11, align 4, !dbg !5671
  %cmp12 = icmp ne i32 %16, 3, !dbg !5672
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !5673

if.then14:                                        ; preds = %if.end10
  call void @llvm.dbg.declare(metadata i8** %virt_addr, metadata !5674, metadata !DIExpression()), !dbg !5676
  call void @llvm.dbg.declare(metadata i64* %dma_addr, metadata !5677, metadata !DIExpression()), !dbg !5678
  %17 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5679
  %dma_hw_dev15 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %17, i32 0, i32 0, !dbg !5680
  %18 = load %struct.device*, %struct.device** %dma_hw_dev15, align 8, !dbg !5680
  %19 = load i32, i32* %n_pages.addr, align 4, !dbg !5681
  %conv16 = zext i32 %19 to i64, !dbg !5681
  %mul17 = mul i64 4096, %conv16, !dbg !5682
  %call18 = call i8* @dma_alloc_coherent(%struct.device* %18, i64 %mul17, i64* %dma_addr, i32 3264) #10, !dbg !5683
  store i8* %call18, i8** %virt_addr, align 8, !dbg !5684
  %20 = load i8*, i8** %virt_addr, align 8, !dbg !5685
  %tobool19 = icmp ne i8* %20, null, !dbg !5685
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !5687

if.then20:                                        ; preds = %if.then14
  br label %err, !dbg !5688

if.end21:                                         ; preds = %if.then14
  store i32 0, i32* %i, align 4, !dbg !5689
  br label %for.cond, !dbg !5691

for.cond:                                         ; preds = %for.inc, %if.end21
  %21 = load i32, i32* %i, align 4, !dbg !5692
  %22 = load i32, i32* %n_pages.addr, align 4, !dbg !5694
  %cmp22 = icmp ult i32 %21, %22, !dbg !5695
  br i1 %cmp22, label %for.body, label %for.end, !dbg !5696

for.body:                                         ; preds = %for.cond
  %23 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5697
  %page_list24 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %23, i32 0, i32 1, !dbg !5699
  %24 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %page_list24, align 8, !dbg !5699
  %25 = load i32, i32* %i, align 4, !dbg !5700
  %idxprom = zext i32 %25 to i64, !dbg !5697
  %arrayidx = getelementptr %struct.comedi_buf_page, %struct.comedi_buf_page* %24, i64 %idxprom, !dbg !5697
  store %struct.comedi_buf_page* %arrayidx, %struct.comedi_buf_page** %buf, align 8, !dbg !5701
  %26 = load i8*, i8** %virt_addr, align 8, !dbg !5702
  %27 = load i32, i32* %i, align 4, !dbg !5703
  %shl = shl i32 %27, 12, !dbg !5704
  %idx.ext = zext i32 %shl to i64, !dbg !5705
  %add.ptr = getelementptr i8, i8* %26, i64 %idx.ext, !dbg !5705
  %28 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %buf, align 8, !dbg !5706
  %virt_addr25 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %28, i32 0, i32 0, !dbg !5707
  store i8* %add.ptr, i8** %virt_addr25, align 8, !dbg !5708
  %29 = load i64, i64* %dma_addr, align 8, !dbg !5709
  %30 = load i32, i32* %i, align 4, !dbg !5710
  %shl26 = shl i32 %30, 12, !dbg !5711
  %conv27 = zext i32 %shl26 to i64, !dbg !5712
  %add = add i64 %29, %conv27, !dbg !5713
  %31 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %buf, align 8, !dbg !5714
  %dma_addr28 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %31, i32 0, i32 1, !dbg !5715
  store i64 %add, i64* %dma_addr28, align 8, !dbg !5716
  br label %for.inc, !dbg !5717

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !dbg !5718
  %inc = add i32 %32, 1, !dbg !5718
  store i32 %inc, i32* %i, align 4, !dbg !5718
  br label %for.cond, !dbg !5719, !llvm.loop !5720

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %i, align 4, !dbg !5722
  %34 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5723
  %n_pages29 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %34, i32 0, i32 2, !dbg !5724
  store i32 %33, i32* %n_pages29, align 8, !dbg !5725
  br label %if.end54, !dbg !5726

if.else:                                          ; preds = %if.end10
  store i32 0, i32* %i, align 4, !dbg !5727
  br label %for.cond30, !dbg !5728

for.cond30:                                       ; preds = %for.inc46, %if.else
  %35 = load i32, i32* %i, align 4, !dbg !5729
  %36 = load i32, i32* %n_pages.addr, align 4, !dbg !5730
  %cmp31 = icmp ult i32 %35, %36, !dbg !5731
  br i1 %cmp31, label %for.body33, label %for.end48, !dbg !5732

for.body33:                                       ; preds = %for.cond30
  %37 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5733
  %page_list34 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %37, i32 0, i32 1, !dbg !5734
  %38 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %page_list34, align 8, !dbg !5734
  %39 = load i32, i32* %i, align 4, !dbg !5735
  %idxprom35 = zext i32 %39 to i64, !dbg !5733
  %arrayidx36 = getelementptr %struct.comedi_buf_page, %struct.comedi_buf_page* %38, i64 %idxprom35, !dbg !5733
  store %struct.comedi_buf_page* %arrayidx36, %struct.comedi_buf_page** %buf, align 8, !dbg !5736
  %call37 = call i64 @get_zeroed_page(i32 3264) #10, !dbg !5737
  %40 = inttoptr i64 %call37 to i8*, !dbg !5738
  %41 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %buf, align 8, !dbg !5739
  %virt_addr38 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %41, i32 0, i32 0, !dbg !5740
  store i8* %40, i8** %virt_addr38, align 8, !dbg !5741
  %42 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %buf, align 8, !dbg !5742
  %virt_addr39 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %42, i32 0, i32 0, !dbg !5744
  %43 = load i8*, i8** %virt_addr39, align 8, !dbg !5744
  %tobool40 = icmp ne i8* %43, null, !dbg !5742
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !5745

if.then41:                                        ; preds = %for.body33
  br label %for.end48, !dbg !5746

if.end42:                                         ; preds = %for.body33
  %44 = load i64, i64* @vmemmap_base, align 8, !dbg !5747
  %45 = inttoptr i64 %44 to %struct.page*, !dbg !5747
  %46 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %buf, align 8, !dbg !5747
  %virt_addr43 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %46, i32 0, i32 0, !dbg !5747
  %47 = load i8*, i8** %virt_addr43, align 8, !dbg !5747
  %48 = ptrtoint i8* %47 to i64, !dbg !5747
  %call44 = call i64 @__phys_addr_nodebug(i64 %48) #10, !dbg !5747
  %shr = lshr i64 %call44, 12, !dbg !5747
  %add.ptr45 = getelementptr %struct.page, %struct.page* %45, i64 %shr, !dbg !5747
  store %struct.page* %add.ptr45, %struct.page** %page.addr.i, align 8
  %49 = load %struct.page*, %struct.page** %page.addr.i, align 8, !dbg !5748
  store %struct.page* %49, %struct.page** %tmp1.i, align 8, !dbg !5748
  %50 = load %struct.page*, %struct.page** %tmp1.i, align 8, !dbg !5748
  store %struct.page* %50, %struct.page** %tmp.i, align 8, !dbg !5751
  %51 = load %struct.page*, %struct.page** %tmp.i, align 8, !dbg !5751
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 0, !dbg !5614
  call void @set_bit(i64 12, i64* %flags.i) #11, !dbg !5614
  br label %for.inc46, !dbg !5752

for.inc46:                                        ; preds = %if.end42
  %52 = load i32, i32* %i, align 4, !dbg !5753
  %inc47 = add i32 %52, 1, !dbg !5753
  store i32 %inc47, i32* %i, align 4, !dbg !5753
  br label %for.cond30, !dbg !5754, !llvm.loop !5755

for.end48:                                        ; preds = %if.then41, %for.cond30
  %53 = load i32, i32* %i, align 4, !dbg !5757
  %54 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5758
  %n_pages49 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %54, i32 0, i32 2, !dbg !5759
  store i32 %53, i32* %n_pages49, align 8, !dbg !5760
  %55 = load i32, i32* %i, align 4, !dbg !5761
  %56 = load i32, i32* %n_pages.addr, align 4, !dbg !5763
  %cmp50 = icmp ult i32 %55, %56, !dbg !5764
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !5765

if.then52:                                        ; preds = %for.end48
  br label %err, !dbg !5766

if.end53:                                         ; preds = %for.end48
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %for.end
  %57 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5767
  store %struct.comedi_buf_map* %57, %struct.comedi_buf_map** %retval, align 8, !dbg !5768
  br label %return, !dbg !5768

err:                                              ; preds = %if.then52, %if.then20, %if.then9
  call void @llvm.dbg.label(metadata !5769), !dbg !5770
  %58 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %bm, align 8, !dbg !5771
  %call55 = call i32 @comedi_buf_map_put(%struct.comedi_buf_map* %58) #10, !dbg !5772
  store %struct.comedi_buf_map* null, %struct.comedi_buf_map** %retval, align 8, !dbg !5773
  br label %return, !dbg !5773

return:                                           ; preds = %err, %if.end54, %if.then
  %59 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %retval, align 8, !dbg !5774
  ret %struct.comedi_buf_map* %59, !dbg !5774
}

; Function Attrs: noredzone
declare dso_local i8* @vmalloc(i64) #4

; Function Attrs: noredzone
declare dso_local i8* @vmap(%struct.page**, i32, i64, i64) #4

; Function Attrs: noredzone
declare dso_local i64 @cachemode2protval(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5775 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5778, metadata !DIExpression()), !dbg !5782
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5788, metadata !DIExpression()), !dbg !5789
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5790, metadata !DIExpression()), !dbg !5791
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5792, metadata !DIExpression()), !dbg !5793
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5794, metadata !DIExpression()), !dbg !5798
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5800, metadata !DIExpression()), !dbg !5804
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5806, metadata !DIExpression()), !dbg !5810
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5815, metadata !DIExpression()), !dbg !5816
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5817, metadata !DIExpression()), !dbg !5818
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5819, metadata !DIExpression()), !dbg !5820
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5821, metadata !DIExpression()), !dbg !5822
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5823, metadata !DIExpression()), !dbg !5824
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5825, metadata !DIExpression()), !dbg !5826
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5827, metadata !DIExpression()), !dbg !5828
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5829, metadata !DIExpression()), !dbg !5830
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5831, metadata !DIExpression()), !dbg !5832
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5833, metadata !DIExpression()), !dbg !5834
  %0 = load i64, i64* %size.addr, align 8, !dbg !5835
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5836
  %or = or i32 %1, 256, !dbg !5837
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5838
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !5839
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5840

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5841
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5842
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5843

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5844
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5845
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5846
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !5847
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5824
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5848
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5849
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5850
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5851
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5852
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5853
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !5854
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5854
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5854
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5854
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !5854
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5855
  br label %kmalloc.exit, !dbg !5855

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5856
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5857
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5857
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5859

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5860
  br label %kmalloc_index.exit.i, !dbg !5860

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5861
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5863
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5864

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5865
  br label %kmalloc_index.exit.i, !dbg !5865

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5866
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5868
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5869

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5870
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5871
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5872

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5873
  br label %kmalloc_index.exit.i, !dbg !5873

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5874
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5876
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5877

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5878
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5879
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5880

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5881
  br label %kmalloc_index.exit.i, !dbg !5881

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5882
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5884
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5885

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5886
  br label %kmalloc_index.exit.i, !dbg !5886

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5887
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5889
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5890

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5891
  br label %kmalloc_index.exit.i, !dbg !5891

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5892
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5894
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5895

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5896
  br label %kmalloc_index.exit.i, !dbg !5896

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5897
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5899
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5900

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5901
  br label %kmalloc_index.exit.i, !dbg !5901

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5902
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5904
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5905

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5906
  br label %kmalloc_index.exit.i, !dbg !5906

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5907
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5909
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5910

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5911
  br label %kmalloc_index.exit.i, !dbg !5911

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5912
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5914
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5915

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5916
  br label %kmalloc_index.exit.i, !dbg !5916

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5917
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5919
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5920

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5921
  br label %kmalloc_index.exit.i, !dbg !5921

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5922
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5924
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5925

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5926
  br label %kmalloc_index.exit.i, !dbg !5926

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5927
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5929
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5930

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5931
  br label %kmalloc_index.exit.i, !dbg !5931

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5932
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5934
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5935

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5936
  br label %kmalloc_index.exit.i, !dbg !5936

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5937
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5939
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5940

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5941
  br label %kmalloc_index.exit.i, !dbg !5941

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5942
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5944
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5945

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5946
  br label %kmalloc_index.exit.i, !dbg !5946

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5947
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5949
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5950

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5951
  br label %kmalloc_index.exit.i, !dbg !5951

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5952
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5954
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5955

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5956
  br label %kmalloc_index.exit.i, !dbg !5956

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5957
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5959
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5960

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5961
  br label %kmalloc_index.exit.i, !dbg !5961

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5962
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5964
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5965

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5966
  br label %kmalloc_index.exit.i, !dbg !5966

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5967
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5969
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5970

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5971
  br label %kmalloc_index.exit.i, !dbg !5971

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5972
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5974
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5975

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5976
  br label %kmalloc_index.exit.i, !dbg !5976

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5977
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5979
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5980

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5981
  br label %kmalloc_index.exit.i, !dbg !5981

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5982
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5984
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5985

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5986
  br label %kmalloc_index.exit.i, !dbg !5986

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5987
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5989
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5990

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5991
  br label %kmalloc_index.exit.i, !dbg !5991

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5992
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5994
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5995

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5996
  br label %kmalloc_index.exit.i, !dbg !5996

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5997
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5999
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6000

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6001
  br label %kmalloc_index.exit.i, !dbg !6001

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !6002, !srcloc !6005
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #7, !dbg !6006, !srcloc !6009
  unreachable, !dbg !6010

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6011
  store i32 %45, i32* %index.i, align 4, !dbg !6012
  %46 = load i32, i32* %index.i, align 4, !dbg !6013
  %tobool.i = icmp ne i32 %46, 0, !dbg !6013
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6015

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6016
  br label %kmalloc.exit, !dbg !6016

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6017
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6018
  %and.i.i = and i32 %48, 17, !dbg !6018
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6018
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6018
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6018
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6018
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6020

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6021
  br label %kmalloc_type.exit.i, !dbg !6021

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6022
  %and2.i.i = and i32 %49, 1, !dbg !6023
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6022
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6022
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6022
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6024
  br label %kmalloc_type.exit.i, !dbg !6024

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6025
  %idxprom.i = zext i32 %51 to i64, !dbg !6026
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6026
  %52 = load i32, i32* %index.i, align 4, !dbg !6027
  %idxprom6.i = zext i32 %52 to i64, !dbg !6026
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6026
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6026
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6028
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6029
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6030
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6031
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !6032
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6032
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6032
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6032
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !6032
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5793
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6033
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6034
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6035
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6036
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !6037
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6038
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6039
  store i8* %62, i8** %retval.i, align 8, !dbg !6040
  br label %kmalloc.exit, !dbg !6040

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6041
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6042
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !6043
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6043
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6043
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6043
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !6043
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6044
  br label %kmalloc.exit, !dbg !6044

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6045
  ret i8* %65, !dbg !6046
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #0 !dbg !6047 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !6050
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !6051
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #10, !dbg !6052
  ret void, !dbg !6053
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #4

; Function Attrs: noredzone
declare dso_local i8* @vzalloc(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dma_alloc_coherent(%struct.device* %dev, i64 %size, i64* %dma_handle, i32 %gfp) #0 !dbg !6054 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %dma_handle.addr = alloca i64*, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6060, metadata !DIExpression()), !dbg !6061
  store i64* %dma_handle, i64** %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dma_handle.addr, metadata !6062, metadata !DIExpression()), !dbg !6063
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !6064, metadata !DIExpression()), !dbg !6065
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6066
  %1 = load i64, i64* %size.addr, align 8, !dbg !6067
  %2 = load i64*, i64** %dma_handle.addr, align 8, !dbg !6068
  %3 = load i32, i32* %gfp.addr, align 4, !dbg !6069
  %4 = load i32, i32* %gfp.addr, align 4, !dbg !6070
  %and = and i32 %4, 8192, !dbg !6071
  %tobool = icmp ne i32 %and, 0, !dbg !6072
  %5 = zext i1 %tobool to i64, !dbg !6072
  %cond = select i1 %tobool, i64 256, i64 0, !dbg !6072
  %call = call i8* @dma_alloc_attrs(%struct.device* %0, i64 %1, i64* %2, i32 %3, i64 %cond) #10, !dbg !6073
  ret i8* %call, !dbg !6074
}

; Function Attrs: noredzone
declare dso_local i64 @get_zeroed_page(i32) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !6075 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6079, metadata !DIExpression()), !dbg !6083
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6085, metadata !DIExpression()), !dbg !6086
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6087, metadata !DIExpression()), !dbg !6088
  %0 = load i64, i64* %size.addr, align 8, !dbg !6089
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6091
  br i1 %1, label %if.then, label %if.end447, !dbg !6092

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6093
  %tobool = icmp ne i64 %2, 0, !dbg !6093
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6096

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6097
  br label %return, !dbg !6097

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6098
  %cmp = icmp ult i64 %3, 4096, !dbg !6100
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6101

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6102
  br label %return, !dbg !6102

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub = sub i64 %4, 1, !dbg !6103
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6103
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6103

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub4 = sub i64 %6, 1, !dbg !6103
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6103
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6103

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub6 = sub i64 %8, 1, !dbg !6103
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6103
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6103

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6103

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub9 = sub i64 %9, 1, !dbg !6103
  %and = and i64 %sub9, -9223372036854775808, !dbg !6103
  %tobool10 = icmp ne i64 %and, 0, !dbg !6103
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6103

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6103

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub13 = sub i64 %10, 1, !dbg !6103
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6103
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6103
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6103

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6103

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub18 = sub i64 %11, 1, !dbg !6103
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6103
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6103
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6103

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6103

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub23 = sub i64 %12, 1, !dbg !6103
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6103
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6103
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6103

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6103

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub28 = sub i64 %13, 1, !dbg !6103
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6103
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6103
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6103

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6103

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub33 = sub i64 %14, 1, !dbg !6103
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6103
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6103
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6103

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6103

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub38 = sub i64 %15, 1, !dbg !6103
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6103
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6103
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6103

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6103

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub43 = sub i64 %16, 1, !dbg !6103
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6103
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6103
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6103

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6103

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub48 = sub i64 %17, 1, !dbg !6103
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6103
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6103
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6103

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6103

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub53 = sub i64 %18, 1, !dbg !6103
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6103
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6103
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6103

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6103

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub58 = sub i64 %19, 1, !dbg !6103
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6103
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6103
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6103

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6103

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub63 = sub i64 %20, 1, !dbg !6103
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6103
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6103
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6103

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6103

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub68 = sub i64 %21, 1, !dbg !6103
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6103
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6103
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6103

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6103

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub73 = sub i64 %22, 1, !dbg !6103
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6103
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6103
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6103

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6103

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub78 = sub i64 %23, 1, !dbg !6103
  %and79 = and i64 %sub78, 562949953421312, !dbg !6103
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6103
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6103

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6103

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub83 = sub i64 %24, 1, !dbg !6103
  %and84 = and i64 %sub83, 281474976710656, !dbg !6103
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6103
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6103

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6103

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub88 = sub i64 %25, 1, !dbg !6103
  %and89 = and i64 %sub88, 140737488355328, !dbg !6103
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6103
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6103

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6103

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub93 = sub i64 %26, 1, !dbg !6103
  %and94 = and i64 %sub93, 70368744177664, !dbg !6103
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6103
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6103

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6103

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub98 = sub i64 %27, 1, !dbg !6103
  %and99 = and i64 %sub98, 35184372088832, !dbg !6103
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6103
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6103

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6103

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub103 = sub i64 %28, 1, !dbg !6103
  %and104 = and i64 %sub103, 17592186044416, !dbg !6103
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6103
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6103

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6103

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub108 = sub i64 %29, 1, !dbg !6103
  %and109 = and i64 %sub108, 8796093022208, !dbg !6103
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6103
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6103

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6103

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub113 = sub i64 %30, 1, !dbg !6103
  %and114 = and i64 %sub113, 4398046511104, !dbg !6103
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6103
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6103

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6103

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub118 = sub i64 %31, 1, !dbg !6103
  %and119 = and i64 %sub118, 2199023255552, !dbg !6103
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6103
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6103

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6103

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub123 = sub i64 %32, 1, !dbg !6103
  %and124 = and i64 %sub123, 1099511627776, !dbg !6103
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6103
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6103

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6103

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub128 = sub i64 %33, 1, !dbg !6103
  %and129 = and i64 %sub128, 549755813888, !dbg !6103
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6103
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6103

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6103

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub133 = sub i64 %34, 1, !dbg !6103
  %and134 = and i64 %sub133, 274877906944, !dbg !6103
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6103
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6103

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6103

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub138 = sub i64 %35, 1, !dbg !6103
  %and139 = and i64 %sub138, 137438953472, !dbg !6103
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6103
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6103

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6103

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub143 = sub i64 %36, 1, !dbg !6103
  %and144 = and i64 %sub143, 68719476736, !dbg !6103
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6103
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6103

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6103

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub148 = sub i64 %37, 1, !dbg !6103
  %and149 = and i64 %sub148, 34359738368, !dbg !6103
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6103
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6103

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6103

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub153 = sub i64 %38, 1, !dbg !6103
  %and154 = and i64 %sub153, 17179869184, !dbg !6103
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6103
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6103

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6103

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub158 = sub i64 %39, 1, !dbg !6103
  %and159 = and i64 %sub158, 8589934592, !dbg !6103
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6103
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6103

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6103

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub163 = sub i64 %40, 1, !dbg !6103
  %and164 = and i64 %sub163, 4294967296, !dbg !6103
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6103
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6103

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6103

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub168 = sub i64 %41, 1, !dbg !6103
  %and169 = and i64 %sub168, 2147483648, !dbg !6103
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6103
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6103

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6103

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub173 = sub i64 %42, 1, !dbg !6103
  %and174 = and i64 %sub173, 1073741824, !dbg !6103
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6103
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6103

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6103

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub178 = sub i64 %43, 1, !dbg !6103
  %and179 = and i64 %sub178, 536870912, !dbg !6103
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6103
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6103

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6103

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub183 = sub i64 %44, 1, !dbg !6103
  %and184 = and i64 %sub183, 268435456, !dbg !6103
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6103
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6103

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6103

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub188 = sub i64 %45, 1, !dbg !6103
  %and189 = and i64 %sub188, 134217728, !dbg !6103
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6103
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6103

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6103

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub193 = sub i64 %46, 1, !dbg !6103
  %and194 = and i64 %sub193, 67108864, !dbg !6103
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6103
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6103

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6103

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub198 = sub i64 %47, 1, !dbg !6103
  %and199 = and i64 %sub198, 33554432, !dbg !6103
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6103
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6103

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6103

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub203 = sub i64 %48, 1, !dbg !6103
  %and204 = and i64 %sub203, 16777216, !dbg !6103
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6103
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6103

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6103

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub208 = sub i64 %49, 1, !dbg !6103
  %and209 = and i64 %sub208, 8388608, !dbg !6103
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6103
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6103

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6103

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub213 = sub i64 %50, 1, !dbg !6103
  %and214 = and i64 %sub213, 4194304, !dbg !6103
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6103
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6103

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6103

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub218 = sub i64 %51, 1, !dbg !6103
  %and219 = and i64 %sub218, 2097152, !dbg !6103
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6103
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6103

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6103

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub223 = sub i64 %52, 1, !dbg !6103
  %and224 = and i64 %sub223, 1048576, !dbg !6103
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6103
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6103

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6103

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub228 = sub i64 %53, 1, !dbg !6103
  %and229 = and i64 %sub228, 524288, !dbg !6103
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6103
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6103

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6103

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub233 = sub i64 %54, 1, !dbg !6103
  %and234 = and i64 %sub233, 262144, !dbg !6103
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6103
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6103

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6103

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub238 = sub i64 %55, 1, !dbg !6103
  %and239 = and i64 %sub238, 131072, !dbg !6103
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6103
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6103

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6103

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub243 = sub i64 %56, 1, !dbg !6103
  %and244 = and i64 %sub243, 65536, !dbg !6103
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6103
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6103

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6103

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub248 = sub i64 %57, 1, !dbg !6103
  %and249 = and i64 %sub248, 32768, !dbg !6103
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6103
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6103

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6103

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub253 = sub i64 %58, 1, !dbg !6103
  %and254 = and i64 %sub253, 16384, !dbg !6103
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6103
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6103

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6103

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub258 = sub i64 %59, 1, !dbg !6103
  %and259 = and i64 %sub258, 8192, !dbg !6103
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6103
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6103

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6103

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub263 = sub i64 %60, 1, !dbg !6103
  %and264 = and i64 %sub263, 4096, !dbg !6103
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6103
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6103

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6103

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub268 = sub i64 %61, 1, !dbg !6103
  %and269 = and i64 %sub268, 2048, !dbg !6103
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6103
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6103

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6103

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub273 = sub i64 %62, 1, !dbg !6103
  %and274 = and i64 %sub273, 1024, !dbg !6103
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6103
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6103

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6103

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub278 = sub i64 %63, 1, !dbg !6103
  %and279 = and i64 %sub278, 512, !dbg !6103
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6103
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6103

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6103

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub283 = sub i64 %64, 1, !dbg !6103
  %and284 = and i64 %sub283, 256, !dbg !6103
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6103
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6103

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6103

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub288 = sub i64 %65, 1, !dbg !6103
  %and289 = and i64 %sub288, 128, !dbg !6103
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6103
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6103

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6103

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub293 = sub i64 %66, 1, !dbg !6103
  %and294 = and i64 %sub293, 64, !dbg !6103
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6103
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6103

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6103

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub298 = sub i64 %67, 1, !dbg !6103
  %and299 = and i64 %sub298, 32, !dbg !6103
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6103
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6103

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6103

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub303 = sub i64 %68, 1, !dbg !6103
  %and304 = and i64 %sub303, 16, !dbg !6103
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6103
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6103

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6103

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub308 = sub i64 %69, 1, !dbg !6103
  %and309 = and i64 %sub308, 8, !dbg !6103
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6103
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6103

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6103

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub313 = sub i64 %70, 1, !dbg !6103
  %and314 = and i64 %sub313, 4, !dbg !6103
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6103
  %71 = zext i1 %tobool315 to i64, !dbg !6103
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6103
  br label %cond.end, !dbg !6103

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6103
  br label %cond.end317, !dbg !6103

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6103
  br label %cond.end319, !dbg !6103

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6103
  br label %cond.end321, !dbg !6103

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6103
  br label %cond.end323, !dbg !6103

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6103
  br label %cond.end325, !dbg !6103

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6103
  br label %cond.end327, !dbg !6103

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6103
  br label %cond.end329, !dbg !6103

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6103
  br label %cond.end331, !dbg !6103

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6103
  br label %cond.end333, !dbg !6103

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6103
  br label %cond.end335, !dbg !6103

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6103
  br label %cond.end337, !dbg !6103

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6103
  br label %cond.end339, !dbg !6103

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6103
  br label %cond.end341, !dbg !6103

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6103
  br label %cond.end343, !dbg !6103

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6103
  br label %cond.end345, !dbg !6103

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6103
  br label %cond.end347, !dbg !6103

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6103
  br label %cond.end349, !dbg !6103

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6103
  br label %cond.end351, !dbg !6103

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6103
  br label %cond.end353, !dbg !6103

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6103
  br label %cond.end355, !dbg !6103

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6103
  br label %cond.end357, !dbg !6103

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6103
  br label %cond.end359, !dbg !6103

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6103
  br label %cond.end361, !dbg !6103

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6103
  br label %cond.end363, !dbg !6103

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6103
  br label %cond.end365, !dbg !6103

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6103
  br label %cond.end367, !dbg !6103

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6103
  br label %cond.end369, !dbg !6103

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6103
  br label %cond.end371, !dbg !6103

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6103
  br label %cond.end373, !dbg !6103

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6103
  br label %cond.end375, !dbg !6103

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6103
  br label %cond.end377, !dbg !6103

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6103
  br label %cond.end379, !dbg !6103

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6103
  br label %cond.end381, !dbg !6103

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6103
  br label %cond.end383, !dbg !6103

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6103
  br label %cond.end385, !dbg !6103

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6103
  br label %cond.end387, !dbg !6103

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6103
  br label %cond.end389, !dbg !6103

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6103
  br label %cond.end391, !dbg !6103

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6103
  br label %cond.end393, !dbg !6103

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6103
  br label %cond.end395, !dbg !6103

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6103
  br label %cond.end397, !dbg !6103

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6103
  br label %cond.end399, !dbg !6103

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6103
  br label %cond.end401, !dbg !6103

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6103
  br label %cond.end403, !dbg !6103

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6103
  br label %cond.end405, !dbg !6103

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6103
  br label %cond.end407, !dbg !6103

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6103
  br label %cond.end409, !dbg !6103

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6103
  br label %cond.end411, !dbg !6103

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6103
  br label %cond.end413, !dbg !6103

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6103
  br label %cond.end415, !dbg !6103

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6103
  br label %cond.end417, !dbg !6103

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6103
  br label %cond.end419, !dbg !6103

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6103
  br label %cond.end421, !dbg !6103

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6103
  br label %cond.end423, !dbg !6103

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6103
  br label %cond.end425, !dbg !6103

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6103
  br label %cond.end427, !dbg !6103

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6103
  br label %cond.end429, !dbg !6103

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6103
  br label %cond.end431, !dbg !6103

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6103
  br label %cond.end433, !dbg !6103

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6103
  br label %cond.end435, !dbg !6103

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6103
  br label %cond.end437, !dbg !6103

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6103
  br label %cond.end440, !dbg !6103

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6103

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6103
  br label %cond.end444, !dbg !6103

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6103
  %sub443 = sub i64 %72, 1, !dbg !6103
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !6103
  br label %cond.end444, !dbg !6103

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6103
  %sub446 = sub i32 %cond445, 12, !dbg !6104
  %add = add i32 %sub446, 1, !dbg !6105
  store i32 %add, i32* %retval, align 4, !dbg !6106
  br label %return, !dbg !6106

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6107
  %dec = add i64 %73, -1, !dbg !6107
  store i64 %dec, i64* %size.addr, align 8, !dbg !6107
  %74 = load i64, i64* %size.addr, align 8, !dbg !6108
  %shr = lshr i64 %74, 12, !dbg !6108
  store i64 %shr, i64* %size.addr, align 8, !dbg !6108
  %75 = load i64, i64* %size.addr, align 8, !dbg !6109
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6086
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6110
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6111
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !6110, !srcloc !6112
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6110
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6113
  %add.i = add i32 %79, 1, !dbg !6114
  store i32 %add.i, i32* %retval, align 4, !dbg !6115
  br label %return, !dbg !6115

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6116
  ret i32 %80, !dbg !6116
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !6117 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6079, metadata !DIExpression()), !dbg !6121
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6085, metadata !DIExpression()), !dbg !6123
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6124, metadata !DIExpression()), !dbg !6125
  %0 = load i64, i64* %n.addr, align 8, !dbg !6126
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6123
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6127
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6128
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !6127, !srcloc !6112
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6127
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6129
  %add.i = add i32 %4, 1, !dbg !6130
  %sub = sub i32 %add.i, 1, !dbg !6131
  ret i32 %sub, !dbg !6132
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6133 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6137, metadata !DIExpression()), !dbg !6138
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6139, metadata !DIExpression()), !dbg !6140
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6141, metadata !DIExpression()), !dbg !6142
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6143, metadata !DIExpression()), !dbg !6144
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6145
  ret i8* %0, !dbg !6146
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !6147 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6150, metadata !DIExpression()), !dbg !6154
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !6158, metadata !DIExpression()), !dbg !6159
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5490, metadata !DIExpression()), !dbg !6160
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5494, metadata !DIExpression()), !dbg !6162
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6163, metadata !DIExpression()), !dbg !6164
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !6165, metadata !DIExpression()), !dbg !6166
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6167, metadata !DIExpression()), !dbg !6168
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !6169, metadata !DIExpression()), !dbg !6170
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6171
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !6172
  %1 = load i32, i32* %n.addr, align 4, !dbg !6173
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6174
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !6174
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6175
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !6176
  %conv.i.i = trunc i64 %5 to i32, !dbg !6176
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #11, !dbg !6177
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6178
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6178
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #11, !dbg !6178
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6179
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !6180
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !6181
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6181
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !6181
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !6181
  ret void, !dbg !6183
}

; Function Attrs: noredzone
declare dso_local i8* @dma_alloc_attrs(%struct.device*, i64, i64*, i32, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !6184 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6185, metadata !DIExpression()), !dbg !6187
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6189, metadata !DIExpression()), !dbg !6190
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5490, metadata !DIExpression()), !dbg !6191
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5494, metadata !DIExpression()), !dbg !6193
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6194, metadata !DIExpression()), !dbg !6195
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6196, metadata !DIExpression()), !dbg !6197
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6198
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6199
  %div = sdiv i64 %1, 64, !dbg !6199
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6200
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6198
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6201
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6202
  %conv.i = trunc i64 %4 to i32, !dbg !6202
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !6203
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6204
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6204
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !6204
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6205
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6206
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !6207
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #7, !dbg !6209
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !6210

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !6211
  %12 = bitcast i64* %11 to i8*, !dbg !6211
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6211
  %shr.i = ashr i64 %13, 3, !dbg !6211
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !6211
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !6213
  %and.i = and i64 %14, 7, !dbg !6213
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !6213
  %shl.i = shl i32 1, %sh_prom.i, !dbg !6213
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #7, !dbg !6214, !srcloc !6215
  br label %arch_set_bit.exit, !dbg !6216

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !6217
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !6219
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #7, !dbg !6220, !srcloc !6221
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !6222
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_bytes_per_sample(%struct.comedi_subdevice* %s) #0 !dbg !6223 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6224, metadata !DIExpression()), !dbg !6225
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6226
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 4, !dbg !6227
  %1 = load i32, i32* %subdev_flags, align 4, !dbg !6227
  %and = and i32 %1, 268435456, !dbg !6228
  %tobool = icmp ne i32 %and, 0, !dbg !6226
  %2 = zext i1 %tobool to i64, !dbg !6226
  %cond = select i1 %tobool, i64 4, i64 2, !dbg !6226
  %conv = trunc i64 %cond to i32, !dbg !6226
  ret i32 %conv, !dbg !6229
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_sample_shift(%struct.comedi_subdevice* %s) #0 !dbg !6230 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6231, metadata !DIExpression()), !dbg !6232
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6233
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 4, !dbg !6234
  %1 = load i32, i32* %subdev_flags, align 4, !dbg !6234
  %and = and i32 %1, 268435456, !dbg !6235
  %tobool = icmp ne i32 %and, 0, !dbg !6233
  %2 = zext i1 %tobool to i64, !dbg !6233
  %cond = select i1 %tobool, i32 2, i32 1, !dbg !6233
  ret i32 %cond, !dbg !6236
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!3781}
!llvm.module.flags = !{!3782, !3783, !3784, !3785}
!llvm.ident = !{!3786}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !178, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/staging/comedi/comedi_buf.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !35, !41, !50, !58, !64, !70, !77, !85, !91, !98, !109, !117, !122, !161, !171}
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
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !92, line: 5, baseType: !5, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97}
!94 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_cb", file: !99, line: 383, baseType: !5, size: 32, elements: !100)
!99 = !DIFile(filename: "drivers/staging/comedi/comedidev.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108}
!101 = !DIEnumerator(name: "COMEDI_CB_EOS", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "COMEDI_CB_EOA", value: 2, isUnsigned: true)
!103 = !DIEnumerator(name: "COMEDI_CB_BLOCK", value: 4, isUnsigned: true)
!104 = !DIEnumerator(name: "COMEDI_CB_EOBUF", value: 8, isUnsigned: true)
!105 = !DIEnumerator(name: "COMEDI_CB_ERROR", value: 16, isUnsigned: true)
!106 = !DIEnumerator(name: "COMEDI_CB_OVERFLOW", value: 32, isUnsigned: true)
!107 = !DIEnumerator(name: "COMEDI_CB_ERROR_MASK", value: 48, isUnsigned: true)
!108 = !DIEnumerator(name: "COMEDI_CB_CANCEL_MASK", value: 50, isUnsigned: true)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !110, line: 119, baseType: !5, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!111 = !{!112, !113, !114, !115, !116}
!112 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!113 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!114 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!115 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!116 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 10, baseType: !5, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!121 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !123, line: 104, baseType: !5, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!125 = !DIEnumerator(name: "PG_locked", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "PG_referenced", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "PG_uptodate", value: 2, isUnsigned: true)
!128 = !DIEnumerator(name: "PG_dirty", value: 3, isUnsigned: true)
!129 = !DIEnumerator(name: "PG_lru", value: 4, isUnsigned: true)
!130 = !DIEnumerator(name: "PG_active", value: 5, isUnsigned: true)
!131 = !DIEnumerator(name: "PG_workingset", value: 6, isUnsigned: true)
!132 = !DIEnumerator(name: "PG_waiters", value: 7, isUnsigned: true)
!133 = !DIEnumerator(name: "PG_error", value: 8, isUnsigned: true)
!134 = !DIEnumerator(name: "PG_slab", value: 9, isUnsigned: true)
!135 = !DIEnumerator(name: "PG_owner_priv_1", value: 10, isUnsigned: true)
!136 = !DIEnumerator(name: "PG_arch_1", value: 11, isUnsigned: true)
!137 = !DIEnumerator(name: "PG_reserved", value: 12, isUnsigned: true)
!138 = !DIEnumerator(name: "PG_private", value: 13, isUnsigned: true)
!139 = !DIEnumerator(name: "PG_private_2", value: 14, isUnsigned: true)
!140 = !DIEnumerator(name: "PG_writeback", value: 15, isUnsigned: true)
!141 = !DIEnumerator(name: "PG_head", value: 16, isUnsigned: true)
!142 = !DIEnumerator(name: "PG_mappedtodisk", value: 17, isUnsigned: true)
!143 = !DIEnumerator(name: "PG_reclaim", value: 18, isUnsigned: true)
!144 = !DIEnumerator(name: "PG_swapbacked", value: 19, isUnsigned: true)
!145 = !DIEnumerator(name: "PG_unevictable", value: 20, isUnsigned: true)
!146 = !DIEnumerator(name: "PG_mlocked", value: 21, isUnsigned: true)
!147 = !DIEnumerator(name: "PG_uncached", value: 22, isUnsigned: true)
!148 = !DIEnumerator(name: "PG_arch_2", value: 23, isUnsigned: true)
!149 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 24, isUnsigned: true)
!150 = !DIEnumerator(name: "PG_checked", value: 10, isUnsigned: true)
!151 = !DIEnumerator(name: "PG_swapcache", value: 10, isUnsigned: true)
!152 = !DIEnumerator(name: "PG_fscache", value: 14, isUnsigned: true)
!153 = !DIEnumerator(name: "PG_pinned", value: 10, isUnsigned: true)
!154 = !DIEnumerator(name: "PG_savepinned", value: 3, isUnsigned: true)
!155 = !DIEnumerator(name: "PG_foreign", value: 10, isUnsigned: true)
!156 = !DIEnumerator(name: "PG_xen_remapped", value: 10, isUnsigned: true)
!157 = !DIEnumerator(name: "PG_slob_free", value: 13, isUnsigned: true)
!158 = !DIEnumerator(name: "PG_double_map", value: 6, isUnsigned: true)
!159 = !DIEnumerator(name: "PG_isolated", value: 18, isUnsigned: true)
!160 = !DIEnumerator(name: "PG_reported", value: 2, isUnsigned: true)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_cache_mode", file: !162, line: 143, baseType: !5, size: 32, elements: !163)
!162 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!163 = !{!164, !165, !166, !167, !168, !169, !170}
!164 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WB", value: 0, isUnsigned: true)
!165 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WC", value: 1, isUnsigned: true)
!166 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC_MINUS", value: 2, isUnsigned: true)
!167 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC", value: 3, isUnsigned: true)
!168 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WT", value: 4, isUnsigned: true)
!169 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WP", value: 5, isUnsigned: true)
!170 = !DIEnumerator(name: "_PAGE_CACHE_MODE_NUM", value: 8, isUnsigned: true)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !172, line: 305, baseType: !5, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!173 = !{!174, !175, !176, !177}
!174 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!175 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!176 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!177 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!178 = !{!179, !180, !181, !182, !701, !3774, !3776, !3777, !1039, !724, !3780}
!179 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!180 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !99, line: 249, size: 256, elements: !184)
!184 = !{!185, !3765, !3771, !3772, !3773}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !183, file: !99, line: 250, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !71, line: 461, size: 5568, elements: !188)
!188 = !{!189, !3337, !3338, !3341, !3342, !3393, !3466, !3467, !3468, !3469, !3470, !3479, !3584, !3597, !3600, !3601, !3605, !3607, !3608, !3609, !3613, !3619, !3620, !3623, !3627, !3717, !3718, !3719, !3720, !3721, !3753, !3754, !3755, !3758, !3761, !3762, !3763, !3764}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !187, file: !71, line: 462, baseType: !190, size: 512)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !191, line: 64, size: 512, elements: !192)
!191 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !197, !204, !206, !266, !3188, !3327, !3332, !3333, !3334, !3335, !3336}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !191, line: 65, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !190, file: !191, line: 66, baseType: !198, size: 128, offset: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !199, line: 178, size: 128, elements: !200)
!199 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!200 = !{!201, !203}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !199, line: 179, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !198, file: !199, line: 179, baseType: !202, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !190, file: !191, line: 67, baseType: !205, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !190, file: !191, line: 68, baseType: !207, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !191, line: 192, size: 704, elements: !209)
!209 = !{!210, !211, !227, !228}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !208, file: !191, line: 193, baseType: !198, size: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !208, file: !191, line: 194, baseType: !212, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !213, line: 83, baseType: !214)
!213 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !213, line: 71, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !214, file: !213, line: 72, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !214, file: !213, line: 72, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !217, file: !213, line: 73, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !213, line: 20, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !220, file: !213, line: 21, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !224, line: 25, baseType: !225)
!224 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 25, elements: !226)
!226 = !{}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !208, file: !191, line: 195, baseType: !190, size: 512, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !208, file: !191, line: 196, baseType: !229, size: 64, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !191, line: 156, size: 192, elements: !232)
!232 = !{!233, !238, !243}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !231, file: !191, line: 157, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!180, !207, !205}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !191, line: 158, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!194, !207, !205}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !231, file: !191, line: 159, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!180, !207, !205, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !191, line: 148, size: 20736, elements: !250)
!250 = !{!251, !256, !260, !261, !265}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !249, file: !191, line: 149, baseType: !252, size: 192)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 192, elements: !254)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!254 = !{!255}
!255 = !DISubrange(count: 3)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !249, file: !191, line: 150, baseType: !257, size: 4096, offset: 192)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 4096, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !249, file: !191, line: 151, baseType: !180, size: 32, offset: 4288)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !249, file: !191, line: 152, baseType: !262, size: 16384, offset: 4320)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 16384, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 2048)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !249, file: !191, line: 153, baseType: !180, size: 32, offset: 20704)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !190, file: !191, line: 69, baseType: !267, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !191, line: 138, size: 448, elements: !269)
!269 = !{!270, !274, !303, !305, !3150, !3178, !3182}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !268, file: !191, line: 139, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !205}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !268, file: !191, line: 140, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !278, line: 230, size: 128, elements: !279)
!278 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!279 = !{!280, !296}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !277, file: !278, line: 231, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !205, !289, !253}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !199, line: 60, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !286, line: 73, baseType: !287)
!286 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !286, line: 15, baseType: !288)
!288 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !278, line: 30, size: 128, elements: !291)
!291 = !{!292, !293}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !278, line: 31, baseType: !194, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !290, file: !278, line: 32, baseType: !294, size: 16, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !199, line: 19, baseType: !295)
!295 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !277, file: !278, line: 232, baseType: !297, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!284, !205, !289, !194, !300}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !199, line: 55, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !286, line: 72, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !286, line: 16, baseType: !179)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !268, file: !191, line: 141, baseType: !304, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !268, file: !191, line: 142, baseType: !306, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !278, line: 84, size: 320, elements: !310)
!310 = !{!311, !312, !316, !3147, !3148}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !309, file: !278, line: 85, baseType: !194, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !309, file: !278, line: 86, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!294, !205, !289, !180}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !309, file: !278, line: 88, baseType: !317, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!294, !205, !320, !180}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !278, line: 168, size: 448, elements: !322)
!322 = !{!323, !324, !325, !326, !3142, !3143}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !321, file: !278, line: 169, baseType: !290, size: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !321, file: !278, line: 170, baseType: !300, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !321, file: !278, line: 171, baseType: !181, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !321, file: !278, line: 172, baseType: !327, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!284, !330, !205, !320, !253, !509, !300}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 916, size: 1856, align: 32, elements: !332)
!332 = !{!333, !351, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3125, !3126, !3135, !3136, !3137, !3138, !3139, !3140, !3141}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !331, file: !42, line: 920, baseType: !334, size: 128)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !42, line: 917, size: 128, elements: !335)
!335 = !{!336, !342}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !334, file: !42, line: 918, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !338, line: 58, size: 64, elements: !339)
!338 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !338, line: 59, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !334, file: !42, line: 919, baseType: !343, size: 128, align: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !199, line: 216, size: 128, align: 64, elements: !344)
!344 = !{!345, !347}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !199, line: 217, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !343, file: !199, line: 218, baseType: !348, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !346}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !331, file: !42, line: 921, baseType: !352, size: 128, offset: 128)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !353, line: 8, size: 128, elements: !354)
!353 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355, !359}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !352, file: !353, line: 9, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !358, line: 18, flags: DIFlagFwdDecl)
!358 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!359 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !352, file: !353, line: 10, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !358, line: 89, size: 1536, elements: !362)
!362 = !{!363, !364, !374, !382, !383, !406, !3075, !3077, !3089, !3090, !3091, !3092, !3093, !3099, !3100, !3101}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !361, file: !358, line: 91, baseType: !5, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !361, file: !358, line: 92, baseType: !365, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !366, line: 277, baseType: !367)
!366 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !366, line: 277, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !367, file: !366, line: 277, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !366, line: 70, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !366, line: 65, size: 32, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !371, file: !366, line: 66, baseType: !5, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !361, file: !358, line: 93, baseType: !375, size: 128, offset: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !376, line: 38, size: 128, elements: !377)
!376 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378, !380}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !376, line: 39, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !375, file: !376, line: 39, baseType: !381, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !361, file: !358, line: 94, baseType: !360, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !361, file: !358, line: 95, baseType: !384, size: 128, offset: 256)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !358, line: 47, size: 128, elements: !385)
!385 = !{!386, !402}
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !358, line: 48, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !358, line: 48, size: 64, elements: !388)
!388 = !{!389, !398}
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !358, line: 49, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !387, file: !358, line: 49, size: 64, elements: !391)
!391 = !{!392, !397}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !390, file: !358, line: 50, baseType: !393, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !394, line: 21, baseType: !395)
!394 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !396, line: 27, baseType: !5)
!396 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!397 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !390, file: !358, line: 50, baseType: !393, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !387, file: !358, line: 52, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !394, line: 23, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !396, line: 31, baseType: !401)
!401 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !384, file: !358, line: 54, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !361, file: !358, line: 96, baseType: !407, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 610, size: 4224, elements: !409)
!409 = !{!410, !411, !412, !420, !427, !428, !576, !2786, !2787, !2788, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !3051, !3059, !3060, !3061, !3071, !3072, !3073, !3074}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !408, file: !42, line: 611, baseType: !294, size: 16)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !408, file: !42, line: 612, baseType: !295, size: 16, offset: 16)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !408, file: !42, line: 613, baseType: !413, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !414, line: 23, baseType: !415)
!414 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !414, line: 21, size: 32, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !415, file: !414, line: 22, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !199, line: 32, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !286, line: 49, baseType: !5)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !408, file: !42, line: 614, baseType: !421, size: 32, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !414, line: 28, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !414, line: 26, size: 32, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !422, file: !414, line: 27, baseType: !425, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !199, line: 33, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !286, line: 50, baseType: !5)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !408, file: !42, line: 615, baseType: !5, size: 32, offset: 96)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !408, file: !42, line: 622, baseType: !429, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1864, size: 1536, align: 512, elements: !432)
!432 = !{!433, !437, !450, !454, !460, !464, !470, !474, !478, !482, !486, !487, !493, !497, !523, !552, !556, !562, !567, !571, !572}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !431, file: !42, line: 1865, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!360, !407, !360, !5}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !431, file: !42, line: 1866, baseType: !438, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!194, !360, !407, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !443, line: 10, size: 128, elements: !444)
!443 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!444 = !{!445, !449}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !442, file: !443, line: 11, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !181}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !442, file: !443, line: 12, baseType: !181, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !431, file: !42, line: 1867, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!180, !407, !180}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !431, file: !42, line: 1868, baseType: !455, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!458, !407, !180}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 581, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !431, file: !42, line: 1870, baseType: !461, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!180, !360, !253, !180}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !431, file: !42, line: 1872, baseType: !465, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!180, !407, !360, !294, !468}
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !199, line: 30, baseType: !469)
!469 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !431, file: !42, line: 1873, baseType: !471, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!180, !360, !407, !360}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !431, file: !42, line: 1874, baseType: !475, size: 64, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!180, !407, !360}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !431, file: !42, line: 1875, baseType: !479, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!180, !407, !360, !194}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !431, file: !42, line: 1876, baseType: !483, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!180, !407, !360, !294}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !431, file: !42, line: 1877, baseType: !475, size: 64, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !431, file: !42, line: 1878, baseType: !488, size: 64, offset: 704)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!180, !407, !360, !294, !491}
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !199, line: 16, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !199, line: 13, baseType: !393)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !431, file: !42, line: 1879, baseType: !494, size: 64, offset: 768)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!180, !407, !360, !407, !360, !5}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !431, file: !42, line: 1881, baseType: !498, size: 64, offset: 832)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!180, !360, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 219, size: 640, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !512, !520, !521, !522}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !502, file: !42, line: 220, baseType: !5, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !502, file: !42, line: 221, baseType: !294, size: 16, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !502, file: !42, line: 222, baseType: !413, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !502, file: !42, line: 223, baseType: !421, size: 32, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !502, file: !42, line: 224, baseType: !509, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !199, line: 46, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !286, line: 88, baseType: !511)
!511 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !502, file: !42, line: 225, baseType: !513, size: 128, offset: 192)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !514, line: 13, size: 128, elements: !515)
!514 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!515 = !{!516, !519}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !513, file: !514, line: 14, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !514, line: 8, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !396, line: 30, baseType: !511)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !513, file: !514, line: 15, baseType: !288, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !502, file: !42, line: 226, baseType: !513, size: 128, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !502, file: !42, line: 227, baseType: !513, size: 128, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !502, file: !42, line: 234, baseType: !330, size: 64, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !431, file: !42, line: 1882, baseType: !524, size: 64, offset: 896)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!180, !527, !529, !393, !5}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !531, line: 22, size: 1152, elements: !532)
!531 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!532 = !{!533, !534, !535, !536, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !530, file: !531, line: 23, baseType: !393, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !530, file: !531, line: 24, baseType: !294, size: 16, offset: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !530, file: !531, line: 25, baseType: !5, size: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !530, file: !531, line: 26, baseType: !537, size: 32, offset: 96)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !199, line: 104, baseType: !393)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !530, file: !531, line: 27, baseType: !399, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !530, file: !531, line: 28, baseType: !399, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !530, file: !531, line: 37, baseType: !399, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !530, file: !531, line: 38, baseType: !491, size: 32, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !530, file: !531, line: 39, baseType: !491, size: 32, offset: 352)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !530, file: !531, line: 40, baseType: !413, size: 32, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !530, file: !531, line: 41, baseType: !421, size: 32, offset: 416)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !530, file: !531, line: 42, baseType: !509, size: 64, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !530, file: !531, line: 43, baseType: !513, size: 128, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !530, file: !531, line: 44, baseType: !513, size: 128, offset: 640)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !530, file: !531, line: 45, baseType: !513, size: 128, offset: 768)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !530, file: !531, line: 46, baseType: !513, size: 128, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !530, file: !531, line: 47, baseType: !399, size: 64, offset: 1024)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !530, file: !531, line: 48, baseType: !399, size: 64, offset: 1088)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !431, file: !42, line: 1883, baseType: !553, size: 64, offset: 960)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!284, !360, !253, !300}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !431, file: !42, line: 1884, baseType: !557, size: 64, offset: 1024)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!180, !407, !560, !399, !399}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !431, file: !42, line: 1886, baseType: !563, size: 64, offset: 1088)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!180, !407, !566, !180}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !431, file: !42, line: 1887, baseType: !568, size: 64, offset: 1152)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!180, !407, !360, !330, !5, !294}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !431, file: !42, line: 1890, baseType: !483, size: 64, offset: 1216)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !431, file: !42, line: 1891, baseType: !573, size: 64, offset: 1280)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!180, !407, !458, !180}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !408, file: !42, line: 623, baseType: !577, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1416, size: 9472, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !635, !2393, !2475, !2558, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2574, !2578, !2579, !2582, !2583, !2586, !2587, !2588, !2629, !2656, !2657, !2658, !2659, !2660, !2661, !2664, !2666, !2673, !2674, !2676, !2677, !2678, !2737, !2738, !2753, !2754, !2755, !2756, !2757, !2760, !2761, !2762, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !578, file: !42, line: 1417, baseType: !198, size: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !578, file: !42, line: 1418, baseType: !491, size: 32, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !578, file: !42, line: 1419, baseType: !405, size: 8, offset: 160)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !578, file: !42, line: 1420, baseType: !179, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !578, file: !42, line: 1421, baseType: !509, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !578, file: !42, line: 1422, baseType: !586, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2228, size: 576, elements: !588)
!588 = !{!589, !590, !591, !598, !602, !606, !610, !614, !615, !625, !628, !629, !630, !632, !633, !634}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !587, file: !42, line: 2229, baseType: !194, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !587, file: !42, line: 2230, baseType: !180, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !587, file: !42, line: 2238, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!180, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !597, line: 28, flags: DIFlagFwdDecl)
!597 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!598 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !587, file: !42, line: 2239, baseType: !599, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 70, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !587, file: !42, line: 2240, baseType: !603, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!360, !586, !180, !194, !181}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !587, file: !42, line: 2242, baseType: !607, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !577}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !587, file: !42, line: 2243, baseType: !611, size: 64, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !613, line: 76, flags: DIFlagFwdDecl)
!613 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !587, file: !42, line: 2244, baseType: !586, size: 64, offset: 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !587, file: !42, line: 2245, baseType: !616, size: 64, offset: 512)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !199, line: 182, size: 64, elements: !617)
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !616, file: !199, line: 183, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !199, line: 186, size: 128, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !620, file: !199, line: 187, baseType: !619, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !620, file: !199, line: 187, baseType: !624, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !587, file: !42, line: 2247, baseType: !626, offset: 576)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !627, line: 187, elements: !226)
!627 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !587, file: !42, line: 2248, baseType: !626, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !587, file: !42, line: 2249, baseType: !626, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !587, file: !42, line: 2250, baseType: !631, offset: 576)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, elements: !254)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !587, file: !42, line: 2252, baseType: !626, offset: 576)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !587, file: !42, line: 2253, baseType: !626, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !587, file: !42, line: 2254, baseType: !626, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !578, file: !42, line: 1423, baseType: !636, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 1935, size: 1472, elements: !639)
!639 = !{!640, !644, !648, !649, !653, !659, !663, !664, !665, !669, !673, !674, !675, !676, !682, !687, !688, !694, !695, !696, !697, !2377, !2392}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !638, file: !42, line: 1936, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!407, !577}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !638, file: !42, line: 1937, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !407}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !638, file: !42, line: 1938, baseType: !645, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !638, file: !42, line: 1940, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !407, !180}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !638, file: !42, line: 1941, baseType: !654, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!180, !407, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 40, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !638, file: !42, line: 1942, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!180, !407}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !638, file: !42, line: 1943, baseType: !645, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !638, file: !42, line: 1944, baseType: !607, size: 64, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !638, file: !42, line: 1945, baseType: !666, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!180, !577, !180}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !638, file: !42, line: 1946, baseType: !670, size: 64, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!180, !577}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !638, file: !42, line: 1947, baseType: !670, size: 64, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !638, file: !42, line: 1948, baseType: !670, size: 64, offset: 704)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !638, file: !42, line: 1949, baseType: !670, size: 64, offset: 768)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !638, file: !42, line: 1950, baseType: !677, size: 64, offset: 832)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!180, !360, !680}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 57, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !638, file: !42, line: 1951, baseType: !683, size: 64, offset: 896)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!180, !577, !686, !253}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !638, file: !42, line: 1952, baseType: !607, size: 64, offset: 960)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !638, file: !42, line: 1954, baseType: !689, size: 64, offset: 1024)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!180, !692, !360}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !162, line: 539, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !638, file: !42, line: 1955, baseType: !689, size: 64, offset: 1088)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !638, file: !42, line: 1956, baseType: !689, size: 64, offset: 1152)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !638, file: !42, line: 1957, baseType: !689, size: 64, offset: 1216)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !638, file: !42, line: 1963, baseType: !698, size: 64, offset: 1280)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!180, !577, !701, !724}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !703, line: 68, size: 512, align: 128, elements: !704)
!703 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!704 = !{!705, !706, !2369, !2376}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !703, line: 69, baseType: !179, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !703, line: 77, baseType: !707, size: 320, offset: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !702, file: !703, line: 77, size: 320, elements: !708)
!708 = !{!709, !897, !902, !930, !938, !944, !2300, !2368}
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !703, line: 78, baseType: !710, size: 320)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !707, file: !703, line: 78, size: 320, elements: !711)
!711 = !{!712, !713, !895, !896}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !710, file: !703, line: 84, baseType: !198, size: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !710, file: !703, line: 86, baseType: !714, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 451, size: 1216, align: 64, elements: !716)
!716 = !{!717, !718, !726, !727, !732, !747, !763, !764, !765, !766, !888, !889, !892, !893, !894}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !715, file: !42, line: 452, baseType: !407, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !715, file: !42, line: 453, baseType: !719, size: 128, offset: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !720, line: 292, size: 128, elements: !721)
!720 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !723, !725}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !719, file: !720, line: 293, baseType: !212)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !719, file: !720, line: 295, baseType: !724, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !199, line: 148, baseType: !5)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !719, file: !720, line: 296, baseType: !181, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !715, file: !42, line: 454, baseType: !724, size: 32, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !715, file: !42, line: 455, baseType: !728, size: 32, offset: 224)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !199, line: 168, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 166, size: 32, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !729, file: !199, line: 167, baseType: !180, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !715, file: !42, line: 460, baseType: !733, size: 128, offset: 256)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !734, line: 125, size: 128, elements: !735)
!734 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!735 = !{!736, !746}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !733, file: !734, line: 126, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !734, line: 31, size: 64, elements: !738)
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !737, file: !734, line: 32, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !734, line: 24, size: 192, align: 64, elements: !742)
!742 = !{!743, !744, !745}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !741, file: !734, line: 25, baseType: !179, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !741, file: !734, line: 26, baseType: !740, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !741, file: !734, line: 27, baseType: !740, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !733, file: !734, line: 127, baseType: !740, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !715, file: !42, line: 461, baseType: !748, size: 256, offset: 384)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !749, line: 35, size: 256, elements: !750)
!749 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!750 = !{!751, !759, !760, !762}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !748, file: !749, line: 36, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !753, line: 13, baseType: !754)
!753 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !199, line: 175, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 173, size: 64, elements: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !755, file: !199, line: 174, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !394, line: 22, baseType: !518)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !748, file: !749, line: 42, baseType: !752, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !748, file: !749, line: 46, baseType: !761, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !213, line: 29, baseType: !220)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !748, file: !749, line: 47, baseType: !198, size: 128, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !715, file: !42, line: 462, baseType: !179, size: 64, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !715, file: !42, line: 463, baseType: !179, size: 64, offset: 704)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !715, file: !42, line: 464, baseType: !179, size: 64, offset: 768)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !715, file: !42, line: 465, baseType: !767, size: 64, offset: 832)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 367, size: 1408, elements: !770)
!770 = !{!771, !775, !779, !783, !787, !791, !797, !803, !807, !812, !816, !820, !824, !852, !856, !862, !863, !864, !868, !873, !877, !884}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !769, file: !42, line: 368, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!180, !701, !657}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !769, file: !42, line: 369, baseType: !776, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!180, !330, !701}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !769, file: !42, line: 372, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!180, !714, !657}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !769, file: !42, line: 375, baseType: !784, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!180, !701}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !769, file: !42, line: 381, baseType: !788, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!180, !330, !714, !202, !5}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !769, file: !42, line: 383, baseType: !792, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !42, line: 290, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !769, file: !42, line: 385, baseType: !798, size: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!180, !330, !714, !509, !5, !5, !801, !802}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !769, file: !42, line: 388, baseType: !804, size: 64, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!180, !330, !714, !509, !5, !5, !701, !181}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !769, file: !42, line: 393, baseType: !808, size: 64, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!811, !714, !811}
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !199, line: 125, baseType: !399)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !769, file: !42, line: 394, baseType: !813, size: 64, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !701, !5, !5}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !769, file: !42, line: 395, baseType: !817, size: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!180, !701, !724}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !769, file: !42, line: 396, baseType: !821, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !701}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !769, file: !42, line: 397, baseType: !825, size: 64, offset: 768)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!284, !828, !850}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 320, size: 384, elements: !830)
!830 = !{!831, !832, !833, !837, !838, !839, !842, !843}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !829, file: !42, line: 321, baseType: !330, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !829, file: !42, line: 326, baseType: !509, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !829, file: !42, line: 327, baseType: !834, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !828, !288, !288}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !829, file: !42, line: 328, baseType: !181, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !829, file: !42, line: 329, baseType: !180, size: 32, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !829, file: !42, line: 330, baseType: !840, size: 16, offset: 288)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !394, line: 19, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !396, line: 24, baseType: !295)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !829, file: !42, line: 331, baseType: !840, size: 16, offset: 304)
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !829, file: !42, line: 332, baseType: !844, size: 64, offset: 320)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !829, file: !42, line: 332, size: 64, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !844, file: !42, line: 333, baseType: !5, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !844, file: !42, line: 334, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !42, line: 334, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !42, line: 64, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !769, file: !42, line: 402, baseType: !853, size: 64, offset: 832)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!180, !714, !701, !701, !3}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !769, file: !42, line: 404, baseType: !857, size: 64, offset: 896)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!468, !701, !860}
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !861, line: 305, baseType: !5)
!861 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!862 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !769, file: !42, line: 405, baseType: !821, size: 64, offset: 960)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !769, file: !42, line: 406, baseType: !784, size: 64, offset: 1024)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !769, file: !42, line: 407, baseType: !865, size: 64, offset: 1088)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!180, !701, !179, !179}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !769, file: !42, line: 409, baseType: !869, size: 64, offset: 1152)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !701, !872, !872}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !769, file: !42, line: 410, baseType: !874, size: 64, offset: 1216)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!180, !714, !701}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !769, file: !42, line: 413, baseType: !878, size: 64, offset: 1280)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!180, !881, !330, !883}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !769, file: !42, line: 415, baseType: !885, size: 64, offset: 1344)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !330}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !42, line: 466, baseType: !179, size: 64, offset: 896)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !715, file: !42, line: 467, baseType: !890, size: 32, offset: 960)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !891, line: 8, baseType: !393)
!891 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!892 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !715, file: !42, line: 468, baseType: !212, offset: 992)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !715, file: !42, line: 469, baseType: !198, size: 128, offset: 1024)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !715, file: !42, line: 470, baseType: !181, size: 64, offset: 1152)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !710, file: !703, line: 87, baseType: !179, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !710, file: !703, line: 94, baseType: !179, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !703, line: 96, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !707, file: !703, line: 96, size: 64, elements: !899)
!899 = !{!900}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !898, file: !703, line: 101, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !199, line: 143, baseType: !399)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !703, line: 103, baseType: !903, size: 320)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !707, file: !703, line: 103, size: 320, elements: !904)
!904 = !{!905, !915, !918, !919}
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !703, line: 104, baseType: !906, size: 128)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !903, file: !703, line: 104, size: 128, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !906, file: !703, line: 105, baseType: !198, size: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !703, line: 106, baseType: !910, size: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !703, line: 106, size: 128, elements: !911)
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !910, file: !703, line: 107, baseType: !701, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !910, file: !703, line: 109, baseType: !180, size: 32, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !910, file: !703, line: 110, baseType: !180, size: 32, offset: 96)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !903, file: !703, line: 117, baseType: !916, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !703, line: 117, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !903, file: !703, line: 119, baseType: !181, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !703, line: 120, baseType: !920, size: 64, offset: 256)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !903, file: !703, line: 120, size: 64, elements: !921)
!921 = !{!922, !923, !924}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !920, file: !703, line: 121, baseType: !181, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !920, file: !703, line: 122, baseType: !179, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !703, line: 123, baseType: !925, size: 32)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !920, file: !703, line: 123, size: 32, elements: !926)
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !925, file: !703, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !925, file: !703, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !925, file: !703, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!930 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !703, line: 130, baseType: !931, size: 192)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !707, file: !703, line: 130, size: 192, elements: !932)
!932 = !{!933, !934, !935, !936, !937}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !931, file: !703, line: 131, baseType: !179, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !931, file: !703, line: 134, baseType: !405, size: 8, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !931, file: !703, line: 135, baseType: !405, size: 8, offset: 72)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !931, file: !703, line: 136, baseType: !728, size: 32, offset: 96)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !931, file: !703, line: 137, baseType: !5, size: 32, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !703, line: 139, baseType: !939, size: 256)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !707, file: !703, line: 139, size: 256, elements: !940)
!940 = !{!941, !942, !943}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !939, file: !703, line: 140, baseType: !179, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !939, file: !703, line: 141, baseType: !728, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !939, file: !703, line: 143, baseType: !198, size: 128, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !703, line: 145, baseType: !945, size: 256)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !707, file: !703, line: 145, size: 256, elements: !946)
!946 = !{!947, !948, !950, !951, !2299}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !945, file: !703, line: 146, baseType: !179, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !945, file: !703, line: 147, baseType: !949, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !162, line: 509, baseType: !701)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !945, file: !703, line: 148, baseType: !179, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !703, line: 149, baseType: !952, size: 64, offset: 192)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !703, line: 149, size: 64, elements: !953)
!953 = !{!954, !2298}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !952, file: !703, line: 150, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !703, line: 388, size: 7296, elements: !957)
!957 = !{!958, !2294}
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !956, file: !703, line: 389, baseType: !959, size: 7296)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !956, file: !703, line: 389, size: 7296, elements: !960)
!960 = !{!961, !1079, !1080, !1081, !1085, !1086, !1087, !1088, !1089, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1130, !1138, !1141, !1171, !1172, !2278, !2279, !2282, !2283, !2284, !2287, !2288, !2289, !2292, !2293}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !959, file: !703, line: 390, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !703, line: 305, size: 1472, elements: !964)
!964 = !{!965, !966, !967, !968, !969, !970, !971, !972, !979, !980, !985, !986, !989, !1073, !1074, !1075, !1076, !1077}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !963, file: !703, line: 308, baseType: !179, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !963, file: !703, line: 309, baseType: !179, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !963, file: !703, line: 313, baseType: !962, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !963, file: !703, line: 313, baseType: !962, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !963, file: !703, line: 315, baseType: !741, size: 192, align: 64, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !963, file: !703, line: 323, baseType: !179, size: 64, offset: 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !963, file: !703, line: 327, baseType: !955, size: 64, offset: 512)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !963, file: !703, line: 333, baseType: !973, size: 64, offset: 576)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !162, line: 284, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !162, line: 284, size: 64, elements: !975)
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !974, file: !162, line: 284, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !978, line: 19, baseType: !179)
!978 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !963, file: !703, line: 334, baseType: !179, size: 64, offset: 640)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !963, file: !703, line: 343, baseType: !981, size: 256, offset: 704)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !703, line: 340, size: 256, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !981, file: !703, line: 341, baseType: !741, size: 192, align: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !981, file: !703, line: 342, baseType: !179, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !963, file: !703, line: 351, baseType: !198, size: 128, offset: 960)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !963, file: !703, line: 353, baseType: !987, size: 64, offset: 1088)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !703, line: 353, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !963, file: !703, line: 356, baseType: !990, size: 64, offset: 1152)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !12, line: 557, size: 832, elements: !993)
!993 = !{!994, !998, !999, !1003, !1007, !1047, !1051, !1055, !1059, !1060, !1061, !1065, !1069}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !992, file: !12, line: 558, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !962}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !992, file: !12, line: 559, baseType: !995, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !992, file: !12, line: 560, baseType: !1000, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!180, !962, !179}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !992, file: !12, line: 561, baseType: !1004, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!180, !962}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !992, file: !12, line: 562, baseType: !1008, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !703, line: 682, baseType: !5)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !12, line: 508, size: 768, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020, !1027, !1034, !1040, !1041, !1042, !1044, !1046}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1013, file: !12, line: 509, baseType: !962, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1013, file: !12, line: 510, baseType: !5, size: 32, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1013, file: !12, line: 511, baseType: !724, size: 32, offset: 96)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1013, file: !12, line: 512, baseType: !179, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1013, file: !12, line: 513, baseType: !179, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1013, file: !12, line: 514, baseType: !1021, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !162, line: 385, baseType: !1023)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 385, size: 64, elements: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1023, file: !162, line: 385, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !978, line: 15, baseType: !179)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1013, file: !12, line: 516, baseType: !1028, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !162, line: 359, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 359, size: 64, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1030, file: !162, line: 359, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !978, line: 16, baseType: !179)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1013, file: !12, line: 519, baseType: !1035, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !978, line: 21, baseType: !1036)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !978, line: 21, size: 64, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1036, file: !978, line: 21, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !978, line: 14, baseType: !179)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1013, file: !12, line: 521, baseType: !701, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1013, file: !12, line: 522, baseType: !701, size: 64, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1013, file: !12, line: 528, baseType: !1043, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1013, file: !12, line: 532, baseType: !1045, size: 64, offset: 640)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1013, file: !12, line: 536, baseType: !949, size: 64, offset: 704)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !992, file: !12, line: 563, baseType: !1048, size: 64, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!1011, !1012, !11}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !992, file: !12, line: 565, baseType: !1052, size: 64, offset: 384)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !1012, !179, !179}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !992, file: !12, line: 567, baseType: !1056, size: 64, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!179, !962}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !992, file: !12, line: 571, baseType: !1008, size: 64, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !992, file: !12, line: 574, baseType: !1008, size: 64, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !992, file: !12, line: 579, baseType: !1062, size: 64, offset: 640)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!180, !962, !179, !181, !180, !180}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !992, file: !12, line: 585, baseType: !1066, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!194, !962}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !992, file: !12, line: 615, baseType: !1070, size: 64, offset: 768)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!701, !962, !179}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !963, file: !703, line: 359, baseType: !179, size: 64, offset: 1216)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !963, file: !703, line: 361, baseType: !330, size: 64, offset: 1280)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !963, file: !703, line: 362, baseType: !181, size: 64, offset: 1344)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !963, file: !703, line: 365, baseType: !752, size: 64, offset: 1408)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !963, file: !703, line: 373, baseType: !1078, offset: 1472)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !703, line: 296, elements: !226)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !959, file: !703, line: 391, baseType: !737, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !959, file: !703, line: 392, baseType: !399, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !959, file: !703, line: 394, baseType: !1082, size: 64, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!179, !330, !179, !179, !179, !179}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !959, file: !703, line: 398, baseType: !179, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !959, file: !703, line: 399, baseType: !179, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !959, file: !703, line: 405, baseType: !179, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !959, file: !703, line: 406, baseType: !179, size: 64, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !959, file: !703, line: 407, baseType: !1090, size: 64, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !162, line: 286, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 286, size: 64, elements: !1093)
!1093 = !{!1094}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1092, file: !162, line: 286, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !978, line: 18, baseType: !179)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !959, file: !703, line: 416, baseType: !728, size: 32, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !959, file: !703, line: 428, baseType: !728, size: 32, offset: 608)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !959, file: !703, line: 437, baseType: !728, size: 32, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !959, file: !703, line: 447, baseType: !728, size: 32, offset: 672)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !959, file: !703, line: 450, baseType: !752, size: 64, offset: 704)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !959, file: !703, line: 452, baseType: !180, size: 32, offset: 768)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !959, file: !703, line: 454, baseType: !212, offset: 800)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !959, file: !703, line: 457, baseType: !748, size: 256, offset: 832)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !959, file: !703, line: 459, baseType: !198, size: 128, offset: 1088)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !959, file: !703, line: 466, baseType: !179, size: 64, offset: 1216)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !959, file: !703, line: 467, baseType: !179, size: 64, offset: 1280)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !959, file: !703, line: 469, baseType: !179, size: 64, offset: 1344)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !959, file: !703, line: 470, baseType: !179, size: 64, offset: 1408)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !959, file: !703, line: 471, baseType: !754, size: 64, offset: 1472)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !959, file: !703, line: 472, baseType: !179, size: 64, offset: 1536)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !959, file: !703, line: 473, baseType: !179, size: 64, offset: 1600)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !959, file: !703, line: 474, baseType: !179, size: 64, offset: 1664)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !959, file: !703, line: 475, baseType: !179, size: 64, offset: 1728)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !959, file: !703, line: 477, baseType: !212, offset: 1792)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !959, file: !703, line: 478, baseType: !179, size: 64, offset: 1792)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !959, file: !703, line: 478, baseType: !179, size: 64, offset: 1856)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !959, file: !703, line: 478, baseType: !179, size: 64, offset: 1920)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !959, file: !703, line: 478, baseType: !179, size: 64, offset: 1984)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !959, file: !703, line: 479, baseType: !179, size: 64, offset: 2048)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !959, file: !703, line: 479, baseType: !179, size: 64, offset: 2112)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !959, file: !703, line: 479, baseType: !179, size: 64, offset: 2176)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !959, file: !703, line: 480, baseType: !179, size: 64, offset: 2240)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !959, file: !703, line: 480, baseType: !179, size: 64, offset: 2304)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !959, file: !703, line: 480, baseType: !179, size: 64, offset: 2368)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !959, file: !703, line: 480, baseType: !179, size: 64, offset: 2432)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !959, file: !703, line: 482, baseType: !1127, size: 2816, offset: 2496)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 2816, elements: !1128)
!1128 = !{!1129}
!1129 = !DISubrange(count: 44)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !959, file: !703, line: 488, baseType: !1131, size: 256, offset: 5312)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1132, line: 60, size: 256, elements: !1133)
!1132 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1131, file: !1132, line: 61, baseType: !1135, size: 256)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 256, elements: !1136)
!1136 = !{!1137}
!1137 = !DISubrange(count: 4)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !959, file: !703, line: 490, baseType: !1139, size: 64, offset: 5568)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !703, line: 490, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !959, file: !703, line: 493, baseType: !1142, size: 896, offset: 5632)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1143, line: 53, baseType: !1144)
!1143 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1143, line: 13, size: 896, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1149, !1152, !1153, !1160, !1161, !1165, !1166, !1167}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1144, file: !1143, line: 18, baseType: !399, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1144, file: !1143, line: 28, baseType: !754, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1144, file: !1143, line: 31, baseType: !748, size: 256, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1144, file: !1143, line: 32, baseType: !1150, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1143, line: 32, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1144, file: !1143, line: 37, baseType: !295, size: 16, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1144, file: !1143, line: 40, baseType: !1154, size: 192, offset: 512)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1155, line: 53, size: 192, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1156 = !{!1157, !1158, !1159}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1154, file: !1155, line: 54, baseType: !752, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1154, file: !1155, line: 55, baseType: !212, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1154, file: !1155, line: 59, baseType: !198, size: 128, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1144, file: !1143, line: 41, baseType: !181, size: 64, offset: 704)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1144, file: !1143, line: 42, baseType: !1162, size: 64, offset: 768)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1164)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1143, line: 42, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1144, file: !1143, line: 44, baseType: !728, size: 32, offset: 832)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1144, file: !1143, line: 50, baseType: !840, size: 16, offset: 864)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1144, file: !1143, line: 51, baseType: !1168, size: 16, offset: 880)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !394, line: 18, baseType: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !396, line: 23, baseType: !1170)
!1170 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !959, file: !703, line: 495, baseType: !179, size: 64, offset: 6528)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !959, file: !703, line: 497, baseType: !1173, size: 64, offset: 6592)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !703, line: 381, size: 384, elements: !1175)
!1175 = !{!1176, !1177, !2277}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1174, file: !703, line: 382, baseType: !728, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1174, file: !703, line: 383, baseType: !1178, size: 128, offset: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !703, line: 376, size: 128, elements: !1179)
!1179 = !{!1180, !2275}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1178, file: !703, line: 377, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1183, line: 640, size: 48640, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1184 = !{!1185, !1191, !1193, !1194, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1210, !1228, !1239, !1324, !1325, !1326, !1337, !1338, !1340, !1341, !1342, !1343, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1422, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1460, !1462, !1463, !1464, !1476, !1477, !1478, !1479, !1480, !1481, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1505, !1510, !1694, !1695, !1696, !1697, !1701, !1704, !1707, !1710, !1713, !1716, !1817, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1863, !1864, !1865, !1866, !1867, !1872, !1873, !1874, !1877, !1878, !1881, !1884, !1887, !1890, !1933, !1936, !1937, !2016, !2017, !2020, !2021, !2024, !2025, !2026, !2030, !2031, !2032, !2045, !2046, !2047, !2057, !2062, !2065, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1182, file: !1183, line: 646, baseType: !1186, size: 128)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1187, line: 56, size: 128, elements: !1188)
!1187 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189, !1190}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1186, file: !1187, line: 57, baseType: !179, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1186, file: !1187, line: 58, baseType: !393, size: 32, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1182, file: !1183, line: 649, baseType: !1192, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !288)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1182, file: !1183, line: 657, baseType: !181, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1182, file: !1183, line: 658, baseType: !1195, size: 32, offset: 256)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !110, line: 113, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !110, line: 111, size: 32, elements: !1197)
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1196, file: !110, line: 112, baseType: !728, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1182, file: !1183, line: 660, baseType: !5, size: 32, offset: 288)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1182, file: !1183, line: 661, baseType: !5, size: 32, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1182, file: !1183, line: 684, baseType: !180, size: 32, offset: 352)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1182, file: !1183, line: 686, baseType: !180, size: 32, offset: 384)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1182, file: !1183, line: 687, baseType: !180, size: 32, offset: 416)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1182, file: !1183, line: 688, baseType: !180, size: 32, offset: 448)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1182, file: !1183, line: 689, baseType: !5, size: 32, offset: 480)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1182, file: !1183, line: 691, baseType: !1207, size: 64, offset: 512)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1209)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1183, line: 691, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1182, file: !1183, line: 692, baseType: !1211, size: 832, offset: 576)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1183, line: 451, size: 832, elements: !1212)
!1212 = !{!1213, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1211, file: !1183, line: 453, baseType: !1214, size: 128)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1183, line: 325, size: 128, elements: !1215)
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1214, file: !1183, line: 326, baseType: !179, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1214, file: !1183, line: 327, baseType: !393, size: 32, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1211, file: !1183, line: 454, baseType: !741, size: 192, align: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1211, file: !1183, line: 455, baseType: !198, size: 128, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1211, file: !1183, line: 456, baseType: !5, size: 32, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1211, file: !1183, line: 458, baseType: !399, size: 64, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1211, file: !1183, line: 459, baseType: !399, size: 64, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1211, file: !1183, line: 460, baseType: !399, size: 64, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1211, file: !1183, line: 461, baseType: !399, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1211, file: !1183, line: 463, baseType: !399, size: 64, offset: 768)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1211, file: !1183, line: 465, baseType: !1227, offset: 832)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1183, line: 415, elements: !226)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1182, file: !1183, line: 693, baseType: !1229, size: 384, offset: 1408)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1183, line: 489, size: 384, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1229, file: !1183, line: 490, baseType: !198, size: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1229, file: !1183, line: 491, baseType: !179, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1229, file: !1183, line: 492, baseType: !179, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1229, file: !1183, line: 493, baseType: !5, size: 32, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1229, file: !1183, line: 494, baseType: !295, size: 16, offset: 288)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1229, file: !1183, line: 495, baseType: !295, size: 16, offset: 304)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1229, file: !1183, line: 497, baseType: !1238, size: 64, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1182, file: !1183, line: 697, baseType: !1240, size: 1792, offset: 1792)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1183, line: 507, size: 1792, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1321, !1322}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1240, file: !1183, line: 508, baseType: !741, size: 192, align: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1240, file: !1183, line: 515, baseType: !399, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1240, file: !1183, line: 516, baseType: !399, size: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1240, file: !1183, line: 517, baseType: !399, size: 64, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1240, file: !1183, line: 518, baseType: !399, size: 64, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1240, file: !1183, line: 519, baseType: !399, size: 64, offset: 448)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1240, file: !1183, line: 526, baseType: !758, size: 64, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1240, file: !1183, line: 527, baseType: !399, size: 64, offset: 576)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1240, file: !1183, line: 528, baseType: !5, size: 32, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1240, file: !1183, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1240, file: !1183, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1240, file: !1183, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1240, file: !1183, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1240, file: !1183, line: 563, baseType: !1256, size: 512, offset: 704)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !1257)
!1257 = !{!1258, !1266, !1267, !1272, !1315, !1318, !1319, !1320}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1256, file: !18, line: 119, baseType: !1259, size: 256)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1260, line: 9, size: 256, elements: !1261)
!1260 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1259, file: !1260, line: 10, baseType: !741, size: 192, align: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1259, file: !1260, line: 11, baseType: !1264, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1265, line: 29, baseType: !758)
!1265 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1256, file: !18, line: 120, baseType: !1264, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1256, file: !18, line: 121, baseType: !1268, size: 64, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!17, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1256, file: !18, line: 122, baseType: !1273, size: 64, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !1275)
!1275 = !{!1276, !1296, !1297, !1300, !1305, !1306, !1310, !1314}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1274, file: !18, line: 160, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1278, file: !18, line: 215, baseType: !761)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1278, file: !18, line: 216, baseType: !5, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1278, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1278, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1278, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1278, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1278, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1278, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1278, file: !18, line: 233, baseType: !1264, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1278, file: !18, line: 234, baseType: !1271, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1278, file: !18, line: 235, baseType: !1264, size: 64, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1278, file: !18, line: 236, baseType: !1271, size: 64, offset: 320)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1278, file: !18, line: 237, baseType: !1293, size: 4096, offset: 512)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1274, size: 4096, elements: !1294)
!1294 = !{!1295}
!1295 = !DISubrange(count: 8)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1274, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1274, file: !18, line: 162, baseType: !1298, size: 32, offset: 96)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !199, line: 27, baseType: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !286, line: 96, baseType: !180)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1274, file: !18, line: 163, baseType: !1301, size: 32, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !366, line: 276, baseType: !1302)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !366, line: 276, size: 32, elements: !1303)
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1302, file: !366, line: 276, baseType: !370, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1274, file: !18, line: 164, baseType: !1271, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1274, file: !18, line: 165, baseType: !1307, size: 128, offset: 256)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1260, line: 14, size: 128, elements: !1308)
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1307, file: !1260, line: 15, baseType: !733, size: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1274, file: !18, line: 166, baseType: !1311, size: 64, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!1264}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1274, file: !18, line: 167, baseType: !1264, size: 64, offset: 448)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1256, file: !18, line: 123, baseType: !1316, size: 8, offset: 448)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !394, line: 17, baseType: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !396, line: 21, baseType: !405)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1256, file: !18, line: 124, baseType: !1316, size: 8, offset: 456)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1256, file: !18, line: 125, baseType: !1316, size: 8, offset: 464)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1256, file: !18, line: 126, baseType: !1316, size: 8, offset: 472)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1240, file: !1183, line: 572, baseType: !1256, size: 512, offset: 1216)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1240, file: !1183, line: 580, baseType: !1323, size: 64, offset: 1728)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1182, file: !1183, line: 721, baseType: !5, size: 32, offset: 3584)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1182, file: !1183, line: 722, baseType: !180, size: 32, offset: 3616)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1182, file: !1183, line: 723, baseType: !1327, size: 64, offset: 3648)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1330, line: 17, baseType: !1331)
!1330 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1330, line: 17, size: 64, elements: !1332)
!1332 = !{!1333}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1331, file: !1330, line: 17, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 64, elements: !1335)
!1335 = !{!1336}
!1336 = !DISubrange(count: 1)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1182, file: !1183, line: 724, baseType: !1329, size: 64, offset: 3712)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1182, file: !1183, line: 749, baseType: !1339, offset: 3776)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1183, line: 290, elements: !226)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1182, file: !1183, line: 751, baseType: !198, size: 128, offset: 3776)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1182, file: !1183, line: 757, baseType: !955, size: 64, offset: 3904)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1182, file: !1183, line: 758, baseType: !955, size: 64, offset: 3968)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1182, file: !1183, line: 761, baseType: !1344, size: 320, offset: 4032)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1132, line: 34, size: 320, elements: !1345)
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1344, file: !1132, line: 35, baseType: !399, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1344, file: !1132, line: 36, baseType: !1348, size: 256, offset: 64)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !962, size: 256, elements: !1136)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1182, file: !1183, line: 766, baseType: !180, size: 32, offset: 4352)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1182, file: !1183, line: 767, baseType: !180, size: 32, offset: 4384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1182, file: !1183, line: 768, baseType: !180, size: 32, offset: 4416)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1182, file: !1183, line: 770, baseType: !180, size: 32, offset: 4448)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1182, file: !1183, line: 772, baseType: !179, size: 64, offset: 4480)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1182, file: !1183, line: 775, baseType: !5, size: 32, offset: 4544)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1182, file: !1183, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1182, file: !1183, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1182, file: !1183, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1182, file: !1183, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1182, file: !1183, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1182, file: !1183, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1182, file: !1183, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1182, file: !1183, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1182, file: !1183, line: 831, baseType: !179, size: 64, offset: 4672)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1182, file: !1183, line: 833, baseType: !1365, size: 384, offset: 4736)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !23, line: 25, size: 384, elements: !1366)
!1366 = !{!1367, !1372}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1365, file: !23, line: 26, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!288, !1371}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !23, line: 27, baseType: !1373, size: 320, offset: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1365, file: !23, line: 27, size: 320, elements: !1374)
!1374 = !{!1375, !1385, !1412}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1373, file: !23, line: 36, baseType: !1376, size: 320)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1373, file: !23, line: 29, size: 320, elements: !1377)
!1377 = !{!1378, !1380, !1381, !1382, !1383, !1384}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1376, file: !23, line: 30, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1376, file: !23, line: 31, baseType: !393, size: 32, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1376, file: !23, line: 32, baseType: !393, size: 32, offset: 96)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1376, file: !23, line: 33, baseType: !393, size: 32, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1376, file: !23, line: 34, baseType: !399, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1376, file: !23, line: 35, baseType: !1379, size: 64, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1373, file: !23, line: 46, baseType: !1386, size: 192)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1373, file: !23, line: 38, size: 192, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1411}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1386, file: !23, line: 39, baseType: !1298, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1386, file: !23, line: 40, baseType: !22, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1386, file: !23, line: 41, baseType: !1391, size: 64, offset: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1386, file: !23, line: 41, size: 64, elements: !1392)
!1392 = !{!1393, !1401}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1391, file: !23, line: 42, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1396, line: 7, size: 128, elements: !1397)
!1396 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1397 = !{!1398, !1400}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1395, file: !1396, line: 8, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !286, line: 93, baseType: !511)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1395, file: !1396, line: 9, baseType: !511, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1391, file: !23, line: 43, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1404, line: 7, size: 64, elements: !1405)
!1404 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1405 = !{!1406, !1410}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1403, file: !1404, line: 8, baseType: !1407, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1404, line: 5, baseType: !1408)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !394, line: 20, baseType: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !396, line: 26, baseType: !180)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1403, file: !1404, line: 9, baseType: !1408, size: 32, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1386, file: !23, line: 45, baseType: !399, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1373, file: !23, line: 54, baseType: !1413, size: 256)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1373, file: !23, line: 48, size: 256, elements: !1414)
!1414 = !{!1415, !1418, !1419, !1420, !1421}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1413, file: !23, line: 49, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !23, line: 14, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1413, file: !23, line: 50, baseType: !180, size: 32, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1413, file: !23, line: 51, baseType: !180, size: 32, offset: 96)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1413, file: !23, line: 52, baseType: !179, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1413, file: !23, line: 53, baseType: !179, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1182, file: !1183, line: 835, baseType: !1423, size: 32, offset: 5120)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !199, line: 22, baseType: !1424)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !286, line: 28, baseType: !180)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1182, file: !1183, line: 836, baseType: !1423, size: 32, offset: 5152)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1182, file: !1183, line: 840, baseType: !179, size: 64, offset: 5184)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1182, file: !1183, line: 849, baseType: !1181, size: 64, offset: 5248)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1182, file: !1183, line: 852, baseType: !1181, size: 64, offset: 5312)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1182, file: !1183, line: 857, baseType: !198, size: 128, offset: 5376)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1182, file: !1183, line: 858, baseType: !198, size: 128, offset: 5504)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1182, file: !1183, line: 859, baseType: !1181, size: 64, offset: 5632)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1182, file: !1183, line: 867, baseType: !198, size: 128, offset: 5696)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1182, file: !1183, line: 868, baseType: !198, size: 128, offset: 5824)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1182, file: !1183, line: 871, baseType: !1435, size: 64, offset: 5952)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1437)
!1437 = !{!1438, !1439, !1440, !1441, !1443, !1444, !1451, !1452}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1436, file: !51, line: 61, baseType: !1195, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1436, file: !51, line: 62, baseType: !5, size: 32, offset: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1436, file: !51, line: 63, baseType: !212, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1436, file: !51, line: 65, baseType: !1442, size: 256, offset: 64)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 256, elements: !1136)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1436, file: !51, line: 66, baseType: !616, size: 64, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1436, file: !51, line: 68, baseType: !1445, size: 128, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1446, line: 40, baseType: !1447)
!1446 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1446, line: 36, size: 128, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1447, file: !1446, line: 37, baseType: !212)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1447, file: !1446, line: 38, baseType: !198, size: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1436, file: !51, line: 69, baseType: !343, size: 128, align: 64, offset: 512)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1436, file: !51, line: 70, baseType: !1453, size: 128, offset: 640)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1454, size: 128, elements: !1335)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1454, file: !51, line: 55, baseType: !180, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1454, file: !51, line: 56, baseType: !1458, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !51, line: 56, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1182, file: !1183, line: 872, baseType: !1461, size: 512, offset: 6016)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 512, elements: !1136)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1182, file: !1183, line: 873, baseType: !198, size: 128, offset: 6528)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1182, file: !1183, line: 874, baseType: !198, size: 128, offset: 6656)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1182, file: !1183, line: 876, baseType: !1465, size: 64, offset: 6784)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1467, line: 26, size: 192, elements: !1468)
!1467 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1466, file: !1467, line: 27, baseType: !5, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1466, file: !1467, line: 28, baseType: !1471, size: 128, offset: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1472, line: 43, size: 128, elements: !1473)
!1472 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1471, file: !1472, line: 44, baseType: !761)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1471, file: !1472, line: 45, baseType: !198, size: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1182, file: !1183, line: 879, baseType: !686, size: 64, offset: 6848)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1182, file: !1183, line: 882, baseType: !686, size: 64, offset: 6912)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1182, file: !1183, line: 884, baseType: !399, size: 64, offset: 6976)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1182, file: !1183, line: 885, baseType: !399, size: 64, offset: 7040)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1182, file: !1183, line: 890, baseType: !399, size: 64, offset: 7104)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1182, file: !1183, line: 891, baseType: !1482, size: 128, offset: 7168)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1183, line: 242, size: 128, elements: !1483)
!1483 = !{!1484, !1485, !1486}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1482, file: !1183, line: 244, baseType: !399, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1482, file: !1183, line: 245, baseType: !399, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1482, file: !1183, line: 246, baseType: !761, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1182, file: !1183, line: 900, baseType: !179, size: 64, offset: 7296)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1182, file: !1183, line: 901, baseType: !179, size: 64, offset: 7360)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1182, file: !1183, line: 904, baseType: !399, size: 64, offset: 7424)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1182, file: !1183, line: 907, baseType: !399, size: 64, offset: 7488)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1182, file: !1183, line: 910, baseType: !179, size: 64, offset: 7552)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1182, file: !1183, line: 911, baseType: !179, size: 64, offset: 7616)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1182, file: !1183, line: 914, baseType: !1494, size: 640, offset: 7680)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1495, line: 123, size: 640, elements: !1496)
!1495 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1496 = !{!1497, !1503, !1504}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1494, file: !1495, line: 124, baseType: !1498, size: 576)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1499, size: 576, elements: !254)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1495, line: 108, size: 192, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1499, file: !1495, line: 109, baseType: !399, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1499, file: !1495, line: 110, baseType: !1307, size: 128, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1494, file: !1495, line: 125, baseType: !5, size: 32, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1494, file: !1495, line: 126, baseType: !5, size: 32, offset: 608)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1182, file: !1183, line: 917, baseType: !1506, size: 192, offset: 8320)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1495, line: 134, size: 192, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1506, file: !1495, line: 135, baseType: !343, size: 128, align: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1506, file: !1495, line: 136, baseType: !5, size: 32, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1182, file: !1183, line: 923, baseType: !1511, size: 64, offset: 8512)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1514, line: 111, size: 1280, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1535, !1536, !1537, !1538, !1539, !1540, !1647, !1648, !1649, !1650, !1676, !1679, !1689}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1513, file: !1514, line: 112, baseType: !728, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1513, file: !1514, line: 120, baseType: !413, size: 32, offset: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1513, file: !1514, line: 121, baseType: !421, size: 32, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1513, file: !1514, line: 122, baseType: !413, size: 32, offset: 96)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1513, file: !1514, line: 123, baseType: !421, size: 32, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1513, file: !1514, line: 124, baseType: !413, size: 32, offset: 160)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1513, file: !1514, line: 125, baseType: !421, size: 32, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1513, file: !1514, line: 126, baseType: !413, size: 32, offset: 224)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1513, file: !1514, line: 127, baseType: !421, size: 32, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1513, file: !1514, line: 128, baseType: !5, size: 32, offset: 288)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1513, file: !1514, line: 129, baseType: !1527, size: 64, offset: 320)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1528, line: 26, baseType: !1529)
!1528 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1528, line: 24, size: 64, elements: !1530)
!1530 = !{!1531}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1529, file: !1528, line: 25, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 64, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: 2)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1513, file: !1514, line: 130, baseType: !1527, size: 64, offset: 384)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1513, file: !1514, line: 131, baseType: !1527, size: 64, offset: 448)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1513, file: !1514, line: 132, baseType: !1527, size: 64, offset: 512)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1513, file: !1514, line: 133, baseType: !1527, size: 64, offset: 576)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1513, file: !1514, line: 135, baseType: !405, size: 8, offset: 640)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1513, file: !1514, line: 137, baseType: !1541, size: 64, offset: 704)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1543, line: 189, size: 1664, elements: !1544)
!1543 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1544 = !{!1545, !1546, !1549, !1554, !1555, !1558, !1559, !1564, !1565, !1566, !1567, !1569, !1570, !1571, !1572, !1573, !1611, !1632}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1542, file: !1543, line: 190, baseType: !1195, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1542, file: !1543, line: 191, baseType: !1547, size: 32, offset: 32)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1543, line: 28, baseType: !1548)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !199, line: 98, baseType: !1408)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1543, line: 192, baseType: !1550, size: 192, offset: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !1543, line: 192, size: 192, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1550, file: !1543, line: 193, baseType: !198, size: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1550, file: !1543, line: 194, baseType: !741, size: 192, align: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1542, file: !1543, line: 199, baseType: !748, size: 256, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1542, file: !1543, line: 200, baseType: !1556, size: 64, offset: 512)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1543, line: 200, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1542, file: !1543, line: 201, baseType: !181, size: 64, offset: 576)
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1543, line: 202, baseType: !1560, size: 64, offset: 640)
!1560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !1543, line: 202, size: 64, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1560, file: !1543, line: 203, baseType: !517, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1560, file: !1543, line: 204, baseType: !517, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1542, file: !1543, line: 206, baseType: !517, size: 64, offset: 704)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1542, file: !1543, line: 207, baseType: !413, size: 32, offset: 768)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1542, file: !1543, line: 208, baseType: !421, size: 32, offset: 800)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1542, file: !1543, line: 209, baseType: !1568, size: 32, offset: 832)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1543, line: 31, baseType: !537)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1542, file: !1543, line: 210, baseType: !295, size: 16, offset: 864)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1542, file: !1543, line: 211, baseType: !295, size: 16, offset: 880)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1542, file: !1543, line: 215, baseType: !1170, size: 16, offset: 896)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1542, file: !1543, line: 222, baseType: !179, size: 64, offset: 960)
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1543, line: 239, baseType: !1574, size: 320, offset: 1024)
!1574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !1543, line: 239, size: 320, elements: !1575)
!1575 = !{!1576, !1603}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1574, file: !1543, line: 240, baseType: !1577, size: 320)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1543, line: 108, size: 320, elements: !1578)
!1578 = !{!1579, !1580, !1592, !1595, !1602}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1577, file: !1543, line: 110, baseType: !179, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !1543, line: 111, baseType: !1581, size: 64, offset: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1577, file: !1543, line: 111, size: 64, elements: !1582)
!1582 = !{!1583, !1591}
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !1543, line: 112, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1581, file: !1543, line: 112, size: 64, elements: !1585)
!1585 = !{!1586, !1587}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1584, file: !1543, line: 114, baseType: !840, size: 16)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1584, file: !1543, line: 115, baseType: !1588, size: 48, offset: 16)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 48, elements: !1589)
!1589 = !{!1590}
!1590 = !DISubrange(count: 6)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1581, file: !1543, line: 121, baseType: !179, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1577, file: !1543, line: 123, baseType: !1593, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1543, line: 96, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1577, file: !1543, line: 124, baseType: !1596, size: 64, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1543, line: 102, size: 192, elements: !1598)
!1598 = !{!1599, !1600, !1601}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1597, file: !1543, line: 103, baseType: !343, size: 128, align: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1597, file: !1543, line: 104, baseType: !1195, size: 32, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1597, file: !1543, line: 105, baseType: !468, size: 8, offset: 160)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1577, file: !1543, line: 125, baseType: !194, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1543, line: 241, baseType: !1604, size: 320)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1574, file: !1543, line: 241, size: 320, elements: !1605)
!1605 = !{!1606, !1607, !1608, !1609, !1610}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1604, file: !1543, line: 242, baseType: !179, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1604, file: !1543, line: 243, baseType: !179, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1604, file: !1543, line: 244, baseType: !1593, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1604, file: !1543, line: 245, baseType: !1596, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1604, file: !1543, line: 246, baseType: !253, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1543, line: 254, baseType: !1612, size: 256, offset: 1344)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !1543, line: 254, size: 256, elements: !1613)
!1613 = !{!1614, !1620}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1612, file: !1543, line: 255, baseType: !1615, size: 256)
!1615 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1543, line: 128, size: 256, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1615, file: !1543, line: 129, baseType: !181, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1615, file: !1543, line: 130, baseType: !1619, size: 256)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !1136)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !1543, line: 256, baseType: !1621, size: 256)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1612, file: !1543, line: 256, size: 256, elements: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1621, file: !1543, line: 258, baseType: !198, size: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1621, file: !1543, line: 259, baseType: !1625, size: 128, offset: 128)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1626, line: 22, size: 128, elements: !1627)
!1626 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1627 = !{!1628, !1631}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1625, file: !1626, line: 23, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1626, line: 23, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1625, file: !1626, line: 24, baseType: !179, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1542, file: !1543, line: 274, baseType: !1633, size: 64, offset: 1600)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1543, line: 170, size: 192, elements: !1635)
!1635 = !{!1636, !1645, !1646}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1634, file: !1543, line: 171, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1543, line: 165, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!180, !1541, !1641, !1643, !1541}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1615)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1634, file: !1543, line: 172, baseType: !1541, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1634, file: !1543, line: 173, baseType: !1593, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1513, file: !1514, line: 138, baseType: !1541, size: 64, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1513, file: !1514, line: 139, baseType: !1541, size: 64, offset: 832)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1513, file: !1514, line: 140, baseType: !1541, size: 64, offset: 896)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1513, file: !1514, line: 145, baseType: !1651, size: 64, offset: 960)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1653, line: 13, size: 896, elements: !1654)
!1653 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1652, file: !1653, line: 14, baseType: !1195, size: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1652, file: !1653, line: 15, baseType: !728, size: 32, offset: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1652, file: !1653, line: 16, baseType: !728, size: 32, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1652, file: !1653, line: 21, baseType: !752, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1652, file: !1653, line: 27, baseType: !179, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1652, file: !1653, line: 28, baseType: !179, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1652, file: !1653, line: 29, baseType: !752, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1652, file: !1653, line: 32, baseType: !620, size: 128, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1652, file: !1653, line: 33, baseType: !413, size: 32, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1652, file: !1653, line: 37, baseType: !752, size: 64, offset: 576)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1652, file: !1653, line: 44, baseType: !1666, size: 256, offset: 640)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1667, line: 15, size: 256, elements: !1668)
!1667 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1668 = !{!1669, !1670, !1671, !1672, !1673, !1674, !1675}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1666, file: !1667, line: 16, baseType: !761)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1666, file: !1667, line: 18, baseType: !180, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1666, file: !1667, line: 19, baseType: !180, size: 32, offset: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1666, file: !1667, line: 20, baseType: !180, size: 32, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1666, file: !1667, line: 21, baseType: !180, size: 32, offset: 96)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1666, file: !1667, line: 22, baseType: !179, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1666, file: !1667, line: 23, baseType: !179, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1513, file: !1514, line: 146, baseType: !1677, size: 64, offset: 1024)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !703, line: 516, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1513, file: !1514, line: 147, baseType: !1680, size: 64, offset: 1088)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1514, line: 25, size: 64, elements: !1682)
!1682 = !{!1683, !1684, !1685}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1681, file: !1514, line: 26, baseType: !728, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1681, file: !1514, line: 27, baseType: !180, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1681, file: !1514, line: 28, baseType: !1686, offset: 64)
!1686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, elements: !1687)
!1687 = !{!1688}
!1688 = !DISubrange(count: 0)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1513, file: !1514, line: 149, baseType: !1690, size: 128, offset: 1152)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1513, file: !1514, line: 149, size: 128, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1690, file: !1514, line: 150, baseType: !180, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1690, file: !1514, line: 151, baseType: !343, size: 128, align: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1182, file: !1183, line: 926, baseType: !1511, size: 64, offset: 8576)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1182, file: !1183, line: 929, baseType: !1511, size: 64, offset: 8640)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1182, file: !1183, line: 933, baseType: !1541, size: 64, offset: 8704)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1182, file: !1183, line: 943, baseType: !1698, size: 128, offset: 8768)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 128, elements: !1699)
!1699 = !{!1700}
!1700 = !DISubrange(count: 16)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1182, file: !1183, line: 945, baseType: !1702, size: 64, offset: 8896)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1183, line: 49, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1182, file: !1183, line: 956, baseType: !1705, size: 64, offset: 8960)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1183, line: 45, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1182, file: !1183, line: 959, baseType: !1708, size: 64, offset: 9024)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1183, line: 959, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1182, file: !1183, line: 962, baseType: !1711, size: 64, offset: 9088)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1183, line: 66, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1182, file: !1183, line: 966, baseType: !1714, size: 64, offset: 9152)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1183, line: 50, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1182, file: !1183, line: 969, baseType: !1717, size: 64, offset: 9216)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1719, line: 82, size: 7296, elements: !1720)
!1719 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726, !1727, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1756, !1765, !1766, !1768, !1769, !1770, !1773, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1803, !1804, !1811, !1812, !1813, !1814, !1815, !1816}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1718, file: !1719, line: 83, baseType: !1195, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1718, file: !1719, line: 84, baseType: !728, size: 32, offset: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1718, file: !1719, line: 85, baseType: !180, size: 32, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1718, file: !1719, line: 86, baseType: !198, size: 128, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1718, file: !1719, line: 88, baseType: !1445, size: 128, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1718, file: !1719, line: 91, baseType: !1181, size: 64, offset: 384)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1718, file: !1719, line: 94, baseType: !1728, size: 192, offset: 448)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1729, line: 30, size: 192, elements: !1730)
!1729 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1728, file: !1729, line: 31, baseType: !198, size: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1728, file: !1729, line: 32, baseType: !1733, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1734, line: 25, baseType: !1735)
!1734 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1734, line: 23, size: 64, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1735, file: !1734, line: 24, baseType: !1334, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1718, file: !1719, line: 97, baseType: !616, size: 64, offset: 640)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1718, file: !1719, line: 100, baseType: !180, size: 32, offset: 704)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1718, file: !1719, line: 106, baseType: !180, size: 32, offset: 736)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1718, file: !1719, line: 107, baseType: !1181, size: 64, offset: 768)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1718, file: !1719, line: 110, baseType: !180, size: 32, offset: 832)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1718, file: !1719, line: 111, baseType: !5, size: 32, offset: 864)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1718, file: !1719, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1718, file: !1719, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1718, file: !1719, line: 128, baseType: !180, size: 32, offset: 928)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1718, file: !1719, line: 129, baseType: !198, size: 128, offset: 960)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1718, file: !1719, line: 132, baseType: !1256, size: 512, offset: 1088)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1718, file: !1719, line: 133, baseType: !1264, size: 64, offset: 1600)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1718, file: !1719, line: 140, baseType: !1751, size: 256, offset: 1664)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1752, size: 256, elements: !1533)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1719, line: 38, size: 128, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1752, file: !1719, line: 39, baseType: !399, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1752, file: !1719, line: 40, baseType: !399, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1718, file: !1719, line: 146, baseType: !1757, size: 192, offset: 1920)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1719, line: 66, size: 192, elements: !1758)
!1758 = !{!1759}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1757, file: !1719, line: 67, baseType: !1760, size: 192)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1719, line: 47, size: 192, elements: !1761)
!1761 = !{!1762, !1763, !1764}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1760, file: !1719, line: 48, baseType: !754, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1760, file: !1719, line: 49, baseType: !754, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1760, file: !1719, line: 50, baseType: !754, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1718, file: !1719, line: 150, baseType: !1494, size: 640, offset: 2112)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1718, file: !1719, line: 153, baseType: !1767, size: 256, offset: 2752)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1435, size: 256, elements: !1136)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1718, file: !1719, line: 159, baseType: !1435, size: 64, offset: 3008)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1718, file: !1719, line: 162, baseType: !180, size: 32, offset: 3072)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1718, file: !1719, line: 164, baseType: !1771, size: 64, offset: 3136)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1719, line: 164, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1718, file: !1719, line: 175, baseType: !1774, size: 32, offset: 3200)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !366, line: 805, baseType: !1775)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 798, size: 32, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1775, file: !366, line: 803, baseType: !365, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1775, file: !366, line: 804, baseType: !212, offset: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1718, file: !1719, line: 176, baseType: !399, size: 64, offset: 3264)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1718, file: !1719, line: 176, baseType: !399, size: 64, offset: 3328)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1718, file: !1719, line: 176, baseType: !399, size: 64, offset: 3392)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1718, file: !1719, line: 176, baseType: !399, size: 64, offset: 3456)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1718, file: !1719, line: 177, baseType: !399, size: 64, offset: 3520)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1718, file: !1719, line: 178, baseType: !399, size: 64, offset: 3584)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1718, file: !1719, line: 179, baseType: !1482, size: 128, offset: 3648)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1718, file: !1719, line: 180, baseType: !179, size: 64, offset: 3776)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1718, file: !1719, line: 180, baseType: !179, size: 64, offset: 3840)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1718, file: !1719, line: 180, baseType: !179, size: 64, offset: 3904)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1718, file: !1719, line: 180, baseType: !179, size: 64, offset: 3968)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1718, file: !1719, line: 181, baseType: !179, size: 64, offset: 4032)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1718, file: !1719, line: 181, baseType: !179, size: 64, offset: 4096)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1718, file: !1719, line: 181, baseType: !179, size: 64, offset: 4160)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1718, file: !1719, line: 181, baseType: !179, size: 64, offset: 4224)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1718, file: !1719, line: 182, baseType: !179, size: 64, offset: 4288)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1718, file: !1719, line: 182, baseType: !179, size: 64, offset: 4352)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1718, file: !1719, line: 182, baseType: !179, size: 64, offset: 4416)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1718, file: !1719, line: 182, baseType: !179, size: 64, offset: 4480)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1718, file: !1719, line: 183, baseType: !179, size: 64, offset: 4544)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1718, file: !1719, line: 183, baseType: !179, size: 64, offset: 4608)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1718, file: !1719, line: 184, baseType: !1801, offset: 4672)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1802, line: 12, elements: !226)
!1802 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1718, file: !1719, line: 192, baseType: !401, size: 64, offset: 4672)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1718, file: !1719, line: 203, baseType: !1805, size: 2048, offset: 4736)
!1805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 2048, elements: !1699)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1807, line: 43, size: 128, elements: !1808)
!1807 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1806, file: !1807, line: 44, baseType: !302, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1806, file: !1807, line: 45, baseType: !302, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1718, file: !1719, line: 220, baseType: !468, size: 8, offset: 6784)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1718, file: !1719, line: 221, baseType: !1170, size: 16, offset: 6800)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1718, file: !1719, line: 222, baseType: !1170, size: 16, offset: 6816)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1718, file: !1719, line: 224, baseType: !955, size: 64, offset: 6848)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1718, file: !1719, line: 227, baseType: !1154, size: 192, offset: 6912)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1718, file: !1719, line: 233, baseType: !1154, size: 192, offset: 7104)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1182, file: !1183, line: 970, baseType: !1818, size: 64, offset: 9280)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1719, line: 20, size: 16576, elements: !1820)
!1820 = !{!1821, !1822, !1823, !1824}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1819, file: !1719, line: 21, baseType: !212)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1819, file: !1719, line: 22, baseType: !1195, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1819, file: !1719, line: 23, baseType: !1445, size: 128, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1819, file: !1719, line: 24, baseType: !1825, size: 16384, offset: 192)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1826, size: 16384, elements: !258)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1729, line: 49, size: 256, elements: !1827)
!1827 = !{!1828}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1826, file: !1729, line: 50, baseType: !1829, size: 256)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1729, line: 35, size: 256, elements: !1830)
!1830 = !{!1831, !1838, !1839, !1845}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1829, file: !1729, line: 37, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1833, line: 19, baseType: !1834)
!1833 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1833, line: 18, baseType: !1836)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !180}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1829, file: !1729, line: 38, baseType: !179, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1829, file: !1729, line: 44, baseType: !1840, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1833, line: 22, baseType: !1841)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1833, line: 21, baseType: !1843)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1829, file: !1729, line: 46, baseType: !1733, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1182, file: !1183, line: 971, baseType: !1733, size: 64, offset: 9344)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1182, file: !1183, line: 972, baseType: !1733, size: 64, offset: 9408)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1182, file: !1183, line: 974, baseType: !1733, size: 64, offset: 9472)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1182, file: !1183, line: 975, baseType: !1728, size: 192, offset: 9536)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1182, file: !1183, line: 976, baseType: !179, size: 64, offset: 9728)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1182, file: !1183, line: 977, baseType: !300, size: 64, offset: 9792)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1182, file: !1183, line: 978, baseType: !5, size: 32, offset: 9856)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1182, file: !1183, line: 980, baseType: !346, size: 64, offset: 9920)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1182, file: !1183, line: 989, baseType: !1855, size: 128, offset: 9984)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1856, line: 35, size: 128, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !{!1858, !1859, !1860}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1855, file: !1856, line: 36, baseType: !180, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1855, file: !1856, line: 37, baseType: !728, size: 32, offset: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1855, file: !1856, line: 38, baseType: !1861, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1856, line: 23, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1182, file: !1183, line: 992, baseType: !399, size: 64, offset: 10112)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1182, file: !1183, line: 993, baseType: !399, size: 64, offset: 10176)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1182, file: !1183, line: 996, baseType: !212, offset: 10240)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1182, file: !1183, line: 999, baseType: !761, offset: 10240)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1182, file: !1183, line: 1001, baseType: !1868, size: 64, offset: 10240)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1183, line: 636, size: 64, elements: !1869)
!1869 = !{!1870}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1868, file: !1183, line: 637, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1182, file: !1183, line: 1005, baseType: !733, size: 128, offset: 10304)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1182, file: !1183, line: 1007, baseType: !1181, size: 64, offset: 10432)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1182, file: !1183, line: 1009, baseType: !1875, size: 64, offset: 10496)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1183, line: 1009, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1182, file: !1183, line: 1043, baseType: !181, size: 64, offset: 10560)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1182, file: !1183, line: 1046, baseType: !1879, size: 64, offset: 10624)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1183, line: 41, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1182, file: !1183, line: 1050, baseType: !1882, size: 64, offset: 10688)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1183, line: 42, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1182, file: !1183, line: 1054, baseType: !1885, size: 64, offset: 10752)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1183, line: 55, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1182, file: !1183, line: 1056, baseType: !1888, size: 64, offset: 10816)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1183, line: 40, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1182, file: !1183, line: 1058, baseType: !1891, size: 64, offset: 10880)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1893, line: 99, size: 704, elements: !1894)
!1893 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900, !1901, !1920, !1921}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1892, file: !1893, line: 100, baseType: !752, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1892, file: !1893, line: 101, baseType: !728, size: 32, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1892, file: !1893, line: 102, baseType: !728, size: 32, offset: 96)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1892, file: !1893, line: 105, baseType: !212, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1892, file: !1893, line: 107, baseType: !295, size: 16, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1892, file: !1893, line: 109, baseType: !719, size: 128, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1892, file: !1893, line: 110, baseType: !1902, size: 64, offset: 320)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1893, line: 73, size: 448, elements: !1904)
!1904 = !{!1905, !1908, !1909, !1914, !1919}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1903, file: !1893, line: 74, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1893, line: 74, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1903, file: !1893, line: 75, baseType: !1891, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1903, file: !1893, line: 83, baseType: !1910, size: 128, offset: 128)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1903, file: !1893, line: 83, size: 128, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1910, file: !1893, line: 84, baseType: !198, size: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1910, file: !1893, line: 85, baseType: !916, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1903, file: !1893, line: 87, baseType: !1915, size: 128, offset: 256)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1903, file: !1893, line: 87, size: 128, elements: !1916)
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1915, file: !1893, line: 88, baseType: !620, size: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1915, file: !1893, line: 89, baseType: !343, size: 128, align: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1903, file: !1893, line: 92, baseType: !5, size: 32, offset: 384)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1892, file: !1893, line: 111, baseType: !616, size: 64, offset: 384)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1892, file: !1893, line: 113, baseType: !1922, size: 256, offset: 448)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1923, line: 102, size: 256, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1924 = !{!1925, !1926, !1927}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1922, file: !1923, line: 103, baseType: !752, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1922, file: !1923, line: 104, baseType: !198, size: 128, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1922, file: !1923, line: 105, baseType: !1928, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1923, line: 21, baseType: !1929)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !1932}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1182, file: !1183, line: 1061, baseType: !1934, size: 64, offset: 10944)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1183, line: 43, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1182, file: !1183, line: 1064, baseType: !179, size: 64, offset: 11008)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1182, file: !1183, line: 1065, baseType: !1938, size: 64, offset: 11072)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1729, line: 14, baseType: !1940)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1729, line: 12, size: 384, elements: !1941)
!1941 = !{!1942}
!1942 = !DIDerivedType(tag: DW_TAG_member, scope: !1940, file: !1729, line: 13, baseType: !1943, size: 384)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1940, file: !1729, line: 13, size: 384, elements: !1944)
!1944 = !{!1945, !1946, !1947, !1948}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1943, file: !1729, line: 13, baseType: !180, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1943, file: !1729, line: 13, baseType: !180, size: 32, offset: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1943, file: !1729, line: 13, baseType: !180, size: 32, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1943, file: !1729, line: 13, baseType: !1949, size: 256, offset: 128)
!1949 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1950, line: 32, size: 256, elements: !1951)
!1950 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1951 = !{!1952, !1957, !1970, !1976, !1985, !2005, !2010}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1949, file: !1950, line: 37, baseType: !1953, size: 64)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1949, file: !1950, line: 34, size: 64, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1953, file: !1950, line: 35, baseType: !1424, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1953, file: !1950, line: 36, baseType: !419, size: 32, offset: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1949, file: !1950, line: 45, baseType: !1958, size: 192)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1949, file: !1950, line: 40, size: 192, elements: !1959)
!1959 = !{!1960, !1962, !1963, !1969}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1958, file: !1950, line: 41, baseType: !1961, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !286, line: 95, baseType: !180)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1958, file: !1950, line: 42, baseType: !180, size: 32, offset: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1958, file: !1950, line: 43, baseType: !1964, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1950, line: 11, baseType: !1965)
!1965 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1950, line: 8, size: 64, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1965, file: !1950, line: 9, baseType: !180, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1965, file: !1950, line: 10, baseType: !181, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1958, file: !1950, line: 44, baseType: !180, size: 32, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1949, file: !1950, line: 52, baseType: !1971, size: 128)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1949, file: !1950, line: 48, size: 128, elements: !1972)
!1972 = !{!1973, !1974, !1975}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1971, file: !1950, line: 49, baseType: !1424, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1971, file: !1950, line: 50, baseType: !419, size: 32, offset: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1971, file: !1950, line: 51, baseType: !1964, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1949, file: !1950, line: 61, baseType: !1977, size: 256)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1949, file: !1950, line: 55, size: 256, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1982, !1984}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1977, file: !1950, line: 56, baseType: !1424, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1977, file: !1950, line: 57, baseType: !419, size: 32, offset: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1977, file: !1950, line: 58, baseType: !180, size: 32, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1977, file: !1950, line: 59, baseType: !1983, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !286, line: 94, baseType: !287)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1977, file: !1950, line: 60, baseType: !1983, size: 64, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1949, file: !1950, line: 95, baseType: !1986, size: 256)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1949, file: !1950, line: 64, size: 256, elements: !1987)
!1987 = !{!1988, !1989}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1986, file: !1950, line: 65, baseType: !181, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1986, file: !1950, line: 77, baseType: !1990, size: 192, offset: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1986, file: !1950, line: 77, size: 192, elements: !1991)
!1991 = !{!1992, !1993, !2000}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1990, file: !1950, line: 82, baseType: !1170, size: 16)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1990, file: !1950, line: 88, baseType: !1994, size: 192)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !1950, line: 84, size: 192, elements: !1995)
!1995 = !{!1996, !1998, !1999}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1994, file: !1950, line: 85, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 64, elements: !1294)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1994, file: !1950, line: 86, baseType: !181, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1994, file: !1950, line: 87, baseType: !181, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1990, file: !1950, line: 93, baseType: !2001, size: 96)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !1950, line: 90, size: 96, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2001, file: !1950, line: 91, baseType: !1997, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2001, file: !1950, line: 92, baseType: !395, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1949, file: !1950, line: 101, baseType: !2006, size: 128)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1949, file: !1950, line: 98, size: 128, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2006, file: !1950, line: 99, baseType: !288, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2006, file: !1950, line: 100, baseType: !180, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1949, file: !1950, line: 108, baseType: !2011, size: 128)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1949, file: !1950, line: 104, size: 128, elements: !2012)
!2012 = !{!2013, !2014, !2015}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2011, file: !1950, line: 105, baseType: !181, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2011, file: !1950, line: 106, baseType: !180, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2011, file: !1950, line: 107, baseType: !5, size: 32, offset: 96)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1182, file: !1183, line: 1067, baseType: !1801, offset: 11136)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1182, file: !1183, line: 1099, baseType: !2018, size: 64, offset: 11136)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1183, line: 56, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1182, file: !1183, line: 1103, baseType: !198, size: 128, offset: 11200)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1182, file: !1183, line: 1104, baseType: !2022, size: 64, offset: 11328)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1183, line: 46, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1182, file: !1183, line: 1105, baseType: !1154, size: 192, offset: 11392)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1182, file: !1183, line: 1106, baseType: !5, size: 32, offset: 11584)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1182, file: !1183, line: 1109, baseType: !2027, size: 128, offset: 11648)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2028, size: 128, elements: !1533)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1183, line: 51, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1182, file: !1183, line: 1110, baseType: !1154, size: 192, offset: 11776)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1182, file: !1183, line: 1111, baseType: !198, size: 128, offset: 11968)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1182, file: !1183, line: 1173, baseType: !2033, size: 64, offset: 12096)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2035, line: 62, size: 256, align: 256, elements: !2036)
!2035 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2036 = !{!2037, !2038, !2039, !2044}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2034, file: !2035, line: 75, baseType: !395, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2034, file: !2035, line: 90, baseType: !395, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2034, file: !2035, line: 124, baseType: !2040, size: 64, offset: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2034, file: !2035, line: 109, size: 64, elements: !2041)
!2041 = !{!2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2040, file: !2035, line: 110, baseType: !400, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2040, file: !2035, line: 112, baseType: !400, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2034, file: !2035, line: 144, baseType: !395, size: 32, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1182, file: !1183, line: 1174, baseType: !393, size: 32, offset: 12160)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1182, file: !1183, line: 1179, baseType: !179, size: 64, offset: 12224)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1182, file: !1183, line: 1182, baseType: !2048, size: 128, offset: 12288)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1132, line: 76, size: 128, elements: !2049)
!2049 = !{!2050, !2055, !2056}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2048, file: !1132, line: 85, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2052, line: 7, size: 64, elements: !2053)
!2052 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2053 = !{!2054}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2051, file: !2052, line: 12, baseType: !1331, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2048, file: !1132, line: 88, baseType: !468, size: 8, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2048, file: !1132, line: 95, baseType: !468, size: 8, offset: 72)
!2057 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !1183, line: 1184, baseType: !2058, size: 128, offset: 12416)
!2058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1182, file: !1183, line: 1184, size: 128, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2058, file: !1183, line: 1185, baseType: !1195, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2058, file: !1183, line: 1186, baseType: !343, size: 128, align: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1182, file: !1183, line: 1190, baseType: !2063, size: 64, offset: 12544)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1183, line: 53, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1182, file: !1183, line: 1192, baseType: !2066, size: 128, offset: 12608)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1132, line: 64, size: 128, elements: !2067)
!2067 = !{!2068, !2069, !2070}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2066, file: !1132, line: 65, baseType: !701, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2066, file: !1132, line: 67, baseType: !395, size: 32, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2066, file: !1132, line: 68, baseType: !395, size: 32, offset: 96)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1182, file: !1183, line: 1206, baseType: !180, size: 32, offset: 12736)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1182, file: !1183, line: 1207, baseType: !180, size: 32, offset: 12768)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1182, file: !1183, line: 1209, baseType: !179, size: 64, offset: 12800)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1182, file: !1183, line: 1219, baseType: !399, size: 64, offset: 12864)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1182, file: !1183, line: 1220, baseType: !399, size: 64, offset: 12928)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1182, file: !1183, line: 1317, baseType: !180, size: 32, offset: 12992)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1182, file: !1183, line: 1319, baseType: !1181, size: 64, offset: 13056)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1182, file: !1183, line: 1322, baseType: !2079, size: 64, offset: 13120)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2081, line: 56, size: 512, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2084, !2085, !2086, !2087, !2088, !2089, !2091}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2080, file: !2081, line: 57, baseType: !2079, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2080, file: !2081, line: 58, baseType: !181, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2080, file: !2081, line: 59, baseType: !179, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2080, file: !2081, line: 60, baseType: !179, size: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2080, file: !2081, line: 61, baseType: !801, size: 64, offset: 256)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2080, file: !2081, line: 62, baseType: !5, size: 32, offset: 320)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2080, file: !2081, line: 63, baseType: !2090, size: 64, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !199, line: 153, baseType: !399)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2080, file: !2081, line: 64, baseType: !2092, size: 64, offset: 448)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1182, file: !1183, line: 1326, baseType: !1195, size: 32, offset: 13184)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1182, file: !1183, line: 1342, baseType: !181, size: 64, offset: 13248)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1182, file: !1183, line: 1343, baseType: !400, size: 64, offset: 13312)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1182, file: !1183, line: 1344, baseType: !399, size: 64, offset: 13376)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1182, file: !1183, line: 1345, baseType: !400, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1182, file: !1183, line: 1346, baseType: !400, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1182, file: !1183, line: 1347, baseType: !400, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1182, file: !1183, line: 1348, baseType: !343, size: 128, align: 64, offset: 13504)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1182, file: !1183, line: 1358, baseType: !2103, size: 34816, offset: 13824)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2104, line: 485, size: 34816, elements: !2105)
!2104 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2105 = !{!2106, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2135, !2136, !2137, !2138, !2139, !2140, !2143, !2144, !2145}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2103, file: !2104, line: 487, baseType: !2107, size: 192)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2108, size: 192, elements: !254)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2109, line: 16, size: 64, elements: !2110)
!2109 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2108, file: !2109, line: 17, baseType: !840, size: 16)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2108, file: !2109, line: 18, baseType: !840, size: 16, offset: 16)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2108, file: !2109, line: 19, baseType: !840, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2108, file: !2109, line: 19, baseType: !840, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2108, file: !2109, line: 19, baseType: !840, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2108, file: !2109, line: 19, baseType: !840, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2108, file: !2109, line: 19, baseType: !840, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2108, file: !2109, line: 20, baseType: !840, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2108, file: !2109, line: 20, baseType: !840, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2108, file: !2109, line: 20, baseType: !840, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2108, file: !2109, line: 20, baseType: !840, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2108, file: !2109, line: 20, baseType: !840, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2108, file: !2109, line: 20, baseType: !840, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2103, file: !2104, line: 491, baseType: !179, size: 64, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2103, file: !2104, line: 495, baseType: !295, size: 16, offset: 256)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2103, file: !2104, line: 496, baseType: !295, size: 16, offset: 272)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2103, file: !2104, line: 497, baseType: !295, size: 16, offset: 288)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2103, file: !2104, line: 498, baseType: !295, size: 16, offset: 304)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2103, file: !2104, line: 502, baseType: !179, size: 64, offset: 320)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2103, file: !2104, line: 503, baseType: !179, size: 64, offset: 384)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2103, file: !2104, line: 514, baseType: !2132, size: 256, offset: 448)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2133, size: 256, elements: !1136)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2104, line: 483, flags: DIFlagFwdDecl)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2103, file: !2104, line: 516, baseType: !179, size: 64, offset: 704)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2103, file: !2104, line: 518, baseType: !179, size: 64, offset: 768)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2103, file: !2104, line: 520, baseType: !179, size: 64, offset: 832)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2103, file: !2104, line: 521, baseType: !179, size: 64, offset: 896)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2103, file: !2104, line: 522, baseType: !179, size: 64, offset: 960)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2103, file: !2104, line: 528, baseType: !2141, size: 64, offset: 1024)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2104, line: 10, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2103, file: !2104, line: 535, baseType: !179, size: 64, offset: 1088)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2103, file: !2104, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2103, file: !2104, line: 540, baseType: !2146, size: 33280, offset: 1536)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2147, line: 317, size: 33280, elements: !2148)
!2147 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2148 = !{!2149, !2150, !2151}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2146, file: !2147, line: 330, baseType: !5, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2146, file: !2147, line: 337, baseType: !179, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2146, file: !2147, line: 348, baseType: !2152, size: 32768, offset: 512)
!2152 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2147, line: 304, size: 32768, elements: !2153)
!2153 = !{!2154, !2169, !2208, !2258, !2271}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2152, file: !2147, line: 305, baseType: !2155, size: 896)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2147, line: 12, size: 896, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2168}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2155, file: !2147, line: 13, baseType: !393, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2155, file: !2147, line: 14, baseType: !393, size: 32, offset: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2155, file: !2147, line: 15, baseType: !393, size: 32, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2155, file: !2147, line: 16, baseType: !393, size: 32, offset: 96)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2155, file: !2147, line: 17, baseType: !393, size: 32, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2155, file: !2147, line: 18, baseType: !393, size: 32, offset: 160)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2155, file: !2147, line: 19, baseType: !393, size: 32, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2155, file: !2147, line: 22, baseType: !2165, size: 640, offset: 224)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 640, elements: !2166)
!2166 = !{!2167}
!2167 = !DISubrange(count: 20)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2155, file: !2147, line: 25, baseType: !393, size: 32, offset: 864)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2152, file: !2147, line: 306, baseType: !2170, size: 4096, align: 128)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2147, line: 34, size: 4096, align: 128, elements: !2171)
!2171 = !{!2172, !2173, !2174, !2175, !2176, !2191, !2192, !2193, !2197, !2199, !2203}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2170, file: !2147, line: 35, baseType: !840, size: 16)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2170, file: !2147, line: 36, baseType: !840, size: 16, offset: 16)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2170, file: !2147, line: 37, baseType: !840, size: 16, offset: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2170, file: !2147, line: 38, baseType: !840, size: 16, offset: 48)
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2170, file: !2147, line: 39, baseType: !2177, size: 128, offset: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2170, file: !2147, line: 39, size: 128, elements: !2178)
!2178 = !{!2179, !2184}
!2179 = !DIDerivedType(tag: DW_TAG_member, scope: !2177, file: !2147, line: 40, baseType: !2180, size: 128)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2177, file: !2147, line: 40, size: 128, elements: !2181)
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2180, file: !2147, line: 41, baseType: !399, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2180, file: !2147, line: 42, baseType: !399, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, scope: !2177, file: !2147, line: 44, baseType: !2185, size: 128)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2177, file: !2147, line: 44, size: 128, elements: !2186)
!2186 = !{!2187, !2188, !2189, !2190}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2185, file: !2147, line: 45, baseType: !393, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2185, file: !2147, line: 46, baseType: !393, size: 32, offset: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2185, file: !2147, line: 47, baseType: !393, size: 32, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2185, file: !2147, line: 48, baseType: !393, size: 32, offset: 96)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2170, file: !2147, line: 51, baseType: !393, size: 32, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2170, file: !2147, line: 52, baseType: !393, size: 32, offset: 224)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2170, file: !2147, line: 55, baseType: !2194, size: 1024, offset: 256)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 1024, elements: !2195)
!2195 = !{!2196}
!2196 = !DISubrange(count: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2170, file: !2147, line: 58, baseType: !2198, size: 2048, offset: 1280)
!2198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 2048, elements: !258)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2170, file: !2147, line: 60, baseType: !2200, size: 384, offset: 3328)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 384, elements: !2201)
!2201 = !{!2202}
!2202 = !DISubrange(count: 12)
!2203 = !DIDerivedType(tag: DW_TAG_member, scope: !2170, file: !2147, line: 62, baseType: !2204, size: 384, offset: 3712)
!2204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2170, file: !2147, line: 62, size: 384, elements: !2205)
!2205 = !{!2206, !2207}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2204, file: !2147, line: 63, baseType: !2200, size: 384)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2204, file: !2147, line: 64, baseType: !2200, size: 384)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2152, file: !2147, line: 307, baseType: !2209, size: 1088)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2147, line: 79, size: 1088, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2257}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2209, file: !2147, line: 80, baseType: !393, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2209, file: !2147, line: 81, baseType: !393, size: 32, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2209, file: !2147, line: 82, baseType: !393, size: 32, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2209, file: !2147, line: 83, baseType: !393, size: 32, offset: 96)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2209, file: !2147, line: 84, baseType: !393, size: 32, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2209, file: !2147, line: 85, baseType: !393, size: 32, offset: 160)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2209, file: !2147, line: 86, baseType: !393, size: 32, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2209, file: !2147, line: 88, baseType: !2165, size: 640, offset: 224)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2209, file: !2147, line: 89, baseType: !1316, size: 8, offset: 864)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2209, file: !2147, line: 90, baseType: !1316, size: 8, offset: 872)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2209, file: !2147, line: 91, baseType: !1316, size: 8, offset: 880)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2209, file: !2147, line: 92, baseType: !1316, size: 8, offset: 888)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2209, file: !2147, line: 93, baseType: !1316, size: 8, offset: 896)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2209, file: !2147, line: 94, baseType: !1316, size: 8, offset: 904)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2209, file: !2147, line: 95, baseType: !2226, size: 64, offset: 960)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2228, line: 11, size: 128, elements: !2229)
!2228 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2227, file: !2228, line: 12, baseType: !288, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2227, file: !2228, line: 13, baseType: !2232, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2234, line: 56, size: 1344, elements: !2235)
!2234 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2233, file: !2234, line: 61, baseType: !179, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2233, file: !2234, line: 62, baseType: !179, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2233, file: !2234, line: 63, baseType: !179, size: 64, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2233, file: !2234, line: 64, baseType: !179, size: 64, offset: 192)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2233, file: !2234, line: 65, baseType: !179, size: 64, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2233, file: !2234, line: 66, baseType: !179, size: 64, offset: 320)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2233, file: !2234, line: 68, baseType: !179, size: 64, offset: 384)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2233, file: !2234, line: 69, baseType: !179, size: 64, offset: 448)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2233, file: !2234, line: 70, baseType: !179, size: 64, offset: 512)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2233, file: !2234, line: 71, baseType: !179, size: 64, offset: 576)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2233, file: !2234, line: 72, baseType: !179, size: 64, offset: 640)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2233, file: !2234, line: 73, baseType: !179, size: 64, offset: 704)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2233, file: !2234, line: 74, baseType: !179, size: 64, offset: 768)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2233, file: !2234, line: 75, baseType: !179, size: 64, offset: 832)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2233, file: !2234, line: 76, baseType: !179, size: 64, offset: 896)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2233, file: !2234, line: 81, baseType: !179, size: 64, offset: 960)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2233, file: !2234, line: 83, baseType: !179, size: 64, offset: 1024)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2233, file: !2234, line: 84, baseType: !179, size: 64, offset: 1088)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2233, file: !2234, line: 85, baseType: !179, size: 64, offset: 1152)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2233, file: !2234, line: 86, baseType: !179, size: 64, offset: 1216)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2233, file: !2234, line: 87, baseType: !179, size: 64, offset: 1280)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2209, file: !2147, line: 96, baseType: !393, size: 32, offset: 1024)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2152, file: !2147, line: 308, baseType: !2259, size: 4608, align: 512)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2147, line: 289, size: 4608, align: 512, elements: !2260)
!2260 = !{!2261, !2262, !2269}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2259, file: !2147, line: 290, baseType: !2170, size: 4096, align: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2259, file: !2147, line: 291, baseType: !2263, size: 512, offset: 4096)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2147, line: 268, size: 512, elements: !2264)
!2264 = !{!2265, !2266, !2267}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2263, file: !2147, line: 269, baseType: !399, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2263, file: !2147, line: 270, baseType: !399, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2263, file: !2147, line: 271, baseType: !2268, size: 384, offset: 128)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 384, elements: !1589)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2259, file: !2147, line: 292, baseType: !2270, offset: 4608)
!2270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, elements: !1687)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2152, file: !2147, line: 309, baseType: !2272, size: 32768)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, size: 32768, elements: !2273)
!2273 = !{!2274}
!2274 = !DISubrange(count: 4096)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1178, file: !703, line: 378, baseType: !2276, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1174, file: !703, line: 384, baseType: !1466, size: 192, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !959, file: !703, line: 500, baseType: !212, offset: 6656)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !959, file: !703, line: 501, baseType: !2280, size: 64, offset: 6656)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !703, line: 387, flags: DIFlagFwdDecl)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !959, file: !703, line: 516, baseType: !1677, size: 64, offset: 6720)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !959, file: !703, line: 519, baseType: !330, size: 64, offset: 6784)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !959, file: !703, line: 521, baseType: !2285, size: 64, offset: 6848)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !703, line: 521, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !959, file: !703, line: 545, baseType: !728, size: 32, offset: 6912)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !959, file: !703, line: 548, baseType: !468, size: 8, offset: 6944)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !959, file: !703, line: 550, baseType: !2290, offset: 6952)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2291, line: 142, elements: !226)
!2291 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !959, file: !703, line: 554, baseType: !1922, size: 256, offset: 6976)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !959, file: !703, line: 557, baseType: !393, size: 32, offset: 7232)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !956, file: !703, line: 565, baseType: !2295, offset: 7296)
!2295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, elements: !2296)
!2296 = !{!2297}
!2297 = !DISubrange(count: -1)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !952, file: !703, line: 151, baseType: !728, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !945, file: !703, line: 156, baseType: !212, offset: 256)
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !703, line: 159, baseType: !2301, size: 128)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !707, file: !703, line: 159, size: 128, elements: !2302)
!2302 = !{!2303, !2367}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2301, file: !703, line: 161, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 110, size: 1152, elements: !2306)
!2306 = !{!2307, !2317, !2338, !2339, !2340, !2341, !2342, !2354, !2355, !2356}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2305, file: !29, line: 111, baseType: !2308, size: 384)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 19, size: 384, elements: !2309)
!2309 = !{!2310, !2312, !2313, !2314, !2315, !2316}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2308, file: !29, line: 20, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2308, file: !29, line: 21, baseType: !2311, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2308, file: !29, line: 22, baseType: !2311, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2308, file: !29, line: 23, baseType: !179, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2308, file: !29, line: 24, baseType: !179, size: 64, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2308, file: !29, line: 25, baseType: !179, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2305, file: !29, line: 112, baseType: !2318, size: 64, offset: 384)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2320, line: 105, size: 128, elements: !2321)
!2320 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2321 = !{!2322, !2323}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2319, file: !2320, line: 110, baseType: !179, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2319, file: !2320, line: 118, baseType: !2324, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2320, line: 95, size: 448, elements: !2326)
!2326 = !{!2327, !2328, !2333, !2334, !2335, !2336, !2337}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2325, file: !2320, line: 96, baseType: !752, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2325, file: !2320, line: 97, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2320, line: 60, baseType: !2331)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{null, !2318}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2325, file: !2320, line: 98, baseType: !2329, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2325, file: !2320, line: 99, baseType: !468, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2325, file: !2320, line: 100, baseType: !468, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2325, file: !2320, line: 101, baseType: !343, size: 128, align: 64, offset: 256)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2325, file: !2320, line: 102, baseType: !2318, size: 64, offset: 384)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2305, file: !29, line: 113, baseType: !2319, size: 128, offset: 448)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2305, file: !29, line: 114, baseType: !1466, size: 192, offset: 576)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2305, file: !29, line: 115, baseType: !28, size: 32, offset: 768)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2305, file: !29, line: 116, baseType: !5, size: 32, offset: 800)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2305, file: !29, line: 117, baseType: !2343, size: 64, offset: 832)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2345)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 67, size: 256, elements: !2346)
!2346 = !{!2347, !2348, !2352, !2353}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2345, file: !29, line: 73, baseType: !821, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2345, file: !29, line: 78, baseType: !2349, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{null, !2304}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2345, file: !29, line: 83, baseType: !2349, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2345, file: !29, line: 89, baseType: !1008, size: 64, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2305, file: !29, line: 118, baseType: !181, size: 64, offset: 896)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2305, file: !29, line: 119, baseType: !180, size: 32, offset: 960)
!2356 = !DIDerivedType(tag: DW_TAG_member, scope: !2305, file: !29, line: 120, baseType: !2357, size: 128, offset: 1024)
!2357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2305, file: !29, line: 120, size: 128, elements: !2358)
!2358 = !{!2359, !2365}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2357, file: !29, line: 121, baseType: !2360, size: 128)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2361, line: 6, size: 128, elements: !2362)
!2361 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2362 = !{!2363, !2364}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2360, file: !2361, line: 7, baseType: !399, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2360, file: !2361, line: 8, baseType: !399, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2357, file: !29, line: 122, baseType: !2366)
!2366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2360, elements: !1687)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2301, file: !703, line: 162, baseType: !181, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !707, file: !703, line: 176, baseType: !343, size: 128, align: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !703, line: 179, baseType: !2370, size: 32, offset: 384)
!2370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !702, file: !703, line: 179, size: 32, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2370, file: !703, line: 184, baseType: !728, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2370, file: !703, line: 192, baseType: !5, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2370, file: !703, line: 194, baseType: !5, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2370, file: !703, line: 195, baseType: !180, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !702, file: !703, line: 199, baseType: !728, size: 32, offset: 416)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !638, file: !42, line: 1964, baseType: !2378, size: 64, offset: 1344)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!288, !577, !2381}
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2383, line: 12, size: 256, elements: !2384)
!2383 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2384 = !{!2385, !2386, !2387, !2388, !2389}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2382, file: !2383, line: 13, baseType: !724, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2382, file: !2383, line: 16, baseType: !180, size: 32, offset: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2382, file: !2383, line: 23, baseType: !179, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2382, file: !2383, line: 30, baseType: !179, size: 64, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2382, file: !2383, line: 33, baseType: !2390, size: 64, offset: 192)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !703, line: 27, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !638, file: !42, line: 1966, baseType: !2378, size: 64, offset: 1408)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !578, file: !42, line: 1424, baseType: !2394, size: 64, offset: 448)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2396)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 322, size: 704, elements: !2397)
!2397 = !{!2398, !2444, !2448, !2452, !2453, !2454, !2455, !2456, !2461, !2466, !2470}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2396, file: !36, line: 323, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!180, !2402}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 294, size: 1600, elements: !2404)
!2404 = !{!2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2429, !2430, !2431}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2403, file: !36, line: 295, baseType: !620, size: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2403, file: !36, line: 296, baseType: !198, size: 128, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2403, file: !36, line: 297, baseType: !198, size: 128, offset: 256)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2403, file: !36, line: 298, baseType: !198, size: 128, offset: 384)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2403, file: !36, line: 299, baseType: !1154, size: 192, offset: 512)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2403, file: !36, line: 300, baseType: !212, offset: 704)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2403, file: !36, line: 301, baseType: !728, size: 32, offset: 704)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2403, file: !36, line: 302, baseType: !577, size: 64, offset: 768)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2403, file: !36, line: 303, baseType: !2414, size: 64, offset: 832)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !2415)
!2415 = !{!2416, !2428}
!2416 = !DIDerivedType(tag: DW_TAG_member, scope: !2414, file: !36, line: 69, baseType: !2417, size: 32)
!2417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2414, file: !36, line: 69, size: 32, elements: !2418)
!2418 = !{!2419, !2420, !2421}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2417, file: !36, line: 70, baseType: !413, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2417, file: !36, line: 71, baseType: !421, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2417, file: !36, line: 72, baseType: !2422, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2423, line: 24, baseType: !2424)
!2423 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2423, line: 22, size: 32, elements: !2425)
!2425 = !{!2426}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2424, file: !2423, line: 23, baseType: !2427, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2423, line: 20, baseType: !419)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2414, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2403, file: !36, line: 304, baseType: !509, size: 64, offset: 896)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2403, file: !36, line: 305, baseType: !179, size: 64, offset: 960)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2403, file: !36, line: 306, baseType: !2432, size: 576, offset: 1024)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !2433)
!2433 = !{!2434, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2432, file: !36, line: 206, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !511)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2432, file: !36, line: 207, baseType: !2435, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2432, file: !36, line: 208, baseType: !2435, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2432, file: !36, line: 209, baseType: !2435, size: 64, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2432, file: !36, line: 210, baseType: !2435, size: 64, offset: 256)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2432, file: !36, line: 211, baseType: !2435, size: 64, offset: 320)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2432, file: !36, line: 212, baseType: !2435, size: 64, offset: 384)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2432, file: !36, line: 213, baseType: !517, size: 64, offset: 448)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2432, file: !36, line: 214, baseType: !517, size: 64, offset: 512)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2396, file: !36, line: 324, baseType: !2445, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!2402, !577, !180}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2396, file: !36, line: 325, baseType: !2449, size: 64, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !2402}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2396, file: !36, line: 326, baseType: !2399, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2396, file: !36, line: 327, baseType: !2399, size: 64, offset: 256)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2396, file: !36, line: 328, baseType: !2399, size: 64, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2396, file: !36, line: 329, baseType: !666, size: 64, offset: 384)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2396, file: !36, line: 332, baseType: !2457, size: 64, offset: 448)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!2460, !407}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2396, file: !36, line: 333, baseType: !2462, size: 64, offset: 512)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!180, !407, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2396, file: !36, line: 335, baseType: !2467, size: 64, offset: 576)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!180, !407, !2460}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2396, file: !36, line: 337, baseType: !2471, size: 64, offset: 640)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!180, !577, !2474}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !578, file: !42, line: 1425, baseType: !2476, size: 64, offset: 512)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2478)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 428, size: 704, elements: !2479)
!2479 = !{!2480, !2484, !2485, !2489, !2490, !2491, !2506, !2529, !2533, !2534, !2557}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2478, file: !36, line: 429, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!180, !577, !180, !180, !527}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2478, file: !36, line: 430, baseType: !666, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2478, file: !36, line: 431, baseType: !2486, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!180, !577, !5}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2478, file: !36, line: 432, baseType: !2486, size: 64, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2478, file: !36, line: 433, baseType: !666, size: 64, offset: 256)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2478, file: !36, line: 434, baseType: !2492, size: 64, offset: 320)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!180, !577, !180, !2495}
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 415, size: 256, elements: !2497)
!2497 = !{!2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2496, file: !36, line: 416, baseType: !180, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2496, file: !36, line: 417, baseType: !5, size: 32, offset: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2496, file: !36, line: 418, baseType: !5, size: 32, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2496, file: !36, line: 420, baseType: !5, size: 32, offset: 96)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2496, file: !36, line: 421, baseType: !5, size: 32, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2496, file: !36, line: 422, baseType: !5, size: 32, offset: 160)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2496, file: !36, line: 423, baseType: !5, size: 32, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2496, file: !36, line: 424, baseType: !5, size: 32, offset: 224)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2478, file: !36, line: 435, baseType: !2507, size: 64, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!180, !577, !2414, !2510}
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 343, size: 960, elements: !2512)
!2512 = !{!2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2511, file: !36, line: 344, baseType: !180, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2511, file: !36, line: 345, baseType: !399, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2511, file: !36, line: 346, baseType: !399, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2511, file: !36, line: 347, baseType: !399, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2511, file: !36, line: 348, baseType: !399, size: 64, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2511, file: !36, line: 349, baseType: !399, size: 64, offset: 320)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2511, file: !36, line: 350, baseType: !399, size: 64, offset: 384)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2511, file: !36, line: 351, baseType: !758, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2511, file: !36, line: 353, baseType: !758, size: 64, offset: 512)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2511, file: !36, line: 354, baseType: !180, size: 32, offset: 576)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2511, file: !36, line: 355, baseType: !180, size: 32, offset: 608)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2511, file: !36, line: 356, baseType: !399, size: 64, offset: 640)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2511, file: !36, line: 357, baseType: !399, size: 64, offset: 704)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2511, file: !36, line: 358, baseType: !399, size: 64, offset: 768)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2511, file: !36, line: 359, baseType: !758, size: 64, offset: 832)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2511, file: !36, line: 360, baseType: !180, size: 32, offset: 896)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2478, file: !36, line: 436, baseType: !2530, size: 64, offset: 448)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!180, !577, !2474, !2510}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2478, file: !36, line: 438, baseType: !2507, size: 64, offset: 512)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2478, file: !36, line: 439, baseType: !2535, size: 64, offset: 576)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!180, !577, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 409, size: 1408, elements: !2540)
!2540 = !{!2541, !2542}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2539, file: !36, line: 410, baseType: !5, size: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2539, file: !36, line: 411, baseType: !2543, size: 1344, offset: 64)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2544, size: 1344, elements: !254)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 395, size: 448, elements: !2545)
!2545 = !{!2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2556}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2544, file: !36, line: 396, baseType: !5, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2544, file: !36, line: 397, baseType: !5, size: 32, offset: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2544, file: !36, line: 399, baseType: !5, size: 32, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2544, file: !36, line: 400, baseType: !5, size: 32, offset: 96)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2544, file: !36, line: 401, baseType: !5, size: 32, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2544, file: !36, line: 402, baseType: !5, size: 32, offset: 160)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2544, file: !36, line: 403, baseType: !5, size: 32, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2544, file: !36, line: 404, baseType: !401, size: 64, offset: 256)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2544, file: !36, line: 405, baseType: !2555, size: 64, offset: 320)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !199, line: 126, baseType: !399)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2544, file: !36, line: 406, baseType: !2555, size: 64, offset: 384)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2478, file: !36, line: 440, baseType: !2486, size: 64, offset: 640)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !578, file: !42, line: 1426, baseType: !2559, size: 64, offset: 576)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2561)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 49, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !578, file: !42, line: 1427, baseType: !179, size: 64, offset: 640)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !578, file: !42, line: 1428, baseType: !179, size: 64, offset: 704)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !578, file: !42, line: 1429, baseType: !179, size: 64, offset: 768)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !578, file: !42, line: 1430, baseType: !360, size: 64, offset: 832)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !578, file: !42, line: 1431, baseType: !748, size: 256, offset: 896)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !578, file: !42, line: 1432, baseType: !180, size: 32, offset: 1152)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !578, file: !42, line: 1433, baseType: !728, size: 32, offset: 1184)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !578, file: !42, line: 1437, baseType: !2570, size: 64, offset: 1216)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2573)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1437, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !578, file: !42, line: 1449, baseType: !2575, size: 64, offset: 1280)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !376, line: 34, size: 64, elements: !2576)
!2576 = !{!2577}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2575, file: !376, line: 35, baseType: !379, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !578, file: !42, line: 1450, baseType: !198, size: 128, offset: 1344)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !578, file: !42, line: 1451, baseType: !2580, size: 64, offset: 1472)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !42, line: 699, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !578, file: !42, line: 1452, baseType: !1888, size: 64, offset: 1536)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !578, file: !42, line: 1453, baseType: !2584, size: 64, offset: 1600)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1453, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !578, file: !42, line: 1454, baseType: !620, size: 128, offset: 1664)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !578, file: !42, line: 1455, baseType: !5, size: 32, offset: 1792)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !578, file: !42, line: 1456, baseType: !2589, size: 2432, offset: 1856)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 518, size: 2432, elements: !2590)
!2590 = !{!2591, !2592, !2593, !2595, !2627}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2589, file: !36, line: 519, baseType: !5, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2589, file: !36, line: 520, baseType: !748, size: 256, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2589, file: !36, line: 521, baseType: !2594, size: 192, offset: 320)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 192, elements: !254)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2589, file: !36, line: 522, baseType: !2596, size: 1728, offset: 512)
!2596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2597, size: 1728, elements: !254)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !2598)
!2598 = !{!2599, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2597, file: !36, line: 223, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 443, size: 256, elements: !2602)
!2602 = !{!2603, !2604, !2617, !2618}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2601, file: !36, line: 444, baseType: !180, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2601, file: !36, line: 445, baseType: !2605, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2607)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 310, size: 512, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2607, file: !36, line: 311, baseType: !666, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2607, file: !36, line: 312, baseType: !666, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2607, file: !36, line: 313, baseType: !666, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2607, file: !36, line: 314, baseType: !666, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2607, file: !36, line: 315, baseType: !2399, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2607, file: !36, line: 316, baseType: !2399, size: 64, offset: 320)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2607, file: !36, line: 317, baseType: !2399, size: 64, offset: 384)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2607, file: !36, line: 318, baseType: !2471, size: 64, offset: 448)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2601, file: !36, line: 446, baseType: !611, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2601, file: !36, line: 447, baseType: !2600, size: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2597, file: !36, line: 224, baseType: !180, size: 32, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2597, file: !36, line: 226, baseType: !198, size: 128, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2597, file: !36, line: 227, baseType: !179, size: 64, offset: 256)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2597, file: !36, line: 228, baseType: !5, size: 32, offset: 320)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2597, file: !36, line: 229, baseType: !5, size: 32, offset: 352)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2597, file: !36, line: 230, baseType: !2435, size: 64, offset: 384)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2597, file: !36, line: 231, baseType: !2435, size: 64, offset: 448)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2597, file: !36, line: 232, baseType: !181, size: 64, offset: 512)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2589, file: !36, line: 523, baseType: !2628, size: 192, offset: 2240)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2605, size: 192, elements: !254)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !578, file: !42, line: 1458, baseType: !2630, size: 2112, offset: 4288)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1410, size: 2112, elements: !2631)
!2631 = !{!2632, !2633, !2634}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2630, file: !42, line: 1411, baseType: !180, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2630, file: !42, line: 1412, baseType: !1445, size: 128, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2630, file: !42, line: 1413, baseType: !2635, size: 1920, offset: 192)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2636, size: 1920, elements: !254)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2637, line: 12, size: 640, elements: !2638)
!2637 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2638 = !{!2639, !2647, !2649, !2654, !2655}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2636, file: !2637, line: 13, baseType: !2640, size: 320)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2641, line: 17, size: 320, elements: !2642)
!2641 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2642 = !{!2643, !2644, !2645, !2646}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2640, file: !2641, line: 18, baseType: !180, size: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2640, file: !2641, line: 19, baseType: !180, size: 32, offset: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2640, file: !2641, line: 20, baseType: !1445, size: 128, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2640, file: !2641, line: 22, baseType: !343, size: 128, align: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2636, file: !2637, line: 14, baseType: !2648, size: 64, offset: 320)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2636, file: !2637, line: 15, baseType: !2650, size: 64, offset: 384)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2651, line: 16, size: 64, elements: !2652)
!2651 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2652 = !{!2653}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2650, file: !2651, line: 17, baseType: !1181, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2636, file: !2637, line: 16, baseType: !1445, size: 128, offset: 448)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2636, file: !2637, line: 17, baseType: !728, size: 32, offset: 576)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !578, file: !42, line: 1465, baseType: !181, size: 64, offset: 6400)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !578, file: !42, line: 1468, baseType: !393, size: 32, offset: 6464)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !578, file: !42, line: 1470, baseType: !517, size: 64, offset: 6528)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !578, file: !42, line: 1471, baseType: !517, size: 64, offset: 6592)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !578, file: !42, line: 1473, baseType: !395, size: 32, offset: 6656)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !578, file: !42, line: 1474, baseType: !2662, size: 64, offset: 6720)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 603, flags: DIFlagFwdDecl)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !578, file: !42, line: 1477, baseType: !2665, size: 256, offset: 6784)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 256, elements: !2195)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !578, file: !42, line: 1478, baseType: !2667, size: 128, offset: 7040)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2668, line: 18, baseType: !2669)
!2668 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2668, line: 16, size: 128, elements: !2670)
!2670 = !{!2671}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2669, file: !2668, line: 17, baseType: !2672, size: 128)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1317, size: 128, elements: !1699)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !578, file: !42, line: 1480, baseType: !5, size: 32, offset: 7168)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !578, file: !42, line: 1481, baseType: !2675, size: 32, offset: 7200)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !199, line: 150, baseType: !5)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !578, file: !42, line: 1487, baseType: !1154, size: 192, offset: 7232)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !578, file: !42, line: 1493, baseType: !194, size: 64, offset: 7424)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !578, file: !42, line: 1495, baseType: !2679, size: 64, offset: 7488)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2681)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !358, line: 135, size: 1024, align: 512, elements: !2682)
!2682 = !{!2683, !2687, !2688, !2695, !2701, !2705, !2709, !2713, !2714, !2718, !2722, !2727, !2731}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2681, file: !358, line: 136, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!180, !360, !5}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2681, file: !358, line: 137, baseType: !2684, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2681, file: !358, line: 138, baseType: !2689, size: 64, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!180, !2692, !2694}
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2681, file: !358, line: 139, baseType: !2696, size: 64, offset: 192)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!180, !2692, !5, !194, !2699}
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2681, file: !358, line: 141, baseType: !2702, size: 64, offset: 256)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!180, !2692}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2681, file: !358, line: 142, baseType: !2706, size: 64, offset: 320)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!180, !360}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2681, file: !358, line: 143, baseType: !2710, size: 64, offset: 384)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{null, !360}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2681, file: !358, line: 144, baseType: !2710, size: 64, offset: 448)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2681, file: !358, line: 145, baseType: !2715, size: 64, offset: 512)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null, !360, !407}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2681, file: !358, line: 146, baseType: !2719, size: 64, offset: 576)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!253, !360, !253, !180}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2681, file: !358, line: 147, baseType: !2723, size: 64, offset: 640)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!356, !2726}
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2681, file: !358, line: 148, baseType: !2728, size: 64, offset: 704)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!180, !527, !468}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2681, file: !358, line: 149, baseType: !2732, size: 64, offset: 768)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!360, !360, !2735}
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !578, file: !42, line: 1500, baseType: !180, size: 32, offset: 7552)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !578, file: !42, line: 1502, baseType: !2739, size: 448, offset: 7616)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2383, line: 60, size: 448, elements: !2740)
!2740 = !{!2741, !2746, !2747, !2748, !2749, !2750, !2751}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2739, file: !2383, line: 61, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!179, !2745, !2381}
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2739, file: !2383, line: 63, baseType: !2742, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2739, file: !2383, line: 66, baseType: !288, size: 64, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2739, file: !2383, line: 67, baseType: !180, size: 32, offset: 192)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2739, file: !2383, line: 68, baseType: !5, size: 32, offset: 224)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2739, file: !2383, line: 71, baseType: !198, size: 128, offset: 256)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2739, file: !2383, line: 77, baseType: !2752, size: 64, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !578, file: !42, line: 1505, baseType: !752, size: 64, offset: 8064)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !578, file: !42, line: 1508, baseType: !752, size: 64, offset: 8128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !578, file: !42, line: 1511, baseType: !180, size: 32, offset: 8192)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !578, file: !42, line: 1514, baseType: !890, size: 32, offset: 8224)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !578, file: !42, line: 1517, baseType: !2758, size: 64, offset: 8256)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1923, line: 18, flags: DIFlagFwdDecl)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !578, file: !42, line: 1518, baseType: !616, size: 64, offset: 8320)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !578, file: !42, line: 1525, baseType: !1677, size: 64, offset: 8384)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !578, file: !42, line: 1532, baseType: !2763, size: 64, offset: 8448)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2764, line: 52, size: 64, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2765 = !{!2766}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2763, file: !2764, line: 53, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2764, line: 40, size: 256, elements: !2769)
!2769 = !{!2770, !2771, !2776}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2768, file: !2764, line: 42, baseType: !212)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2768, file: !2764, line: 44, baseType: !2772, size: 192)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2764, line: 28, size: 192, elements: !2773)
!2773 = !{!2774, !2775}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2772, file: !2764, line: 29, baseType: !198, size: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2772, file: !2764, line: 31, baseType: !288, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2768, file: !2764, line: 49, baseType: !288, size: 64, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !578, file: !42, line: 1533, baseType: !2763, size: 64, offset: 8512)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !578, file: !42, line: 1534, baseType: !343, size: 128, align: 64, offset: 8576)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !578, file: !42, line: 1535, baseType: !1922, size: 256, offset: 8704)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !578, file: !42, line: 1537, baseType: !1154, size: 192, offset: 8960)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !578, file: !42, line: 1542, baseType: !180, size: 32, offset: 9152)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !578, file: !42, line: 1545, baseType: !212, offset: 9184)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !578, file: !42, line: 1546, baseType: !198, size: 128, offset: 9216)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !578, file: !42, line: 1548, baseType: !212, offset: 9344)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !578, file: !42, line: 1549, baseType: !198, size: 128, offset: 9344)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !408, file: !42, line: 624, baseType: !714, size: 64, offset: 256)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !408, file: !42, line: 631, baseType: !179, size: 64, offset: 320)
!2788 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !42, line: 639, baseType: !2789, size: 32, offset: 384)
!2789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !42, line: 639, size: 32, elements: !2790)
!2790 = !{!2791, !2793}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2789, file: !42, line: 640, baseType: !2792, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2789, file: !42, line: 641, baseType: !5, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !408, file: !42, line: 643, baseType: !491, size: 32, offset: 416)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !408, file: !42, line: 644, baseType: !509, size: 64, offset: 448)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !408, file: !42, line: 645, baseType: !513, size: 128, offset: 512)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !408, file: !42, line: 646, baseType: !513, size: 128, offset: 640)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !408, file: !42, line: 647, baseType: !513, size: 128, offset: 768)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !408, file: !42, line: 648, baseType: !212, offset: 896)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !408, file: !42, line: 649, baseType: !295, size: 16, offset: 896)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !408, file: !42, line: 650, baseType: !1316, size: 8, offset: 912)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !408, file: !42, line: 651, baseType: !1316, size: 8, offset: 920)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !408, file: !42, line: 652, baseType: !2555, size: 64, offset: 960)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !408, file: !42, line: 659, baseType: !179, size: 64, offset: 1024)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !408, file: !42, line: 660, baseType: !748, size: 256, offset: 1088)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !408, file: !42, line: 662, baseType: !179, size: 64, offset: 1344)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !408, file: !42, line: 663, baseType: !179, size: 64, offset: 1408)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !408, file: !42, line: 665, baseType: !620, size: 128, offset: 1472)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !408, file: !42, line: 666, baseType: !198, size: 128, offset: 1600)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !408, file: !42, line: 675, baseType: !198, size: 128, offset: 1728)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !408, file: !42, line: 676, baseType: !198, size: 128, offset: 1856)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !408, file: !42, line: 677, baseType: !198, size: 128, offset: 1984)
!2813 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !42, line: 678, baseType: !2814, size: 128, offset: 2112)
!2814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !42, line: 678, size: 128, elements: !2815)
!2815 = !{!2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2814, file: !42, line: 679, baseType: !616, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2814, file: !42, line: 680, baseType: !343, size: 128, align: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !408, file: !42, line: 682, baseType: !754, size: 64, offset: 2240)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !408, file: !42, line: 683, baseType: !754, size: 64, offset: 2304)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !408, file: !42, line: 684, baseType: !728, size: 32, offset: 2368)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !408, file: !42, line: 685, baseType: !728, size: 32, offset: 2400)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !408, file: !42, line: 686, baseType: !728, size: 32, offset: 2432)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !408, file: !42, line: 688, baseType: !728, size: 32, offset: 2464)
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !42, line: 690, baseType: !2825, size: 64, offset: 2496)
!2825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !42, line: 690, size: 64, elements: !2826)
!2826 = !{!2827, !3050}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2825, file: !42, line: 691, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2830)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1822, size: 2048, elements: !2831)
!2831 = !{!2832, !2833, !2837, !2842, !2846, !2847, !2848, !2852, !2865, !2866, !2874, !2878, !2879, !2883, !2884, !2888, !2893, !2894, !2898, !2902, !3010, !3014, !3015, !3019, !3020, !3024, !3028, !3033, !3037, !3041, !3045, !3049}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2830, file: !42, line: 1823, baseType: !611, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2830, file: !42, line: 1824, baseType: !2834, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!509, !330, !509, !180}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2830, file: !42, line: 1825, baseType: !2838, size: 64, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!284, !330, !253, !300, !2841}
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2830, file: !42, line: 1826, baseType: !2843, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!284, !330, !194, !300, !2841}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2830, file: !42, line: 1827, baseType: !825, size: 64, offset: 256)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2830, file: !42, line: 1828, baseType: !825, size: 64, offset: 320)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2830, file: !42, line: 1829, baseType: !2849, size: 64, offset: 384)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!180, !828, !468}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2830, file: !42, line: 1830, baseType: !2853, size: 64, offset: 448)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!180, !330, !2856}
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1776, size: 128, elements: !2858)
!2858 = !{!2859, !2864}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2857, file: !42, line: 1777, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1773, baseType: !2861)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!180, !2856, !194, !180, !509, !399, !5}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2857, file: !42, line: 1778, baseType: !509, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2830, file: !42, line: 1831, baseType: !2853, size: 64, offset: 512)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2830, file: !42, line: 1832, baseType: !2867, size: 64, offset: 576)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!2870, !330, !2872}
!2870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2871, line: 52, baseType: !5)
!2871 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !597, line: 27, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2830, file: !42, line: 1833, baseType: !2875, size: 64, offset: 640)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!288, !330, !5, !179}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2830, file: !42, line: 1834, baseType: !2875, size: 64, offset: 704)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2830, file: !42, line: 1835, baseType: !2880, size: 64, offset: 768)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!180, !330, !962}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2830, file: !42, line: 1836, baseType: !179, size: 64, offset: 832)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2830, file: !42, line: 1837, baseType: !2885, size: 64, offset: 896)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!180, !407, !330}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2830, file: !42, line: 1838, baseType: !2889, size: 64, offset: 960)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!180, !330, !2892}
!2892 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1007, baseType: !181)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2830, file: !42, line: 1839, baseType: !2885, size: 64, offset: 1024)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2830, file: !42, line: 1840, baseType: !2895, size: 64, offset: 1088)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!180, !330, !509, !509, !180}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2830, file: !42, line: 1841, baseType: !2899, size: 64, offset: 1152)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!180, !180, !330, !180}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2830, file: !42, line: 1842, baseType: !2903, size: 64, offset: 1216)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!180, !330, !180, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1062, size: 1664, elements: !2908)
!2908 = !{!2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2940, !2941, !2942, !2955, !2986}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2907, file: !42, line: 1063, baseType: !2906, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2907, file: !42, line: 1064, baseType: !198, size: 128, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2907, file: !42, line: 1065, baseType: !620, size: 128, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2907, file: !42, line: 1066, baseType: !198, size: 128, offset: 320)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2907, file: !42, line: 1069, baseType: !198, size: 128, offset: 448)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2907, file: !42, line: 1072, baseType: !2892, size: 64, offset: 576)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2907, file: !42, line: 1073, baseType: !5, size: 32, offset: 640)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2907, file: !42, line: 1074, baseType: !405, size: 8, offset: 672)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2907, file: !42, line: 1075, baseType: !5, size: 32, offset: 704)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2907, file: !42, line: 1076, baseType: !180, size: 32, offset: 736)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2907, file: !42, line: 1077, baseType: !1445, size: 128, offset: 768)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2907, file: !42, line: 1078, baseType: !330, size: 64, offset: 896)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2907, file: !42, line: 1079, baseType: !509, size: 64, offset: 960)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2907, file: !42, line: 1080, baseType: !509, size: 64, offset: 1024)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2907, file: !42, line: 1082, baseType: !2924, size: 64, offset: 1088)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !42, line: 1314, size: 320, elements: !2926)
!2926 = !{!2927, !2935, !2936, !2937, !2938, !2939}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2925, file: !42, line: 1315, baseType: !2928)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2929, line: 20, baseType: !2930)
!2929 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2929, line: 11, elements: !2931)
!2931 = !{!2932}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2930, file: !2929, line: 12, baseType: !2933)
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !224, line: 33, baseType: !2934)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 31, elements: !226)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2925, file: !42, line: 1316, baseType: !180, size: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2925, file: !42, line: 1317, baseType: !180, size: 32, offset: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2925, file: !42, line: 1318, baseType: !2924, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2925, file: !42, line: 1319, baseType: !330, size: 64, offset: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2925, file: !42, line: 1320, baseType: !343, size: 128, align: 64, offset: 192)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2907, file: !42, line: 1084, baseType: !179, size: 64, offset: 1152)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2907, file: !42, line: 1085, baseType: !179, size: 64, offset: 1216)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2907, file: !42, line: 1087, baseType: !2943, size: 64, offset: 1280)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2945)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !42, line: 1011, size: 128, elements: !2946)
!2946 = !{!2947, !2951}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2945, file: !42, line: 1012, baseType: !2948, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{null, !2906, !2906}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2945, file: !42, line: 1013, baseType: !2952, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2906}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2907, file: !42, line: 1088, baseType: !2956, size: 64, offset: 1344)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2958)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !42, line: 1016, size: 512, elements: !2959)
!2959 = !{!2960, !2964, !2968, !2969, !2973, !2977, !2981, !2985}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2958, file: !42, line: 1017, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!2892, !2892}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2958, file: !42, line: 1018, baseType: !2965, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{null, !2892}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2958, file: !42, line: 1019, baseType: !2952, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2958, file: !42, line: 1020, baseType: !2970, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!180, !2906, !180}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2958, file: !42, line: 1021, baseType: !2974, size: 64, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!468, !2906}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2958, file: !42, line: 1022, baseType: !2978, size: 64, offset: 320)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!180, !2906, !180, !202}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2958, file: !42, line: 1023, baseType: !2982, size: 64, offset: 384)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2906, !802}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2958, file: !42, line: 1024, baseType: !2974, size: 64, offset: 448)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2907, file: !42, line: 1097, baseType: !2987, size: 256, offset: 1408)
!2987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2907, file: !42, line: 1089, size: 256, elements: !2988)
!2988 = !{!2989, !2998, !3004}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2987, file: !42, line: 1090, baseType: !2990, size: 256)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2991, line: 10, size: 256, elements: !2992)
!2991 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2992 = !{!2993, !2994, !2997}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2990, file: !2991, line: 11, baseType: !393, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2990, file: !2991, line: 12, baseType: !2995, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2991, line: 5, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2990, file: !2991, line: 13, baseType: !198, size: 128, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2987, file: !42, line: 1091, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2991, line: 17, size: 64, elements: !3000)
!3000 = !{!3001}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2999, file: !2991, line: 18, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2991, line: 16, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2987, file: !42, line: 1096, baseType: !3005, size: 192)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2987, file: !42, line: 1092, size: 192, elements: !3006)
!3006 = !{!3007, !3008, !3009}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3005, file: !42, line: 1093, baseType: !198, size: 128)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3005, file: !42, line: 1094, baseType: !180, size: 32, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3005, file: !42, line: 1095, baseType: !5, size: 32, offset: 160)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2830, file: !42, line: 1843, baseType: !3011, size: 64, offset: 1280)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!284, !330, !701, !180, !300, !2841, !180}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2830, file: !42, line: 1844, baseType: !1082, size: 64, offset: 1344)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2830, file: !42, line: 1845, baseType: !3016, size: 64, offset: 1408)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!180, !180}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2830, file: !42, line: 1846, baseType: !2903, size: 64, offset: 1472)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2830, file: !42, line: 1847, baseType: !3021, size: 64, offset: 1536)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!284, !2063, !330, !2841, !300, !5}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2830, file: !42, line: 1848, baseType: !3025, size: 64, offset: 1600)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!284, !330, !2841, !2063, !300, !5}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2830, file: !42, line: 1849, baseType: !3029, size: 64, offset: 1664)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!180, !330, !288, !3032, !802}
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2830, file: !42, line: 1850, baseType: !3034, size: 64, offset: 1728)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!288, !330, !180, !509, !509}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2830, file: !42, line: 1852, baseType: !3038, size: 64, offset: 1792)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !692, !330}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2830, file: !42, line: 1856, baseType: !3042, size: 64, offset: 1856)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!284, !330, !509, !330, !509, !300, !5}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2830, file: !42, line: 1858, baseType: !3046, size: 64, offset: 1920)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!509, !330, !509, !330, !509, !509, !5}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2830, file: !42, line: 1861, baseType: !2895, size: 64, offset: 1984)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2825, file: !42, line: 692, baseType: !645, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !408, file: !42, line: 694, baseType: !3052, size: 64, offset: 2560)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 1100, size: 384, elements: !3054)
!3054 = !{!3055, !3056, !3057, !3058}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3053, file: !42, line: 1101, baseType: !212)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3053, file: !42, line: 1102, baseType: !198, size: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3053, file: !42, line: 1103, baseType: !198, size: 128, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3053, file: !42, line: 1104, baseType: !198, size: 128, offset: 256)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !408, file: !42, line: 695, baseType: !715, size: 1216, align: 64, offset: 2624)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !408, file: !42, line: 696, baseType: !198, size: 128, offset: 3840)
!3061 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !42, line: 697, baseType: !3062, size: 64, offset: 3968)
!3062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !42, line: 697, size: 64, elements: !3063)
!3063 = !{!3064, !3065, !3066, !3069, !3070}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3062, file: !42, line: 698, baseType: !2063, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3062, file: !42, line: 699, baseType: !2580, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3062, file: !42, line: 700, baseType: !3067, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !42, line: 700, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3062, file: !42, line: 701, baseType: !253, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3062, file: !42, line: 702, baseType: !5, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !408, file: !42, line: 705, baseType: !395, size: 32, offset: 4032)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !408, file: !42, line: 708, baseType: !395, size: 32, offset: 4064)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !408, file: !42, line: 709, baseType: !2662, size: 64, offset: 4096)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !408, file: !42, line: 720, baseType: !181, size: 64, offset: 4160)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !361, file: !358, line: 98, baseType: !3076, size: 256, offset: 448)
!3076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 256, elements: !2195)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !361, file: !358, line: 101, baseType: !3078, size: 32, offset: 704)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3079, line: 25, size: 32, elements: !3080)
!3079 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3080 = !{!3081}
!3081 = !DIDerivedType(tag: DW_TAG_member, scope: !3078, file: !3079, line: 26, baseType: !3082, size: 32)
!3082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3078, file: !3079, line: 26, size: 32, elements: !3083)
!3083 = !{!3084}
!3084 = !DIDerivedType(tag: DW_TAG_member, scope: !3082, file: !3079, line: 30, baseType: !3085, size: 32)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3082, file: !3079, line: 30, size: 32, elements: !3086)
!3086 = !{!3087, !3088}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3085, file: !3079, line: 31, baseType: !212)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3085, file: !3079, line: 32, baseType: !180, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !361, file: !358, line: 102, baseType: !2679, size: 64, offset: 768)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !361, file: !358, line: 103, baseType: !577, size: 64, offset: 832)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !361, file: !358, line: 104, baseType: !179, size: 64, offset: 896)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !361, file: !358, line: 105, baseType: !181, size: 64, offset: 960)
!3093 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !358, line: 107, baseType: !3094, size: 128, offset: 1024)
!3094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !358, line: 107, size: 128, elements: !3095)
!3095 = !{!3096, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3094, file: !358, line: 108, baseType: !198, size: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3094, file: !358, line: 109, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !361, file: !358, line: 111, baseType: !198, size: 128, offset: 1152)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !361, file: !358, line: 112, baseType: !198, size: 128, offset: 1280)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !361, file: !358, line: 120, baseType: !3102, size: 128, offset: 1408)
!3102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !358, line: 116, size: 128, elements: !3103)
!3103 = !{!3104, !3105, !3106}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3102, file: !358, line: 117, baseType: !620, size: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3102, file: !358, line: 118, baseType: !375, size: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3102, file: !358, line: 119, baseType: !343, size: 128, align: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !331, file: !42, line: 922, baseType: !407, size: 64, offset: 256)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !331, file: !42, line: 923, baseType: !2828, size: 64, offset: 320)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !331, file: !42, line: 929, baseType: !212, offset: 384)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !331, file: !42, line: 930, baseType: !41, size: 32, offset: 384)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !331, file: !42, line: 931, baseType: !752, size: 64, offset: 448)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !331, file: !42, line: 932, baseType: !5, size: 32, offset: 512)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !331, file: !42, line: 933, baseType: !2675, size: 32, offset: 544)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !331, file: !42, line: 934, baseType: !1154, size: 192, offset: 576)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !331, file: !42, line: 935, baseType: !509, size: 64, offset: 768)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !331, file: !42, line: 936, baseType: !3117, size: 192, offset: 832)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 885, size: 192, elements: !3118)
!3118 = !{!3119, !3120, !3121, !3122, !3123, !3124}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3117, file: !42, line: 886, baseType: !2928)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3117, file: !42, line: 887, baseType: !1435, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3117, file: !42, line: 888, baseType: !50, size: 32, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3117, file: !42, line: 889, baseType: !413, size: 32, offset: 96)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3117, file: !42, line: 889, baseType: !413, size: 32, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3117, file: !42, line: 890, baseType: !180, size: 32, offset: 160)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !331, file: !42, line: 937, baseType: !1511, size: 64, offset: 1024)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !331, file: !42, line: 938, baseType: !3127, size: 256, offset: 1088)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 896, size: 256, elements: !3128)
!3128 = !{!3129, !3130, !3131, !3132, !3133, !3134}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3127, file: !42, line: 897, baseType: !179, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3127, file: !42, line: 898, baseType: !5, size: 32, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3127, file: !42, line: 899, baseType: !5, size: 32, offset: 96)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3127, file: !42, line: 902, baseType: !5, size: 32, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3127, file: !42, line: 903, baseType: !5, size: 32, offset: 160)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3127, file: !42, line: 904, baseType: !509, size: 64, offset: 192)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !331, file: !42, line: 940, baseType: !399, size: 64, offset: 1344)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !331, file: !42, line: 945, baseType: !181, size: 64, offset: 1408)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !331, file: !42, line: 949, baseType: !198, size: 128, offset: 1472)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !331, file: !42, line: 950, baseType: !198, size: 128, offset: 1600)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !331, file: !42, line: 952, baseType: !714, size: 64, offset: 1728)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !331, file: !42, line: 953, baseType: !890, size: 32, offset: 1792)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !331, file: !42, line: 954, baseType: !890, size: 32, offset: 1824)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !321, file: !278, line: 174, baseType: !327, size: 64, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !321, file: !278, line: 176, baseType: !3144, size: 64, offset: 384)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!180, !330, !205, !320, !962}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !309, file: !278, line: 90, baseType: !304, size: 64, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !309, file: !278, line: 91, baseType: !3149, size: 64, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !268, file: !191, line: 143, baseType: !3151, size: 64, offset: 256)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!3154, !205}
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3156)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !3157)
!3157 = !{!3158, !3159, !3163, !3167, !3173, !3177}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3156, file: !59, line: 40, baseType: !58, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3156, file: !59, line: 41, baseType: !3160, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!468}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3156, file: !59, line: 42, baseType: !3164, size: 64, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!181}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3156, file: !59, line: 43, baseType: !3168, size: 64, offset: 192)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!2092, !3171}
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3156, file: !59, line: 44, baseType: !3174, size: 64, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!2092}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3156, file: !59, line: 45, baseType: !446, size: 64, offset: 320)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !268, file: !191, line: 144, baseType: !3179, size: 64, offset: 320)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!2092, !205}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !268, file: !191, line: 145, baseType: !3183, size: 64, offset: 384)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{null, !205, !3186, !3187}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !190, file: !191, line: 70, baseType: !3189, size: 64, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !597, line: 123, size: 1024, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3320, !3321, !3322, !3323, !3324}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3190, file: !597, line: 124, baseType: !728, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3190, file: !597, line: 125, baseType: !728, size: 32, offset: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3190, file: !597, line: 135, baseType: !3189, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3190, file: !597, line: 136, baseType: !194, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3190, file: !597, line: 138, baseType: !741, size: 192, align: 64, offset: 192)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3190, file: !597, line: 140, baseType: !2092, size: 64, offset: 384)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3190, file: !597, line: 141, baseType: !5, size: 32, offset: 448)
!3199 = !DIDerivedType(tag: DW_TAG_member, scope: !3190, file: !597, line: 142, baseType: !3200, size: 256, offset: 512)
!3200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3190, file: !597, line: 142, size: 256, elements: !3201)
!3201 = !{!3202, !3248, !3252}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3200, file: !597, line: 143, baseType: !3203, size: 192)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !597, line: 91, size: 192, elements: !3204)
!3204 = !{!3205, !3206, !3207}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3203, file: !597, line: 92, baseType: !179, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3203, file: !597, line: 94, baseType: !737, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3203, file: !597, line: 100, baseType: !3208, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !597, line: 180, size: 704, elements: !3210)
!3210 = !{!3211, !3212, !3213, !3220, !3221, !3222, !3246, !3247}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3209, file: !597, line: 182, baseType: !3189, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3209, file: !597, line: 183, baseType: !5, size: 32, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3209, file: !597, line: 186, baseType: !3214, size: 192, offset: 128)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3215, line: 19, size: 192, elements: !3216)
!3215 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3216 = !{!3217, !3218, !3219}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3214, file: !3215, line: 20, baseType: !719, size: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3214, file: !3215, line: 21, baseType: !5, size: 32, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3214, file: !3215, line: 22, baseType: !5, size: 32, offset: 160)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3209, file: !597, line: 187, baseType: !393, size: 32, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3209, file: !597, line: 188, baseType: !393, size: 32, offset: 352)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3209, file: !597, line: 189, baseType: !3223, size: 64, offset: 384)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !597, line: 168, size: 320, elements: !3225)
!3225 = !{!3226, !3230, !3234, !3238, !3242}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3224, file: !597, line: 169, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!180, !692, !3208}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3224, file: !597, line: 171, baseType: !3231, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!180, !3189, !194, !294}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3224, file: !597, line: 173, baseType: !3235, size: 64, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!180, !3189}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3224, file: !597, line: 174, baseType: !3239, size: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!180, !3189, !3189, !194}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3224, file: !597, line: 176, baseType: !3243, size: 64, offset: 256)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!180, !692, !3189, !3208}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3209, file: !597, line: 192, baseType: !198, size: 128, offset: 448)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3209, file: !597, line: 194, baseType: !1445, size: 128, offset: 576)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3200, file: !597, line: 144, baseType: !3249, size: 64)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !597, line: 103, size: 64, elements: !3250)
!3250 = !{!3251}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3249, file: !597, line: 104, baseType: !3189, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3200, file: !597, line: 145, baseType: !3253, size: 256)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !597, line: 107, size: 256, elements: !3254)
!3254 = !{!3255, !3315, !3318, !3319}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3253, file: !597, line: 108, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3258)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !597, line: 217, size: 768, elements: !3259)
!3259 = !{!3260, !3280, !3284, !3288, !3292, !3296, !3300, !3304, !3305, !3306, !3307, !3311}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3258, file: !597, line: 222, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!180, !3264}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !597, line: 197, size: 1088, elements: !3266)
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3265, file: !597, line: 199, baseType: !3189, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3265, file: !597, line: 200, baseType: !330, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3265, file: !597, line: 201, baseType: !692, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3265, file: !597, line: 202, baseType: !181, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3265, file: !597, line: 205, baseType: !1154, size: 192, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3265, file: !597, line: 206, baseType: !1154, size: 192, offset: 448)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3265, file: !597, line: 207, baseType: !180, size: 32, offset: 640)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3265, file: !597, line: 208, baseType: !198, size: 128, offset: 704)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3265, file: !597, line: 209, baseType: !253, size: 64, offset: 832)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3265, file: !597, line: 211, baseType: !300, size: 64, offset: 896)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3265, file: !597, line: 212, baseType: !468, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3265, file: !597, line: 213, baseType: !468, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3265, file: !597, line: 214, baseType: !990, size: 64, offset: 1024)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3258, file: !597, line: 223, baseType: !3281, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{null, !3264}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3258, file: !597, line: 236, baseType: !3285, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!180, !692, !181}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3258, file: !597, line: 238, baseType: !3289, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!181, !692, !2841}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3258, file: !597, line: 239, baseType: !3293, size: 64, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!181, !692, !181, !2841}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3258, file: !597, line: 240, baseType: !3297, size: 64, offset: 320)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !692, !181}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3258, file: !597, line: 242, baseType: !3301, size: 64, offset: 384)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!284, !3264, !253, !300, !509}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3258, file: !597, line: 252, baseType: !300, size: 64, offset: 448)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3258, file: !597, line: 259, baseType: !468, size: 8, offset: 512)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3258, file: !597, line: 260, baseType: !3301, size: 64, offset: 576)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3258, file: !597, line: 263, baseType: !3308, size: 64, offset: 640)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!2870, !3264, !2872}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3258, file: !597, line: 266, baseType: !3312, size: 64, offset: 704)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!180, !3264, !962}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3253, file: !597, line: 109, baseType: !3316, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !597, line: 31, flags: DIFlagFwdDecl)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3253, file: !597, line: 110, baseType: !509, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3253, file: !597, line: 111, baseType: !3189, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3190, file: !597, line: 148, baseType: !181, size: 64, offset: 768)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3190, file: !597, line: 154, baseType: !399, size: 64, offset: 832)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3190, file: !597, line: 156, baseType: !295, size: 16, offset: 896)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3190, file: !597, line: 157, baseType: !294, size: 16, offset: 912)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3190, file: !597, line: 158, baseType: !3325, size: 64, offset: 960)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !597, line: 32, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !190, file: !191, line: 71, baseType: !3328, size: 32, offset: 448)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3329, line: 19, size: 32, elements: !3330)
!3329 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3330 = !{!3331}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3328, file: !3329, line: 20, baseType: !1195, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !190, file: !191, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !190, file: !191, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !190, file: !191, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !190, file: !191, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !190, file: !191, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !71, line: 463, baseType: !186, size: 64, offset: 512)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !187, file: !71, line: 465, baseType: !3339, size: 64, offset: 576)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !71, line: 36, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !187, file: !71, line: 467, baseType: !194, size: 64, offset: 640)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !187, file: !71, line: 468, baseType: !3343, size: 64, offset: 704)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3345)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !71, line: 87, size: 384, elements: !3346)
!3346 = !{!3347, !3348, !3349, !3353, !3358, !3362}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3345, file: !71, line: 88, baseType: !194, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3345, file: !71, line: 89, baseType: !306, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3345, file: !71, line: 90, baseType: !3350, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!180, !186, !248}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3345, file: !71, line: 91, baseType: !3354, size: 64, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!253, !186, !3357, !3186, !3187}
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3345, file: !71, line: 93, baseType: !3359, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{null, !186}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3345, file: !71, line: 95, baseType: !3363, size: 64, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3365)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !78, line: 278, size: 1472, elements: !3366)
!3366 = !{!3367, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3365, file: !78, line: 279, baseType: !3368, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!180, !186}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3365, file: !78, line: 280, baseType: !3359, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3365, file: !78, line: 281, baseType: !3368, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3365, file: !78, line: 282, baseType: !3368, size: 64, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3365, file: !78, line: 283, baseType: !3368, size: 64, offset: 256)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3365, file: !78, line: 284, baseType: !3368, size: 64, offset: 320)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3365, file: !78, line: 285, baseType: !3368, size: 64, offset: 384)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3365, file: !78, line: 286, baseType: !3368, size: 64, offset: 448)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3365, file: !78, line: 287, baseType: !3368, size: 64, offset: 512)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3365, file: !78, line: 288, baseType: !3368, size: 64, offset: 576)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3365, file: !78, line: 289, baseType: !3368, size: 64, offset: 640)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3365, file: !78, line: 290, baseType: !3368, size: 64, offset: 704)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3365, file: !78, line: 291, baseType: !3368, size: 64, offset: 768)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3365, file: !78, line: 292, baseType: !3368, size: 64, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3365, file: !78, line: 293, baseType: !3368, size: 64, offset: 896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3365, file: !78, line: 294, baseType: !3368, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3365, file: !78, line: 295, baseType: !3368, size: 64, offset: 1024)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3365, file: !78, line: 296, baseType: !3368, size: 64, offset: 1088)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3365, file: !78, line: 297, baseType: !3368, size: 64, offset: 1152)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3365, file: !78, line: 298, baseType: !3368, size: 64, offset: 1216)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3365, file: !78, line: 299, baseType: !3368, size: 64, offset: 1280)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3365, file: !78, line: 300, baseType: !3368, size: 64, offset: 1344)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3365, file: !78, line: 301, baseType: !3368, size: 64, offset: 1408)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !187, file: !71, line: 470, baseType: !3394, size: 64, offset: 768)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3396, line: 82, size: 1408, elements: !3397)
!3396 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3397 = !{!3398, !3399, !3400, !3401, !3402, !3403, !3404, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3461, !3464, !3465}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3395, file: !3396, line: 83, baseType: !194, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3395, file: !3396, line: 84, baseType: !194, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3395, file: !3396, line: 85, baseType: !186, size: 64, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3395, file: !3396, line: 86, baseType: !306, size: 64, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3395, file: !3396, line: 87, baseType: !306, size: 64, offset: 256)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3395, file: !3396, line: 88, baseType: !306, size: 64, offset: 320)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3395, file: !3396, line: 90, baseType: !3405, size: 64, offset: 384)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!180, !186, !3408}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !3410)
!3410 = !{!3411, !3412, !3413, !3414, !3415, !3416, !3417, !3421, !3425, !3426, !3427, !3428, !3429, !3437, !3438, !3439, !3440, !3441, !3442}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3409, file: !65, line: 96, baseType: !194, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3409, file: !65, line: 97, baseType: !3394, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3409, file: !65, line: 99, baseType: !611, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3409, file: !65, line: 100, baseType: !194, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3409, file: !65, line: 102, baseType: !468, size: 8, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3409, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3409, file: !65, line: 105, baseType: !3418, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3420)
!3420 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !65, line: 105, flags: DIFlagFwdDecl)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3409, file: !65, line: 106, baseType: !3422, size: 64, offset: 384)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3424)
!3424 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !65, line: 106, flags: DIFlagFwdDecl)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3409, file: !65, line: 108, baseType: !3368, size: 64, offset: 448)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3409, file: !65, line: 109, baseType: !3359, size: 64, offset: 512)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3409, file: !65, line: 110, baseType: !3368, size: 64, offset: 576)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3409, file: !65, line: 111, baseType: !3359, size: 64, offset: 640)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3409, file: !65, line: 112, baseType: !3430, size: 64, offset: 704)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!180, !186, !3433}
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !78, line: 52, baseType: !3434)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !78, line: 50, size: 32, elements: !3435)
!3435 = !{!3436}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3434, file: !78, line: 51, baseType: !180, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3409, file: !65, line: 113, baseType: !3368, size: 64, offset: 768)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3409, file: !65, line: 114, baseType: !306, size: 64, offset: 832)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3409, file: !65, line: 115, baseType: !306, size: 64, offset: 896)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3409, file: !65, line: 117, baseType: !3363, size: 64, offset: 960)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3409, file: !65, line: 118, baseType: !3359, size: 64, offset: 1024)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3409, file: !65, line: 120, baseType: !3443, size: 64, offset: 1088)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3395, file: !3396, line: 91, baseType: !3350, size: 64, offset: 448)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3395, file: !3396, line: 92, baseType: !3368, size: 64, offset: 512)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3395, file: !3396, line: 93, baseType: !3359, size: 64, offset: 576)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3395, file: !3396, line: 94, baseType: !3368, size: 64, offset: 640)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3395, file: !3396, line: 95, baseType: !3359, size: 64, offset: 704)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3395, file: !3396, line: 97, baseType: !3368, size: 64, offset: 768)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3395, file: !3396, line: 98, baseType: !3368, size: 64, offset: 832)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3395, file: !3396, line: 100, baseType: !3430, size: 64, offset: 896)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3395, file: !3396, line: 101, baseType: !3368, size: 64, offset: 960)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3395, file: !3396, line: 103, baseType: !3368, size: 64, offset: 1024)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3395, file: !3396, line: 105, baseType: !3368, size: 64, offset: 1088)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3395, file: !3396, line: 107, baseType: !3363, size: 64, offset: 1152)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3395, file: !3396, line: 109, baseType: !3458, size: 64, offset: 1216)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3460)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3396, line: 109, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3395, file: !3396, line: 111, baseType: !3462, size: 64, offset: 1280)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3396, line: 111, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3395, file: !3396, line: 112, baseType: !626, offset: 1344)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3395, file: !3396, line: 114, baseType: !468, size: 8, offset: 1344)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !187, file: !71, line: 471, baseType: !3408, size: 64, offset: 832)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !187, file: !71, line: 473, baseType: !181, size: 64, offset: 896)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !187, file: !71, line: 475, baseType: !181, size: 64, offset: 960)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !187, file: !71, line: 480, baseType: !1154, size: 192, offset: 1024)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !187, file: !71, line: 484, baseType: !3471, size: 576, offset: 1216)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !71, line: 361, size: 576, elements: !3472)
!3472 = !{!3473, !3474, !3475, !3476, !3477, !3478}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3471, file: !71, line: 362, baseType: !198, size: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3471, file: !71, line: 363, baseType: !198, size: 128, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3471, file: !71, line: 364, baseType: !198, size: 128, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3471, file: !71, line: 365, baseType: !198, size: 128, offset: 384)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3471, file: !71, line: 366, baseType: !468, size: 8, offset: 512)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3471, file: !71, line: 367, baseType: !70, size: 32, offset: 544)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !187, file: !71, line: 485, baseType: !3480, size: 2304, offset: 1792)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !78, line: 565, size: 2304, elements: !3481)
!3481 = !{!3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3577, !3581}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3480, file: !78, line: 566, baseType: !3433, size: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3480, file: !78, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3480, file: !78, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3480, file: !78, line: 569, baseType: !468, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3480, file: !78, line: 570, baseType: !468, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3480, file: !78, line: 571, baseType: !468, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3480, file: !78, line: 572, baseType: !468, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3480, file: !78, line: 573, baseType: !468, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3480, file: !78, line: 574, baseType: !468, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3480, file: !78, line: 575, baseType: !468, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3480, file: !78, line: 576, baseType: !468, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3480, file: !78, line: 577, baseType: !393, size: 32, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3480, file: !78, line: 578, baseType: !212, offset: 96)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3480, file: !78, line: 580, baseType: !198, size: 128, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3480, file: !78, line: 581, baseType: !1466, size: 192, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3480, file: !78, line: 582, baseType: !3498, size: 64, offset: 448)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3500, line: 43, size: 1472, elements: !3501)
!3500 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3509, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3499, file: !3500, line: 44, baseType: !194, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3499, file: !3500, line: 45, baseType: !180, size: 32, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3499, file: !3500, line: 46, baseType: !198, size: 128, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3499, file: !3500, line: 47, baseType: !212, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3499, file: !3500, line: 48, baseType: !3507, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !78, line: 533, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3499, file: !3500, line: 49, baseType: !3510, size: 320, offset: 320)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3511, line: 11, size: 320, elements: !3512)
!3511 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3512 = !{!3513, !3514, !3515, !3520}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3510, file: !3511, line: 16, baseType: !620, size: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3510, file: !3511, line: 17, baseType: !179, size: 64, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3510, file: !3511, line: 18, baseType: !3516, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{null, !3519}
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3510, file: !3511, line: 19, baseType: !393, size: 32, offset: 256)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3499, file: !3500, line: 50, baseType: !179, size: 64, offset: 640)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3499, file: !3500, line: 51, baseType: !1264, size: 64, offset: 704)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3499, file: !3500, line: 52, baseType: !1264, size: 64, offset: 768)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3499, file: !3500, line: 53, baseType: !1264, size: 64, offset: 832)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3499, file: !3500, line: 54, baseType: !1264, size: 64, offset: 896)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3499, file: !3500, line: 55, baseType: !1264, size: 64, offset: 960)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3499, file: !3500, line: 56, baseType: !179, size: 64, offset: 1024)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3499, file: !3500, line: 57, baseType: !179, size: 64, offset: 1088)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3499, file: !3500, line: 58, baseType: !179, size: 64, offset: 1152)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3499, file: !3500, line: 59, baseType: !179, size: 64, offset: 1216)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3499, file: !3500, line: 60, baseType: !179, size: 64, offset: 1280)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3499, file: !3500, line: 61, baseType: !186, size: 64, offset: 1344)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3499, file: !3500, line: 62, baseType: !468, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3499, file: !3500, line: 63, baseType: !468, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3480, file: !78, line: 583, baseType: !468, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3480, file: !78, line: 584, baseType: !468, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3480, file: !78, line: 585, baseType: !468, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3480, file: !78, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3480, file: !78, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3480, file: !78, line: 592, baseType: !1256, size: 512, offset: 576)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3480, file: !78, line: 593, baseType: !399, size: 64, offset: 1088)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3480, file: !78, line: 594, baseType: !1922, size: 256, offset: 1152)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3480, file: !78, line: 595, baseType: !1445, size: 128, offset: 1408)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3480, file: !78, line: 596, baseType: !3507, size: 64, offset: 1536)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3480, file: !78, line: 597, baseType: !728, size: 32, offset: 1600)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3480, file: !78, line: 598, baseType: !728, size: 32, offset: 1632)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3480, file: !78, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3480, file: !78, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3480, file: !78, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3480, file: !78, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3480, file: !78, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3480, file: !78, line: 604, baseType: !468, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3480, file: !78, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3480, file: !78, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3480, file: !78, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3480, file: !78, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3480, file: !78, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3480, file: !78, line: 610, baseType: !5, size: 32, offset: 1696)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3480, file: !78, line: 611, baseType: !77, size: 32, offset: 1728)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3480, file: !78, line: 612, baseType: !85, size: 32, offset: 1760)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3480, file: !78, line: 613, baseType: !180, size: 32, offset: 1792)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3480, file: !78, line: 614, baseType: !180, size: 32, offset: 1824)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3480, file: !78, line: 615, baseType: !399, size: 64, offset: 1856)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3480, file: !78, line: 616, baseType: !399, size: 64, offset: 1920)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3480, file: !78, line: 617, baseType: !399, size: 64, offset: 1984)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3480, file: !78, line: 618, baseType: !399, size: 64, offset: 2048)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3480, file: !78, line: 620, baseType: !3568, size: 64, offset: 2112)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !78, line: 536, size: 256, elements: !3570)
!3570 = !{!3571, !3572, !3573, !3574}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3569, file: !78, line: 537, baseType: !212)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3569, file: !78, line: 538, baseType: !5, size: 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3569, file: !78, line: 540, baseType: !198, size: 128, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3569, file: !78, line: 543, baseType: !3575, size: 64, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !78, line: 534, flags: DIFlagFwdDecl)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3480, file: !78, line: 621, baseType: !3578, size: 64, offset: 2176)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !186, !1408}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3480, file: !78, line: 622, baseType: !3582, size: 64, offset: 2240)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !78, line: 622, flags: DIFlagFwdDecl)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !187, file: !71, line: 486, baseType: !3585, size: 64, offset: 4096)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !78, line: 642, size: 1792, elements: !3587)
!3587 = !{!3588, !3589, !3590, !3594, !3595, !3596}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3586, file: !78, line: 643, baseType: !3365, size: 1472)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3586, file: !78, line: 644, baseType: !3368, size: 64, offset: 1472)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3586, file: !78, line: 645, baseType: !3591, size: 64, offset: 1536)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !186, !468}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3586, file: !78, line: 646, baseType: !3368, size: 64, offset: 1600)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3586, file: !78, line: 647, baseType: !3359, size: 64, offset: 1664)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3586, file: !78, line: 648, baseType: !3359, size: 64, offset: 1728)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !187, file: !71, line: 493, baseType: !3598, size: 64, offset: 4160)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !71, line: 493, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !187, file: !71, line: 499, baseType: !198, size: 128, offset: 4224)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !187, file: !71, line: 502, baseType: !3602, size: 64, offset: 4352)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3604)
!3604 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !71, line: 502, flags: DIFlagFwdDecl)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !187, file: !71, line: 504, baseType: !3606, size: 64, offset: 4416)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !187, file: !71, line: 505, baseType: !399, size: 64, offset: 4480)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !187, file: !71, line: 510, baseType: !399, size: 64, offset: 4544)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !187, file: !71, line: 511, baseType: !3610, size: 64, offset: 4608)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3612)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !71, line: 511, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !187, file: !71, line: 513, baseType: !3614, size: 64, offset: 4672)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !71, line: 288, size: 128, elements: !3616)
!3616 = !{!3617, !3618}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3615, file: !71, line: 293, baseType: !5, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3615, file: !71, line: 294, baseType: !179, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !187, file: !71, line: 515, baseType: !198, size: 128, offset: 4736)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !187, file: !71, line: 526, baseType: !3621, offset: 4864)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3622, line: 5, elements: !226)
!3622 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !187, file: !71, line: 528, baseType: !3624, size: 64, offset: 4864)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3626, line: 14, flags: DIFlagFwdDecl)
!3626 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !187, file: !71, line: 529, baseType: !3628, size: 64, offset: 4928)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3630, line: 17, size: 192, elements: !3631)
!3630 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3631 = !{!3632, !3633, !3716}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3629, file: !3630, line: 18, baseType: !3628, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3629, file: !3630, line: 19, baseType: !3634, size: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3636)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3630, line: 110, size: 1152, elements: !3637)
!3637 = !{!3638, !3642, !3646, !3652, !3658, !3662, !3666, !3671, !3675, !3676, !3680, !3684, !3688, !3699, !3700, !3701, !3702, !3712}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3636, file: !3630, line: 111, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!3628, !3628}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3636, file: !3630, line: 112, baseType: !3643, size: 64, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{null, !3628}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3636, file: !3630, line: 113, baseType: !3647, size: 64, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!468, !3650}
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3629)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3636, file: !3630, line: 114, baseType: !3653, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!2092, !3650, !3656}
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3636, file: !3630, line: 116, baseType: !3659, size: 64, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!468, !3650, !194}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3636, file: !3630, line: 118, baseType: !3663, size: 64, offset: 320)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!180, !3650, !194, !5, !181, !300}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3636, file: !3630, line: 123, baseType: !3667, size: 64, offset: 384)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!180, !3650, !194, !3670, !300}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3636, file: !3630, line: 126, baseType: !3672, size: 64, offset: 448)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!194, !3650}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3636, file: !3630, line: 127, baseType: !3672, size: 64, offset: 512)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3636, file: !3630, line: 128, baseType: !3677, size: 64, offset: 576)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!3628, !3650}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3636, file: !3630, line: 130, baseType: !3681, size: 64, offset: 640)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!3628, !3650, !3628}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3636, file: !3630, line: 133, baseType: !3685, size: 64, offset: 704)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!3628, !3650, !194}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3636, file: !3630, line: 135, baseType: !3689, size: 64, offset: 768)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!180, !3650, !194, !194, !5, !5, !3692}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3630, line: 43, size: 640, elements: !3694)
!3694 = !{!3695, !3696, !3697}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3693, file: !3630, line: 44, baseType: !3628, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3693, file: !3630, line: 45, baseType: !5, size: 32, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3693, file: !3630, line: 46, baseType: !3698, size: 512, offset: 128)
!3698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 512, elements: !1294)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3636, file: !3630, line: 140, baseType: !3681, size: 64, offset: 832)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3636, file: !3630, line: 143, baseType: !3677, size: 64, offset: 896)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3636, file: !3630, line: 145, baseType: !3639, size: 64, offset: 960)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3636, file: !3630, line: 146, baseType: !3703, size: 64, offset: 1024)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!180, !3650, !3706}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3630, line: 29, size: 128, elements: !3708)
!3708 = !{!3709, !3710, !3711}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3707, file: !3630, line: 30, baseType: !5, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3707, file: !3630, line: 31, baseType: !5, size: 32, offset: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3707, file: !3630, line: 32, baseType: !3650, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3636, file: !3630, line: 148, baseType: !3713, size: 64, offset: 1088)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!180, !3650, !186}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3629, file: !3630, line: 20, baseType: !186, size: 64, offset: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !187, file: !71, line: 534, baseType: !491, size: 32, offset: 4992)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !187, file: !71, line: 535, baseType: !393, size: 32, offset: 5024)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !187, file: !71, line: 537, baseType: !212, offset: 5056)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !187, file: !71, line: 538, baseType: !198, size: 128, offset: 5056)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !187, file: !71, line: 540, baseType: !3722, size: 64, offset: 5184)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3724, line: 54, size: 960, elements: !3725)
!3724 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3725 = !{!3726, !3727, !3728, !3729, !3730, !3731, !3732, !3736, !3740, !3741, !3742, !3743, !3747, !3751, !3752}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3723, file: !3724, line: 55, baseType: !194, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3723, file: !3724, line: 56, baseType: !611, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3723, file: !3724, line: 58, baseType: !306, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3723, file: !3724, line: 59, baseType: !306, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3723, file: !3724, line: 60, baseType: !205, size: 64, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3723, file: !3724, line: 62, baseType: !3350, size: 64, offset: 320)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3723, file: !3724, line: 63, baseType: !3733, size: 64, offset: 384)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!253, !186, !3357}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3723, file: !3724, line: 65, baseType: !3737, size: 64, offset: 448)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{null, !3722}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3723, file: !3724, line: 66, baseType: !3359, size: 64, offset: 512)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3723, file: !3724, line: 68, baseType: !3368, size: 64, offset: 576)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3723, file: !3724, line: 70, baseType: !3154, size: 64, offset: 640)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3723, file: !3724, line: 71, baseType: !3744, size: 64, offset: 704)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!2092, !186}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3723, file: !3724, line: 73, baseType: !3748, size: 64, offset: 768)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{null, !186, !3186, !3187}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3723, file: !3724, line: 75, baseType: !3363, size: 64, offset: 832)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3723, file: !3724, line: 77, baseType: !3462, size: 64, offset: 896)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !187, file: !71, line: 541, baseType: !306, size: 64, offset: 5248)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !187, file: !71, line: 543, baseType: !3359, size: 64, offset: 5312)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !187, file: !71, line: 544, baseType: !3756, size: 64, offset: 5376)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !71, line: 45, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !187, file: !71, line: 545, baseType: !3759, size: 64, offset: 5440)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !71, line: 47, flags: DIFlagFwdDecl)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !187, file: !71, line: 547, baseType: !468, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !187, file: !71, line: 548, baseType: !468, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !187, file: !71, line: 549, baseType: !468, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !187, file: !71, line: 550, baseType: !468, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !183, file: !99, line: 251, baseType: !3766, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !99, line: 220, size: 128, elements: !3768)
!3768 = !{!3769, !3770}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3767, file: !99, line: 221, baseType: !181, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3767, file: !99, line: 222, baseType: !901, size: 64, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !183, file: !99, line: 252, baseType: !5, size: 32, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !183, file: !99, line: 253, baseType: !91, size: 32, offset: 160)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !183, file: !99, line: 254, baseType: !3328, size: 32, offset: 192)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !196)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3779)
!3779 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !180)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3781 = !{!"rsp"}
!3782 = !{i32 7, !"Dwarf Version", i32 4}
!3783 = !{i32 2, !"Debug Info Version", i32 3}
!3784 = !{i32 1, !"wchar_size", i32 2}
!3785 = !{i32 1, !"Code Model", i32 2}
!3786 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3787 = distinct !DISubprogram(name: "comedi_buf_map_get", scope: !1, file: !1, line: 190, type: !3788, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !182}
!3790 = !DILocalVariable(name: "bm", arg: 1, scope: !3787, file: !1, line: 190, type: !182)
!3791 = !DILocation(line: 190, column: 48, scope: !3787)
!3792 = !DILocation(line: 192, column: 6, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3787, file: !1, line: 192, column: 6)
!3794 = !DILocation(line: 192, column: 6, scope: !3787)
!3795 = !DILocation(line: 193, column: 13, scope: !3793)
!3796 = !DILocation(line: 193, column: 17, scope: !3793)
!3797 = !DILocation(line: 193, column: 3, scope: !3793)
!3798 = !DILocation(line: 194, column: 1, scope: !3787)
!3799 = distinct !DISubprogram(name: "kref_get", scope: !3329, file: !3329, line: 43, type: !3800, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{null, !3802}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3803 = !DILocalVariable(name: "kref", arg: 1, scope: !3799, file: !3329, line: 43, type: !3802)
!3804 = !DILocation(line: 43, column: 42, scope: !3799)
!3805 = !DILocation(line: 45, column: 16, scope: !3799)
!3806 = !DILocation(line: 45, column: 22, scope: !3799)
!3807 = !DILocation(line: 45, column: 2, scope: !3799)
!3808 = !DILocation(line: 46, column: 1, scope: !3799)
!3809 = distinct !DISubprogram(name: "comedi_buf_map_put", scope: !1, file: !1, line: 196, type: !3810, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!180, !182}
!3812 = !DILocalVariable(name: "bm", arg: 1, scope: !3809, file: !1, line: 196, type: !182)
!3813 = !DILocation(line: 196, column: 47, scope: !3809)
!3814 = !DILocation(line: 198, column: 6, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3809, file: !1, line: 198, column: 6)
!3816 = !DILocation(line: 198, column: 6, scope: !3809)
!3817 = !DILocation(line: 199, column: 20, scope: !3815)
!3818 = !DILocation(line: 199, column: 24, scope: !3815)
!3819 = !DILocation(line: 199, column: 10, scope: !3815)
!3820 = !DILocation(line: 199, column: 3, scope: !3815)
!3821 = !DILocation(line: 200, column: 2, scope: !3809)
!3822 = !DILocation(line: 201, column: 1, scope: !3809)
!3823 = distinct !DISubprogram(name: "kref_put", scope: !3329, file: !3329, line: 62, type: !3824, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!180, !3802, !3826}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3827 = !DILocalVariable(name: "kref", arg: 1, scope: !3823, file: !3329, line: 62, type: !3802)
!3828 = !DILocation(line: 62, column: 41, scope: !3823)
!3829 = !DILocalVariable(name: "release", arg: 2, scope: !3823, file: !3329, line: 62, type: !3826)
!3830 = !DILocation(line: 62, column: 54, scope: !3823)
!3831 = !DILocation(line: 64, column: 29, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3823, file: !3329, line: 64, column: 6)
!3833 = !DILocation(line: 64, column: 35, scope: !3832)
!3834 = !DILocation(line: 64, column: 6, scope: !3832)
!3835 = !DILocation(line: 64, column: 6, scope: !3823)
!3836 = !DILocation(line: 65, column: 3, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3832, file: !3329, line: 64, column: 46)
!3838 = !DILocation(line: 65, column: 11, scope: !3837)
!3839 = !DILocation(line: 66, column: 3, scope: !3837)
!3840 = !DILocation(line: 68, column: 2, scope: !3823)
!3841 = !DILocation(line: 69, column: 1, scope: !3823)
!3842 = distinct !DISubprogram(name: "comedi_buf_map_kref_release", scope: !1, file: !1, line: 22, type: !3800, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3843 = !DILocalVariable(name: "page", arg: 1, scope: !3844, file: !123, line: 354, type: !701)
!3844 = distinct !DISubprogram(name: "ClearPageReserved", scope: !123, file: !123, line: 354, type: !822, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3845 = !DILocation(line: 354, column: 1, scope: !3844, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 42, column: 5, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !1, line: 40, column: 38)
!3848 = distinct !DILexicalBlock(scope: !3849, file: !1, line: 40, column: 4)
!3849 = distinct !DILexicalBlock(scope: !3850, file: !1, line: 40, column: 4)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !1, line: 39, column: 10)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !1, line: 30, column: 7)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !1, line: 29, column: 21)
!3853 = distinct !DILexicalBlock(scope: !3842, file: !1, line: 29, column: 6)
!3854 = !DILocalVariable(name: "kref", arg: 1, scope: !3842, file: !1, line: 22, type: !3802)
!3855 = !DILocation(line: 22, column: 54, scope: !3842)
!3856 = !DILocalVariable(name: "bm", scope: !3842, file: !1, line: 24, type: !182)
!3857 = !DILocation(line: 24, column: 25, scope: !3842)
!3858 = !DILocalVariable(name: "__mptr", scope: !3859, file: !1, line: 25, type: !181)
!3859 = distinct !DILexicalBlock(scope: !3842, file: !1, line: 25, column: 3)
!3860 = !DILocation(line: 25, column: 3, scope: !3859)
!3861 = !DILocation(line: 25, column: 3, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3859, file: !1, line: 25, column: 3)
!3863 = !DILocalVariable(name: "buf", scope: !3842, file: !1, line: 26, type: !3766)
!3864 = !DILocation(line: 26, column: 26, scope: !3842)
!3865 = !DILocalVariable(name: "i", scope: !3842, file: !1, line: 27, type: !5)
!3866 = !DILocation(line: 27, column: 15, scope: !3842)
!3867 = !DILocation(line: 29, column: 6, scope: !3853)
!3868 = !DILocation(line: 29, column: 10, scope: !3853)
!3869 = !DILocation(line: 29, column: 6, scope: !3842)
!3870 = !DILocation(line: 30, column: 7, scope: !3851)
!3871 = !DILocation(line: 30, column: 11, scope: !3851)
!3872 = !DILocation(line: 30, column: 19, scope: !3851)
!3873 = !DILocation(line: 30, column: 7, scope: !3852)
!3874 = !DILocation(line: 35, column: 11, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3851, file: !1, line: 30, column: 32)
!3876 = !DILocation(line: 35, column: 15, scope: !3875)
!3877 = !DILocation(line: 35, column: 8, scope: !3875)
!3878 = !DILocation(line: 36, column: 22, scope: !3875)
!3879 = !DILocation(line: 36, column: 26, scope: !3875)
!3880 = !DILocation(line: 37, column: 20, scope: !3875)
!3881 = !DILocation(line: 37, column: 24, scope: !3875)
!3882 = !DILocation(line: 37, column: 18, scope: !3875)
!3883 = !DILocation(line: 38, column: 8, scope: !3875)
!3884 = !DILocation(line: 38, column: 13, scope: !3875)
!3885 = !DILocation(line: 38, column: 24, scope: !3875)
!3886 = !DILocation(line: 38, column: 29, scope: !3875)
!3887 = !DILocation(line: 36, column: 4, scope: !3875)
!3888 = !DILocation(line: 39, column: 3, scope: !3875)
!3889 = !DILocation(line: 40, column: 11, scope: !3849)
!3890 = !DILocation(line: 40, column: 9, scope: !3849)
!3891 = !DILocation(line: 40, column: 16, scope: !3848)
!3892 = !DILocation(line: 40, column: 20, scope: !3848)
!3893 = !DILocation(line: 40, column: 24, scope: !3848)
!3894 = !DILocation(line: 40, column: 18, scope: !3848)
!3895 = !DILocation(line: 40, column: 4, scope: !3849)
!3896 = !DILocation(line: 41, column: 12, scope: !3847)
!3897 = !DILocation(line: 41, column: 16, scope: !3847)
!3898 = !DILocation(line: 41, column: 26, scope: !3847)
!3899 = !DILocation(line: 41, column: 9, scope: !3847)
!3900 = !DILocation(line: 42, column: 23, scope: !3847)
!3901 = !DILocation(line: 354, column: 1, scope: !3902, inlinedAt: !3846)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !123, line: 354, column: 1)
!3903 = distinct !DILexicalBlock(scope: !3844, file: !123, line: 354, column: 1)
!3904 = !DILocation(line: 354, column: 1, scope: !3903, inlinedAt: !3846)
!3905 = !DILocation(line: 43, column: 5, scope: !3847)
!3906 = !DILocation(line: 44, column: 4, scope: !3847)
!3907 = !DILocation(line: 40, column: 34, scope: !3848)
!3908 = !DILocation(line: 40, column: 4, scope: !3848)
!3909 = distinct !{!3909, !3895, !3910}
!3910 = !DILocation(line: 44, column: 4, scope: !3849)
!3911 = !DILocation(line: 46, column: 9, scope: !3852)
!3912 = !DILocation(line: 46, column: 13, scope: !3852)
!3913 = !DILocation(line: 46, column: 3, scope: !3852)
!3914 = !DILocation(line: 47, column: 2, scope: !3852)
!3915 = !DILocation(line: 48, column: 6, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3842, file: !1, line: 48, column: 6)
!3917 = !DILocation(line: 48, column: 10, scope: !3916)
!3918 = !DILocation(line: 48, column: 18, scope: !3916)
!3919 = !DILocation(line: 48, column: 6, scope: !3842)
!3920 = !DILocation(line: 49, column: 14, scope: !3916)
!3921 = !DILocation(line: 49, column: 18, scope: !3916)
!3922 = !DILocation(line: 49, column: 3, scope: !3916)
!3923 = !DILocation(line: 50, column: 8, scope: !3842)
!3924 = !DILocation(line: 50, column: 2, scope: !3842)
!3925 = !DILocation(line: 51, column: 1, scope: !3842)
!3926 = distinct !DISubprogram(name: "comedi_buf_map_access", scope: !1, file: !1, line: 204, type: !3927, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!180, !182, !179, !181, !180, !180}
!3929 = !DILocalVariable(name: "bm", arg: 1, scope: !3926, file: !1, line: 204, type: !182)
!3930 = !DILocation(line: 204, column: 50, scope: !3926)
!3931 = !DILocalVariable(name: "offset", arg: 2, scope: !3926, file: !1, line: 204, type: !179)
!3932 = !DILocation(line: 204, column: 68, scope: !3926)
!3933 = !DILocalVariable(name: "buf", arg: 3, scope: !3926, file: !1, line: 205, type: !181)
!3934 = !DILocation(line: 205, column: 12, scope: !3926)
!3935 = !DILocalVariable(name: "len", arg: 4, scope: !3926, file: !1, line: 205, type: !180)
!3936 = !DILocation(line: 205, column: 21, scope: !3926)
!3937 = !DILocalVariable(name: "write", arg: 5, scope: !3926, file: !1, line: 205, type: !180)
!3938 = !DILocation(line: 205, column: 30, scope: !3926)
!3939 = !DILocalVariable(name: "pgoff", scope: !3926, file: !1, line: 207, type: !5)
!3940 = !DILocation(line: 207, column: 15, scope: !3926)
!3941 = !DILocation(line: 207, column: 23, scope: !3926)
!3942 = !DILocalVariable(name: "pg", scope: !3926, file: !1, line: 208, type: !179)
!3943 = !DILocation(line: 208, column: 16, scope: !3926)
!3944 = !DILocation(line: 208, column: 21, scope: !3926)
!3945 = !DILocation(line: 208, column: 28, scope: !3926)
!3946 = !DILocalVariable(name: "done", scope: !3926, file: !1, line: 209, type: !180)
!3947 = !DILocation(line: 209, column: 6, scope: !3926)
!3948 = !DILocation(line: 211, column: 2, scope: !3926)
!3949 = !DILocation(line: 211, column: 9, scope: !3926)
!3950 = !DILocation(line: 211, column: 16, scope: !3926)
!3951 = !DILocation(line: 211, column: 14, scope: !3926)
!3952 = !DILocation(line: 211, column: 20, scope: !3926)
!3953 = !DILocation(line: 211, column: 23, scope: !3926)
!3954 = !DILocation(line: 211, column: 28, scope: !3926)
!3955 = !DILocation(line: 211, column: 32, scope: !3926)
!3956 = !DILocation(line: 211, column: 26, scope: !3926)
!3957 = !DILocation(line: 0, scope: !3926)
!3958 = !DILocalVariable(name: "l", scope: !3959, file: !1, line: 212, type: !180)
!3959 = distinct !DILexicalBlock(scope: !3926, file: !1, line: 211, column: 41)
!3960 = !DILocation(line: 212, column: 7, scope: !3959)
!3961 = !DILocalVariable(name: "__UNIQUE_ID___x228", scope: !3962, file: !1, line: 212, type: !180)
!3962 = distinct !DILexicalBlock(scope: !3959, file: !1, line: 212, column: 11)
!3963 = !DILocation(line: 212, column: 11, scope: !3962)
!3964 = !DILocalVariable(name: "__UNIQUE_ID___y229", scope: !3962, file: !1, line: 212, type: !180)
!3965 = !DILocalVariable(name: "b", scope: !3959, file: !1, line: 213, type: !181)
!3966 = !DILocation(line: 213, column: 9, scope: !3959)
!3967 = !DILocation(line: 213, column: 13, scope: !3959)
!3968 = !DILocation(line: 213, column: 17, scope: !3959)
!3969 = !DILocation(line: 213, column: 27, scope: !3959)
!3970 = !DILocation(line: 213, column: 31, scope: !3959)
!3971 = !DILocation(line: 213, column: 43, scope: !3959)
!3972 = !DILocation(line: 213, column: 41, scope: !3959)
!3973 = !DILocation(line: 215, column: 7, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3959, file: !1, line: 215, column: 7)
!3975 = !DILocation(line: 215, column: 7, scope: !3959)
!3976 = !DILocation(line: 216, column: 11, scope: !3974)
!3977 = !DILocation(line: 216, column: 14, scope: !3974)
!3978 = !DILocation(line: 216, column: 19, scope: !3974)
!3979 = !DILocation(line: 216, column: 4, scope: !3974)
!3980 = !DILocation(line: 218, column: 11, scope: !3974)
!3981 = !DILocation(line: 218, column: 16, scope: !3974)
!3982 = !DILocation(line: 218, column: 19, scope: !3974)
!3983 = !DILocation(line: 218, column: 4, scope: !3974)
!3984 = !DILocation(line: 219, column: 10, scope: !3959)
!3985 = !DILocation(line: 219, column: 7, scope: !3959)
!3986 = !DILocation(line: 220, column: 11, scope: !3959)
!3987 = !DILocation(line: 220, column: 8, scope: !3959)
!3988 = !DILocation(line: 221, column: 5, scope: !3959)
!3989 = !DILocation(line: 222, column: 9, scope: !3959)
!3990 = distinct !{!3990, !3948, !3991}
!3991 = !DILocation(line: 223, column: 2, scope: !3926)
!3992 = !DILocation(line: 224, column: 9, scope: !3926)
!3993 = !DILocation(line: 224, column: 2, scope: !3926)
!3994 = distinct !DISubprogram(name: "comedi_buf_map_from_subdev_get", scope: !1, file: !1, line: 229, type: !3995, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!182, !3997}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !99, line: 153, size: 1792, elements: !3999)
!3999 = !{!4000, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4146, !4159, !4162, !4163, !4167, !4168, !4169, !4170, !4174, !4179, !4180, !4181, !4182, !4186, !4187, !4188, !4189, !4190}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3998, file: !99, line: 154, baseType: !4001, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !99, line: 541, size: 1920, elements: !4003)
!4003 = !{!4004, !4005, !4037, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4066, !4067, !4081}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4002, file: !99, line: 542, baseType: !180, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4002, file: !99, line: 543, baseType: !4006, size: 64, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !99, line: 437, size: 576, elements: !4008)
!4008 = !{!4009, !4010, !4011, !4012, !4024, !4028, !4032, !4033, !4036}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4007, file: !99, line: 439, baseType: !4006, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4007, file: !99, line: 441, baseType: !194, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4007, file: !99, line: 442, baseType: !611, size: 64, offset: 128)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4007, file: !99, line: 443, baseType: !4013, size: 64, offset: 192)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!180, !4001, !4016}
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !4018, line: 834, size: 1184, elements: !4019)
!4018 = !DIFile(filename: "drivers/staging/comedi/comedi.h", directory: "/home/lizy2001/genbc/linux")
!4019 = !{!4020, !4022}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !4017, file: !4018, line: 835, baseType: !4021, size: 160)
!4021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 160, elements: !2166)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4017, file: !4018, line: 836, baseType: !4023, size: 1024, offset: 160)
!4023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 1024, elements: !2195)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4007, file: !99, line: 444, baseType: !4025, size: 64, offset: 256)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{null, !4001}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !4007, file: !99, line: 445, baseType: !4029, size: 64, offset: 320)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!180, !4001, !179}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !4007, file: !99, line: 446, baseType: !5, size: 32, offset: 384)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !4007, file: !99, line: 447, baseType: !4034, size: 64, offset: 448)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4007, file: !99, line: 448, baseType: !180, size: 32, offset: 512)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !4002, file: !99, line: 544, baseType: !4038, size: 64, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !99, line: 544, flags: DIFlagFwdDecl)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4002, file: !99, line: 545, baseType: !181, size: 64, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !4002, file: !99, line: 547, baseType: !186, size: 64, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4002, file: !99, line: 548, baseType: !180, size: 32, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !4002, file: !99, line: 549, baseType: !5, size: 32, offset: 352)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !4002, file: !99, line: 550, baseType: !186, size: 64, offset: 384)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !4002, file: !99, line: 552, baseType: !194, size: 64, offset: 448)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !4002, file: !99, line: 553, baseType: !2092, size: 64, offset: 512)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !4002, file: !99, line: 554, baseType: !5, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !4002, file: !99, line: 555, baseType: !5, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !4002, file: !99, line: 556, baseType: !212, offset: 584)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4002, file: !99, line: 557, baseType: !1154, size: 192, offset: 640)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !4002, file: !99, line: 558, baseType: !748, size: 256, offset: 832)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4002, file: !99, line: 559, baseType: !3328, size: 32, offset: 1088)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !4002, file: !99, line: 561, baseType: !180, size: 32, offset: 1120)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !4002, file: !99, line: 562, baseType: !3997, size: 64, offset: 1152)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !4002, file: !99, line: 565, baseType: !181, size: 64, offset: 1216)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !4002, file: !99, line: 566, baseType: !179, size: 64, offset: 1280)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !4002, file: !99, line: 567, baseType: !179, size: 64, offset: 1344)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4002, file: !99, line: 568, baseType: !5, size: 32, offset: 1408)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !4002, file: !99, line: 570, baseType: !3997, size: 64, offset: 1472)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !4002, file: !99, line: 571, baseType: !3997, size: 64, offset: 1536)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !4002, file: !99, line: 573, baseType: !2924, size: 64, offset: 1600)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4002, file: !99, line: 575, baseType: !4063, size: 64, offset: 1664)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!180, !4001}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4002, file: !99, line: 576, baseType: !4025, size: 64, offset: 1728)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !4002, file: !99, line: 577, baseType: !4068, size: 64, offset: 1792)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!180, !4001, !4071, !2648}
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !4018, line: 491, size: 320, elements: !4073)
!4073 = !{!4074, !4075, !4076, !4077, !4078, !4079}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4072, file: !4018, line: 492, baseType: !5, size: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !4072, file: !4018, line: 493, baseType: !5, size: 32, offset: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4072, file: !4018, line: 494, baseType: !2648, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !4072, file: !4018, line: 495, baseType: !5, size: 32, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !4072, file: !4018, line: 496, baseType: !5, size: 32, offset: 160)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4072, file: !4018, line: 497, baseType: !4080, size: 96, offset: 192)
!4080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 96, elements: !254)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !4002, file: !99, line: 579, baseType: !4082, size: 64, offset: 1856)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!5, !4001, !5, !2648}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3998, file: !99, line: 155, baseType: !180, size: 32, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3998, file: !99, line: 156, baseType: !180, size: 32, offset: 96)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3998, file: !99, line: 157, baseType: !180, size: 32, offset: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3998, file: !99, line: 158, baseType: !180, size: 32, offset: 160)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3998, file: !99, line: 159, baseType: !180, size: 32, offset: 192)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3998, file: !99, line: 161, baseType: !181, size: 64, offset: 256)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3998, file: !99, line: 163, baseType: !4092, size: 64, offset: 320)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !99, line: 347, size: 1536, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4132, !4133, !4134}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4093, file: !99, line: 348, baseType: !181, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !4093, file: !99, line: 349, baseType: !5, size: 32, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !4093, file: !99, line: 350, baseType: !182, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !4093, file: !99, line: 351, baseType: !5, size: 32, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !4093, file: !99, line: 352, baseType: !5, size: 32, offset: 224)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !4093, file: !99, line: 353, baseType: !5, size: 32, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !4093, file: !99, line: 354, baseType: !5, size: 32, offset: 288)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !4093, file: !99, line: 355, baseType: !5, size: 32, offset: 320)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !4093, file: !99, line: 356, baseType: !5, size: 32, offset: 352)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !4093, file: !99, line: 357, baseType: !5, size: 32, offset: 384)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !4093, file: !99, line: 358, baseType: !5, size: 32, offset: 416)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !4093, file: !99, line: 359, baseType: !5, size: 32, offset: 448)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !4093, file: !99, line: 360, baseType: !5, size: 32, offset: 480)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !4093, file: !99, line: 361, baseType: !5, size: 32, offset: 512)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !4093, file: !99, line: 362, baseType: !5, size: 32, offset: 544)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !4093, file: !99, line: 363, baseType: !5, size: 32, offset: 576)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4093, file: !99, line: 364, baseType: !5, size: 32, offset: 608)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4093, file: !99, line: 365, baseType: !4113, size: 640, offset: 640)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !4018, line: 589, size: 640, elements: !4114)
!4114 = !{!4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4131}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !4113, file: !4018, line: 590, baseType: !5, size: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4113, file: !4018, line: 591, baseType: !5, size: 32, offset: 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !4113, file: !4018, line: 593, baseType: !5, size: 32, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !4113, file: !4018, line: 594, baseType: !5, size: 32, offset: 96)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !4113, file: !4018, line: 596, baseType: !5, size: 32, offset: 128)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !4113, file: !4018, line: 597, baseType: !5, size: 32, offset: 160)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !4113, file: !4018, line: 599, baseType: !5, size: 32, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !4113, file: !4018, line: 600, baseType: !5, size: 32, offset: 224)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !4113, file: !4018, line: 602, baseType: !5, size: 32, offset: 256)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !4113, file: !4018, line: 603, baseType: !5, size: 32, offset: 288)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !4113, file: !4018, line: 605, baseType: !5, size: 32, offset: 320)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !4113, file: !4018, line: 606, baseType: !5, size: 32, offset: 352)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !4113, file: !4018, line: 608, baseType: !2648, size: 64, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !4113, file: !4018, line: 609, baseType: !5, size: 32, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4113, file: !4018, line: 611, baseType: !4130, size: 64, offset: 512)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !4113, file: !4018, line: 612, baseType: !5, size: 32, offset: 576)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !4093, file: !99, line: 366, baseType: !1445, size: 128, offset: 1280)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !4093, file: !99, line: 367, baseType: !5, size: 32, offset: 1408)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !4093, file: !99, line: 368, baseType: !4135, size: 64, offset: 1472)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!180, !4001, !3997, !5}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3998, file: !99, line: 165, baseType: !181, size: 64, offset: 384)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3998, file: !99, line: 166, baseType: !181, size: 64, offset: 448)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3998, file: !99, line: 167, baseType: !5, size: 32, offset: 512)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3998, file: !99, line: 168, baseType: !212, offset: 544)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3998, file: !99, line: 170, baseType: !5, size: 32, offset: 544)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3998, file: !99, line: 172, baseType: !5, size: 32, offset: 576)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3998, file: !99, line: 173, baseType: !4145, size: 64, offset: 640)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3998, file: !99, line: 175, baseType: !4147, size: 64, offset: 704)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4149)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !99, line: 635, size: 32, elements: !4150)
!4150 = !{!4151, !4152}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4149, file: !99, line: 636, baseType: !180, size: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4149, file: !99, line: 637, baseType: !4153, offset: 32)
!4153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4154, elements: !2296)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !4018, line: 685, size: 96, elements: !4155)
!4155 = !{!4156, !4157, !4158}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !4154, file: !4018, line: 686, baseType: !180, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4154, file: !4018, line: 687, baseType: !180, size: 32, offset: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4154, file: !4018, line: 688, baseType: !5, size: 32, offset: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3998, file: !99, line: 176, baseType: !4160, size: 64, offset: 768)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4147)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3998, file: !99, line: 178, baseType: !2648, size: 64, offset: 832)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3998, file: !99, line: 180, baseType: !4164, size: 64, offset: 896)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!180, !4001, !3997, !4071, !2648}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3998, file: !99, line: 182, baseType: !4164, size: 64, offset: 960)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3998, file: !99, line: 184, baseType: !4164, size: 64, offset: 1024)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3998, file: !99, line: 186, baseType: !4164, size: 64, offset: 1088)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3998, file: !99, line: 191, baseType: !4171, size: 64, offset: 1152)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!180, !4001, !3997}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3998, file: !99, line: 192, baseType: !4175, size: 64, offset: 1216)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!180, !4001, !3997, !4178}
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3998, file: !99, line: 195, baseType: !4171, size: 64, offset: 1280)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3998, file: !99, line: 196, baseType: !4171, size: 64, offset: 1344)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3998, file: !99, line: 199, baseType: !4171, size: 64, offset: 1408)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3998, file: !99, line: 202, baseType: !4183, size: 64, offset: 1472)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{null, !4001, !3997, !181, !5, !5}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3998, file: !99, line: 205, baseType: !91, size: 32, offset: 1536)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3998, file: !99, line: 207, baseType: !5, size: 32, offset: 1568)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3998, file: !99, line: 209, baseType: !186, size: 64, offset: 1600)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3998, file: !99, line: 210, baseType: !180, size: 32, offset: 1664)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3998, file: !99, line: 212, baseType: !2648, size: 64, offset: 1728)
!4191 = !DILocalVariable(name: "lock", arg: 1, scope: !4192, file: !4193, line: 407, type: !1045)
!4192 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4193, file: !4193, line: 407, type: !4194, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4193 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4194 = !DISubroutineType(types: !4195)
!4195 = !{null, !1045, !179}
!4196 = !DILocation(line: 407, column: 64, scope: !4192, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 245, column: 2, scope: !3994)
!4198 = !DILocalVariable(name: "flags", arg: 2, scope: !4192, file: !4193, line: 407, type: !179)
!4199 = !DILocation(line: 407, column: 84, scope: !4192, inlinedAt: !4197)
!4200 = !DILocalVariable(name: "lock", arg: 1, scope: !4201, file: !4193, line: 327, type: !1045)
!4201 = distinct !DISubprogram(name: "spinlock_check", scope: !4193, file: !4193, line: 327, type: !4202, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!4204, !1045}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!4205 = !DILocation(line: 327, column: 67, scope: !4201, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 238, column: 2, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !1, line: 238, column: 2)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !1, line: 238, column: 2)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !1, line: 238, column: 2)
!4210 = distinct !DILexicalBlock(scope: !4211, file: !1, line: 238, column: 2)
!4211 = distinct !DILexicalBlock(scope: !3994, file: !1, line: 238, column: 2)
!4212 = !DILocalVariable(name: "s", arg: 1, scope: !3994, file: !1, line: 229, type: !3997)
!4213 = !DILocation(line: 229, column: 57, scope: !3994)
!4214 = !DILocalVariable(name: "async", scope: !3994, file: !1, line: 231, type: !4092)
!4215 = !DILocation(line: 231, column: 23, scope: !3994)
!4216 = !DILocation(line: 231, column: 31, scope: !3994)
!4217 = !DILocation(line: 231, column: 34, scope: !3994)
!4218 = !DILocalVariable(name: "bm", scope: !3994, file: !1, line: 232, type: !182)
!4219 = !DILocation(line: 232, column: 25, scope: !3994)
!4220 = !DILocalVariable(name: "flags", scope: !3994, file: !1, line: 233, type: !179)
!4221 = !DILocation(line: 233, column: 16, scope: !3994)
!4222 = !DILocation(line: 235, column: 7, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !3994, file: !1, line: 235, column: 6)
!4224 = !DILocation(line: 235, column: 6, scope: !3994)
!4225 = !DILocation(line: 236, column: 3, scope: !4223)
!4226 = !DILocation(line: 238, column: 2, scope: !3994)
!4227 = !DILocation(line: 238, column: 2, scope: !4211)
!4228 = !DILocalVariable(name: "__dummy", scope: !4229, file: !1, line: 238, type: !179)
!4229 = distinct !DILexicalBlock(scope: !4210, file: !1, line: 238, column: 2)
!4230 = !DILocation(line: 238, column: 2, scope: !4229)
!4231 = !DILocalVariable(name: "__dummy2", scope: !4229, file: !1, line: 238, type: !179)
!4232 = !DILocation(line: 238, column: 2, scope: !4210)
!4233 = !DILocation(line: 238, column: 2, scope: !4209)
!4234 = !DILocation(line: 238, column: 2, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4209, file: !1, line: 238, column: 2)
!4236 = !DILocalVariable(name: "__dummy", scope: !4237, file: !1, line: 238, type: !179)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !1, line: 238, column: 2)
!4238 = distinct !DILexicalBlock(scope: !4235, file: !1, line: 238, column: 2)
!4239 = !DILocation(line: 238, column: 2, scope: !4237)
!4240 = !DILocalVariable(name: "__dummy2", scope: !4237, file: !1, line: 238, type: !179)
!4241 = !DILocation(line: 238, column: 2, scope: !4238)
!4242 = !DILocation(line: 238, column: 2, scope: !4208)
!4243 = !{i32 -2142148542}
!4244 = !DILocation(line: 238, column: 2, scope: !4207)
!4245 = !DILocation(line: 329, column: 10, scope: !4201, inlinedAt: !4206)
!4246 = !DILocation(line: 329, column: 16, scope: !4201, inlinedAt: !4206)
!4247 = !DILocation(line: 239, column: 7, scope: !3994)
!4248 = !DILocation(line: 239, column: 14, scope: !3994)
!4249 = !DILocation(line: 239, column: 5, scope: !3994)
!4250 = !DILocation(line: 241, column: 6, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !3994, file: !1, line: 241, column: 6)
!4252 = !DILocation(line: 241, column: 9, scope: !4251)
!4253 = !DILocation(line: 241, column: 12, scope: !4251)
!4254 = !DILocation(line: 241, column: 16, scope: !4251)
!4255 = !DILocation(line: 241, column: 6, scope: !3994)
!4256 = !DILocation(line: 242, column: 22, scope: !4251)
!4257 = !DILocation(line: 242, column: 3, scope: !4251)
!4258 = !DILocation(line: 244, column: 6, scope: !4251)
!4259 = !DILocation(line: 245, column: 26, scope: !3994)
!4260 = !DILocation(line: 245, column: 29, scope: !3994)
!4261 = !DILocation(line: 245, column: 40, scope: !3994)
!4262 = !DILocalVariable(name: "__dummy", scope: !4263, file: !4193, line: 409, type: !179)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !4193, line: 409, column: 2)
!4264 = distinct !DILexicalBlock(scope: !4192, file: !4193, line: 409, column: 2)
!4265 = !DILocation(line: 409, column: 2, scope: !4263, inlinedAt: !4197)
!4266 = !DILocalVariable(name: "__dummy2", scope: !4263, file: !4193, line: 409, type: !179)
!4267 = !DILocalVariable(name: "__dummy", scope: !4268, file: !4193, line: 409, type: !179)
!4268 = distinct !DILexicalBlock(scope: !4269, file: !4193, line: 409, column: 2)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !4193, line: 409, column: 2)
!4270 = distinct !DILexicalBlock(scope: !4271, file: !4193, line: 409, column: 2)
!4271 = distinct !DILexicalBlock(scope: !4264, file: !4193, line: 409, column: 2)
!4272 = !DILocation(line: 409, column: 2, scope: !4268, inlinedAt: !4197)
!4273 = !DILocalVariable(name: "__dummy2", scope: !4268, file: !4193, line: 409, type: !179)
!4274 = !DILocation(line: 409, column: 2, scope: !4269, inlinedAt: !4197)
!4275 = !DILocation(line: 409, column: 2, scope: !4276, inlinedAt: !4197)
!4276 = distinct !DILexicalBlock(scope: !4271, file: !4193, line: 409, column: 2)
!4277 = !{i32 -2145601610}
!4278 = !DILocation(line: 409, column: 2, scope: !4279, inlinedAt: !4197)
!4279 = distinct !DILexicalBlock(scope: !4276, file: !4193, line: 409, column: 2)
!4280 = !DILocation(line: 247, column: 9, scope: !3994)
!4281 = !DILocation(line: 247, column: 2, scope: !3994)
!4282 = !DILocation(line: 248, column: 1, scope: !3994)
!4283 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4284, file: !4284, line: 666, type: !4285, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4284 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!179}
!4287 = !DILocalVariable(name: "f", scope: !4283, file: !4284, line: 668, type: !179)
!4288 = !DILocation(line: 668, column: 16, scope: !4283)
!4289 = !DILocation(line: 670, column: 6, scope: !4283)
!4290 = !DILocation(line: 670, column: 4, scope: !4283)
!4291 = !DILocation(line: 671, column: 2, scope: !4283)
!4292 = !DILocation(line: 672, column: 9, scope: !4283)
!4293 = !DILocation(line: 672, column: 2, scope: !4283)
!4294 = distinct !DISubprogram(name: "comedi_buf_is_mmapped", scope: !1, file: !1, line: 250, type: !4295, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!468, !3997}
!4297 = !DILocalVariable(name: "s", arg: 1, scope: !4294, file: !1, line: 250, type: !3997)
!4298 = !DILocation(line: 250, column: 53, scope: !4294)
!4299 = !DILocalVariable(name: "bm", scope: !4294, file: !1, line: 252, type: !182)
!4300 = !DILocation(line: 252, column: 25, scope: !4294)
!4301 = !DILocation(line: 252, column: 30, scope: !4294)
!4302 = !DILocation(line: 252, column: 33, scope: !4294)
!4303 = !DILocation(line: 252, column: 40, scope: !4294)
!4304 = !DILocation(line: 254, column: 9, scope: !4294)
!4305 = !DILocation(line: 254, column: 12, scope: !4294)
!4306 = !DILocation(line: 254, column: 27, scope: !4294)
!4307 = !DILocation(line: 254, column: 31, scope: !4294)
!4308 = !DILocation(line: 254, column: 16, scope: !4294)
!4309 = !DILocation(line: 254, column: 41, scope: !4294)
!4310 = !DILocation(line: 0, scope: !4294)
!4311 = !DILocation(line: 254, column: 2, scope: !4294)
!4312 = distinct !DISubprogram(name: "kref_read", scope: !3329, file: !3329, line: 34, type: !4313, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!5, !4315}
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3328)
!4317 = !DILocalVariable(name: "kref", arg: 1, scope: !4312, file: !3329, line: 34, type: !4315)
!4318 = !DILocation(line: 34, column: 57, scope: !4312)
!4319 = !DILocation(line: 36, column: 24, scope: !4312)
!4320 = !DILocation(line: 36, column: 30, scope: !4312)
!4321 = !DILocation(line: 36, column: 9, scope: !4312)
!4322 = !DILocation(line: 36, column: 2, scope: !4312)
!4323 = distinct !DISubprogram(name: "comedi_buf_alloc", scope: !1, file: !1, line: 257, type: !4324, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!180, !4001, !3997, !179}
!4326 = !DILocalVariable(name: "dev", arg: 1, scope: !4323, file: !1, line: 257, type: !4001)
!4327 = !DILocation(line: 257, column: 44, scope: !4323)
!4328 = !DILocalVariable(name: "s", arg: 2, scope: !4323, file: !1, line: 257, type: !3997)
!4329 = !DILocation(line: 257, column: 74, scope: !4323)
!4330 = !DILocalVariable(name: "new_size", arg: 3, scope: !4323, file: !1, line: 258, type: !179)
!4331 = !DILocation(line: 258, column: 22, scope: !4323)
!4332 = !DILocalVariable(name: "async", scope: !4323, file: !1, line: 260, type: !4092)
!4333 = !DILocation(line: 260, column: 23, scope: !4323)
!4334 = !DILocation(line: 260, column: 31, scope: !4323)
!4335 = !DILocation(line: 260, column: 34, scope: !4323)
!4336 = !DILocation(line: 262, column: 2, scope: !4323)
!4337 = !DILocation(line: 262, column: 2, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4323, file: !1, line: 262, column: 2)
!4339 = !DILocation(line: 265, column: 14, scope: !4323)
!4340 = !DILocation(line: 265, column: 23, scope: !4323)
!4341 = !DILocation(line: 265, column: 35, scope: !4323)
!4342 = !DILocation(line: 265, column: 40, scope: !4323)
!4343 = !DILocation(line: 265, column: 11, scope: !4323)
!4344 = !DILocation(line: 268, column: 6, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4323, file: !1, line: 268, column: 6)
!4346 = !DILocation(line: 268, column: 13, scope: !4345)
!4347 = !DILocation(line: 268, column: 26, scope: !4345)
!4348 = !DILocation(line: 268, column: 29, scope: !4345)
!4349 = !DILocation(line: 268, column: 36, scope: !4345)
!4350 = !DILocation(line: 268, column: 54, scope: !4345)
!4351 = !DILocation(line: 268, column: 51, scope: !4345)
!4352 = !DILocation(line: 268, column: 6, scope: !4323)
!4353 = !DILocation(line: 269, column: 3, scope: !4345)
!4354 = !DILocation(line: 272, column: 20, scope: !4323)
!4355 = !DILocation(line: 272, column: 25, scope: !4323)
!4356 = !DILocation(line: 272, column: 2, scope: !4323)
!4357 = !DILocation(line: 275, column: 6, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4323, file: !1, line: 275, column: 6)
!4359 = !DILocation(line: 275, column: 6, scope: !4323)
!4360 = !DILocalVariable(name: "n_pages", scope: !4361, file: !1, line: 276, type: !5)
!4361 = distinct !DILexicalBlock(scope: !4358, file: !1, line: 275, column: 16)
!4362 = !DILocation(line: 276, column: 16, scope: !4361)
!4363 = !DILocation(line: 276, column: 26, scope: !4361)
!4364 = !DILocation(line: 276, column: 35, scope: !4361)
!4365 = !DILocation(line: 278, column: 22, scope: !4361)
!4366 = !DILocation(line: 278, column: 27, scope: !4361)
!4367 = !DILocation(line: 278, column: 30, scope: !4361)
!4368 = !DILocation(line: 278, column: 3, scope: !4361)
!4369 = !DILocation(line: 280, column: 8, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4361, file: !1, line: 280, column: 7)
!4371 = !DILocation(line: 280, column: 15, scope: !4370)
!4372 = !DILocation(line: 280, column: 7, scope: !4361)
!4373 = !DILocation(line: 282, column: 22, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4370, file: !1, line: 280, column: 29)
!4375 = !DILocation(line: 282, column: 27, scope: !4374)
!4376 = !DILocation(line: 282, column: 4, scope: !4374)
!4377 = !DILocation(line: 283, column: 4, scope: !4374)
!4378 = !DILocation(line: 285, column: 2, scope: !4361)
!4379 = !DILocation(line: 286, column: 26, scope: !4323)
!4380 = !DILocation(line: 286, column: 2, scope: !4323)
!4381 = !DILocation(line: 286, column: 9, scope: !4323)
!4382 = !DILocation(line: 286, column: 24, scope: !4323)
!4383 = !DILocation(line: 288, column: 2, scope: !4323)
!4384 = !DILocation(line: 289, column: 1, scope: !4323)
!4385 = distinct !DISubprogram(name: "__comedi_buf_free", scope: !1, file: !1, line: 53, type: !4386, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{null, !4001, !3997}
!4388 = !DILocation(line: 407, column: 64, scope: !4192, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 70, column: 2, scope: !4385)
!4390 = !DILocation(line: 407, column: 84, scope: !4192, inlinedAt: !4389)
!4391 = !DILocation(line: 327, column: 67, scope: !4201, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 67, column: 2, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4394, file: !1, line: 67, column: 2)
!4394 = distinct !DILexicalBlock(scope: !4395, file: !1, line: 67, column: 2)
!4395 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 67, column: 2)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !1, line: 67, column: 2)
!4397 = distinct !DILexicalBlock(scope: !4385, file: !1, line: 67, column: 2)
!4398 = !DILocalVariable(name: "dev", arg: 1, scope: !4385, file: !1, line: 53, type: !4001)
!4399 = !DILocation(line: 53, column: 53, scope: !4385)
!4400 = !DILocalVariable(name: "s", arg: 2, scope: !4385, file: !1, line: 54, type: !3997)
!4401 = !DILocation(line: 54, column: 35, scope: !4385)
!4402 = !DILocalVariable(name: "async", scope: !4385, file: !1, line: 56, type: !4092)
!4403 = !DILocation(line: 56, column: 23, scope: !4385)
!4404 = !DILocation(line: 56, column: 31, scope: !4385)
!4405 = !DILocation(line: 56, column: 34, scope: !4385)
!4406 = !DILocalVariable(name: "bm", scope: !4385, file: !1, line: 57, type: !182)
!4407 = !DILocation(line: 57, column: 25, scope: !4385)
!4408 = !DILocalVariable(name: "flags", scope: !4385, file: !1, line: 58, type: !179)
!4409 = !DILocation(line: 58, column: 16, scope: !4385)
!4410 = !DILocation(line: 60, column: 6, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4385, file: !1, line: 60, column: 6)
!4412 = !DILocation(line: 60, column: 13, scope: !4411)
!4413 = !DILocation(line: 60, column: 6, scope: !4385)
!4414 = !DILocation(line: 61, column: 7, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4416, file: !1, line: 61, column: 7)
!4416 = distinct !DILexicalBlock(scope: !4411, file: !1, line: 60, column: 27)
!4417 = !DILocation(line: 61, column: 10, scope: !4415)
!4418 = !DILocation(line: 61, column: 24, scope: !4415)
!4419 = !DILocation(line: 61, column: 7, scope: !4416)
!4420 = !DILocation(line: 62, column: 11, scope: !4415)
!4421 = !DILocation(line: 62, column: 18, scope: !4415)
!4422 = !DILocation(line: 62, column: 4, scope: !4415)
!4423 = !DILocation(line: 63, column: 3, scope: !4416)
!4424 = !DILocation(line: 63, column: 10, scope: !4416)
!4425 = !DILocation(line: 63, column: 23, scope: !4416)
!4426 = !DILocation(line: 64, column: 3, scope: !4416)
!4427 = !DILocation(line: 64, column: 10, scope: !4416)
!4428 = !DILocation(line: 64, column: 25, scope: !4416)
!4429 = !DILocation(line: 65, column: 2, scope: !4416)
!4430 = !DILocation(line: 67, column: 2, scope: !4385)
!4431 = !DILocation(line: 67, column: 2, scope: !4397)
!4432 = !DILocalVariable(name: "__dummy", scope: !4433, file: !1, line: 67, type: !179)
!4433 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 67, column: 2)
!4434 = !DILocation(line: 67, column: 2, scope: !4433)
!4435 = !DILocalVariable(name: "__dummy2", scope: !4433, file: !1, line: 67, type: !179)
!4436 = !DILocation(line: 67, column: 2, scope: !4396)
!4437 = !DILocation(line: 67, column: 2, scope: !4395)
!4438 = !DILocation(line: 67, column: 2, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4395, file: !1, line: 67, column: 2)
!4440 = !DILocalVariable(name: "__dummy", scope: !4441, file: !1, line: 67, type: !179)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !1, line: 67, column: 2)
!4442 = distinct !DILexicalBlock(scope: !4439, file: !1, line: 67, column: 2)
!4443 = !DILocation(line: 67, column: 2, scope: !4441)
!4444 = !DILocalVariable(name: "__dummy2", scope: !4441, file: !1, line: 67, type: !179)
!4445 = !DILocation(line: 67, column: 2, scope: !4442)
!4446 = !DILocation(line: 67, column: 2, scope: !4394)
!4447 = !{i32 -2142155990}
!4448 = !DILocation(line: 67, column: 2, scope: !4393)
!4449 = !DILocation(line: 329, column: 10, scope: !4201, inlinedAt: !4392)
!4450 = !DILocation(line: 329, column: 16, scope: !4201, inlinedAt: !4392)
!4451 = !DILocation(line: 68, column: 7, scope: !4385)
!4452 = !DILocation(line: 68, column: 14, scope: !4385)
!4453 = !DILocation(line: 68, column: 5, scope: !4385)
!4454 = !DILocation(line: 69, column: 2, scope: !4385)
!4455 = !DILocation(line: 69, column: 9, scope: !4385)
!4456 = !DILocation(line: 69, column: 17, scope: !4385)
!4457 = !DILocation(line: 70, column: 26, scope: !4385)
!4458 = !DILocation(line: 70, column: 29, scope: !4385)
!4459 = !DILocation(line: 70, column: 40, scope: !4385)
!4460 = !DILocation(line: 409, column: 2, scope: !4263, inlinedAt: !4389)
!4461 = !DILocation(line: 409, column: 2, scope: !4268, inlinedAt: !4389)
!4462 = !DILocation(line: 409, column: 2, scope: !4269, inlinedAt: !4389)
!4463 = !DILocation(line: 409, column: 2, scope: !4276, inlinedAt: !4389)
!4464 = !DILocation(line: 409, column: 2, scope: !4279, inlinedAt: !4389)
!4465 = !DILocation(line: 71, column: 21, scope: !4385)
!4466 = !DILocation(line: 71, column: 2, scope: !4385)
!4467 = !DILocation(line: 72, column: 1, scope: !4385)
!4468 = distinct !DISubprogram(name: "__comedi_buf_alloc", scope: !1, file: !1, line: 140, type: !4469, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{null, !4001, !3997, !5}
!4471 = !DILocation(line: 407, column: 64, scope: !4192, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 163, column: 2, scope: !4468)
!4473 = !DILocation(line: 407, column: 84, scope: !4192, inlinedAt: !4472)
!4474 = !DILocation(line: 327, column: 67, scope: !4201, inlinedAt: !4475)
!4475 = distinct !DILocation(line: 161, column: 2, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4477, file: !1, line: 161, column: 2)
!4477 = distinct !DILexicalBlock(scope: !4478, file: !1, line: 161, column: 2)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !1, line: 161, column: 2)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !1, line: 161, column: 2)
!4480 = distinct !DILexicalBlock(scope: !4468, file: !1, line: 161, column: 2)
!4481 = !DILocalVariable(name: "dev", arg: 1, scope: !4468, file: !1, line: 140, type: !4001)
!4482 = !DILocation(line: 140, column: 54, scope: !4468)
!4483 = !DILocalVariable(name: "s", arg: 2, scope: !4468, file: !1, line: 141, type: !3997)
!4484 = !DILocation(line: 141, column: 36, scope: !4468)
!4485 = !DILocalVariable(name: "n_pages", arg: 3, scope: !4468, file: !1, line: 142, type: !5)
!4486 = !DILocation(line: 142, column: 24, scope: !4468)
!4487 = !DILocalVariable(name: "async", scope: !4468, file: !1, line: 144, type: !4092)
!4488 = !DILocation(line: 144, column: 23, scope: !4468)
!4489 = !DILocation(line: 144, column: 31, scope: !4468)
!4490 = !DILocation(line: 144, column: 34, scope: !4468)
!4491 = !DILocalVariable(name: "pages", scope: !4468, file: !1, line: 145, type: !801)
!4492 = !DILocation(line: 145, column: 16, scope: !4468)
!4493 = !DILocalVariable(name: "bm", scope: !4468, file: !1, line: 146, type: !182)
!4494 = !DILocation(line: 146, column: 25, scope: !4468)
!4495 = !DILocalVariable(name: "buf", scope: !4468, file: !1, line: 147, type: !3766)
!4496 = !DILocation(line: 147, column: 26, scope: !4468)
!4497 = !DILocalVariable(name: "flags", scope: !4468, file: !1, line: 148, type: !179)
!4498 = !DILocation(line: 148, column: 16, scope: !4468)
!4499 = !DILocalVariable(name: "i", scope: !4468, file: !1, line: 149, type: !5)
!4500 = !DILocation(line: 149, column: 15, scope: !4468)
!4501 = !DILocation(line: 157, column: 28, scope: !4468)
!4502 = !DILocation(line: 157, column: 33, scope: !4468)
!4503 = !DILocation(line: 157, column: 36, scope: !4468)
!4504 = !DILocation(line: 157, column: 51, scope: !4468)
!4505 = !DILocation(line: 157, column: 7, scope: !4468)
!4506 = !DILocation(line: 157, column: 5, scope: !4468)
!4507 = !DILocation(line: 158, column: 7, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4468, file: !1, line: 158, column: 6)
!4509 = !DILocation(line: 158, column: 6, scope: !4468)
!4510 = !DILocation(line: 159, column: 3, scope: !4508)
!4511 = !DILocation(line: 161, column: 2, scope: !4468)
!4512 = !DILocation(line: 161, column: 2, scope: !4480)
!4513 = !DILocalVariable(name: "__dummy", scope: !4514, file: !1, line: 161, type: !179)
!4514 = distinct !DILexicalBlock(scope: !4479, file: !1, line: 161, column: 2)
!4515 = !DILocation(line: 161, column: 2, scope: !4514)
!4516 = !DILocalVariable(name: "__dummy2", scope: !4514, file: !1, line: 161, type: !179)
!4517 = !DILocation(line: 161, column: 2, scope: !4479)
!4518 = !DILocation(line: 161, column: 2, scope: !4478)
!4519 = !DILocation(line: 161, column: 2, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4478, file: !1, line: 161, column: 2)
!4521 = !DILocalVariable(name: "__dummy", scope: !4522, file: !1, line: 161, type: !179)
!4522 = distinct !DILexicalBlock(scope: !4523, file: !1, line: 161, column: 2)
!4523 = distinct !DILexicalBlock(scope: !4520, file: !1, line: 161, column: 2)
!4524 = !DILocation(line: 161, column: 2, scope: !4522)
!4525 = !DILocalVariable(name: "__dummy2", scope: !4522, file: !1, line: 161, type: !179)
!4526 = !DILocation(line: 161, column: 2, scope: !4523)
!4527 = !DILocation(line: 161, column: 2, scope: !4477)
!4528 = !{i32 -2142153318}
!4529 = !DILocation(line: 161, column: 2, scope: !4476)
!4530 = !DILocation(line: 329, column: 10, scope: !4201, inlinedAt: !4475)
!4531 = !DILocation(line: 329, column: 16, scope: !4201, inlinedAt: !4475)
!4532 = !DILocation(line: 162, column: 19, scope: !4468)
!4533 = !DILocation(line: 162, column: 2, scope: !4468)
!4534 = !DILocation(line: 162, column: 9, scope: !4468)
!4535 = !DILocation(line: 162, column: 17, scope: !4468)
!4536 = !DILocation(line: 163, column: 26, scope: !4468)
!4537 = !DILocation(line: 163, column: 29, scope: !4468)
!4538 = !DILocation(line: 163, column: 40, scope: !4468)
!4539 = !DILocation(line: 409, column: 2, scope: !4263, inlinedAt: !4472)
!4540 = !DILocation(line: 409, column: 2, scope: !4268, inlinedAt: !4472)
!4541 = !DILocation(line: 409, column: 2, scope: !4269, inlinedAt: !4472)
!4542 = !DILocation(line: 409, column: 2, scope: !4276, inlinedAt: !4472)
!4543 = !DILocation(line: 409, column: 2, scope: !4279, inlinedAt: !4472)
!4544 = !DILocation(line: 165, column: 6, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4468, file: !1, line: 165, column: 6)
!4546 = !DILocation(line: 165, column: 10, scope: !4545)
!4547 = !DILocation(line: 165, column: 18, scope: !4545)
!4548 = !DILocation(line: 165, column: 6, scope: !4468)
!4549 = !DILocation(line: 170, column: 10, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4545, file: !1, line: 165, column: 31)
!4551 = !DILocation(line: 170, column: 14, scope: !4550)
!4552 = !DILocation(line: 170, column: 7, scope: !4550)
!4553 = !DILocation(line: 171, column: 25, scope: !4550)
!4554 = !DILocation(line: 171, column: 30, scope: !4550)
!4555 = !DILocation(line: 171, column: 3, scope: !4550)
!4556 = !DILocation(line: 171, column: 10, scope: !4550)
!4557 = !DILocation(line: 171, column: 23, scope: !4550)
!4558 = !DILocation(line: 172, column: 2, scope: !4550)
!4559 = !DILocation(line: 173, column: 43, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4545, file: !1, line: 172, column: 9)
!4561 = !DILocation(line: 173, column: 41, scope: !4560)
!4562 = !DILocation(line: 173, column: 11, scope: !4560)
!4563 = !DILocation(line: 173, column: 9, scope: !4560)
!4564 = !DILocation(line: 174, column: 8, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4560, file: !1, line: 174, column: 7)
!4566 = !DILocation(line: 174, column: 7, scope: !4560)
!4567 = !DILocation(line: 175, column: 4, scope: !4565)
!4568 = !DILocation(line: 177, column: 10, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4560, file: !1, line: 177, column: 3)
!4570 = !DILocation(line: 177, column: 8, scope: !4569)
!4571 = !DILocation(line: 177, column: 15, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4569, file: !1, line: 177, column: 3)
!4573 = !DILocation(line: 177, column: 19, scope: !4572)
!4574 = !DILocation(line: 177, column: 17, scope: !4572)
!4575 = !DILocation(line: 177, column: 3, scope: !4569)
!4576 = !DILocation(line: 178, column: 11, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4572, file: !1, line: 177, column: 33)
!4578 = !DILocation(line: 178, column: 15, scope: !4577)
!4579 = !DILocation(line: 178, column: 25, scope: !4577)
!4580 = !DILocation(line: 178, column: 8, scope: !4577)
!4581 = !DILocation(line: 179, column: 15, scope: !4577)
!4582 = !DILocation(line: 179, column: 4, scope: !4577)
!4583 = !DILocation(line: 179, column: 10, scope: !4577)
!4584 = !DILocation(line: 179, column: 13, scope: !4577)
!4585 = !DILocation(line: 180, column: 3, scope: !4577)
!4586 = !DILocation(line: 177, column: 29, scope: !4572)
!4587 = !DILocation(line: 177, column: 3, scope: !4572)
!4588 = distinct !{!4588, !4575, !4589}
!4589 = !DILocation(line: 180, column: 3, scope: !4569)
!4590 = !DILocation(line: 183, column: 30, scope: !4560)
!4591 = !DILocation(line: 183, column: 37, scope: !4560)
!4592 = !DILocation(line: 184, column: 9, scope: !4560)
!4593 = !DILocation(line: 183, column: 25, scope: !4560)
!4594 = !DILocation(line: 183, column: 3, scope: !4560)
!4595 = !DILocation(line: 183, column: 10, scope: !4560)
!4596 = !DILocation(line: 183, column: 23, scope: !4560)
!4597 = !DILocation(line: 186, column: 9, scope: !4560)
!4598 = !DILocation(line: 186, column: 3, scope: !4560)
!4599 = !DILocation(line: 188, column: 1, scope: !4468)
!4600 = distinct !DISubprogram(name: "comedi_buf_reset", scope: !1, file: !1, line: 291, type: !4601, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{null, !3997}
!4603 = !DILocalVariable(name: "s", arg: 1, scope: !4600, file: !1, line: 291, type: !3997)
!4604 = !DILocation(line: 291, column: 48, scope: !4600)
!4605 = !DILocalVariable(name: "async", scope: !4600, file: !1, line: 293, type: !4092)
!4606 = !DILocation(line: 293, column: 23, scope: !4600)
!4607 = !DILocation(line: 293, column: 31, scope: !4600)
!4608 = !DILocation(line: 293, column: 34, scope: !4600)
!4609 = !DILocation(line: 295, column: 2, scope: !4600)
!4610 = !DILocation(line: 295, column: 9, scope: !4600)
!4611 = !DILocation(line: 295, column: 31, scope: !4600)
!4612 = !DILocation(line: 296, column: 2, scope: !4600)
!4613 = !DILocation(line: 296, column: 9, scope: !4600)
!4614 = !DILocation(line: 296, column: 25, scope: !4600)
!4615 = !DILocation(line: 297, column: 2, scope: !4600)
!4616 = !DILocation(line: 297, column: 9, scope: !4600)
!4617 = !DILocation(line: 297, column: 30, scope: !4600)
!4618 = !DILocation(line: 298, column: 2, scope: !4600)
!4619 = !DILocation(line: 298, column: 9, scope: !4600)
!4620 = !DILocation(line: 298, column: 24, scope: !4600)
!4621 = !DILocation(line: 300, column: 2, scope: !4600)
!4622 = !DILocation(line: 300, column: 9, scope: !4600)
!4623 = !DILocation(line: 300, column: 23, scope: !4600)
!4624 = !DILocation(line: 301, column: 2, scope: !4600)
!4625 = !DILocation(line: 301, column: 9, scope: !4600)
!4626 = !DILocation(line: 301, column: 22, scope: !4600)
!4627 = !DILocation(line: 303, column: 2, scope: !4600)
!4628 = !DILocation(line: 303, column: 9, scope: !4600)
!4629 = !DILocation(line: 303, column: 18, scope: !4600)
!4630 = !DILocation(line: 304, column: 2, scope: !4600)
!4631 = !DILocation(line: 304, column: 9, scope: !4600)
!4632 = !DILocation(line: 304, column: 20, scope: !4600)
!4633 = !DILocation(line: 305, column: 2, scope: !4600)
!4634 = !DILocation(line: 305, column: 9, scope: !4600)
!4635 = !DILocation(line: 305, column: 23, scope: !4600)
!4636 = !DILocation(line: 306, column: 2, scope: !4600)
!4637 = !DILocation(line: 306, column: 9, scope: !4600)
!4638 = !DILocation(line: 306, column: 20, scope: !4600)
!4639 = !DILocation(line: 307, column: 2, scope: !4600)
!4640 = !DILocation(line: 307, column: 9, scope: !4600)
!4641 = !DILocation(line: 307, column: 21, scope: !4600)
!4642 = !DILocation(line: 308, column: 2, scope: !4600)
!4643 = !DILocation(line: 308, column: 9, scope: !4600)
!4644 = !DILocation(line: 308, column: 19, scope: !4600)
!4645 = !DILocation(line: 310, column: 2, scope: !4600)
!4646 = !DILocation(line: 310, column: 9, scope: !4600)
!4647 = !DILocation(line: 310, column: 16, scope: !4600)
!4648 = !DILocation(line: 311, column: 1, scope: !4600)
!4649 = distinct !DISubprogram(name: "comedi_buf_write_n_available", scope: !1, file: !1, line: 321, type: !4650, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!5, !3997}
!4652 = !DILocalVariable(name: "s", arg: 1, scope: !4649, file: !1, line: 321, type: !3997)
!4653 = !DILocation(line: 321, column: 68, scope: !4649)
!4654 = !DILocalVariable(name: "async", scope: !4649, file: !1, line: 323, type: !4092)
!4655 = !DILocation(line: 323, column: 23, scope: !4649)
!4656 = !DILocation(line: 323, column: 31, scope: !4649)
!4657 = !DILocation(line: 323, column: 34, scope: !4649)
!4658 = !DILocalVariable(name: "free_end", scope: !4649, file: !1, line: 324, type: !5)
!4659 = !DILocation(line: 324, column: 15, scope: !4649)
!4660 = !DILocation(line: 324, column: 26, scope: !4649)
!4661 = !DILocation(line: 324, column: 33, scope: !4649)
!4662 = !DILocation(line: 324, column: 50, scope: !4649)
!4663 = !DILocation(line: 324, column: 57, scope: !4649)
!4664 = !DILocation(line: 324, column: 48, scope: !4649)
!4665 = !DILocation(line: 326, column: 9, scope: !4649)
!4666 = !DILocation(line: 326, column: 20, scope: !4649)
!4667 = !DILocation(line: 326, column: 27, scope: !4649)
!4668 = !DILocation(line: 326, column: 18, scope: !4649)
!4669 = !DILocation(line: 326, column: 2, scope: !4649)
!4670 = distinct !DISubprogram(name: "comedi_buf_write_alloc", scope: !1, file: !1, line: 340, type: !4671, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!5, !3997, !5}
!4673 = !DILocalVariable(name: "s", arg: 1, scope: !4670, file: !1, line: 340, type: !3997)
!4674 = !DILocation(line: 340, column: 62, scope: !4670)
!4675 = !DILocalVariable(name: "nbytes", arg: 2, scope: !4670, file: !1, line: 341, type: !5)
!4676 = !DILocation(line: 341, column: 22, scope: !4670)
!4677 = !DILocalVariable(name: "async", scope: !4670, file: !1, line: 343, type: !4092)
!4678 = !DILocation(line: 343, column: 23, scope: !4670)
!4679 = !DILocation(line: 343, column: 31, scope: !4670)
!4680 = !DILocation(line: 343, column: 34, scope: !4670)
!4681 = !DILocalVariable(name: "unalloc", scope: !4670, file: !1, line: 344, type: !5)
!4682 = !DILocation(line: 344, column: 15, scope: !4670)
!4683 = !DILocation(line: 344, column: 52, scope: !4670)
!4684 = !DILocation(line: 344, column: 25, scope: !4670)
!4685 = !DILocation(line: 346, column: 6, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4670, file: !1, line: 346, column: 6)
!4687 = !DILocation(line: 346, column: 15, scope: !4686)
!4688 = !DILocation(line: 346, column: 13, scope: !4686)
!4689 = !DILocation(line: 346, column: 6, scope: !4670)
!4690 = !DILocation(line: 347, column: 12, scope: !4686)
!4691 = !DILocation(line: 347, column: 10, scope: !4686)
!4692 = !DILocation(line: 347, column: 3, scope: !4686)
!4693 = !DILocation(line: 349, column: 34, scope: !4670)
!4694 = !DILocation(line: 349, column: 2, scope: !4670)
!4695 = !DILocation(line: 349, column: 9, scope: !4670)
!4696 = !DILocation(line: 349, column: 31, scope: !4670)
!4697 = !DILocation(line: 355, column: 2, scope: !4670)
!4698 = !{i32 -2142148179}
!4699 = !DILocation(line: 357, column: 9, scope: !4670)
!4700 = !DILocation(line: 357, column: 2, scope: !4670)
!4701 = distinct !DISubprogram(name: "comedi_buf_write_n_unalloc", scope: !1, file: !1, line: 313, type: !4650, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4702 = !DILocalVariable(name: "s", arg: 1, scope: !4701, file: !1, line: 313, type: !3997)
!4703 = !DILocation(line: 313, column: 73, scope: !4701)
!4704 = !DILocalVariable(name: "async", scope: !4701, file: !1, line: 315, type: !4092)
!4705 = !DILocation(line: 315, column: 23, scope: !4701)
!4706 = !DILocation(line: 315, column: 31, scope: !4701)
!4707 = !DILocation(line: 315, column: 34, scope: !4701)
!4708 = !DILocalVariable(name: "free_end", scope: !4701, file: !1, line: 316, type: !5)
!4709 = !DILocation(line: 316, column: 15, scope: !4701)
!4710 = !DILocation(line: 316, column: 26, scope: !4701)
!4711 = !DILocation(line: 316, column: 33, scope: !4701)
!4712 = !DILocation(line: 316, column: 50, scope: !4701)
!4713 = !DILocation(line: 316, column: 57, scope: !4701)
!4714 = !DILocation(line: 316, column: 48, scope: !4701)
!4715 = !DILocation(line: 318, column: 9, scope: !4701)
!4716 = !DILocation(line: 318, column: 20, scope: !4701)
!4717 = !DILocation(line: 318, column: 27, scope: !4701)
!4718 = !DILocation(line: 318, column: 18, scope: !4701)
!4719 = !DILocation(line: 318, column: 2, scope: !4701)
!4720 = distinct !DISubprogram(name: "comedi_buf_write_n_allocated", scope: !1, file: !1, line: 408, type: !4650, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4721 = !DILocalVariable(name: "s", arg: 1, scope: !4720, file: !1, line: 408, type: !3997)
!4722 = !DILocation(line: 408, column: 68, scope: !4720)
!4723 = !DILocalVariable(name: "async", scope: !4720, file: !1, line: 410, type: !4092)
!4724 = !DILocation(line: 410, column: 23, scope: !4720)
!4725 = !DILocation(line: 410, column: 31, scope: !4720)
!4726 = !DILocation(line: 410, column: 34, scope: !4720)
!4727 = !DILocation(line: 412, column: 9, scope: !4720)
!4728 = !DILocation(line: 412, column: 16, scope: !4720)
!4729 = !DILocation(line: 412, column: 40, scope: !4720)
!4730 = !DILocation(line: 412, column: 47, scope: !4720)
!4731 = !DILocation(line: 412, column: 38, scope: !4720)
!4732 = !DILocation(line: 412, column: 2, scope: !4720)
!4733 = distinct !DISubprogram(name: "comedi_buf_write_free", scope: !1, file: !1, line: 430, type: !4671, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4734 = !DILocalVariable(name: "s", arg: 1, scope: !4733, file: !1, line: 430, type: !3997)
!4735 = !DILocation(line: 430, column: 61, scope: !4733)
!4736 = !DILocalVariable(name: "nbytes", arg: 2, scope: !4733, file: !1, line: 431, type: !5)
!4737 = !DILocation(line: 431, column: 21, scope: !4733)
!4738 = !DILocalVariable(name: "async", scope: !4733, file: !1, line: 433, type: !4092)
!4739 = !DILocation(line: 433, column: 23, scope: !4733)
!4740 = !DILocation(line: 433, column: 31, scope: !4733)
!4741 = !DILocation(line: 433, column: 34, scope: !4733)
!4742 = !DILocalVariable(name: "allocated", scope: !4733, file: !1, line: 434, type: !5)
!4743 = !DILocation(line: 434, column: 15, scope: !4733)
!4744 = !DILocation(line: 434, column: 56, scope: !4733)
!4745 = !DILocation(line: 434, column: 27, scope: !4733)
!4746 = !DILocation(line: 436, column: 6, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4733, file: !1, line: 436, column: 6)
!4748 = !DILocation(line: 436, column: 15, scope: !4747)
!4749 = !DILocation(line: 436, column: 13, scope: !4747)
!4750 = !DILocation(line: 436, column: 6, scope: !4733)
!4751 = !DILocation(line: 437, column: 12, scope: !4747)
!4752 = !DILocation(line: 437, column: 10, scope: !4747)
!4753 = !DILocation(line: 437, column: 3, scope: !4747)
!4754 = !DILocation(line: 439, column: 28, scope: !4733)
!4755 = !DILocation(line: 439, column: 2, scope: !4733)
!4756 = !DILocation(line: 439, column: 9, scope: !4733)
!4757 = !DILocation(line: 439, column: 25, scope: !4733)
!4758 = !DILocation(line: 440, column: 26, scope: !4733)
!4759 = !DILocation(line: 440, column: 2, scope: !4733)
!4760 = !DILocation(line: 440, column: 9, scope: !4733)
!4761 = !DILocation(line: 440, column: 23, scope: !4733)
!4762 = !DILocation(line: 441, column: 19, scope: !4733)
!4763 = !DILocation(line: 441, column: 22, scope: !4733)
!4764 = !DILocation(line: 441, column: 29, scope: !4733)
!4765 = !DILocation(line: 441, column: 47, scope: !4733)
!4766 = !DILocation(line: 441, column: 54, scope: !4733)
!4767 = !DILocation(line: 441, column: 45, scope: !4733)
!4768 = !DILocation(line: 441, column: 2, scope: !4733)
!4769 = !DILocation(line: 442, column: 6, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4733, file: !1, line: 442, column: 6)
!4771 = !DILocation(line: 442, column: 13, scope: !4770)
!4772 = !DILocation(line: 442, column: 30, scope: !4770)
!4773 = !DILocation(line: 442, column: 37, scope: !4770)
!4774 = !DILocation(line: 442, column: 27, scope: !4770)
!4775 = !DILocation(line: 442, column: 6, scope: !4733)
!4776 = !DILocation(line: 443, column: 27, scope: !4770)
!4777 = !DILocation(line: 443, column: 34, scope: !4770)
!4778 = !DILocation(line: 443, column: 3, scope: !4770)
!4779 = !DILocation(line: 443, column: 10, scope: !4770)
!4780 = !DILocation(line: 443, column: 24, scope: !4770)
!4781 = !DILocation(line: 445, column: 9, scope: !4733)
!4782 = !DILocation(line: 445, column: 2, scope: !4733)
!4783 = distinct !DISubprogram(name: "comedi_buf_munge", scope: !1, file: !1, line: 365, type: !4671, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4784 = !DILocalVariable(name: "s", arg: 1, scope: !4783, file: !1, line: 365, type: !3997)
!4785 = !DILocation(line: 365, column: 63, scope: !4783)
!4786 = !DILocalVariable(name: "num_bytes", arg: 2, scope: !4783, file: !1, line: 366, type: !5)
!4787 = !DILocation(line: 366, column: 23, scope: !4783)
!4788 = !DILocalVariable(name: "async", scope: !4783, file: !1, line: 368, type: !4092)
!4789 = !DILocation(line: 368, column: 23, scope: !4783)
!4790 = !DILocation(line: 368, column: 31, scope: !4783)
!4791 = !DILocation(line: 368, column: 34, scope: !4783)
!4792 = !DILocalVariable(name: "count", scope: !4783, file: !1, line: 369, type: !5)
!4793 = !DILocation(line: 369, column: 15, scope: !4783)
!4794 = !DILocalVariable(name: "num_sample_bytes", scope: !4783, file: !1, line: 370, type: !2792)
!4795 = !DILocation(line: 370, column: 21, scope: !4783)
!4796 = !DILocation(line: 370, column: 64, scope: !4783)
!4797 = !DILocation(line: 370, column: 40, scope: !4783)
!4798 = !DILocation(line: 372, column: 7, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4783, file: !1, line: 372, column: 6)
!4800 = !DILocation(line: 372, column: 10, scope: !4799)
!4801 = !DILocation(line: 372, column: 16, scope: !4799)
!4802 = !DILocation(line: 372, column: 20, scope: !4799)
!4803 = !DILocation(line: 372, column: 27, scope: !4799)
!4804 = !DILocation(line: 372, column: 31, scope: !4799)
!4805 = !DILocation(line: 372, column: 37, scope: !4799)
!4806 = !DILocation(line: 372, column: 6, scope: !4783)
!4807 = !DILocation(line: 373, column: 25, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4799, file: !1, line: 372, column: 54)
!4809 = !DILocation(line: 373, column: 3, scope: !4808)
!4810 = !DILocation(line: 373, column: 10, scope: !4808)
!4811 = !DILocation(line: 373, column: 22, scope: !4808)
!4812 = !DILocation(line: 374, column: 11, scope: !4808)
!4813 = !DILocation(line: 374, column: 9, scope: !4808)
!4814 = !DILocation(line: 375, column: 2, scope: !4808)
!4815 = !DILocation(line: 377, column: 16, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4799, file: !1, line: 375, column: 9)
!4817 = !DILocation(line: 377, column: 28, scope: !4816)
!4818 = !DILocation(line: 377, column: 26, scope: !4816)
!4819 = !DILocation(line: 377, column: 13, scope: !4816)
!4820 = !DILocation(line: 378, column: 3, scope: !4816)
!4821 = !DILocation(line: 378, column: 10, scope: !4816)
!4822 = !DILocation(line: 378, column: 18, scope: !4816)
!4823 = !DILocation(line: 378, column: 16, scope: !4816)
!4824 = !DILocalVariable(name: "block_size", scope: !4825, file: !1, line: 379, type: !180)
!4825 = distinct !DILexicalBlock(scope: !4816, file: !1, line: 378, column: 29)
!4826 = !DILocation(line: 379, column: 8, scope: !4825)
!4827 = !DILocation(line: 379, column: 21, scope: !4825)
!4828 = !DILocation(line: 379, column: 33, scope: !4825)
!4829 = !DILocation(line: 379, column: 31, scope: !4825)
!4830 = !DILocalVariable(name: "buf_end", scope: !4825, file: !1, line: 380, type: !5)
!4831 = !DILocation(line: 380, column: 17, scope: !4825)
!4832 = !DILocation(line: 382, column: 14, scope: !4825)
!4833 = !DILocation(line: 382, column: 21, scope: !4825)
!4834 = !DILocation(line: 382, column: 38, scope: !4825)
!4835 = !DILocation(line: 382, column: 45, scope: !4825)
!4836 = !DILocation(line: 382, column: 36, scope: !4825)
!4837 = !DILocation(line: 382, column: 12, scope: !4825)
!4838 = !DILocation(line: 383, column: 8, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4825, file: !1, line: 383, column: 8)
!4840 = !DILocation(line: 383, column: 21, scope: !4839)
!4841 = !DILocation(line: 383, column: 19, scope: !4839)
!4842 = !DILocation(line: 383, column: 8, scope: !4825)
!4843 = !DILocation(line: 384, column: 18, scope: !4839)
!4844 = !DILocation(line: 384, column: 16, scope: !4839)
!4845 = !DILocation(line: 384, column: 5, scope: !4839)
!4846 = !DILocation(line: 386, column: 4, scope: !4825)
!4847 = !DILocation(line: 386, column: 7, scope: !4825)
!4848 = !DILocation(line: 386, column: 13, scope: !4825)
!4849 = !DILocation(line: 386, column: 16, scope: !4825)
!4850 = !DILocation(line: 386, column: 24, scope: !4825)
!4851 = !DILocation(line: 387, column: 6, scope: !4825)
!4852 = !DILocation(line: 387, column: 13, scope: !4825)
!4853 = !DILocation(line: 387, column: 28, scope: !4825)
!4854 = !DILocation(line: 387, column: 35, scope: !4825)
!4855 = !DILocation(line: 387, column: 26, scope: !4825)
!4856 = !DILocation(line: 388, column: 6, scope: !4825)
!4857 = !DILocation(line: 388, column: 18, scope: !4825)
!4858 = !DILocation(line: 388, column: 25, scope: !4825)
!4859 = !DILocation(line: 394, column: 4, scope: !4825)
!4860 = !{i32 -2142148009}
!4861 = !DILocation(line: 396, column: 25, scope: !4825)
!4862 = !DILocation(line: 396, column: 38, scope: !4825)
!4863 = !DILocation(line: 396, column: 36, scope: !4825)
!4864 = !DILocation(line: 396, column: 4, scope: !4825)
!4865 = !DILocation(line: 396, column: 11, scope: !4825)
!4866 = !DILocation(line: 396, column: 22, scope: !4825)
!4867 = !DILocation(line: 397, column: 25, scope: !4825)
!4868 = !DILocation(line: 397, column: 32, scope: !4825)
!4869 = !DILocation(line: 397, column: 36, scope: !4825)
!4870 = !DILocation(line: 397, column: 4, scope: !4825)
!4871 = !DILocation(line: 397, column: 11, scope: !4825)
!4872 = !DILocation(line: 397, column: 22, scope: !4825)
!4873 = !DILocation(line: 398, column: 26, scope: !4825)
!4874 = !DILocation(line: 398, column: 4, scope: !4825)
!4875 = !DILocation(line: 398, column: 11, scope: !4825)
!4876 = !DILocation(line: 398, column: 23, scope: !4825)
!4877 = !DILocation(line: 399, column: 24, scope: !4825)
!4878 = !DILocation(line: 399, column: 4, scope: !4825)
!4879 = !DILocation(line: 399, column: 11, scope: !4825)
!4880 = !DILocation(line: 399, column: 21, scope: !4825)
!4881 = !DILocation(line: 400, column: 24, scope: !4825)
!4882 = !DILocation(line: 400, column: 31, scope: !4825)
!4883 = !DILocation(line: 400, column: 4, scope: !4825)
!4884 = !DILocation(line: 400, column: 11, scope: !4825)
!4885 = !DILocation(line: 400, column: 21, scope: !4825)
!4886 = !DILocation(line: 401, column: 13, scope: !4825)
!4887 = !DILocation(line: 401, column: 10, scope: !4825)
!4888 = distinct !{!4888, !4820, !4889}
!4889 = !DILocation(line: 402, column: 3, scope: !4816)
!4890 = !DILocation(line: 405, column: 9, scope: !4783)
!4891 = !DILocation(line: 405, column: 2, scope: !4783)
!4892 = distinct !DISubprogram(name: "comedi_buf_read_n_available", scope: !1, file: !1, line: 460, type: !4650, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4893 = !DILocalVariable(name: "s", arg: 1, scope: !4892, file: !1, line: 460, type: !3997)
!4894 = !DILocation(line: 460, column: 67, scope: !4892)
!4895 = !DILocalVariable(name: "async", scope: !4892, file: !1, line: 462, type: !4092)
!4896 = !DILocation(line: 462, column: 23, scope: !4892)
!4897 = !DILocation(line: 462, column: 31, scope: !4892)
!4898 = !DILocation(line: 462, column: 34, scope: !4892)
!4899 = !DILocalVariable(name: "num_bytes", scope: !4892, file: !1, line: 463, type: !5)
!4900 = !DILocation(line: 463, column: 15, scope: !4892)
!4901 = !DILocation(line: 465, column: 7, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4892, file: !1, line: 465, column: 6)
!4903 = !DILocation(line: 465, column: 6, scope: !4892)
!4904 = !DILocation(line: 466, column: 3, scope: !4902)
!4905 = !DILocation(line: 468, column: 14, scope: !4892)
!4906 = !DILocation(line: 468, column: 21, scope: !4892)
!4907 = !DILocation(line: 468, column: 35, scope: !4892)
!4908 = !DILocation(line: 468, column: 42, scope: !4892)
!4909 = !DILocation(line: 468, column: 33, scope: !4892)
!4910 = !DILocation(line: 468, column: 12, scope: !4892)
!4911 = !DILocation(line: 474, column: 2, scope: !4892)
!4912 = !{i32 -2142147852}
!4913 = !DILocation(line: 476, column: 9, scope: !4892)
!4914 = !DILocation(line: 476, column: 2, scope: !4892)
!4915 = !DILocation(line: 477, column: 1, scope: !4892)
!4916 = distinct !DISubprogram(name: "comedi_buf_read_alloc", scope: !1, file: !1, line: 495, type: !4671, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4917 = !DILocalVariable(name: "s", arg: 1, scope: !4916, file: !1, line: 495, type: !3997)
!4918 = !DILocation(line: 495, column: 61, scope: !4916)
!4919 = !DILocalVariable(name: "nbytes", arg: 2, scope: !4916, file: !1, line: 496, type: !5)
!4920 = !DILocation(line: 496, column: 21, scope: !4916)
!4921 = !DILocalVariable(name: "async", scope: !4916, file: !1, line: 498, type: !4092)
!4922 = !DILocation(line: 498, column: 23, scope: !4916)
!4923 = !DILocation(line: 498, column: 31, scope: !4916)
!4924 = !DILocation(line: 498, column: 34, scope: !4916)
!4925 = !DILocalVariable(name: "available", scope: !4916, file: !1, line: 499, type: !5)
!4926 = !DILocation(line: 499, column: 15, scope: !4916)
!4927 = !DILocation(line: 501, column: 14, scope: !4916)
!4928 = !DILocation(line: 501, column: 21, scope: !4916)
!4929 = !DILocation(line: 501, column: 35, scope: !4916)
!4930 = !DILocation(line: 501, column: 42, scope: !4916)
!4931 = !DILocation(line: 501, column: 33, scope: !4916)
!4932 = !DILocation(line: 501, column: 12, scope: !4916)
!4933 = !DILocation(line: 502, column: 6, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4916, file: !1, line: 502, column: 6)
!4935 = !DILocation(line: 502, column: 15, scope: !4934)
!4936 = !DILocation(line: 502, column: 13, scope: !4934)
!4937 = !DILocation(line: 502, column: 6, scope: !4916)
!4938 = !DILocation(line: 503, column: 12, scope: !4934)
!4939 = !DILocation(line: 503, column: 10, scope: !4934)
!4940 = !DILocation(line: 503, column: 3, scope: !4934)
!4941 = !DILocation(line: 505, column: 33, scope: !4916)
!4942 = !DILocation(line: 505, column: 2, scope: !4916)
!4943 = !DILocation(line: 505, column: 9, scope: !4916)
!4944 = !DILocation(line: 505, column: 30, scope: !4916)
!4945 = !DILocation(line: 511, column: 2, scope: !4916)
!4946 = !{i32 -2142147683}
!4947 = !DILocation(line: 513, column: 9, scope: !4916)
!4948 = !DILocation(line: 513, column: 2, scope: !4916)
!4949 = distinct !DISubprogram(name: "comedi_buf_read_free", scope: !1, file: !1, line: 535, type: !4671, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4950 = !DILocalVariable(name: "s", arg: 1, scope: !4949, file: !1, line: 535, type: !3997)
!4951 = !DILocation(line: 535, column: 60, scope: !4949)
!4952 = !DILocalVariable(name: "nbytes", arg: 2, scope: !4949, file: !1, line: 536, type: !5)
!4953 = !DILocation(line: 536, column: 20, scope: !4949)
!4954 = !DILocalVariable(name: "async", scope: !4949, file: !1, line: 538, type: !4092)
!4955 = !DILocation(line: 538, column: 23, scope: !4949)
!4956 = !DILocation(line: 538, column: 31, scope: !4949)
!4957 = !DILocation(line: 538, column: 34, scope: !4949)
!4958 = !DILocalVariable(name: "allocated", scope: !4949, file: !1, line: 539, type: !5)
!4959 = !DILocation(line: 539, column: 15, scope: !4949)
!4960 = !DILocation(line: 545, column: 2, scope: !4949)
!4961 = !{i32 -2142147526}
!4962 = !DILocation(line: 547, column: 42, scope: !4949)
!4963 = !DILocation(line: 547, column: 14, scope: !4949)
!4964 = !DILocation(line: 547, column: 12, scope: !4949)
!4965 = !DILocation(line: 548, column: 6, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4949, file: !1, line: 548, column: 6)
!4967 = !DILocation(line: 548, column: 15, scope: !4966)
!4968 = !DILocation(line: 548, column: 13, scope: !4966)
!4969 = !DILocation(line: 548, column: 6, scope: !4949)
!4970 = !DILocation(line: 549, column: 12, scope: !4966)
!4971 = !DILocation(line: 549, column: 10, scope: !4966)
!4972 = !DILocation(line: 549, column: 3, scope: !4966)
!4973 = !DILocation(line: 551, column: 27, scope: !4949)
!4974 = !DILocation(line: 551, column: 2, scope: !4949)
!4975 = !DILocation(line: 551, column: 9, scope: !4949)
!4976 = !DILocation(line: 551, column: 24, scope: !4949)
!4977 = !DILocation(line: 552, column: 25, scope: !4949)
!4978 = !DILocation(line: 552, column: 2, scope: !4949)
!4979 = !DILocation(line: 552, column: 9, scope: !4949)
!4980 = !DILocation(line: 552, column: 22, scope: !4949)
!4981 = !DILocation(line: 553, column: 25, scope: !4949)
!4982 = !DILocation(line: 553, column: 32, scope: !4949)
!4983 = !DILocation(line: 553, column: 2, scope: !4949)
!4984 = !DILocation(line: 553, column: 9, scope: !4949)
!4985 = !DILocation(line: 553, column: 22, scope: !4949)
!4986 = !DILocation(line: 554, column: 9, scope: !4949)
!4987 = !DILocation(line: 554, column: 2, scope: !4949)
!4988 = distinct !DISubprogram(name: "comedi_buf_read_n_allocated", scope: !1, file: !1, line: 517, type: !4989, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!5, !4092}
!4991 = !DILocalVariable(name: "async", arg: 1, scope: !4988, file: !1, line: 517, type: !4092)
!4992 = !DILocation(line: 517, column: 70, scope: !4988)
!4993 = !DILocation(line: 519, column: 9, scope: !4988)
!4994 = !DILocation(line: 519, column: 16, scope: !4988)
!4995 = !DILocation(line: 519, column: 39, scope: !4988)
!4996 = !DILocation(line: 519, column: 46, scope: !4988)
!4997 = !DILocation(line: 519, column: 37, scope: !4988)
!4998 = !DILocation(line: 519, column: 2, scope: !4988)
!4999 = distinct !DISubprogram(name: "comedi_buf_write_samples", scope: !1, file: !1, line: 622, type: !5000, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!5, !3997, !2092, !5}
!5002 = !DILocalVariable(name: "s", arg: 1, scope: !4999, file: !1, line: 622, type: !3997)
!5003 = !DILocation(line: 622, column: 64, scope: !4999)
!5004 = !DILocalVariable(name: "data", arg: 2, scope: !4999, file: !1, line: 623, type: !2092)
!5005 = !DILocation(line: 623, column: 23, scope: !4999)
!5006 = !DILocalVariable(name: "nsamples", arg: 3, scope: !4999, file: !1, line: 623, type: !5)
!5007 = !DILocation(line: 623, column: 42, scope: !4999)
!5008 = !DILocalVariable(name: "max_samples", scope: !4999, file: !1, line: 625, type: !5)
!5009 = !DILocation(line: 625, column: 15, scope: !4999)
!5010 = !DILocalVariable(name: "nbytes", scope: !4999, file: !1, line: 626, type: !5)
!5011 = !DILocation(line: 626, column: 15, scope: !4999)
!5012 = !DILocation(line: 633, column: 40, scope: !4999)
!5013 = !DILocation(line: 633, column: 70, scope: !4999)
!5014 = !DILocation(line: 633, column: 43, scope: !4999)
!5015 = !DILocation(line: 633, column: 16, scope: !4999)
!5016 = !DILocation(line: 633, column: 14, scope: !4999)
!5017 = !DILocation(line: 634, column: 6, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4999, file: !1, line: 634, column: 6)
!5019 = !DILocation(line: 634, column: 17, scope: !5018)
!5020 = !DILocation(line: 634, column: 15, scope: !5018)
!5021 = !DILocation(line: 634, column: 6, scope: !4999)
!5022 = !DILocation(line: 635, column: 3, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5018, file: !1, line: 634, column: 30)
!5024 = !DILocation(line: 636, column: 3, scope: !5023)
!5025 = !DILocation(line: 636, column: 6, scope: !5023)
!5026 = !DILocation(line: 636, column: 13, scope: !5023)
!5027 = !DILocation(line: 636, column: 20, scope: !5023)
!5028 = !DILocation(line: 637, column: 14, scope: !5023)
!5029 = !DILocation(line: 637, column: 12, scope: !5023)
!5030 = !DILocation(line: 638, column: 2, scope: !5023)
!5031 = !DILocation(line: 640, column: 6, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !4999, file: !1, line: 640, column: 6)
!5033 = !DILocation(line: 640, column: 15, scope: !5032)
!5034 = !DILocation(line: 640, column: 6, scope: !4999)
!5035 = !DILocation(line: 641, column: 3, scope: !5032)
!5036 = !DILocation(line: 643, column: 34, scope: !4999)
!5037 = !DILocation(line: 644, column: 30, scope: !4999)
!5038 = !DILocation(line: 644, column: 33, scope: !4999)
!5039 = !DILocation(line: 644, column: 6, scope: !4999)
!5040 = !DILocation(line: 643, column: 11, scope: !4999)
!5041 = !DILocation(line: 643, column: 9, scope: !4999)
!5042 = !DILocation(line: 645, column: 23, scope: !4999)
!5043 = !DILocation(line: 645, column: 26, scope: !4999)
!5044 = !DILocation(line: 645, column: 32, scope: !4999)
!5045 = !DILocation(line: 645, column: 2, scope: !4999)
!5046 = !DILocation(line: 646, column: 24, scope: !4999)
!5047 = !DILocation(line: 646, column: 27, scope: !4999)
!5048 = !DILocation(line: 646, column: 2, scope: !4999)
!5049 = !DILocation(line: 647, column: 27, scope: !4999)
!5050 = !DILocation(line: 647, column: 30, scope: !4999)
!5051 = !DILocation(line: 647, column: 2, scope: !4999)
!5052 = !DILocation(line: 648, column: 2, scope: !4999)
!5053 = !DILocation(line: 648, column: 5, scope: !4999)
!5054 = !DILocation(line: 648, column: 12, scope: !4999)
!5055 = !DILocation(line: 648, column: 19, scope: !4999)
!5056 = !DILocation(line: 650, column: 9, scope: !4999)
!5057 = !DILocation(line: 650, column: 2, scope: !4999)
!5058 = !DILocation(line: 651, column: 1, scope: !4999)
!5059 = distinct !DISubprogram(name: "comedi_bytes_to_samples", scope: !99, file: !99, line: 825, type: !4671, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5060 = !DILocalVariable(name: "s", arg: 1, scope: !5059, file: !99, line: 825, type: !3997)
!5061 = !DILocation(line: 825, column: 77, scope: !5059)
!5062 = !DILocalVariable(name: "nbytes", arg: 2, scope: !5059, file: !99, line: 826, type: !5)
!5063 = !DILocation(line: 826, column: 23, scope: !5059)
!5064 = !DILocation(line: 828, column: 9, scope: !5059)
!5065 = !DILocation(line: 828, column: 39, scope: !5059)
!5066 = !DILocation(line: 828, column: 19, scope: !5059)
!5067 = !DILocation(line: 828, column: 16, scope: !5059)
!5068 = !DILocation(line: 828, column: 2, scope: !5059)
!5069 = distinct !DISubprogram(name: "comedi_samples_to_bytes", scope: !99, file: !99, line: 839, type: !4671, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5070 = !DILocalVariable(name: "s", arg: 1, scope: !5069, file: !99, line: 839, type: !3997)
!5071 = !DILocation(line: 839, column: 77, scope: !5069)
!5072 = !DILocalVariable(name: "nsamples", arg: 2, scope: !5069, file: !99, line: 840, type: !5)
!5073 = !DILocation(line: 840, column: 23, scope: !5069)
!5074 = !DILocation(line: 842, column: 9, scope: !5069)
!5075 = !DILocation(line: 842, column: 41, scope: !5069)
!5076 = !DILocation(line: 842, column: 21, scope: !5069)
!5077 = !DILocation(line: 842, column: 18, scope: !5069)
!5078 = !DILocation(line: 842, column: 2, scope: !5069)
!5079 = distinct !DISubprogram(name: "comedi_buf_memcpy_to", scope: !1, file: !1, line: 558, type: !5080, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{null, !3997, !2092, !5}
!5082 = !DILocalVariable(name: "s", arg: 1, scope: !5079, file: !1, line: 558, type: !3997)
!5083 = !DILocation(line: 558, column: 59, scope: !5079)
!5084 = !DILocalVariable(name: "data", arg: 2, scope: !5079, file: !1, line: 559, type: !2092)
!5085 = !DILocation(line: 559, column: 18, scope: !5079)
!5086 = !DILocalVariable(name: "num_bytes", arg: 3, scope: !5079, file: !1, line: 559, type: !5)
!5087 = !DILocation(line: 559, column: 37, scope: !5079)
!5088 = !DILocalVariable(name: "async", scope: !5079, file: !1, line: 561, type: !4092)
!5089 = !DILocation(line: 561, column: 23, scope: !5079)
!5090 = !DILocation(line: 561, column: 31, scope: !5079)
!5091 = !DILocation(line: 561, column: 34, scope: !5079)
!5092 = !DILocalVariable(name: "write_ptr", scope: !5079, file: !1, line: 562, type: !5)
!5093 = !DILocation(line: 562, column: 15, scope: !5079)
!5094 = !DILocation(line: 562, column: 27, scope: !5079)
!5095 = !DILocation(line: 562, column: 34, scope: !5079)
!5096 = !DILocation(line: 564, column: 2, scope: !5079)
!5097 = !DILocation(line: 564, column: 9, scope: !5079)
!5098 = !DILocalVariable(name: "block_size", scope: !5099, file: !1, line: 565, type: !5)
!5099 = distinct !DILexicalBlock(scope: !5079, file: !1, line: 564, column: 20)
!5100 = !DILocation(line: 565, column: 16, scope: !5099)
!5101 = !DILocation(line: 567, column: 7, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5099, file: !1, line: 567, column: 7)
!5103 = !DILocation(line: 567, column: 19, scope: !5102)
!5104 = !DILocation(line: 567, column: 17, scope: !5102)
!5105 = !DILocation(line: 567, column: 31, scope: !5102)
!5106 = !DILocation(line: 567, column: 38, scope: !5102)
!5107 = !DILocation(line: 567, column: 29, scope: !5102)
!5108 = !DILocation(line: 567, column: 7, scope: !5099)
!5109 = !DILocation(line: 568, column: 17, scope: !5102)
!5110 = !DILocation(line: 568, column: 24, scope: !5102)
!5111 = !DILocation(line: 568, column: 41, scope: !5102)
!5112 = !DILocation(line: 568, column: 39, scope: !5102)
!5113 = !DILocation(line: 568, column: 15, scope: !5102)
!5114 = !DILocation(line: 568, column: 4, scope: !5102)
!5115 = !DILocation(line: 570, column: 17, scope: !5102)
!5116 = !DILocation(line: 570, column: 15, scope: !5102)
!5117 = !DILocation(line: 572, column: 10, scope: !5099)
!5118 = !DILocation(line: 572, column: 17, scope: !5099)
!5119 = !DILocation(line: 572, column: 32, scope: !5099)
!5120 = !DILocation(line: 572, column: 30, scope: !5099)
!5121 = !DILocation(line: 572, column: 43, scope: !5099)
!5122 = !DILocation(line: 572, column: 49, scope: !5099)
!5123 = !DILocation(line: 572, column: 3, scope: !5099)
!5124 = !DILocation(line: 574, column: 11, scope: !5099)
!5125 = !DILocation(line: 574, column: 8, scope: !5099)
!5126 = !DILocation(line: 575, column: 16, scope: !5099)
!5127 = !DILocation(line: 575, column: 13, scope: !5099)
!5128 = !DILocation(line: 577, column: 13, scope: !5099)
!5129 = distinct !{!5129, !5096, !5130}
!5130 = !DILocation(line: 578, column: 2, scope: !5079)
!5131 = !DILocation(line: 579, column: 1, scope: !5079)
!5132 = distinct !DISubprogram(name: "comedi_buf_read_samples", scope: !1, file: !1, line: 668, type: !5133, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!5, !3997, !181, !5}
!5135 = !DILocalVariable(name: "s", arg: 1, scope: !5132, file: !1, line: 668, type: !3997)
!5136 = !DILocation(line: 668, column: 63, scope: !5132)
!5137 = !DILocalVariable(name: "data", arg: 2, scope: !5132, file: !1, line: 669, type: !181)
!5138 = !DILocation(line: 669, column: 16, scope: !5132)
!5139 = !DILocalVariable(name: "nsamples", arg: 3, scope: !5132, file: !1, line: 669, type: !5)
!5140 = !DILocation(line: 669, column: 35, scope: !5132)
!5141 = !DILocalVariable(name: "max_samples", scope: !5132, file: !1, line: 671, type: !5)
!5142 = !DILocation(line: 671, column: 15, scope: !5132)
!5143 = !DILocalVariable(name: "nbytes", scope: !5132, file: !1, line: 672, type: !5)
!5144 = !DILocation(line: 672, column: 15, scope: !5132)
!5145 = !DILocation(line: 675, column: 40, scope: !5132)
!5146 = !DILocation(line: 676, column: 40, scope: !5132)
!5147 = !DILocation(line: 676, column: 12, scope: !5132)
!5148 = !DILocation(line: 675, column: 16, scope: !5132)
!5149 = !DILocation(line: 675, column: 14, scope: !5132)
!5150 = !DILocation(line: 677, column: 6, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5132, file: !1, line: 677, column: 6)
!5152 = !DILocation(line: 677, column: 17, scope: !5151)
!5153 = !DILocation(line: 677, column: 15, scope: !5151)
!5154 = !DILocation(line: 677, column: 6, scope: !5132)
!5155 = !DILocation(line: 678, column: 14, scope: !5151)
!5156 = !DILocation(line: 678, column: 12, scope: !5151)
!5157 = !DILocation(line: 678, column: 3, scope: !5151)
!5158 = !DILocation(line: 680, column: 6, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5132, file: !1, line: 680, column: 6)
!5160 = !DILocation(line: 680, column: 15, scope: !5159)
!5161 = !DILocation(line: 680, column: 6, scope: !5132)
!5162 = !DILocation(line: 681, column: 3, scope: !5159)
!5163 = !DILocation(line: 683, column: 33, scope: !5132)
!5164 = !DILocation(line: 684, column: 36, scope: !5132)
!5165 = !DILocation(line: 684, column: 39, scope: !5132)
!5166 = !DILocation(line: 684, column: 12, scope: !5132)
!5167 = !DILocation(line: 683, column: 11, scope: !5132)
!5168 = !DILocation(line: 683, column: 9, scope: !5132)
!5169 = !DILocation(line: 685, column: 25, scope: !5132)
!5170 = !DILocation(line: 685, column: 28, scope: !5132)
!5171 = !DILocation(line: 685, column: 34, scope: !5132)
!5172 = !DILocation(line: 685, column: 2, scope: !5132)
!5173 = !DILocation(line: 686, column: 23, scope: !5132)
!5174 = !DILocation(line: 686, column: 26, scope: !5132)
!5175 = !DILocation(line: 686, column: 2, scope: !5132)
!5176 = !DILocation(line: 687, column: 27, scope: !5132)
!5177 = !DILocation(line: 687, column: 30, scope: !5132)
!5178 = !DILocation(line: 687, column: 2, scope: !5132)
!5179 = !DILocation(line: 688, column: 2, scope: !5132)
!5180 = !DILocation(line: 688, column: 5, scope: !5132)
!5181 = !DILocation(line: 688, column: 12, scope: !5132)
!5182 = !DILocation(line: 688, column: 19, scope: !5132)
!5183 = !DILocation(line: 690, column: 9, scope: !5132)
!5184 = !DILocation(line: 690, column: 2, scope: !5132)
!5185 = !DILocation(line: 691, column: 1, scope: !5132)
!5186 = distinct !DISubprogram(name: "comedi_buf_memcpy_from", scope: !1, file: !1, line: 581, type: !5187, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{null, !3997, !181, !5}
!5189 = !DILocalVariable(name: "s", arg: 1, scope: !5186, file: !1, line: 581, type: !3997)
!5190 = !DILocation(line: 581, column: 61, scope: !5186)
!5191 = !DILocalVariable(name: "dest", arg: 2, scope: !5186, file: !1, line: 582, type: !181)
!5192 = !DILocation(line: 582, column: 14, scope: !5186)
!5193 = !DILocalVariable(name: "nbytes", arg: 3, scope: !5186, file: !1, line: 582, type: !5)
!5194 = !DILocation(line: 582, column: 33, scope: !5186)
!5195 = !DILocalVariable(name: "src", scope: !5186, file: !1, line: 584, type: !181)
!5196 = !DILocation(line: 584, column: 8, scope: !5186)
!5197 = !DILocalVariable(name: "async", scope: !5186, file: !1, line: 585, type: !4092)
!5198 = !DILocation(line: 585, column: 23, scope: !5186)
!5199 = !DILocation(line: 585, column: 31, scope: !5186)
!5200 = !DILocation(line: 585, column: 34, scope: !5186)
!5201 = !DILocalVariable(name: "read_ptr", scope: !5186, file: !1, line: 586, type: !5)
!5202 = !DILocation(line: 586, column: 15, scope: !5186)
!5203 = !DILocation(line: 586, column: 26, scope: !5186)
!5204 = !DILocation(line: 586, column: 33, scope: !5186)
!5205 = !DILocation(line: 588, column: 2, scope: !5186)
!5206 = !DILocation(line: 588, column: 9, scope: !5186)
!5207 = !DILocalVariable(name: "block_size", scope: !5208, file: !1, line: 589, type: !5)
!5208 = distinct !DILexicalBlock(scope: !5186, file: !1, line: 588, column: 17)
!5209 = !DILocation(line: 589, column: 16, scope: !5208)
!5210 = !DILocation(line: 591, column: 9, scope: !5208)
!5211 = !DILocation(line: 591, column: 16, scope: !5208)
!5212 = !DILocation(line: 591, column: 31, scope: !5208)
!5213 = !DILocation(line: 591, column: 29, scope: !5208)
!5214 = !DILocation(line: 591, column: 7, scope: !5208)
!5215 = !DILocation(line: 593, column: 7, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5208, file: !1, line: 593, column: 7)
!5217 = !DILocation(line: 593, column: 17, scope: !5216)
!5218 = !DILocation(line: 593, column: 24, scope: !5216)
!5219 = !DILocation(line: 593, column: 41, scope: !5216)
!5220 = !DILocation(line: 593, column: 39, scope: !5216)
!5221 = !DILocation(line: 593, column: 14, scope: !5216)
!5222 = !DILocation(line: 593, column: 7, scope: !5208)
!5223 = !DILocation(line: 594, column: 17, scope: !5216)
!5224 = !DILocation(line: 594, column: 24, scope: !5216)
!5225 = !DILocation(line: 594, column: 41, scope: !5216)
!5226 = !DILocation(line: 594, column: 39, scope: !5216)
!5227 = !DILocation(line: 594, column: 15, scope: !5216)
!5228 = !DILocation(line: 594, column: 4, scope: !5216)
!5229 = !DILocation(line: 596, column: 17, scope: !5216)
!5230 = !DILocation(line: 596, column: 15, scope: !5216)
!5231 = !DILocation(line: 598, column: 10, scope: !5208)
!5232 = !DILocation(line: 598, column: 16, scope: !5208)
!5233 = !DILocation(line: 598, column: 21, scope: !5208)
!5234 = !DILocation(line: 598, column: 3, scope: !5208)
!5235 = !DILocation(line: 599, column: 13, scope: !5208)
!5236 = !DILocation(line: 599, column: 10, scope: !5208)
!5237 = !DILocation(line: 600, column: 11, scope: !5208)
!5238 = !DILocation(line: 600, column: 8, scope: !5208)
!5239 = !DILocation(line: 601, column: 12, scope: !5208)
!5240 = distinct !{!5240, !5205, !5241}
!5241 = !DILocation(line: 602, column: 2, scope: !5186)
!5242 = !DILocation(line: 603, column: 1, scope: !5186)
!5243 = distinct !DISubprogram(name: "refcount_inc", scope: !110, file: !110, line: 265, type: !5244, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5244 = !DISubroutineType(types: !5245)
!5245 = !{null, !5246}
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!5247 = !DILocalVariable(name: "r", arg: 1, scope: !5243, file: !110, line: 265, type: !5246)
!5248 = !DILocation(line: 265, column: 45, scope: !5243)
!5249 = !DILocation(line: 267, column: 17, scope: !5243)
!5250 = !DILocation(line: 267, column: 2, scope: !5243)
!5251 = !DILocation(line: 268, column: 1, scope: !5243)
!5252 = distinct !DISubprogram(name: "__refcount_inc", scope: !110, file: !110, line: 248, type: !5253, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{null, !5246, !686}
!5255 = !DILocalVariable(name: "r", arg: 1, scope: !5252, file: !110, line: 248, type: !5246)
!5256 = !DILocation(line: 248, column: 47, scope: !5252)
!5257 = !DILocalVariable(name: "oldp", arg: 2, scope: !5252, file: !110, line: 248, type: !686)
!5258 = !DILocation(line: 248, column: 55, scope: !5252)
!5259 = !DILocation(line: 250, column: 20, scope: !5252)
!5260 = !DILocation(line: 250, column: 23, scope: !5252)
!5261 = !DILocation(line: 250, column: 2, scope: !5252)
!5262 = !DILocation(line: 251, column: 1, scope: !5252)
!5263 = distinct !DISubprogram(name: "__refcount_add", scope: !110, file: !110, line: 191, type: !5264, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{null, !180, !5246, !686}
!5266 = !DILocalVariable(name: "i", arg: 1, scope: !5267, file: !5268, line: 182, type: !180)
!5267 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5268, file: !5268, line: 182, type: !5269, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5268 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!180, !180, !5271}
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!5272 = !DILocation(line: 182, column: 54, scope: !5267, inlinedAt: !5273)
!5273 = distinct !DILocation(line: 143, column: 9, scope: !5274, inlinedAt: !5276)
!5274 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5275, file: !5275, line: 140, type: !5269, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5275 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5276 = distinct !DILocation(line: 193, column: 12, scope: !5263)
!5277 = !DILocalVariable(name: "v", arg: 2, scope: !5267, file: !5268, line: 182, type: !5271)
!5278 = !DILocation(line: 182, column: 67, scope: !5267, inlinedAt: !5273)
!5279 = !DILocalVariable(name: "__ret", scope: !5280, file: !5268, line: 184, type: !180)
!5280 = distinct !DILexicalBlock(scope: !5267, file: !5268, line: 184, column: 9)
!5281 = !DILocation(line: 184, column: 9, scope: !5280, inlinedAt: !5273)
!5282 = !DILocalVariable(name: "v", arg: 1, scope: !5283, file: !5284, line: 99, type: !5287)
!5283 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5284, file: !5284, line: 99, type: !5285, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5284 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5285 = !DISubroutineType(types: !5286)
!5286 = !{null, !5287, !300}
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5289)
!5289 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5290 = !DILocation(line: 99, column: 79, scope: !5283, inlinedAt: !5291)
!5291 = distinct !DILocation(line: 142, column: 2, scope: !5274, inlinedAt: !5276)
!5292 = !DILocalVariable(name: "size", arg: 2, scope: !5283, file: !5284, line: 99, type: !300)
!5293 = !DILocation(line: 99, column: 89, scope: !5283, inlinedAt: !5291)
!5294 = !DILocalVariable(name: "i", arg: 1, scope: !5274, file: !5275, line: 140, type: !180)
!5295 = !DILocation(line: 140, column: 30, scope: !5274, inlinedAt: !5276)
!5296 = !DILocalVariable(name: "v", arg: 2, scope: !5274, file: !5275, line: 140, type: !5271)
!5297 = !DILocation(line: 140, column: 43, scope: !5274, inlinedAt: !5276)
!5298 = !DILocalVariable(name: "i", arg: 1, scope: !5263, file: !110, line: 191, type: !180)
!5299 = !DILocation(line: 191, column: 39, scope: !5263)
!5300 = !DILocalVariable(name: "r", arg: 2, scope: !5263, file: !110, line: 191, type: !5246)
!5301 = !DILocation(line: 191, column: 54, scope: !5263)
!5302 = !DILocalVariable(name: "oldp", arg: 3, scope: !5263, file: !110, line: 191, type: !686)
!5303 = !DILocation(line: 191, column: 62, scope: !5263)
!5304 = !DILocalVariable(name: "old", scope: !5263, file: !110, line: 193, type: !180)
!5305 = !DILocation(line: 193, column: 6, scope: !5263)
!5306 = !DILocation(line: 193, column: 37, scope: !5263)
!5307 = !DILocation(line: 193, column: 41, scope: !5263)
!5308 = !DILocation(line: 193, column: 44, scope: !5263)
!5309 = !DILocation(line: 142, column: 31, scope: !5274, inlinedAt: !5276)
!5310 = !DILocation(line: 101, column: 20, scope: !5283, inlinedAt: !5291)
!5311 = !DILocation(line: 101, column: 23, scope: !5283, inlinedAt: !5291)
!5312 = !DILocation(line: 101, column: 2, scope: !5283, inlinedAt: !5291)
!5313 = !DILocation(line: 102, column: 2, scope: !5283, inlinedAt: !5291)
!5314 = !DILocation(line: 143, column: 39, scope: !5274, inlinedAt: !5276)
!5315 = !DILocation(line: 143, column: 42, scope: !5274, inlinedAt: !5276)
!5316 = !{i32 -2146524748}
!5317 = !DILocation(line: 195, column: 6, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5263, file: !110, line: 195, column: 6)
!5319 = !DILocation(line: 195, column: 6, scope: !5263)
!5320 = !DILocation(line: 196, column: 11, scope: !5318)
!5321 = !DILocation(line: 196, column: 4, scope: !5318)
!5322 = !DILocation(line: 196, column: 9, scope: !5318)
!5323 = !DILocation(line: 196, column: 3, scope: !5318)
!5324 = !DILocation(line: 198, column: 6, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5263, file: !110, line: 198, column: 6)
!5326 = !DILocation(line: 198, column: 6, scope: !5263)
!5327 = !DILocation(line: 199, column: 26, scope: !5325)
!5328 = !DILocation(line: 199, column: 3, scope: !5325)
!5329 = !DILocation(line: 200, column: 11, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5325, file: !110, line: 200, column: 11)
!5331 = !DILocation(line: 200, column: 11, scope: !5325)
!5332 = !DILocation(line: 201, column: 26, scope: !5330)
!5333 = !DILocation(line: 201, column: 3, scope: !5330)
!5334 = !DILocation(line: 202, column: 1, scope: !5263)
!5335 = distinct !DISubprogram(name: "kasan_check_write", scope: !5336, file: !5336, line: 38, type: !5337, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5336 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5337 = !DISubroutineType(types: !5338)
!5338 = !{!468, !5287, !5}
!5339 = !DILocalVariable(name: "p", arg: 1, scope: !5335, file: !5336, line: 38, type: !5287)
!5340 = !DILocation(line: 38, column: 59, scope: !5335)
!5341 = !DILocalVariable(name: "size", arg: 2, scope: !5335, file: !5336, line: 38, type: !5)
!5342 = !DILocation(line: 38, column: 75, scope: !5335)
!5343 = !DILocation(line: 40, column: 2, scope: !5335)
!5344 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5345, file: !5345, line: 178, type: !5346, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5345 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5346 = !DISubroutineType(types: !5347)
!5347 = !{null, !5287, !300, !180}
!5348 = !DILocalVariable(name: "ptr", arg: 1, scope: !5344, file: !5345, line: 178, type: !5287)
!5349 = !DILocation(line: 178, column: 60, scope: !5344)
!5350 = !DILocalVariable(name: "size", arg: 2, scope: !5344, file: !5345, line: 178, type: !300)
!5351 = !DILocation(line: 178, column: 72, scope: !5344)
!5352 = !DILocalVariable(name: "type", arg: 3, scope: !5344, file: !5345, line: 179, type: !180)
!5353 = !DILocation(line: 179, column: 15, scope: !5344)
!5354 = !DILocation(line: 179, column: 23, scope: !5344)
!5355 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !110, file: !110, line: 331, type: !5356, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!468, !5246}
!5358 = !DILocalVariable(name: "r", arg: 1, scope: !5355, file: !110, line: 331, type: !5246)
!5359 = !DILocation(line: 331, column: 67, scope: !5355)
!5360 = !DILocation(line: 333, column: 33, scope: !5355)
!5361 = !DILocation(line: 333, column: 9, scope: !5355)
!5362 = !DILocation(line: 333, column: 2, scope: !5355)
!5363 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !110, file: !110, line: 313, type: !5364, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5364 = !DISubroutineType(types: !5365)
!5365 = !{!468, !5246, !686}
!5366 = !DILocalVariable(name: "r", arg: 1, scope: !5363, file: !110, line: 313, type: !5246)
!5367 = !DILocation(line: 313, column: 69, scope: !5363)
!5368 = !DILocalVariable(name: "oldp", arg: 2, scope: !5363, file: !110, line: 313, type: !686)
!5369 = !DILocation(line: 313, column: 77, scope: !5363)
!5370 = !DILocation(line: 315, column: 36, scope: !5363)
!5371 = !DILocation(line: 315, column: 39, scope: !5363)
!5372 = !DILocation(line: 315, column: 9, scope: !5363)
!5373 = !DILocation(line: 315, column: 2, scope: !5363)
!5374 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !110, file: !110, line: 270, type: !5375, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5375 = !DISubroutineType(types: !5376)
!5376 = !{!468, !180, !5246, !686}
!5377 = !DILocalVariable(name: "i", arg: 1, scope: !5378, file: !5268, line: 188, type: !180)
!5378 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5268, file: !5268, line: 188, type: !5269, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5379 = !DILocation(line: 188, column: 54, scope: !5378, inlinedAt: !5380)
!5380 = distinct !DILocation(line: 221, column: 9, scope: !5381, inlinedAt: !5382)
!5381 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5275, file: !5275, line: 218, type: !5269, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5382 = distinct !DILocation(line: 272, column: 12, scope: !5374)
!5383 = !DILocalVariable(name: "v", arg: 2, scope: !5378, file: !5268, line: 188, type: !5271)
!5384 = !DILocation(line: 188, column: 67, scope: !5378, inlinedAt: !5380)
!5385 = !DILocalVariable(name: "__ret", scope: !5386, file: !5268, line: 190, type: !180)
!5386 = distinct !DILexicalBlock(scope: !5378, file: !5268, line: 190, column: 9)
!5387 = !DILocation(line: 190, column: 9, scope: !5386, inlinedAt: !5380)
!5388 = !DILocation(line: 99, column: 79, scope: !5283, inlinedAt: !5389)
!5389 = distinct !DILocation(line: 220, column: 2, scope: !5381, inlinedAt: !5382)
!5390 = !DILocation(line: 99, column: 89, scope: !5283, inlinedAt: !5389)
!5391 = !DILocalVariable(name: "i", arg: 1, scope: !5381, file: !5275, line: 218, type: !180)
!5392 = !DILocation(line: 218, column: 30, scope: !5381, inlinedAt: !5382)
!5393 = !DILocalVariable(name: "v", arg: 2, scope: !5381, file: !5275, line: 218, type: !5271)
!5394 = !DILocation(line: 218, column: 43, scope: !5381, inlinedAt: !5382)
!5395 = !DILocalVariable(name: "i", arg: 1, scope: !5374, file: !110, line: 270, type: !180)
!5396 = !DILocation(line: 270, column: 61, scope: !5374)
!5397 = !DILocalVariable(name: "r", arg: 2, scope: !5374, file: !110, line: 270, type: !5246)
!5398 = !DILocation(line: 270, column: 76, scope: !5374)
!5399 = !DILocalVariable(name: "oldp", arg: 3, scope: !5374, file: !110, line: 270, type: !686)
!5400 = !DILocation(line: 270, column: 84, scope: !5374)
!5401 = !DILocalVariable(name: "old", scope: !5374, file: !110, line: 272, type: !180)
!5402 = !DILocation(line: 272, column: 6, scope: !5374)
!5403 = !DILocation(line: 272, column: 37, scope: !5374)
!5404 = !DILocation(line: 272, column: 41, scope: !5374)
!5405 = !DILocation(line: 272, column: 44, scope: !5374)
!5406 = !DILocation(line: 220, column: 31, scope: !5381, inlinedAt: !5382)
!5407 = !DILocation(line: 101, column: 20, scope: !5283, inlinedAt: !5389)
!5408 = !DILocation(line: 101, column: 23, scope: !5283, inlinedAt: !5389)
!5409 = !DILocation(line: 101, column: 2, scope: !5283, inlinedAt: !5389)
!5410 = !DILocation(line: 102, column: 2, scope: !5283, inlinedAt: !5389)
!5411 = !DILocation(line: 221, column: 39, scope: !5381, inlinedAt: !5382)
!5412 = !DILocation(line: 221, column: 42, scope: !5381, inlinedAt: !5382)
!5413 = !{i32 -2146523396}
!5414 = !DILocation(line: 274, column: 6, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5374, file: !110, line: 274, column: 6)
!5416 = !DILocation(line: 274, column: 6, scope: !5374)
!5417 = !DILocation(line: 275, column: 11, scope: !5415)
!5418 = !DILocation(line: 275, column: 4, scope: !5415)
!5419 = !DILocation(line: 275, column: 9, scope: !5415)
!5420 = !DILocation(line: 275, column: 3, scope: !5415)
!5421 = !DILocation(line: 277, column: 6, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5374, file: !110, line: 277, column: 6)
!5423 = !DILocation(line: 277, column: 13, scope: !5422)
!5424 = !DILocation(line: 277, column: 10, scope: !5422)
!5425 = !DILocation(line: 277, column: 6, scope: !5374)
!5426 = !DILocation(line: 278, column: 3, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5422, file: !110, line: 277, column: 16)
!5428 = !{i32 -2144309623}
!5429 = !DILocation(line: 279, column: 3, scope: !5427)
!5430 = !DILocation(line: 282, column: 6, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5374, file: !110, line: 282, column: 6)
!5432 = !DILocation(line: 282, column: 6, scope: !5374)
!5433 = !DILocation(line: 283, column: 26, scope: !5431)
!5434 = !DILocation(line: 283, column: 3, scope: !5431)
!5435 = !DILocation(line: 285, column: 2, scope: !5374)
!5436 = !DILocation(line: 286, column: 1, scope: !5374)
!5437 = distinct !DISubprogram(name: "dma_free_coherent", scope: !5438, file: !5438, line: 400, type: !5439, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5438 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!5439 = !DISubroutineType(types: !5440)
!5440 = !{null, !186, !300, !181, !901}
!5441 = !DILocalVariable(name: "dev", arg: 1, scope: !5437, file: !5438, line: 400, type: !186)
!5442 = !DILocation(line: 400, column: 53, scope: !5437)
!5443 = !DILocalVariable(name: "size", arg: 2, scope: !5437, file: !5438, line: 400, type: !300)
!5444 = !DILocation(line: 400, column: 65, scope: !5437)
!5445 = !DILocalVariable(name: "cpu_addr", arg: 3, scope: !5437, file: !5438, line: 401, type: !181)
!5446 = !DILocation(line: 401, column: 9, scope: !5437)
!5447 = !DILocalVariable(name: "dma_handle", arg: 4, scope: !5437, file: !5438, line: 401, type: !901)
!5448 = !DILocation(line: 401, column: 30, scope: !5437)
!5449 = !DILocation(line: 403, column: 24, scope: !5437)
!5450 = !DILocation(line: 403, column: 29, scope: !5437)
!5451 = !DILocation(line: 403, column: 35, scope: !5437)
!5452 = !DILocation(line: 403, column: 45, scope: !5437)
!5453 = !DILocation(line: 403, column: 9, scope: !5437)
!5454 = !DILocation(line: 403, column: 2, scope: !5437)
!5455 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !5456, file: !5456, line: 18, type: !5457, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5456 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!5457 = !DISubroutineType(types: !5458)
!5458 = !{!179, !179}
!5459 = !DILocalVariable(name: "x", arg: 1, scope: !5455, file: !5456, line: 18, type: !179)
!5460 = !DILocation(line: 18, column: 63, scope: !5455)
!5461 = !DILocalVariable(name: "y", scope: !5455, file: !5456, line: 20, type: !179)
!5462 = !DILocation(line: 20, column: 16, scope: !5455)
!5463 = !DILocation(line: 20, column: 20, scope: !5455)
!5464 = !DILocation(line: 20, column: 22, scope: !5455)
!5465 = !DILocation(line: 23, column: 6, scope: !5455)
!5466 = !DILocation(line: 23, column: 12, scope: !5455)
!5467 = !DILocation(line: 23, column: 16, scope: !5455)
!5468 = !DILocation(line: 23, column: 14, scope: !5455)
!5469 = !DILocation(line: 23, column: 11, scope: !5455)
!5470 = !DILocation(line: 23, column: 21, scope: !5455)
!5471 = !DILocation(line: 23, column: 55, scope: !5455)
!5472 = !DILocation(line: 23, column: 53, scope: !5455)
!5473 = !DILocation(line: 23, column: 8, scope: !5455)
!5474 = !DILocation(line: 23, column: 4, scope: !5455)
!5475 = !DILocation(line: 25, column: 9, scope: !5455)
!5476 = !DILocation(line: 25, column: 2, scope: !5455)
!5477 = distinct !DISubprogram(name: "clear_bit", scope: !5478, file: !5478, line: 39, type: !5479, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5478 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5479 = !DISubroutineType(types: !5480)
!5480 = !{null, !288, !5481}
!5481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5482, size: 64)
!5482 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !179)
!5483 = !DILocalVariable(name: "nr", arg: 1, scope: !5484, file: !5485, line: 72, type: !288)
!5484 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5485, file: !5485, line: 72, type: !5479, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5485 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5486 = !DILocation(line: 72, column: 21, scope: !5484, inlinedAt: !5487)
!5487 = distinct !DILocation(line: 42, column: 2, scope: !5477)
!5488 = !DILocalVariable(name: "addr", arg: 2, scope: !5484, file: !5485, line: 72, type: !5481)
!5489 = !DILocation(line: 72, column: 49, scope: !5484, inlinedAt: !5487)
!5490 = !DILocalVariable(name: "v", arg: 1, scope: !5491, file: !5284, line: 84, type: !5287)
!5491 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5284, file: !5284, line: 84, type: !5285, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5492 = !DILocation(line: 84, column: 74, scope: !5491, inlinedAt: !5493)
!5493 = distinct !DILocation(line: 41, column: 2, scope: !5477)
!5494 = !DILocalVariable(name: "size", arg: 2, scope: !5491, file: !5284, line: 84, type: !300)
!5495 = !DILocation(line: 84, column: 84, scope: !5491, inlinedAt: !5493)
!5496 = !DILocalVariable(name: "nr", arg: 1, scope: !5477, file: !5478, line: 39, type: !288)
!5497 = !DILocation(line: 39, column: 35, scope: !5477)
!5498 = !DILocalVariable(name: "addr", arg: 2, scope: !5477, file: !5478, line: 39, type: !5481)
!5499 = !DILocation(line: 39, column: 63, scope: !5477)
!5500 = !DILocation(line: 41, column: 26, scope: !5477)
!5501 = !DILocation(line: 41, column: 33, scope: !5477)
!5502 = !DILocation(line: 41, column: 31, scope: !5477)
!5503 = !DILocation(line: 86, column: 20, scope: !5491, inlinedAt: !5493)
!5504 = !DILocation(line: 86, column: 23, scope: !5491, inlinedAt: !5493)
!5505 = !DILocation(line: 86, column: 2, scope: !5491, inlinedAt: !5493)
!5506 = !DILocation(line: 87, column: 2, scope: !5491, inlinedAt: !5493)
!5507 = !DILocation(line: 42, column: 17, scope: !5477)
!5508 = !DILocation(line: 42, column: 21, scope: !5477)
!5509 = !DILocation(line: 74, column: 27, scope: !5510, inlinedAt: !5487)
!5510 = distinct !DILexicalBlock(scope: !5484, file: !5485, line: 74, column: 6)
!5511 = !DILocation(line: 74, column: 6, scope: !5510, inlinedAt: !5487)
!5512 = !DILocation(line: 74, column: 6, scope: !5484, inlinedAt: !5487)
!5513 = !DILocation(line: 76, column: 6, scope: !5514, inlinedAt: !5487)
!5514 = distinct !DILexicalBlock(scope: !5510, file: !5485, line: 74, column: 32)
!5515 = !DILocation(line: 77, column: 13, scope: !5514, inlinedAt: !5487)
!5516 = !DILocation(line: 77, column: 12, scope: !5514, inlinedAt: !5487)
!5517 = !DILocation(line: 75, column: 3, scope: !5514, inlinedAt: !5487)
!5518 = !{i32 -2147128198}
!5519 = !DILocation(line: 78, column: 2, scope: !5514, inlinedAt: !5487)
!5520 = !DILocation(line: 80, column: 8, scope: !5521, inlinedAt: !5487)
!5521 = distinct !DILexicalBlock(scope: !5510, file: !5485, line: 78, column: 9)
!5522 = !DILocation(line: 80, column: 32, scope: !5521, inlinedAt: !5487)
!5523 = !DILocation(line: 79, column: 3, scope: !5521, inlinedAt: !5487)
!5524 = !{i32 -2147128066}
!5525 = !DILocation(line: 43, column: 1, scope: !5477)
!5526 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4284, file: !4284, line: 646, type: !4285, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5527 = !DILocalVariable(name: "__ret", scope: !5528, file: !4284, line: 648, type: !179)
!5528 = distinct !DILexicalBlock(scope: !5526, file: !4284, line: 648, column: 9)
!5529 = !DILocation(line: 648, column: 9, scope: !5528)
!5530 = !DILocalVariable(name: "__edi", scope: !5528, file: !4284, line: 648, type: !179)
!5531 = !DILocalVariable(name: "__esi", scope: !5528, file: !4284, line: 648, type: !179)
!5532 = !DILocalVariable(name: "__edx", scope: !5528, file: !4284, line: 648, type: !179)
!5533 = !DILocalVariable(name: "__ecx", scope: !5528, file: !4284, line: 648, type: !179)
!5534 = !DILocalVariable(name: "__eax", scope: !5528, file: !4284, line: 648, type: !179)
!5535 = !DILocation(line: 648, column: 9, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5537, file: !4284, line: 648, column: 9)
!5537 = distinct !DILexicalBlock(scope: !5528, file: !4284, line: 648, column: 9)
!5538 = !{i32 -2145775468, i32 -2145773153, i32 -2145772919, i32 -2145772868, i32 -2145772840, i32 -2145772815, i32 -2145773131, i32 -2145773118, i32 -2145772680, i32 -2145772561, i32 -2145773026, i32 -2145772999, i32 -2145772971, i32 -2145772941}
!5539 = !DILocalVariable(name: "__mask", scope: !5540, file: !4284, line: 648, type: !179)
!5540 = distinct !DILexicalBlock(scope: !5536, file: !4284, line: 648, column: 9)
!5541 = !DILocation(line: 648, column: 9, scope: !5540)
!5542 = !DILocation(line: 648, column: 9, scope: !5537)
!5543 = !DILocation(line: 648, column: 2, scope: !5526)
!5544 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4284, file: !4284, line: 656, type: !1843, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5545 = !DILocalVariable(name: "__edi", scope: !5546, file: !4284, line: 658, type: !179)
!5546 = distinct !DILexicalBlock(scope: !5544, file: !4284, line: 658, column: 2)
!5547 = !DILocation(line: 658, column: 2, scope: !5546)
!5548 = !DILocalVariable(name: "__esi", scope: !5546, file: !4284, line: 658, type: !179)
!5549 = !DILocalVariable(name: "__edx", scope: !5546, file: !4284, line: 658, type: !179)
!5550 = !DILocalVariable(name: "__ecx", scope: !5546, file: !4284, line: 658, type: !179)
!5551 = !DILocalVariable(name: "__eax", scope: !5546, file: !4284, line: 658, type: !179)
!5552 = !{i32 -2145768374, i32 -2145767642, i32 -2145767408, i32 -2145767357, i32 -2145767329, i32 -2145767304, i32 -2145767620, i32 -2145767607, i32 -2145767169, i32 -2145767050, i32 -2145767515, i32 -2145767488, i32 -2145767460, i32 -2145767430}
!5553 = !DILocation(line: 659, column: 1, scope: !5544)
!5554 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4284, file: !4284, line: 651, type: !5555, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{null, !179}
!5557 = !DILocalVariable(name: "f", arg: 1, scope: !5554, file: !4284, line: 651, type: !179)
!5558 = !DILocation(line: 651, column: 65, scope: !5554)
!5559 = !DILocalVariable(name: "__edi", scope: !5560, file: !4284, line: 653, type: !179)
!5560 = distinct !DILexicalBlock(scope: !5554, file: !4284, line: 653, column: 2)
!5561 = !DILocation(line: 653, column: 2, scope: !5560)
!5562 = !DILocalVariable(name: "__esi", scope: !5560, file: !4284, line: 653, type: !179)
!5563 = !DILocalVariable(name: "__edx", scope: !5560, file: !4284, line: 653, type: !179)
!5564 = !DILocalVariable(name: "__ecx", scope: !5560, file: !4284, line: 653, type: !179)
!5565 = !DILocalVariable(name: "__eax", scope: !5560, file: !4284, line: 653, type: !179)
!5566 = !{i32 -2145771001, i32 -2145770251, i32 -2145770017, i32 -2145769966, i32 -2145769938, i32 -2145769913, i32 -2145770229, i32 -2145770216, i32 -2145769778, i32 -2145769659, i32 -2145770124, i32 -2145770097, i32 -2145770069, i32 -2145770039}
!5567 = !DILocation(line: 654, column: 1, scope: !5554)
!5568 = distinct !DISubprogram(name: "refcount_read", scope: !110, file: !110, line: 145, type: !5569, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{!5, !5571}
!5571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5572, size: 64)
!5572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1195)
!5573 = !DILocalVariable(name: "v", arg: 1, scope: !5574, file: !5268, line: 23, type: !5577)
!5574 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5268, file: !5268, line: 23, type: !5575, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5575 = !DISubroutineType(types: !5576)
!5576 = !{!180, !5577}
!5577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5578, size: 64)
!5578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!5579 = !DILocation(line: 23, column: 61, scope: !5574, inlinedAt: !5580)
!5580 = distinct !DILocation(line: 28, column: 9, scope: !5581, inlinedAt: !5582)
!5581 = distinct !DISubprogram(name: "atomic_read", scope: !5275, file: !5275, line: 25, type: !5575, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5582 = distinct !DILocation(line: 147, column: 9, scope: !5568)
!5583 = !DILocalVariable(name: "v", arg: 1, scope: !5584, file: !5284, line: 69, type: !5287)
!5584 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5284, file: !5284, line: 69, type: !5285, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5585 = !DILocation(line: 69, column: 73, scope: !5584, inlinedAt: !5586)
!5586 = distinct !DILocation(line: 27, column: 2, scope: !5581, inlinedAt: !5582)
!5587 = !DILocalVariable(name: "size", arg: 2, scope: !5584, file: !5284, line: 69, type: !300)
!5588 = !DILocation(line: 69, column: 83, scope: !5584, inlinedAt: !5586)
!5589 = !DILocalVariable(name: "v", arg: 1, scope: !5581, file: !5275, line: 25, type: !5577)
!5590 = !DILocation(line: 25, column: 29, scope: !5581, inlinedAt: !5582)
!5591 = !DILocalVariable(name: "r", arg: 1, scope: !5568, file: !110, line: 145, type: !5571)
!5592 = !DILocation(line: 145, column: 60, scope: !5568)
!5593 = !DILocation(line: 147, column: 22, scope: !5568)
!5594 = !DILocation(line: 147, column: 25, scope: !5568)
!5595 = !DILocation(line: 27, column: 25, scope: !5581, inlinedAt: !5582)
!5596 = !DILocation(line: 71, column: 19, scope: !5584, inlinedAt: !5586)
!5597 = !DILocation(line: 71, column: 22, scope: !5584, inlinedAt: !5586)
!5598 = !DILocation(line: 71, column: 2, scope: !5584, inlinedAt: !5586)
!5599 = !DILocation(line: 72, column: 2, scope: !5584, inlinedAt: !5586)
!5600 = !DILocation(line: 28, column: 26, scope: !5581, inlinedAt: !5582)
!5601 = !DILocation(line: 29, column: 9, scope: !5574, inlinedAt: !5580)
!5602 = !DILocation(line: 147, column: 2, scope: !5568)
!5603 = distinct !DISubprogram(name: "kasan_check_read", scope: !5336, file: !5336, line: 34, type: !5337, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5604 = !DILocalVariable(name: "p", arg: 1, scope: !5603, file: !5336, line: 34, type: !5287)
!5605 = !DILocation(line: 34, column: 58, scope: !5603)
!5606 = !DILocalVariable(name: "size", arg: 2, scope: !5603, file: !5336, line: 34, type: !5)
!5607 = !DILocation(line: 34, column: 74, scope: !5603)
!5608 = !DILocation(line: 36, column: 2, scope: !5603)
!5609 = distinct !DISubprogram(name: "comedi_buf_map_alloc", scope: !1, file: !1, line: 75, type: !5610, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{!182, !4001, !91, !5}
!5612 = !DILocalVariable(name: "page", arg: 1, scope: !5613, file: !123, line: 354, type: !701)
!5613 = distinct !DISubprogram(name: "SetPageReserved", scope: !123, file: !123, line: 354, type: !822, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5614 = !DILocation(line: 354, column: 1, scope: !5613, inlinedAt: !5615)
!5615 = distinct !DILocation(line: 125, column: 4, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5617, file: !1, line: 119, column: 33)
!5617 = distinct !DILexicalBlock(scope: !5618, file: !1, line: 119, column: 3)
!5618 = distinct !DILexicalBlock(scope: !5619, file: !1, line: 119, column: 3)
!5619 = distinct !DILexicalBlock(scope: !5620, file: !1, line: 118, column: 9)
!5620 = distinct !DILexicalBlock(scope: !5609, file: !1, line: 97, column: 6)
!5621 = !DILocalVariable(name: "dev", arg: 1, scope: !5609, file: !1, line: 75, type: !4001)
!5622 = !DILocation(line: 75, column: 44, scope: !5609)
!5623 = !DILocalVariable(name: "dma_dir", arg: 2, scope: !5609, file: !1, line: 75, type: !91)
!5624 = !DILocation(line: 75, column: 73, scope: !5609)
!5625 = !DILocalVariable(name: "n_pages", arg: 3, scope: !5609, file: !1, line: 76, type: !5)
!5626 = !DILocation(line: 76, column: 21, scope: !5609)
!5627 = !DILocalVariable(name: "bm", scope: !5609, file: !1, line: 78, type: !182)
!5628 = !DILocation(line: 78, column: 25, scope: !5609)
!5629 = !DILocalVariable(name: "buf", scope: !5609, file: !1, line: 79, type: !3766)
!5630 = !DILocation(line: 79, column: 26, scope: !5609)
!5631 = !DILocalVariable(name: "i", scope: !5609, file: !1, line: 80, type: !5)
!5632 = !DILocation(line: 80, column: 15, scope: !5609)
!5633 = !DILocation(line: 82, column: 7, scope: !5609)
!5634 = !DILocation(line: 82, column: 5, scope: !5609)
!5635 = !DILocation(line: 83, column: 7, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5609, file: !1, line: 83, column: 6)
!5637 = !DILocation(line: 83, column: 6, scope: !5609)
!5638 = !DILocation(line: 84, column: 3, scope: !5636)
!5639 = !DILocation(line: 86, column: 13, scope: !5609)
!5640 = !DILocation(line: 86, column: 17, scope: !5609)
!5641 = !DILocation(line: 86, column: 2, scope: !5609)
!5642 = !DILocation(line: 87, column: 16, scope: !5609)
!5643 = !DILocation(line: 87, column: 2, scope: !5609)
!5644 = !DILocation(line: 87, column: 6, scope: !5609)
!5645 = !DILocation(line: 87, column: 14, scope: !5609)
!5646 = !DILocation(line: 88, column: 6, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5609, file: !1, line: 88, column: 6)
!5648 = !DILocation(line: 88, column: 10, scope: !5647)
!5649 = !DILocation(line: 88, column: 18, scope: !5647)
!5650 = !DILocation(line: 88, column: 6, scope: !5609)
!5651 = !DILocation(line: 90, column: 31, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5647, file: !1, line: 88, column: 31)
!5653 = !DILocation(line: 90, column: 36, scope: !5652)
!5654 = !DILocation(line: 90, column: 20, scope: !5652)
!5655 = !DILocation(line: 90, column: 3, scope: !5652)
!5656 = !DILocation(line: 90, column: 7, scope: !5652)
!5657 = !DILocation(line: 90, column: 18, scope: !5652)
!5658 = !DILocation(line: 91, column: 2, scope: !5652)
!5659 = !DILocation(line: 93, column: 41, scope: !5609)
!5660 = !DILocation(line: 93, column: 39, scope: !5609)
!5661 = !DILocation(line: 93, column: 18, scope: !5609)
!5662 = !DILocation(line: 93, column: 2, scope: !5609)
!5663 = !DILocation(line: 93, column: 6, scope: !5609)
!5664 = !DILocation(line: 93, column: 16, scope: !5609)
!5665 = !DILocation(line: 94, column: 7, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5609, file: !1, line: 94, column: 6)
!5667 = !DILocation(line: 94, column: 11, scope: !5666)
!5668 = !DILocation(line: 94, column: 6, scope: !5609)
!5669 = !DILocation(line: 95, column: 3, scope: !5666)
!5670 = !DILocation(line: 97, column: 6, scope: !5620)
!5671 = !DILocation(line: 97, column: 10, scope: !5620)
!5672 = !DILocation(line: 97, column: 18, scope: !5620)
!5673 = !DILocation(line: 97, column: 6, scope: !5609)
!5674 = !DILocalVariable(name: "virt_addr", scope: !5675, file: !1, line: 98, type: !181)
!5675 = distinct !DILexicalBlock(scope: !5620, file: !1, line: 97, column: 31)
!5676 = !DILocation(line: 98, column: 9, scope: !5675)
!5677 = !DILocalVariable(name: "dma_addr", scope: !5675, file: !1, line: 99, type: !901)
!5678 = !DILocation(line: 99, column: 14, scope: !5675)
!5679 = !DILocation(line: 105, column: 34, scope: !5675)
!5680 = !DILocation(line: 105, column: 38, scope: !5675)
!5681 = !DILocation(line: 106, column: 25, scope: !5675)
!5682 = !DILocation(line: 106, column: 23, scope: !5675)
!5683 = !DILocation(line: 105, column: 15, scope: !5675)
!5684 = !DILocation(line: 105, column: 13, scope: !5675)
!5685 = !DILocation(line: 108, column: 8, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5675, file: !1, line: 108, column: 7)
!5687 = !DILocation(line: 108, column: 7, scope: !5675)
!5688 = !DILocation(line: 109, column: 4, scope: !5686)
!5689 = !DILocation(line: 111, column: 10, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5675, file: !1, line: 111, column: 3)
!5691 = !DILocation(line: 111, column: 8, scope: !5690)
!5692 = !DILocation(line: 111, column: 15, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5690, file: !1, line: 111, column: 3)
!5694 = !DILocation(line: 111, column: 19, scope: !5693)
!5695 = !DILocation(line: 111, column: 17, scope: !5693)
!5696 = !DILocation(line: 111, column: 3, scope: !5690)
!5697 = !DILocation(line: 112, column: 11, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5693, file: !1, line: 111, column: 33)
!5699 = !DILocation(line: 112, column: 15, scope: !5698)
!5700 = !DILocation(line: 112, column: 25, scope: !5698)
!5701 = !DILocation(line: 112, column: 8, scope: !5698)
!5702 = !DILocation(line: 113, column: 21, scope: !5698)
!5703 = !DILocation(line: 113, column: 34, scope: !5698)
!5704 = !DILocation(line: 113, column: 36, scope: !5698)
!5705 = !DILocation(line: 113, column: 31, scope: !5698)
!5706 = !DILocation(line: 113, column: 4, scope: !5698)
!5707 = !DILocation(line: 113, column: 9, scope: !5698)
!5708 = !DILocation(line: 113, column: 19, scope: !5698)
!5709 = !DILocation(line: 114, column: 20, scope: !5698)
!5710 = !DILocation(line: 114, column: 32, scope: !5698)
!5711 = !DILocation(line: 114, column: 34, scope: !5698)
!5712 = !DILocation(line: 114, column: 31, scope: !5698)
!5713 = !DILocation(line: 114, column: 29, scope: !5698)
!5714 = !DILocation(line: 114, column: 4, scope: !5698)
!5715 = !DILocation(line: 114, column: 9, scope: !5698)
!5716 = !DILocation(line: 114, column: 18, scope: !5698)
!5717 = !DILocation(line: 115, column: 3, scope: !5698)
!5718 = !DILocation(line: 111, column: 29, scope: !5693)
!5719 = !DILocation(line: 111, column: 3, scope: !5693)
!5720 = distinct !{!5720, !5696, !5721}
!5721 = !DILocation(line: 115, column: 3, scope: !5690)
!5722 = !DILocation(line: 117, column: 17, scope: !5675)
!5723 = !DILocation(line: 117, column: 3, scope: !5675)
!5724 = !DILocation(line: 117, column: 7, scope: !5675)
!5725 = !DILocation(line: 117, column: 15, scope: !5675)
!5726 = !DILocation(line: 118, column: 2, scope: !5675)
!5727 = !DILocation(line: 119, column: 10, scope: !5618)
!5728 = !DILocation(line: 119, column: 8, scope: !5618)
!5729 = !DILocation(line: 119, column: 15, scope: !5617)
!5730 = !DILocation(line: 119, column: 19, scope: !5617)
!5731 = !DILocation(line: 119, column: 17, scope: !5617)
!5732 = !DILocation(line: 119, column: 3, scope: !5618)
!5733 = !DILocation(line: 120, column: 11, scope: !5616)
!5734 = !DILocation(line: 120, column: 15, scope: !5616)
!5735 = !DILocation(line: 120, column: 25, scope: !5616)
!5736 = !DILocation(line: 120, column: 8, scope: !5616)
!5737 = !DILocation(line: 121, column: 29, scope: !5616)
!5738 = !DILocation(line: 121, column: 21, scope: !5616)
!5739 = !DILocation(line: 121, column: 4, scope: !5616)
!5740 = !DILocation(line: 121, column: 9, scope: !5616)
!5741 = !DILocation(line: 121, column: 19, scope: !5616)
!5742 = !DILocation(line: 122, column: 9, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5616, file: !1, line: 122, column: 8)
!5744 = !DILocation(line: 122, column: 14, scope: !5743)
!5745 = !DILocation(line: 122, column: 8, scope: !5616)
!5746 = !DILocation(line: 123, column: 5, scope: !5743)
!5747 = !DILocation(line: 125, column: 20, scope: !5616)
!5748 = !DILocation(line: 354, column: 1, scope: !5749, inlinedAt: !5615)
!5749 = distinct !DILexicalBlock(scope: !5750, file: !123, line: 354, column: 1)
!5750 = distinct !DILexicalBlock(scope: !5613, file: !123, line: 354, column: 1)
!5751 = !DILocation(line: 354, column: 1, scope: !5750, inlinedAt: !5615)
!5752 = !DILocation(line: 126, column: 3, scope: !5616)
!5753 = !DILocation(line: 119, column: 29, scope: !5617)
!5754 = !DILocation(line: 119, column: 3, scope: !5617)
!5755 = distinct !{!5755, !5732, !5756}
!5756 = !DILocation(line: 126, column: 3, scope: !5618)
!5757 = !DILocation(line: 128, column: 17, scope: !5619)
!5758 = !DILocation(line: 128, column: 3, scope: !5619)
!5759 = !DILocation(line: 128, column: 7, scope: !5619)
!5760 = !DILocation(line: 128, column: 15, scope: !5619)
!5761 = !DILocation(line: 129, column: 7, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5619, file: !1, line: 129, column: 7)
!5763 = !DILocation(line: 129, column: 11, scope: !5762)
!5764 = !DILocation(line: 129, column: 9, scope: !5762)
!5765 = !DILocation(line: 129, column: 7, scope: !5619)
!5766 = !DILocation(line: 130, column: 4, scope: !5762)
!5767 = !DILocation(line: 133, column: 9, scope: !5609)
!5768 = !DILocation(line: 133, column: 2, scope: !5609)
!5769 = !DILabel(scope: !5609, name: "err", file: !1, line: 135)
!5770 = !DILocation(line: 135, column: 1, scope: !5609)
!5771 = !DILocation(line: 136, column: 21, scope: !5609)
!5772 = !DILocation(line: 136, column: 2, scope: !5609)
!5773 = !DILocation(line: 137, column: 2, scope: !5609)
!5774 = !DILocation(line: 138, column: 1, scope: !5609)
!5775 = distinct !DISubprogram(name: "kzalloc", scope: !172, file: !172, line: 662, type: !5776, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5776 = !DISubroutineType(types: !5777)
!5777 = !{!181, !300, !724}
!5778 = !DILocalVariable(name: "s", arg: 1, scope: !5779, file: !172, line: 445, type: !916)
!5779 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !172, file: !172, line: 445, type: !5780, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5780 = !DISubroutineType(types: !5781)
!5781 = !{!181, !916, !724, !300}
!5782 = !DILocation(line: 445, column: 72, scope: !5779, inlinedAt: !5783)
!5783 = distinct !DILocation(line: 552, column: 10, scope: !5784, inlinedAt: !5787)
!5784 = distinct !DILexicalBlock(scope: !5785, file: !172, line: 540, column: 34)
!5785 = distinct !DILexicalBlock(scope: !5786, file: !172, line: 540, column: 6)
!5786 = distinct !DISubprogram(name: "kmalloc", scope: !172, file: !172, line: 538, type: !5776, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5787 = distinct !DILocation(line: 664, column: 9, scope: !5775)
!5788 = !DILocalVariable(name: "flags", arg: 2, scope: !5779, file: !172, line: 446, type: !724)
!5789 = !DILocation(line: 446, column: 9, scope: !5779, inlinedAt: !5783)
!5790 = !DILocalVariable(name: "size", arg: 3, scope: !5779, file: !172, line: 446, type: !300)
!5791 = !DILocation(line: 446, column: 23, scope: !5779, inlinedAt: !5783)
!5792 = !DILocalVariable(name: "ret", scope: !5779, file: !172, line: 448, type: !181)
!5793 = !DILocation(line: 448, column: 8, scope: !5779, inlinedAt: !5783)
!5794 = !DILocalVariable(name: "flags", arg: 1, scope: !5795, file: !172, line: 318, type: !724)
!5795 = distinct !DISubprogram(name: "kmalloc_type", scope: !172, file: !172, line: 318, type: !5796, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5796 = !DISubroutineType(types: !5797)
!5797 = !{!171, !724}
!5798 = !DILocation(line: 318, column: 67, scope: !5795, inlinedAt: !5799)
!5799 = distinct !DILocation(line: 553, column: 20, scope: !5784, inlinedAt: !5787)
!5800 = !DILocalVariable(name: "size", arg: 1, scope: !5801, file: !172, line: 346, type: !300)
!5801 = distinct !DISubprogram(name: "kmalloc_index", scope: !172, file: !172, line: 346, type: !5802, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!5, !300}
!5804 = !DILocation(line: 346, column: 58, scope: !5801, inlinedAt: !5805)
!5805 = distinct !DILocation(line: 547, column: 11, scope: !5784, inlinedAt: !5787)
!5806 = !DILocalVariable(name: "size", arg: 1, scope: !5807, file: !172, line: 472, type: !300)
!5807 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !172, file: !172, line: 472, type: !5808, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5808 = !DISubroutineType(types: !5809)
!5809 = !{!181, !300, !724, !5}
!5810 = !DILocation(line: 472, column: 28, scope: !5807, inlinedAt: !5811)
!5811 = distinct !DILocation(line: 481, column: 9, scope: !5812, inlinedAt: !5813)
!5812 = distinct !DISubprogram(name: "kmalloc_large", scope: !172, file: !172, line: 478, type: !5776, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!5813 = distinct !DILocation(line: 545, column: 11, scope: !5814, inlinedAt: !5787)
!5814 = distinct !DILexicalBlock(scope: !5784, file: !172, line: 544, column: 7)
!5815 = !DILocalVariable(name: "flags", arg: 2, scope: !5807, file: !172, line: 472, type: !724)
!5816 = !DILocation(line: 472, column: 40, scope: !5807, inlinedAt: !5811)
!5817 = !DILocalVariable(name: "order", arg: 3, scope: !5807, file: !172, line: 472, type: !5)
!5818 = !DILocation(line: 472, column: 60, scope: !5807, inlinedAt: !5811)
!5819 = !DILocalVariable(name: "size", arg: 1, scope: !5812, file: !172, line: 478, type: !300)
!5820 = !DILocation(line: 478, column: 51, scope: !5812, inlinedAt: !5813)
!5821 = !DILocalVariable(name: "flags", arg: 2, scope: !5812, file: !172, line: 478, type: !724)
!5822 = !DILocation(line: 478, column: 63, scope: !5812, inlinedAt: !5813)
!5823 = !DILocalVariable(name: "order", scope: !5812, file: !172, line: 480, type: !5)
!5824 = !DILocation(line: 480, column: 15, scope: !5812, inlinedAt: !5813)
!5825 = !DILocalVariable(name: "size", arg: 1, scope: !5786, file: !172, line: 538, type: !300)
!5826 = !DILocation(line: 538, column: 45, scope: !5786, inlinedAt: !5787)
!5827 = !DILocalVariable(name: "flags", arg: 2, scope: !5786, file: !172, line: 538, type: !724)
!5828 = !DILocation(line: 538, column: 57, scope: !5786, inlinedAt: !5787)
!5829 = !DILocalVariable(name: "index", scope: !5784, file: !172, line: 542, type: !5)
!5830 = !DILocation(line: 542, column: 16, scope: !5784, inlinedAt: !5787)
!5831 = !DILocalVariable(name: "size", arg: 1, scope: !5775, file: !172, line: 662, type: !300)
!5832 = !DILocation(line: 662, column: 36, scope: !5775)
!5833 = !DILocalVariable(name: "flags", arg: 2, scope: !5775, file: !172, line: 662, type: !724)
!5834 = !DILocation(line: 662, column: 48, scope: !5775)
!5835 = !DILocation(line: 664, column: 17, scope: !5775)
!5836 = !DILocation(line: 664, column: 23, scope: !5775)
!5837 = !DILocation(line: 664, column: 29, scope: !5775)
!5838 = !DILocation(line: 540, column: 27, scope: !5785, inlinedAt: !5787)
!5839 = !DILocation(line: 540, column: 6, scope: !5785, inlinedAt: !5787)
!5840 = !DILocation(line: 540, column: 6, scope: !5786, inlinedAt: !5787)
!5841 = !DILocation(line: 544, column: 7, scope: !5814, inlinedAt: !5787)
!5842 = !DILocation(line: 544, column: 12, scope: !5814, inlinedAt: !5787)
!5843 = !DILocation(line: 544, column: 7, scope: !5784, inlinedAt: !5787)
!5844 = !DILocation(line: 545, column: 25, scope: !5814, inlinedAt: !5787)
!5845 = !DILocation(line: 545, column: 31, scope: !5814, inlinedAt: !5787)
!5846 = !DILocation(line: 480, column: 33, scope: !5812, inlinedAt: !5813)
!5847 = !DILocation(line: 480, column: 23, scope: !5812, inlinedAt: !5813)
!5848 = !DILocation(line: 481, column: 29, scope: !5812, inlinedAt: !5813)
!5849 = !DILocation(line: 481, column: 35, scope: !5812, inlinedAt: !5813)
!5850 = !DILocation(line: 481, column: 42, scope: !5812, inlinedAt: !5813)
!5851 = !DILocation(line: 474, column: 23, scope: !5807, inlinedAt: !5811)
!5852 = !DILocation(line: 474, column: 29, scope: !5807, inlinedAt: !5811)
!5853 = !DILocation(line: 474, column: 36, scope: !5807, inlinedAt: !5811)
!5854 = !DILocation(line: 474, column: 9, scope: !5807, inlinedAt: !5811)
!5855 = !DILocation(line: 545, column: 4, scope: !5814, inlinedAt: !5787)
!5856 = !DILocation(line: 547, column: 25, scope: !5784, inlinedAt: !5787)
!5857 = !DILocation(line: 348, column: 7, scope: !5858, inlinedAt: !5805)
!5858 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 348, column: 6)
!5859 = !DILocation(line: 348, column: 6, scope: !5801, inlinedAt: !5805)
!5860 = !DILocation(line: 349, column: 3, scope: !5858, inlinedAt: !5805)
!5861 = !DILocation(line: 351, column: 6, scope: !5862, inlinedAt: !5805)
!5862 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 351, column: 6)
!5863 = !DILocation(line: 351, column: 11, scope: !5862, inlinedAt: !5805)
!5864 = !DILocation(line: 351, column: 6, scope: !5801, inlinedAt: !5805)
!5865 = !DILocation(line: 352, column: 3, scope: !5862, inlinedAt: !5805)
!5866 = !DILocation(line: 354, column: 32, scope: !5867, inlinedAt: !5805)
!5867 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 354, column: 6)
!5868 = !DILocation(line: 354, column: 37, scope: !5867, inlinedAt: !5805)
!5869 = !DILocation(line: 354, column: 42, scope: !5867, inlinedAt: !5805)
!5870 = !DILocation(line: 354, column: 45, scope: !5867, inlinedAt: !5805)
!5871 = !DILocation(line: 354, column: 50, scope: !5867, inlinedAt: !5805)
!5872 = !DILocation(line: 354, column: 6, scope: !5801, inlinedAt: !5805)
!5873 = !DILocation(line: 355, column: 3, scope: !5867, inlinedAt: !5805)
!5874 = !DILocation(line: 356, column: 32, scope: !5875, inlinedAt: !5805)
!5875 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 356, column: 6)
!5876 = !DILocation(line: 356, column: 37, scope: !5875, inlinedAt: !5805)
!5877 = !DILocation(line: 356, column: 43, scope: !5875, inlinedAt: !5805)
!5878 = !DILocation(line: 356, column: 46, scope: !5875, inlinedAt: !5805)
!5879 = !DILocation(line: 356, column: 51, scope: !5875, inlinedAt: !5805)
!5880 = !DILocation(line: 356, column: 6, scope: !5801, inlinedAt: !5805)
!5881 = !DILocation(line: 357, column: 3, scope: !5875, inlinedAt: !5805)
!5882 = !DILocation(line: 358, column: 6, scope: !5883, inlinedAt: !5805)
!5883 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 358, column: 6)
!5884 = !DILocation(line: 358, column: 11, scope: !5883, inlinedAt: !5805)
!5885 = !DILocation(line: 358, column: 6, scope: !5801, inlinedAt: !5805)
!5886 = !DILocation(line: 358, column: 26, scope: !5883, inlinedAt: !5805)
!5887 = !DILocation(line: 359, column: 6, scope: !5888, inlinedAt: !5805)
!5888 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 359, column: 6)
!5889 = !DILocation(line: 359, column: 11, scope: !5888, inlinedAt: !5805)
!5890 = !DILocation(line: 359, column: 6, scope: !5801, inlinedAt: !5805)
!5891 = !DILocation(line: 359, column: 26, scope: !5888, inlinedAt: !5805)
!5892 = !DILocation(line: 360, column: 6, scope: !5893, inlinedAt: !5805)
!5893 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 360, column: 6)
!5894 = !DILocation(line: 360, column: 11, scope: !5893, inlinedAt: !5805)
!5895 = !DILocation(line: 360, column: 6, scope: !5801, inlinedAt: !5805)
!5896 = !DILocation(line: 360, column: 26, scope: !5893, inlinedAt: !5805)
!5897 = !DILocation(line: 361, column: 6, scope: !5898, inlinedAt: !5805)
!5898 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 361, column: 6)
!5899 = !DILocation(line: 361, column: 11, scope: !5898, inlinedAt: !5805)
!5900 = !DILocation(line: 361, column: 6, scope: !5801, inlinedAt: !5805)
!5901 = !DILocation(line: 361, column: 26, scope: !5898, inlinedAt: !5805)
!5902 = !DILocation(line: 362, column: 6, scope: !5903, inlinedAt: !5805)
!5903 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 362, column: 6)
!5904 = !DILocation(line: 362, column: 11, scope: !5903, inlinedAt: !5805)
!5905 = !DILocation(line: 362, column: 6, scope: !5801, inlinedAt: !5805)
!5906 = !DILocation(line: 362, column: 26, scope: !5903, inlinedAt: !5805)
!5907 = !DILocation(line: 363, column: 6, scope: !5908, inlinedAt: !5805)
!5908 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 363, column: 6)
!5909 = !DILocation(line: 363, column: 11, scope: !5908, inlinedAt: !5805)
!5910 = !DILocation(line: 363, column: 6, scope: !5801, inlinedAt: !5805)
!5911 = !DILocation(line: 363, column: 26, scope: !5908, inlinedAt: !5805)
!5912 = !DILocation(line: 364, column: 6, scope: !5913, inlinedAt: !5805)
!5913 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 364, column: 6)
!5914 = !DILocation(line: 364, column: 11, scope: !5913, inlinedAt: !5805)
!5915 = !DILocation(line: 364, column: 6, scope: !5801, inlinedAt: !5805)
!5916 = !DILocation(line: 364, column: 26, scope: !5913, inlinedAt: !5805)
!5917 = !DILocation(line: 365, column: 6, scope: !5918, inlinedAt: !5805)
!5918 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 365, column: 6)
!5919 = !DILocation(line: 365, column: 11, scope: !5918, inlinedAt: !5805)
!5920 = !DILocation(line: 365, column: 6, scope: !5801, inlinedAt: !5805)
!5921 = !DILocation(line: 365, column: 26, scope: !5918, inlinedAt: !5805)
!5922 = !DILocation(line: 366, column: 6, scope: !5923, inlinedAt: !5805)
!5923 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 366, column: 6)
!5924 = !DILocation(line: 366, column: 11, scope: !5923, inlinedAt: !5805)
!5925 = !DILocation(line: 366, column: 6, scope: !5801, inlinedAt: !5805)
!5926 = !DILocation(line: 366, column: 26, scope: !5923, inlinedAt: !5805)
!5927 = !DILocation(line: 367, column: 6, scope: !5928, inlinedAt: !5805)
!5928 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 367, column: 6)
!5929 = !DILocation(line: 367, column: 11, scope: !5928, inlinedAt: !5805)
!5930 = !DILocation(line: 367, column: 6, scope: !5801, inlinedAt: !5805)
!5931 = !DILocation(line: 367, column: 26, scope: !5928, inlinedAt: !5805)
!5932 = !DILocation(line: 368, column: 6, scope: !5933, inlinedAt: !5805)
!5933 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 368, column: 6)
!5934 = !DILocation(line: 368, column: 11, scope: !5933, inlinedAt: !5805)
!5935 = !DILocation(line: 368, column: 6, scope: !5801, inlinedAt: !5805)
!5936 = !DILocation(line: 368, column: 26, scope: !5933, inlinedAt: !5805)
!5937 = !DILocation(line: 369, column: 6, scope: !5938, inlinedAt: !5805)
!5938 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 369, column: 6)
!5939 = !DILocation(line: 369, column: 11, scope: !5938, inlinedAt: !5805)
!5940 = !DILocation(line: 369, column: 6, scope: !5801, inlinedAt: !5805)
!5941 = !DILocation(line: 369, column: 26, scope: !5938, inlinedAt: !5805)
!5942 = !DILocation(line: 370, column: 6, scope: !5943, inlinedAt: !5805)
!5943 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 370, column: 6)
!5944 = !DILocation(line: 370, column: 11, scope: !5943, inlinedAt: !5805)
!5945 = !DILocation(line: 370, column: 6, scope: !5801, inlinedAt: !5805)
!5946 = !DILocation(line: 370, column: 26, scope: !5943, inlinedAt: !5805)
!5947 = !DILocation(line: 371, column: 6, scope: !5948, inlinedAt: !5805)
!5948 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 371, column: 6)
!5949 = !DILocation(line: 371, column: 11, scope: !5948, inlinedAt: !5805)
!5950 = !DILocation(line: 371, column: 6, scope: !5801, inlinedAt: !5805)
!5951 = !DILocation(line: 371, column: 26, scope: !5948, inlinedAt: !5805)
!5952 = !DILocation(line: 372, column: 6, scope: !5953, inlinedAt: !5805)
!5953 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 372, column: 6)
!5954 = !DILocation(line: 372, column: 11, scope: !5953, inlinedAt: !5805)
!5955 = !DILocation(line: 372, column: 6, scope: !5801, inlinedAt: !5805)
!5956 = !DILocation(line: 372, column: 26, scope: !5953, inlinedAt: !5805)
!5957 = !DILocation(line: 373, column: 6, scope: !5958, inlinedAt: !5805)
!5958 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 373, column: 6)
!5959 = !DILocation(line: 373, column: 11, scope: !5958, inlinedAt: !5805)
!5960 = !DILocation(line: 373, column: 6, scope: !5801, inlinedAt: !5805)
!5961 = !DILocation(line: 373, column: 26, scope: !5958, inlinedAt: !5805)
!5962 = !DILocation(line: 374, column: 6, scope: !5963, inlinedAt: !5805)
!5963 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 374, column: 6)
!5964 = !DILocation(line: 374, column: 11, scope: !5963, inlinedAt: !5805)
!5965 = !DILocation(line: 374, column: 6, scope: !5801, inlinedAt: !5805)
!5966 = !DILocation(line: 374, column: 26, scope: !5963, inlinedAt: !5805)
!5967 = !DILocation(line: 375, column: 6, scope: !5968, inlinedAt: !5805)
!5968 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 375, column: 6)
!5969 = !DILocation(line: 375, column: 11, scope: !5968, inlinedAt: !5805)
!5970 = !DILocation(line: 375, column: 6, scope: !5801, inlinedAt: !5805)
!5971 = !DILocation(line: 375, column: 27, scope: !5968, inlinedAt: !5805)
!5972 = !DILocation(line: 376, column: 6, scope: !5973, inlinedAt: !5805)
!5973 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 376, column: 6)
!5974 = !DILocation(line: 376, column: 11, scope: !5973, inlinedAt: !5805)
!5975 = !DILocation(line: 376, column: 6, scope: !5801, inlinedAt: !5805)
!5976 = !DILocation(line: 376, column: 32, scope: !5973, inlinedAt: !5805)
!5977 = !DILocation(line: 377, column: 6, scope: !5978, inlinedAt: !5805)
!5978 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 377, column: 6)
!5979 = !DILocation(line: 377, column: 11, scope: !5978, inlinedAt: !5805)
!5980 = !DILocation(line: 377, column: 6, scope: !5801, inlinedAt: !5805)
!5981 = !DILocation(line: 377, column: 32, scope: !5978, inlinedAt: !5805)
!5982 = !DILocation(line: 378, column: 6, scope: !5983, inlinedAt: !5805)
!5983 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 378, column: 6)
!5984 = !DILocation(line: 378, column: 11, scope: !5983, inlinedAt: !5805)
!5985 = !DILocation(line: 378, column: 6, scope: !5801, inlinedAt: !5805)
!5986 = !DILocation(line: 378, column: 32, scope: !5983, inlinedAt: !5805)
!5987 = !DILocation(line: 379, column: 6, scope: !5988, inlinedAt: !5805)
!5988 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 379, column: 6)
!5989 = !DILocation(line: 379, column: 11, scope: !5988, inlinedAt: !5805)
!5990 = !DILocation(line: 379, column: 6, scope: !5801, inlinedAt: !5805)
!5991 = !DILocation(line: 379, column: 33, scope: !5988, inlinedAt: !5805)
!5992 = !DILocation(line: 380, column: 6, scope: !5993, inlinedAt: !5805)
!5993 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 380, column: 6)
!5994 = !DILocation(line: 380, column: 11, scope: !5993, inlinedAt: !5805)
!5995 = !DILocation(line: 380, column: 6, scope: !5801, inlinedAt: !5805)
!5996 = !DILocation(line: 380, column: 33, scope: !5993, inlinedAt: !5805)
!5997 = !DILocation(line: 381, column: 6, scope: !5998, inlinedAt: !5805)
!5998 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 381, column: 6)
!5999 = !DILocation(line: 381, column: 11, scope: !5998, inlinedAt: !5805)
!6000 = !DILocation(line: 381, column: 6, scope: !5801, inlinedAt: !5805)
!6001 = !DILocation(line: 381, column: 33, scope: !5998, inlinedAt: !5805)
!6002 = !DILocation(line: 382, column: 2, scope: !6003, inlinedAt: !5805)
!6003 = distinct !DILexicalBlock(scope: !6004, file: !172, line: 382, column: 2)
!6004 = distinct !DILexicalBlock(scope: !5801, file: !172, line: 382, column: 2)
!6005 = !{i32 -2144627635, i32 -2144627606, i32 -2144627560, i32 -2144627502, i32 -2144627448, i32 -2144627394, i32 -2144627339, i32 -2144627308}
!6006 = !DILocation(line: 382, column: 2, scope: !6007, inlinedAt: !5805)
!6007 = distinct !DILexicalBlock(scope: !6008, file: !172, line: 382, column: 2)
!6008 = distinct !DILexicalBlock(scope: !6004, file: !172, line: 382, column: 2)
!6009 = !{i32 -2144626865, i32 -2144626858, i32 -2144626804, i32 -2144626773, i32 -2144626743}
!6010 = !DILocation(line: 382, column: 2, scope: !6008, inlinedAt: !5805)
!6011 = !DILocation(line: 386, column: 1, scope: !5801, inlinedAt: !5805)
!6012 = !DILocation(line: 547, column: 9, scope: !5784, inlinedAt: !5787)
!6013 = !DILocation(line: 549, column: 8, scope: !6014, inlinedAt: !5787)
!6014 = distinct !DILexicalBlock(scope: !5784, file: !172, line: 549, column: 7)
!6015 = !DILocation(line: 549, column: 7, scope: !5784, inlinedAt: !5787)
!6016 = !DILocation(line: 550, column: 4, scope: !6014, inlinedAt: !5787)
!6017 = !DILocation(line: 553, column: 33, scope: !5784, inlinedAt: !5787)
!6018 = !DILocation(line: 325, column: 6, scope: !6019, inlinedAt: !5799)
!6019 = distinct !DILexicalBlock(scope: !5795, file: !172, line: 325, column: 6)
!6020 = !DILocation(line: 325, column: 6, scope: !5795, inlinedAt: !5799)
!6021 = !DILocation(line: 326, column: 3, scope: !6019, inlinedAt: !5799)
!6022 = !DILocation(line: 332, column: 9, scope: !5795, inlinedAt: !5799)
!6023 = !DILocation(line: 332, column: 15, scope: !5795, inlinedAt: !5799)
!6024 = !DILocation(line: 332, column: 2, scope: !5795, inlinedAt: !5799)
!6025 = !DILocation(line: 336, column: 1, scope: !5795, inlinedAt: !5799)
!6026 = !DILocation(line: 553, column: 5, scope: !5784, inlinedAt: !5787)
!6027 = !DILocation(line: 553, column: 41, scope: !5784, inlinedAt: !5787)
!6028 = !DILocation(line: 554, column: 5, scope: !5784, inlinedAt: !5787)
!6029 = !DILocation(line: 554, column: 12, scope: !5784, inlinedAt: !5787)
!6030 = !DILocation(line: 448, column: 31, scope: !5779, inlinedAt: !5783)
!6031 = !DILocation(line: 448, column: 34, scope: !5779, inlinedAt: !5783)
!6032 = !DILocation(line: 448, column: 14, scope: !5779, inlinedAt: !5783)
!6033 = !DILocation(line: 450, column: 22, scope: !5779, inlinedAt: !5783)
!6034 = !DILocation(line: 450, column: 25, scope: !5779, inlinedAt: !5783)
!6035 = !DILocation(line: 450, column: 30, scope: !5779, inlinedAt: !5783)
!6036 = !DILocation(line: 450, column: 36, scope: !5779, inlinedAt: !5783)
!6037 = !DILocation(line: 450, column: 8, scope: !5779, inlinedAt: !5783)
!6038 = !DILocation(line: 450, column: 6, scope: !5779, inlinedAt: !5783)
!6039 = !DILocation(line: 451, column: 9, scope: !5779, inlinedAt: !5783)
!6040 = !DILocation(line: 552, column: 3, scope: !5784, inlinedAt: !5787)
!6041 = !DILocation(line: 557, column: 19, scope: !5786, inlinedAt: !5787)
!6042 = !DILocation(line: 557, column: 25, scope: !5786, inlinedAt: !5787)
!6043 = !DILocation(line: 557, column: 9, scope: !5786, inlinedAt: !5787)
!6044 = !DILocation(line: 557, column: 2, scope: !5786, inlinedAt: !5787)
!6045 = !DILocation(line: 558, column: 1, scope: !5786, inlinedAt: !5787)
!6046 = !DILocation(line: 664, column: 2, scope: !5775)
!6047 = distinct !DISubprogram(name: "kref_init", scope: !3329, file: !3329, line: 29, type: !3800, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!6048 = !DILocalVariable(name: "kref", arg: 1, scope: !6047, file: !3329, line: 29, type: !3802)
!6049 = !DILocation(line: 29, column: 43, scope: !6047)
!6050 = !DILocation(line: 31, column: 16, scope: !6047)
!6051 = !DILocation(line: 31, column: 22, scope: !6047)
!6052 = !DILocation(line: 31, column: 2, scope: !6047)
!6053 = !DILocation(line: 32, column: 1, scope: !6047)
!6054 = distinct !DISubprogram(name: "dma_alloc_coherent", scope: !5438, file: !5438, line: 392, type: !6055, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!6055 = !DISubroutineType(types: !6056)
!6056 = !{!181, !186, !300, !6057, !724}
!6057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!6058 = !DILocalVariable(name: "dev", arg: 1, scope: !6054, file: !5438, line: 392, type: !186)
!6059 = !DILocation(line: 392, column: 55, scope: !6054)
!6060 = !DILocalVariable(name: "size", arg: 2, scope: !6054, file: !5438, line: 392, type: !300)
!6061 = !DILocation(line: 392, column: 67, scope: !6054)
!6062 = !DILocalVariable(name: "dma_handle", arg: 3, scope: !6054, file: !5438, line: 393, type: !6057)
!6063 = !DILocation(line: 393, column: 15, scope: !6054)
!6064 = !DILocalVariable(name: "gfp", arg: 4, scope: !6054, file: !5438, line: 393, type: !724)
!6065 = !DILocation(line: 393, column: 33, scope: !6054)
!6066 = !DILocation(line: 396, column: 25, scope: !6054)
!6067 = !DILocation(line: 396, column: 30, scope: !6054)
!6068 = !DILocation(line: 396, column: 36, scope: !6054)
!6069 = !DILocation(line: 396, column: 48, scope: !6054)
!6070 = !DILocation(line: 397, column: 5, scope: !6054)
!6071 = !DILocation(line: 397, column: 9, scope: !6054)
!6072 = !DILocation(line: 397, column: 4, scope: !6054)
!6073 = !DILocation(line: 396, column: 9, scope: !6054)
!6074 = !DILocation(line: 396, column: 2, scope: !6054)
!6075 = distinct !DISubprogram(name: "get_order", scope: !6076, file: !6076, line: 29, type: !6077, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!6076 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6077 = !DISubroutineType(types: !6078)
!6078 = !{!180, !179}
!6079 = !DILocalVariable(name: "x", arg: 1, scope: !6080, file: !5485, line: 366, type: !400)
!6080 = distinct !DISubprogram(name: "fls64", scope: !5485, file: !5485, line: 366, type: !6081, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!6081 = !DISubroutineType(types: !6082)
!6082 = !{!180, !400}
!6083 = !DILocation(line: 366, column: 40, scope: !6080, inlinedAt: !6084)
!6084 = distinct !DILocation(line: 46, column: 9, scope: !6075)
!6085 = !DILocalVariable(name: "bitpos", scope: !6080, file: !5485, line: 368, type: !180)
!6086 = !DILocation(line: 368, column: 6, scope: !6080, inlinedAt: !6084)
!6087 = !DILocalVariable(name: "size", arg: 1, scope: !6075, file: !6076, line: 29, type: !179)
!6088 = !DILocation(line: 29, column: 63, scope: !6075)
!6089 = !DILocation(line: 31, column: 27, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6075, file: !6076, line: 31, column: 6)
!6091 = !DILocation(line: 31, column: 6, scope: !6090)
!6092 = !DILocation(line: 31, column: 6, scope: !6075)
!6093 = !DILocation(line: 32, column: 8, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !6095, file: !6076, line: 32, column: 7)
!6095 = distinct !DILexicalBlock(scope: !6090, file: !6076, line: 31, column: 34)
!6096 = !DILocation(line: 32, column: 7, scope: !6095)
!6097 = !DILocation(line: 33, column: 4, scope: !6094)
!6098 = !DILocation(line: 35, column: 7, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6095, file: !6076, line: 35, column: 7)
!6100 = !DILocation(line: 35, column: 12, scope: !6099)
!6101 = !DILocation(line: 35, column: 7, scope: !6095)
!6102 = !DILocation(line: 36, column: 4, scope: !6099)
!6103 = !DILocation(line: 38, column: 10, scope: !6095)
!6104 = !DILocation(line: 38, column: 28, scope: !6095)
!6105 = !DILocation(line: 38, column: 41, scope: !6095)
!6106 = !DILocation(line: 38, column: 3, scope: !6095)
!6107 = !DILocation(line: 41, column: 6, scope: !6075)
!6108 = !DILocation(line: 42, column: 7, scope: !6075)
!6109 = !DILocation(line: 46, column: 15, scope: !6075)
!6110 = !DILocation(line: 374, column: 2, scope: !6080, inlinedAt: !6084)
!6111 = !DILocation(line: 376, column: 14, scope: !6080, inlinedAt: !6084)
!6112 = !{i32 323069}
!6113 = !DILocation(line: 377, column: 9, scope: !6080, inlinedAt: !6084)
!6114 = !DILocation(line: 377, column: 16, scope: !6080, inlinedAt: !6084)
!6115 = !DILocation(line: 46, column: 2, scope: !6075)
!6116 = !DILocation(line: 48, column: 1, scope: !6075)
!6117 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6118, file: !6118, line: 30, type: !6119, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!6118 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6119 = !DISubroutineType(types: !6120)
!6120 = !{!180, !399}
!6121 = !DILocation(line: 366, column: 40, scope: !6080, inlinedAt: !6122)
!6122 = distinct !DILocation(line: 32, column: 9, scope: !6117)
!6123 = !DILocation(line: 368, column: 6, scope: !6080, inlinedAt: !6122)
!6124 = !DILocalVariable(name: "n", arg: 1, scope: !6117, file: !6118, line: 30, type: !399)
!6125 = !DILocation(line: 30, column: 21, scope: !6117)
!6126 = !DILocation(line: 32, column: 15, scope: !6117)
!6127 = !DILocation(line: 374, column: 2, scope: !6080, inlinedAt: !6122)
!6128 = !DILocation(line: 376, column: 14, scope: !6080, inlinedAt: !6122)
!6129 = !DILocation(line: 377, column: 9, scope: !6080, inlinedAt: !6122)
!6130 = !DILocation(line: 377, column: 16, scope: !6080, inlinedAt: !6122)
!6131 = !DILocation(line: 32, column: 18, scope: !6117)
!6132 = !DILocation(line: 32, column: 2, scope: !6117)
!6133 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6134, file: !6134, line: 137, type: !6135, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!6134 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6135 = !DISubroutineType(types: !6136)
!6136 = !{!181, !916, !2092, !300, !724}
!6137 = !DILocalVariable(name: "s", arg: 1, scope: !6133, file: !6134, line: 137, type: !916)
!6138 = !DILocation(line: 137, column: 54, scope: !6133)
!6139 = !DILocalVariable(name: "object", arg: 2, scope: !6133, file: !6134, line: 137, type: !2092)
!6140 = !DILocation(line: 137, column: 69, scope: !6133)
!6141 = !DILocalVariable(name: "size", arg: 3, scope: !6133, file: !6134, line: 138, type: !300)
!6142 = !DILocation(line: 138, column: 12, scope: !6133)
!6143 = !DILocalVariable(name: "flags", arg: 4, scope: !6133, file: !6134, line: 138, type: !724)
!6144 = !DILocation(line: 138, column: 24, scope: !6133)
!6145 = !DILocation(line: 140, column: 17, scope: !6133)
!6146 = !DILocation(line: 140, column: 2, scope: !6133)
!6147 = distinct !DISubprogram(name: "refcount_set", scope: !110, file: !110, line: 134, type: !6148, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!6148 = !DISubroutineType(types: !6149)
!6149 = !{null, !5246, !180}
!6150 = !DILocalVariable(name: "v", arg: 1, scope: !6151, file: !5268, line: 39, type: !5271)
!6151 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5268, file: !5268, line: 39, type: !6152, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!6152 = !DISubroutineType(types: !6153)
!6153 = !{null, !5271, !180}
!6154 = !DILocation(line: 39, column: 55, scope: !6151, inlinedAt: !6155)
!6155 = distinct !DILocation(line: 46, column: 2, scope: !6156, inlinedAt: !6157)
!6156 = distinct !DISubprogram(name: "atomic_set", scope: !5275, file: !5275, line: 43, type: !6152, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!6157 = distinct !DILocation(line: 136, column: 2, scope: !6147)
!6158 = !DILocalVariable(name: "i", arg: 2, scope: !6151, file: !5268, line: 39, type: !180)
!6159 = !DILocation(line: 39, column: 62, scope: !6151, inlinedAt: !6155)
!6160 = !DILocation(line: 84, column: 74, scope: !5491, inlinedAt: !6161)
!6161 = distinct !DILocation(line: 45, column: 2, scope: !6156, inlinedAt: !6157)
!6162 = !DILocation(line: 84, column: 84, scope: !5491, inlinedAt: !6161)
!6163 = !DILocalVariable(name: "v", arg: 1, scope: !6156, file: !5275, line: 43, type: !5271)
!6164 = !DILocation(line: 43, column: 22, scope: !6156, inlinedAt: !6157)
!6165 = !DILocalVariable(name: "i", arg: 2, scope: !6156, file: !5275, line: 43, type: !180)
!6166 = !DILocation(line: 43, column: 29, scope: !6156, inlinedAt: !6157)
!6167 = !DILocalVariable(name: "r", arg: 1, scope: !6147, file: !110, line: 134, type: !5246)
!6168 = !DILocation(line: 134, column: 45, scope: !6147)
!6169 = !DILocalVariable(name: "n", arg: 2, scope: !6147, file: !110, line: 134, type: !180)
!6170 = !DILocation(line: 134, column: 52, scope: !6147)
!6171 = !DILocation(line: 136, column: 14, scope: !6147)
!6172 = !DILocation(line: 136, column: 17, scope: !6147)
!6173 = !DILocation(line: 136, column: 23, scope: !6147)
!6174 = !DILocation(line: 45, column: 26, scope: !6156, inlinedAt: !6157)
!6175 = !DILocation(line: 86, column: 20, scope: !5491, inlinedAt: !6161)
!6176 = !DILocation(line: 86, column: 23, scope: !5491, inlinedAt: !6161)
!6177 = !DILocation(line: 86, column: 2, scope: !5491, inlinedAt: !6161)
!6178 = !DILocation(line: 87, column: 2, scope: !5491, inlinedAt: !6161)
!6179 = !DILocation(line: 46, column: 18, scope: !6156, inlinedAt: !6157)
!6180 = !DILocation(line: 46, column: 21, scope: !6156, inlinedAt: !6157)
!6181 = !DILocation(line: 41, column: 2, scope: !6182, inlinedAt: !6155)
!6182 = distinct !DILexicalBlock(scope: !6151, file: !5268, line: 41, column: 2)
!6183 = !DILocation(line: 137, column: 1, scope: !6147)
!6184 = distinct !DISubprogram(name: "set_bit", scope: !5478, file: !5478, line: 26, type: !5479, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!6185 = !DILocalVariable(name: "nr", arg: 1, scope: !6186, file: !5485, line: 52, type: !288)
!6186 = distinct !DISubprogram(name: "arch_set_bit", scope: !5485, file: !5485, line: 52, type: !5479, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!6187 = !DILocation(line: 52, column: 19, scope: !6186, inlinedAt: !6188)
!6188 = distinct !DILocation(line: 29, column: 2, scope: !6184)
!6189 = !DILocalVariable(name: "addr", arg: 2, scope: !6186, file: !5485, line: 52, type: !5481)
!6190 = !DILocation(line: 52, column: 47, scope: !6186, inlinedAt: !6188)
!6191 = !DILocation(line: 84, column: 74, scope: !5491, inlinedAt: !6192)
!6192 = distinct !DILocation(line: 28, column: 2, scope: !6184)
!6193 = !DILocation(line: 84, column: 84, scope: !5491, inlinedAt: !6192)
!6194 = !DILocalVariable(name: "nr", arg: 1, scope: !6184, file: !5478, line: 26, type: !288)
!6195 = !DILocation(line: 26, column: 33, scope: !6184)
!6196 = !DILocalVariable(name: "addr", arg: 2, scope: !6184, file: !5478, line: 26, type: !5481)
!6197 = !DILocation(line: 26, column: 61, scope: !6184)
!6198 = !DILocation(line: 28, column: 26, scope: !6184)
!6199 = !DILocation(line: 28, column: 33, scope: !6184)
!6200 = !DILocation(line: 28, column: 31, scope: !6184)
!6201 = !DILocation(line: 86, column: 20, scope: !5491, inlinedAt: !6192)
!6202 = !DILocation(line: 86, column: 23, scope: !5491, inlinedAt: !6192)
!6203 = !DILocation(line: 86, column: 2, scope: !5491, inlinedAt: !6192)
!6204 = !DILocation(line: 87, column: 2, scope: !5491, inlinedAt: !6192)
!6205 = !DILocation(line: 29, column: 15, scope: !6184)
!6206 = !DILocation(line: 29, column: 19, scope: !6184)
!6207 = !DILocation(line: 54, column: 27, scope: !6208, inlinedAt: !6188)
!6208 = distinct !DILexicalBlock(scope: !6186, file: !5485, line: 54, column: 6)
!6209 = !DILocation(line: 54, column: 6, scope: !6208, inlinedAt: !6188)
!6210 = !DILocation(line: 54, column: 6, scope: !6186, inlinedAt: !6188)
!6211 = !DILocation(line: 56, column: 6, scope: !6212, inlinedAt: !6188)
!6212 = distinct !DILexicalBlock(scope: !6208, file: !5485, line: 54, column: 32)
!6213 = !DILocation(line: 57, column: 12, scope: !6212, inlinedAt: !6188)
!6214 = !DILocation(line: 55, column: 3, scope: !6212, inlinedAt: !6188)
!6215 = !{i32 -2147129152}
!6216 = !DILocation(line: 59, column: 2, scope: !6212, inlinedAt: !6188)
!6217 = !DILocation(line: 61, column: 8, scope: !6218, inlinedAt: !6188)
!6218 = distinct !DILexicalBlock(scope: !6208, file: !5485, line: 59, column: 9)
!6219 = !DILocation(line: 61, column: 32, scope: !6218, inlinedAt: !6188)
!6220 = !DILocation(line: 60, column: 3, scope: !6218, inlinedAt: !6188)
!6221 = !{i32 -2147129020}
!6222 = !DILocation(line: 30, column: 1, scope: !6184)
!6223 = distinct !DISubprogram(name: "comedi_bytes_per_sample", scope: !99, file: !99, line: 797, type: !4650, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!6224 = !DILocalVariable(name: "s", arg: 1, scope: !6223, file: !99, line: 797, type: !3997)
!6225 = !DILocation(line: 797, column: 77, scope: !6223)
!6226 = !DILocation(line: 799, column: 9, scope: !6223)
!6227 = !DILocation(line: 799, column: 12, scope: !6223)
!6228 = !DILocation(line: 799, column: 25, scope: !6223)
!6229 = !DILocation(line: 799, column: 2, scope: !6223)
!6230 = distinct !DISubprogram(name: "comedi_sample_shift", scope: !99, file: !99, line: 813, type: !4650, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!6231 = !DILocalVariable(name: "s", arg: 1, scope: !6230, file: !99, line: 813, type: !3997)
!6232 = !DILocation(line: 813, column: 73, scope: !6230)
!6233 = !DILocation(line: 815, column: 9, scope: !6230)
!6234 = !DILocation(line: 815, column: 12, scope: !6230)
!6235 = !DILocation(line: 815, column: 25, scope: !6230)
!6236 = !DILocation(line: 815, column: 2, scope: !6230)
