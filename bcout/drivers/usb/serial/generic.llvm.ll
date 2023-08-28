; ModuleID = '../bcout/drivers/usb/serial/generic.llvm.bc'
source_filename = "drivers/usb/serial/generic.c"
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
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ktermios, %struct.ktermios, %struct.termiox*, [64 x i8], %struct.pid*, %struct.pid*, i64, i32, %struct.winsize, i8, i64, i32, i16, i56, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
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
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.termiox*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, i8*, i16, i32, i64 }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i32, i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module*, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.termiox = type { i16, i16, [5 x i16], i16 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.65, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.65 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
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
%struct.usb_serial_port = type { %struct.usb_serial*, %struct.tty_port, %struct.spinlock, i32, i8, i8*, %struct.urb*, i8, i8*, i32, %struct.urb*, i8, i8*, i32, %struct.urb*, i8, [2 x i8*], [2 x %struct.urb*], i64, i8*, i32, %struct.urb*, %struct.kfifo, [2 x i8*], [2 x %struct.urb*], i64, i8, %struct.async_icount, i32, i64, %struct.wait_queue_head, %struct.work_struct, i64, %struct.device }
%struct.usb_serial = type { %struct.usb_device*, %struct.usb_serial_driver*, %struct.usb_interface*, i8, i8, i8, i8, i8, i8, i8, [16 x %struct.usb_serial_port*], %struct.kref, %struct.mutex, i8* }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type opaque
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ep_device = type opaque
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_host_bos = type { %struct.usb_bos_descriptor*, %struct.usb_ext_cap_descriptor*, %struct.usb_ss_cap_descriptor*, %struct.usb_ssp_cap_descriptor*, %struct.usb_ss_container_id_descriptor*, %struct.usb_ptm_cap_descriptor* }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_ext_cap_descriptor = type <{ i8, i8, i8, i32 }>
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_ssp_cap_descriptor = type { i8, i8, i8, i8, i32, i16, i16, [1 x i32] }
%struct.usb_ss_container_id_descriptor = type { i8, i8, i8, i8, [16 x i8] }
%struct.usb_ptm_cap_descriptor = type { i8, i8, i8 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, i8*, [16 x %struct.usb_interface_assoc_descriptor*], [32 x %struct.usb_interface*], [32 x %struct.usb_interface_cache*], i8*, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_serial_driver = type { i8*, %struct.usb_device_id*, %struct.list_head, %struct.device_driver, %struct.usb_driver*, %struct.usb_dynids, i8, i8, i8, i8, i8, i64, i64, i32 (%struct.usb_serial*, %struct.usb_device_id*)*, i32 (%struct.usb_serial*)*, i32 (%struct.usb_serial*, %struct.usb_serial_endpoints*)*, void (%struct.usb_serial*)*, void (%struct.usb_serial*)*, i32 (%struct.usb_serial_port*)*, i32 (%struct.usb_serial_port*)*, i32 (%struct.usb_serial*, i32)*, i32 (%struct.usb_serial*)*, i32 (%struct.usb_serial*)*, {}*, void (%struct.usb_serial_port*)*, i32 (%struct.tty_struct*, %struct.usb_serial_port*, i8*, i32)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i64)*, i1 (%struct.usb_serial_port*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, i64)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, void (%struct.usb_serial_port*, i32)*, i32 (%struct.usb_serial_port*)*, void (%struct.tty_struct*)*, void (%struct.urb*)*, void (%struct.urb*)*, void (%struct.urb*)*, void (%struct.urb*)*, void (%struct.urb*)*, i32 (%struct.usb_serial_port*, i8*, i64)* }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.usb_driver = type { i8*, i32 (%struct.usb_interface*, %struct.usb_device_id*)*, void (%struct.usb_interface*)*, i32 (%struct.usb_interface*, i32, i8*)*, i32 (%struct.usb_interface*, i32)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, %struct.usb_device_id*, %struct.attribute_group**, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.usb_serial_endpoints = type { i8, i8, i8, i8, [16 x %struct.usb_endpoint_descriptor*], [16 x %struct.usb_endpoint_descriptor*], [16 x %struct.usb_endpoint_descriptor*], [16 x %struct.usb_endpoint_descriptor*] }
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, {}*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.kfifo = type { %union.anon.66, [0 x i8] }
%union.anon.66 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, i8* }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@__func__.usb_serial_generic_write_start = private unnamed_addr constant [31 x i8] c"usb_serial_generic_write_start\00", align 1
@usb_serial_generic_write_start.__print_once = internal global i8 0, align 1, !dbg !0
@.str = private unnamed_addr constant [31 x i8] c"%s - error submitting urb: %d\0A\00", align 1
@jiffies = external dso_local global i64, align 8
@__func__.usb_serial_generic_read_bulk_callback = private unnamed_addr constant [38 x i8] c"usb_serial_generic_read_bulk_callback\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s - urb stopped: %d\0A\00", align 1
@usb_serial_generic_write_bulk_callback.__print_once = internal global i8 0, align 1, !dbg !4825
@__func__.usb_serial_generic_write_bulk_callback = private unnamed_addr constant [39 x i8] c"usb_serial_generic_write_bulk_callback\00", align 1
@usb_serial_generic_write_bulk_callback.__print_once.2 = internal global i8 0, align 1, !dbg !4828
@.str.3 = private unnamed_addr constant [29 x i8] c"%s - nonzero urb status: %d\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"%s - usb_submit_urb failed: %d\0A\00", align 1
@__func__.usb_serial_generic_submit_read_urb = private unnamed_addr constant [35 x i8] c"usb_serial_generic_submit_read_urb\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_serial_generic_register() #0 !dbg !4836 {
entry:
  %retval1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4839, metadata !DIExpression()), !dbg !4840
  store i32 0, i32* %retval1, align 4, !dbg !4840
  %0 = load i32, i32* %retval1, align 4, !dbg !4841
  ret i32 %0, !dbg !4842
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_serial_generic_deregister() #0 !dbg !4843 {
entry:
  ret void, !dbg !4844
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_serial_generic_open(%struct.tty_struct* %tty, %struct.usb_serial_port* %port) #0 !dbg !4845 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %port.addr = alloca %struct.usb_serial_port*, align 8
  %result = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4846, metadata !DIExpression()), !dbg !4847
  store %struct.usb_serial_port* %port, %struct.usb_serial_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port.addr, metadata !4848, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4850, metadata !DIExpression()), !dbg !4851
  store i32 0, i32* %result, align 4, !dbg !4851
  %0 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !4852
  %flags = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %0, i32 0, i32 29, !dbg !4853
  call void @clear_bit(i64 1, i64* %flags) #8, !dbg !4854
  %1 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !4855
  %bulk_in_size = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %1, i32 0, i32 13, !dbg !4857
  %2 = load i32, i32* %bulk_in_size, align 8, !dbg !4857
  %tobool = icmp ne i32 %2, 0, !dbg !4855
  br i1 %tobool, label %if.then, label %if.end, !dbg !4858

if.then:                                          ; preds = %entry
  %3 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !4859
  %call = call i32 @usb_serial_generic_submit_read_urbs(%struct.usb_serial_port* %3, i32 3264) #8, !dbg !4860
  store i32 %call, i32* %result, align 4, !dbg !4861
  br label %if.end, !dbg !4862

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %result, align 4, !dbg !4863
  ret i32 %4, !dbg !4864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !4865 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4871, metadata !DIExpression()), !dbg !4874
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4876, metadata !DIExpression()), !dbg !4877
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4878, metadata !DIExpression()), !dbg !4886
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4888, metadata !DIExpression()), !dbg !4889
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4890, metadata !DIExpression()), !dbg !4891
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4894
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4895
  %div = sdiv i64 %1, 64, !dbg !4895
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4896
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4894
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4897
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4898
  %conv.i = trunc i64 %4 to i32, !dbg !4898
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !4899
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4900
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4900
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #9, !dbg !4900
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4901
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4902
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4903
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #7, !dbg !4905
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4906

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4907
  %12 = bitcast i64* %11 to i8*, !dbg !4907
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4907
  %shr.i = ashr i64 %13, 3, !dbg !4907
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4907
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4909
  %and.i = and i64 %14, 7, !dbg !4909
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4909
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4909
  %neg.i = xor i32 %shl.i, -1, !dbg !4910
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #7, !dbg !4911, !srcloc !4912
  br label %arch_clear_bit.exit, !dbg !4913

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4914
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4916
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #7, !dbg !4917, !srcloc !4918
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4919
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_serial_generic_submit_read_urbs(%struct.usb_serial_port* %port, i32 %mem_flags) #0 !dbg !4920 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca %struct.usb_serial_port*, align 8
  %mem_flags.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.usb_serial_port* %port, %struct.usb_serial_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  store i32 %mem_flags, i32* %mem_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mem_flags.addr, metadata !4923, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.declare(metadata i32* %res, metadata !4925, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4927, metadata !DIExpression()), !dbg !4928
  store i32 0, i32* %i, align 4, !dbg !4929
  br label %for.cond, !dbg !4931

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4932
  %conv = sext i32 %0 to i64, !dbg !4932
  %cmp = icmp ult i64 %conv, 2, !dbg !4934
  br i1 %cmp, label %for.body, label %for.end, !dbg !4935

for.body:                                         ; preds = %for.cond
  %1 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !4936
  %2 = load i32, i32* %i, align 4, !dbg !4938
  %3 = load i32, i32* %mem_flags.addr, align 4, !dbg !4939
  %call = call i32 @usb_serial_generic_submit_read_urb(%struct.usb_serial_port* %1, i32 %2, i32 %3) #8, !dbg !4940
  store i32 %call, i32* %res, align 4, !dbg !4941
  %4 = load i32, i32* %res, align 4, !dbg !4942
  %tobool = icmp ne i32 %4, 0, !dbg !4942
  br i1 %tobool, label %if.then, label %if.end, !dbg !4944

if.then:                                          ; preds = %for.body
  br label %err, !dbg !4945

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4946

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4, !dbg !4947
  %inc = add i32 %5, 1, !dbg !4947
  store i32 %inc, i32* %i, align 4, !dbg !4947
  br label %for.cond, !dbg !4948, !llvm.loop !4949

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4951
  br label %return, !dbg !4951

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !4952), !dbg !4953
  br label %for.cond2, !dbg !4954

for.cond2:                                        ; preds = %for.inc6, %err
  %6 = load i32, i32* %i, align 4, !dbg !4955
  %cmp3 = icmp sge i32 %6, 0, !dbg !4958
  br i1 %cmp3, label %for.body5, label %for.end7, !dbg !4959

for.body5:                                        ; preds = %for.cond2
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !4960
  %read_urbs = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %7, i32 0, i32 17, !dbg !4961
  %8 = load i32, i32* %i, align 4, !dbg !4962
  %idxprom = sext i32 %8 to i64, !dbg !4960
  %arrayidx = getelementptr [2 x %struct.urb*], [2 x %struct.urb*]* %read_urbs, i64 0, i64 %idxprom, !dbg !4960
  %9 = load %struct.urb*, %struct.urb** %arrayidx, align 8, !dbg !4960
  call void @usb_kill_urb(%struct.urb* %9) #8, !dbg !4963
  br label %for.inc6, !dbg !4963

for.inc6:                                         ; preds = %for.body5
  %10 = load i32, i32* %i, align 4, !dbg !4964
  %dec = add i32 %10, -1, !dbg !4964
  store i32 %dec, i32* %i, align 4, !dbg !4964
  br label %for.cond2, !dbg !4965, !llvm.loop !4966

for.end7:                                         ; preds = %for.cond2
  %11 = load i32, i32* %res, align 4, !dbg !4968
  store i32 %11, i32* %retval, align 4, !dbg !4969
  br label %return, !dbg !4969

return:                                           ; preds = %for.end7, %for.end
  %12 = load i32, i32* %retval, align 4, !dbg !4970
  ret i32 %12, !dbg !4970
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_serial_generic_close(%struct.usb_serial_port* %port) #0 !dbg !4971 {
entry:
  %lock.addr.i38 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i38, metadata !4972, metadata !DIExpression()), !dbg !4977
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4981, metadata !DIExpression()), !dbg !4982
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4983, metadata !DIExpression()), !dbg !4988
  %port.addr = alloca %struct.usb_serial_port*, align 8
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %__tmp = alloca %struct.kfifo*, align 8
  %tmp22 = alloca i32, align 4
  store %struct.usb_serial_port* %port, %struct.usb_serial_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4997, metadata !DIExpression()), !dbg !4998
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4999, metadata !DIExpression()), !dbg !5000
  %0 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5001
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %0, i32 0, i32 20, !dbg !5002
  %1 = load i32, i32* %bulk_out_size, align 8, !dbg !5002
  %tobool = icmp ne i32 %1, 0, !dbg !5001
  br i1 %tobool, label %if.then, label %if.end, !dbg !5003

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !5004
  br label %for.cond, !dbg !5006

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !5007
  %conv = sext i32 %2 to i64, !dbg !5007
  %cmp = icmp ult i64 %conv, 2, !dbg !5009
  br i1 %cmp, label %for.body, label %for.end, !dbg !5010

for.body:                                         ; preds = %for.cond
  %3 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5011
  %write_urbs = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %3, i32 0, i32 24, !dbg !5012
  %4 = load i32, i32* %i, align 4, !dbg !5013
  %idxprom = sext i32 %4 to i64, !dbg !5011
  %arrayidx = getelementptr [2 x %struct.urb*], [2 x %struct.urb*]* %write_urbs, i64 0, i64 %idxprom, !dbg !5011
  %5 = load %struct.urb*, %struct.urb** %arrayidx, align 8, !dbg !5011
  call void @usb_kill_urb(%struct.urb* %5) #8, !dbg !5014
  br label %for.inc, !dbg !5014

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !5015
  %inc = add i32 %6, 1, !dbg !5015
  store i32 %inc, i32* %i, align 4, !dbg !5015
  br label %for.cond, !dbg !5016, !llvm.loop !5017

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !5019

do.body:                                          ; preds = %for.end
  br label %do.body2, !dbg !5020

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5021, metadata !DIExpression()), !dbg !5023
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5024, metadata !DIExpression()), !dbg !5023
  %cmp3 = icmp eq i64* %__dummy, %__dummy2, !dbg !5023
  %conv4 = zext i1 %cmp3 to i32, !dbg !5023
  store i32 1, i32* %tmp, align 4, !dbg !5023
  %7 = load i32, i32* %tmp, align 4, !dbg !5023
  br label %do.body5, !dbg !5025

do.body5:                                         ; preds = %do.body2
  br label %do.body6, !dbg !5026

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !5027

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !5029, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !5033, metadata !DIExpression()), !dbg !5032
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !5032
  %conv11 = zext i1 %cmp10 to i32, !dbg !5032
  store i32 1, i32* %tmp12, align 4, !dbg !5032
  %8 = load i32, i32* %tmp12, align 4, !dbg !5032
  %call = call i64 @arch_local_irq_save() #8, !dbg !5034
  store i64 %call, i64* %flags, align 8, !dbg !5034
  br label %do.end, !dbg !5034

do.end:                                           ; preds = %do.body7
  br label %do.end13, !dbg !5027

do.end13:                                         ; preds = %do.end
  br label %do.body14, !dbg !5026

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5035, !srcloc !5036
  br label %do.body15, !dbg !5035

do.body15:                                        ; preds = %do.body14
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5037
  %lock = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 2, !dbg !5037
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5038
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !5039
  %rlock.i = bitcast %union.anon.1* %11 to %struct.raw_spinlock*, !dbg !5039
  br label %do.end17, !dbg !5037

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !5035

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5026

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !5025

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !5020

do.end21:                                         ; preds = %do.end20
  call void @llvm.dbg.declare(metadata %struct.kfifo** %__tmp, metadata !5040, metadata !DIExpression()), !dbg !5043
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5043
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 22, !dbg !5043
  store %struct.kfifo* %write_fifo, %struct.kfifo** %__tmp, align 8, !dbg !5043
  %13 = load %struct.kfifo*, %struct.kfifo** %__tmp, align 8, !dbg !5043
  %14 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %13, i32 0, i32 0, !dbg !5043
  %kfifo = bitcast %union.anon.66* %14 to %struct.__kfifo*, !dbg !5043
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo, i32 0, i32 0, !dbg !5043
  %15 = load i32, i32* %in, align 8, !dbg !5043
  %16 = load %struct.kfifo*, %struct.kfifo** %__tmp, align 8, !dbg !5043
  %17 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %16, i32 0, i32 0, !dbg !5043
  %kfifo23 = bitcast %union.anon.66* %17 to %struct.__kfifo*, !dbg !5043
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo23, i32 0, i32 1, !dbg !5043
  store i32 %15, i32* %out, align 4, !dbg !5043
  store i32 %15, i32* %tmp22, align 4, !dbg !5043
  %18 = load i32, i32* %tmp22, align 4, !dbg !5043
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5044
  %lock24 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %19, i32 0, i32 2, !dbg !5045
  %20 = load i64, i64* %flags, align 8, !dbg !5046
  store %struct.spinlock* %lock24, %struct.spinlock** %lock.addr.i38, align 8
  store i64 %20, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !111, metadata !5047, metadata !DIExpression()) #7, !dbg !5050
  call void @llvm.dbg.declare(metadata !111, metadata !5051, metadata !DIExpression()) #7, !dbg !5050
  store i32 1, i32* %tmp.i, align 4, !dbg !5050
  %21 = load i32, i32* %tmp.i, align 4, !dbg !5050
  call void @llvm.dbg.declare(metadata !111, metadata !5052, metadata !DIExpression()) #7, !dbg !5057
  call void @llvm.dbg.declare(metadata !111, metadata !5058, metadata !DIExpression()) #7, !dbg !5057
  store i32 1, i32* %tmp8.i, align 4, !dbg !5057
  %22 = load i32, i32* %tmp8.i, align 4, !dbg !5057
  %23 = load i64, i64* %flags.addr.i, align 8, !dbg !5059
  call void @arch_local_irq_restore(i64 %23) #9, !dbg !5059
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5060, !srcloc !5062
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i38, align 8, !dbg !5063
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !5063
  %rlock.i39 = bitcast %union.anon.1* %25 to %struct.raw_spinlock*, !dbg !5063
  br label %if.end, !dbg !5065

if.end:                                           ; preds = %do.end21, %entry
  %26 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5066
  %bulk_in_size = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %26, i32 0, i32 13, !dbg !5068
  %27 = load i32, i32* %bulk_in_size, align 8, !dbg !5068
  %tobool25 = icmp ne i32 %27, 0, !dbg !5066
  br i1 %tobool25, label %if.then26, label %if.end37, !dbg !5069

if.then26:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5070
  br label %for.cond27, !dbg !5073

for.cond27:                                       ; preds = %for.inc34, %if.then26
  %28 = load i32, i32* %i, align 4, !dbg !5074
  %conv28 = sext i32 %28 to i64, !dbg !5074
  %cmp29 = icmp ult i64 %conv28, 2, !dbg !5076
  br i1 %cmp29, label %for.body31, label %for.end36, !dbg !5077

for.body31:                                       ; preds = %for.cond27
  %29 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5078
  %read_urbs = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %29, i32 0, i32 17, !dbg !5079
  %30 = load i32, i32* %i, align 4, !dbg !5080
  %idxprom32 = sext i32 %30 to i64, !dbg !5078
  %arrayidx33 = getelementptr [2 x %struct.urb*], [2 x %struct.urb*]* %read_urbs, i64 0, i64 %idxprom32, !dbg !5078
  %31 = load %struct.urb*, %struct.urb** %arrayidx33, align 8, !dbg !5078
  call void @usb_kill_urb(%struct.urb* %31) #8, !dbg !5081
  br label %for.inc34, !dbg !5081

for.inc34:                                        ; preds = %for.body31
  %32 = load i32, i32* %i, align 4, !dbg !5082
  %inc35 = add i32 %32, 1, !dbg !5082
  store i32 %inc35, i32* %i, align 4, !dbg !5082
  br label %for.cond27, !dbg !5083, !llvm.loop !5084

for.end36:                                        ; preds = %for.cond27
  br label %if.end37, !dbg !5086

if.end37:                                         ; preds = %for.end36, %if.end
  ret void, !dbg !5087
}

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !5088 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5092, metadata !DIExpression()), !dbg !5093
  %call = call i64 @arch_local_save_flags() #8, !dbg !5094
  store i64 %call, i64* %f, align 8, !dbg !5095
  call void @arch_local_irq_disable() #8, !dbg !5096
  %0 = load i64, i64* %f, align 8, !dbg !5097
  ret i64 %0, !dbg !5098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_serial_generic_prepare_write_buffer(%struct.usb_serial_port* %port, i8* %dest, i64 %size) #0 !dbg !5099 {
entry:
  %lock.addr.i26 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i26, metadata !4972, metadata !DIExpression()), !dbg !5100
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4981, metadata !DIExpression()), !dbg !5103
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4983, metadata !DIExpression()), !dbg !5104
  %port.addr = alloca %struct.usb_serial_port*, align 8
  %dest.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %__flags = alloca i64, align 8
  %__ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__tmp = alloca %struct.kfifo*, align 8
  %__buf = alloca i8*, align 8
  %__n = alloca i64, align 8
  %__recsize = alloca i64, align 8
  %__kfifo = alloca %struct.__kfifo*, align 8
  %tmp19 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  store %struct.usb_serial_port* %port, %struct.usb_serial_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port.addr, metadata !5111, metadata !DIExpression()), !dbg !5112
  store i8* %dest, i8** %dest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dest.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5115, metadata !DIExpression()), !dbg !5116
  call void @llvm.dbg.declare(metadata i64* %__flags, metadata !5117, metadata !DIExpression()), !dbg !5118
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5119, metadata !DIExpression()), !dbg !5118
  br label %do.body, !dbg !5118

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5120

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5121, metadata !DIExpression()), !dbg !5123
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5124, metadata !DIExpression()), !dbg !5123
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5123
  %conv = zext i1 %cmp to i32, !dbg !5123
  store i32 1, i32* %tmp, align 4, !dbg !5123
  %0 = load i32, i32* %tmp, align 4, !dbg !5123
  br label %do.body2, !dbg !5125

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5126

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5127

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5129, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5133, metadata !DIExpression()), !dbg !5132
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5132
  %conv8 = zext i1 %cmp7 to i32, !dbg !5132
  store i32 1, i32* %tmp9, align 4, !dbg !5132
  %1 = load i32, i32* %tmp9, align 4, !dbg !5132
  %call = call i64 @arch_local_irq_save() #8, !dbg !5134
  store i64 %call, i64* %__flags, align 8, !dbg !5134
  br label %do.end, !dbg !5134

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5127

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5126

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5135, !srcloc !5136
  br label %do.body12, !dbg !5135

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5137
  %lock = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %2, i32 0, i32 2, !dbg !5137
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5138
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5139
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !5139
  br label %do.end14, !dbg !5137

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5135

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5126

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5125

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5120

do.end18:                                         ; preds = %do.end17
  call void @llvm.dbg.declare(metadata %struct.kfifo** %__tmp, metadata !5140, metadata !DIExpression()), !dbg !5142
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5142
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %5, i32 0, i32 22, !dbg !5142
  store %struct.kfifo* %write_fifo, %struct.kfifo** %__tmp, align 8, !dbg !5142
  call void @llvm.dbg.declare(metadata i8** %__buf, metadata !5143, metadata !DIExpression()), !dbg !5142
  %6 = load i8*, i8** %dest.addr, align 8, !dbg !5142
  store i8* %6, i8** %__buf, align 8, !dbg !5142
  call void @llvm.dbg.declare(metadata i64* %__n, metadata !5144, metadata !DIExpression()), !dbg !5142
  %7 = load i64, i64* %size.addr, align 8, !dbg !5142
  store i64 %7, i64* %__n, align 8, !dbg !5142
  call void @llvm.dbg.declare(metadata i64* %__recsize, metadata !5145, metadata !DIExpression()), !dbg !5142
  store i64 0, i64* %__recsize, align 8, !dbg !5142
  call void @llvm.dbg.declare(metadata %struct.__kfifo** %__kfifo, metadata !5147, metadata !DIExpression()), !dbg !5142
  %8 = load %struct.kfifo*, %struct.kfifo** %__tmp, align 8, !dbg !5142
  %9 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %8, i32 0, i32 0, !dbg !5142
  %kfifo = bitcast %union.anon.66* %9 to %struct.__kfifo*, !dbg !5142
  store %struct.__kfifo* %kfifo, %struct.__kfifo** %__kfifo, align 8, !dbg !5142
  %10 = load %struct.__kfifo*, %struct.__kfifo** %__kfifo, align 8, !dbg !5142
  %11 = load i8*, i8** %__buf, align 8, !dbg !5142
  %12 = load i64, i64* %__n, align 8, !dbg !5142
  %conv20 = trunc i64 %12 to i32, !dbg !5142
  %call21 = call i32 @__kfifo_out(%struct.__kfifo* %10, i8* %11, i32 %conv20) #8, !dbg !5142
  store i32 %call21, i32* %tmp19, align 4, !dbg !5142
  %13 = load i32, i32* %tmp19, align 4, !dbg !5142
  %call22 = call i32 @__kfifo_uint_must_check_helper(i32 %13) #8, !dbg !5118
  store i32 %call22, i32* %__ret, align 4, !dbg !5118
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5118
  %lock23 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 2, !dbg !5118
  %15 = load i64, i64* %__flags, align 8, !dbg !5118
  store %struct.spinlock* %lock23, %struct.spinlock** %lock.addr.i26, align 8
  store i64 %15, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !111, metadata !5047, metadata !DIExpression()) #7, !dbg !5149
  call void @llvm.dbg.declare(metadata !111, metadata !5051, metadata !DIExpression()) #7, !dbg !5149
  store i32 1, i32* %tmp.i, align 4, !dbg !5149
  %16 = load i32, i32* %tmp.i, align 4, !dbg !5149
  call void @llvm.dbg.declare(metadata !111, metadata !5052, metadata !DIExpression()) #7, !dbg !5150
  call void @llvm.dbg.declare(metadata !111, metadata !5058, metadata !DIExpression()) #7, !dbg !5150
  store i32 1, i32* %tmp8.i, align 4, !dbg !5150
  %17 = load i32, i32* %tmp8.i, align 4, !dbg !5150
  %18 = load i64, i64* %flags.addr.i, align 8, !dbg !5151
  call void @arch_local_irq_restore(i64 %18) #9, !dbg !5151
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5152, !srcloc !5062
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i26, align 8, !dbg !5153
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !5153
  %rlock.i27 = bitcast %union.anon.1* %20 to %struct.raw_spinlock*, !dbg !5153
  %21 = load i32, i32* %__ret, align 4, !dbg !5118
  store i32 %21, i32* %tmp24, align 4, !dbg !5118
  %22 = load i32, i32* %tmp24, align 4, !dbg !5118
  %call25 = call i32 @__kfifo_uint_must_check_helper(i32 %22) #8, !dbg !5154
  ret i32 %call25, !dbg !5155
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__kfifo_uint_must_check_helper(i32 %val) #0 !dbg !5156 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5159, metadata !DIExpression()), !dbg !5160
  %0 = load i32, i32* %val.addr, align 4, !dbg !5161
  ret i32 %0, !dbg !5162
}

; Function Attrs: noredzone
declare dso_local i32 @__kfifo_out(%struct.__kfifo*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_serial_generic_write_start(%struct.usb_serial_port* %port, i32 %mem_flags) #0 !dbg !2 {
entry:
  %lock.addr.i127 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i127, metadata !4972, metadata !DIExpression()), !dbg !5163
  %flags.addr.i128 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i128, metadata !4981, metadata !DIExpression()), !dbg !5167
  %tmp.i129 = alloca i32, align 4
  %tmp8.i130 = alloca i32, align 4
  %lock.addr.i125 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i125, metadata !4983, metadata !DIExpression()), !dbg !5168
  %lock.addr.i120 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i120, metadata !4972, metadata !DIExpression()), !dbg !5175
  %flags.addr.i121 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i121, metadata !4981, metadata !DIExpression()), !dbg !5177
  %tmp.i122 = alloca i32, align 4
  %tmp8.i123 = alloca i32, align 4
  %lock.addr.i118 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i118, metadata !4983, metadata !DIExpression()), !dbg !5178
  %lock.addr.i113 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i113, metadata !4972, metadata !DIExpression()), !dbg !5185
  %flags.addr.i114 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i114, metadata !4981, metadata !DIExpression()), !dbg !5187
  %tmp.i115 = alloca i32, align 4
  %tmp8.i116 = alloca i32, align 4
  %lock.addr.i111 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i111, metadata !4972, metadata !DIExpression()), !dbg !5188
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4981, metadata !DIExpression()), !dbg !5192
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4983, metadata !DIExpression()), !dbg !5193
  %retval = alloca i32, align 4
  %port.addr = alloca %struct.usb_serial_port*, align 8
  %mem_flags.addr = alloca i32, align 4
  %urb = alloca %struct.urb*, align 8
  %count = alloca i32, align 4
  %result = alloca i32, align 4
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__tmpl = alloca %struct.kfifo*, align 8
  %tmp21 = alloca i32, align 4
  %__dummy37 = alloca i64, align 8
  %__dummy238 = alloca i64, align 8
  %tmp41 = alloca i32, align 4
  %__dummy45 = alloca i64, align 8
  %__dummy246 = alloca i64, align 8
  %tmp49 = alloca i32, align 4
  %__port = alloca %struct.usb_serial_port*, align 8
  %__dummy81 = alloca i64, align 8
  %__dummy282 = alloca i64, align 8
  %tmp85 = alloca i32, align 4
  %__dummy89 = alloca i64, align 8
  %__dummy290 = alloca i64, align 8
  %tmp93 = alloca i32, align 4
  store %struct.usb_serial_port* %port, %struct.usb_serial_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port.addr, metadata !5200, metadata !DIExpression()), !dbg !5201
  store i32 %mem_flags, i32* %mem_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mem_flags.addr, metadata !5202, metadata !DIExpression()), !dbg !5203
  call void @llvm.dbg.declare(metadata %struct.urb** %urb, metadata !5204, metadata !DIExpression()), !dbg !5205
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5206, metadata !DIExpression()), !dbg !5207
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5208, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5210, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5212, metadata !DIExpression()), !dbg !5213
  %0 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5214
  %flags1 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %0, i32 0, i32 29, !dbg !5216
  %call = call zeroext i1 @test_and_set_bit_lock(i64 0, i64* %flags1) #8, !dbg !5217
  br i1 %call, label %if.then, label %if.end, !dbg !5218

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5219
  br label %return, !dbg !5219

if.end:                                           ; preds = %entry
  br label %retry, !dbg !5220

retry:                                            ; preds = %if.end110, %if.end
  call void @llvm.dbg.label(metadata !5221), !dbg !5222
  br label %do.body, !dbg !5223

do.body:                                          ; preds = %retry
  br label %do.body2, !dbg !5224

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5225, metadata !DIExpression()), !dbg !5227
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5228, metadata !DIExpression()), !dbg !5227
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5227
  %conv = zext i1 %cmp to i32, !dbg !5227
  store i32 1, i32* %tmp, align 4, !dbg !5227
  %1 = load i32, i32* %tmp, align 4, !dbg !5227
  br label %do.body3, !dbg !5229

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5230

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !5231

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !5233, metadata !DIExpression()), !dbg !5236
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !5237, metadata !DIExpression()), !dbg !5236
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !5236
  %conv9 = zext i1 %cmp8 to i32, !dbg !5236
  store i32 1, i32* %tmp10, align 4, !dbg !5236
  %2 = load i32, i32* %tmp10, align 4, !dbg !5236
  %call11 = call i64 @arch_local_irq_save() #8, !dbg !5238
  store i64 %call11, i64* %flags, align 8, !dbg !5238
  br label %do.end, !dbg !5238

do.end:                                           ; preds = %do.body5
  br label %do.end12, !dbg !5231

do.end12:                                         ; preds = %do.end
  br label %do.body13, !dbg !5230

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5239, !srcloc !5240
  br label %do.body14, !dbg !5239

do.body14:                                        ; preds = %do.body13
  %3 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5241
  %lock = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %3, i32 0, i32 2, !dbg !5241
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5242
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !5243
  %rlock.i = bitcast %union.anon.1* %5 to %struct.raw_spinlock*, !dbg !5243
  br label %do.end16, !dbg !5241

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !5239

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5230

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5229

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !5224

do.end20:                                         ; preds = %do.end19
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5244
  %write_urbs_free = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %6, i32 0, i32 25, !dbg !5245
  %7 = load i64, i64* %write_urbs_free, align 8, !dbg !5245
  %tobool = icmp ne i64 %7, 0, !dbg !5244
  br i1 %tobool, label %lor.lhs.false, label %if.then24, !dbg !5246

lor.lhs.false:                                    ; preds = %do.end20
  call void @llvm.dbg.declare(metadata %struct.kfifo** %__tmpl, metadata !5247, metadata !DIExpression()), !dbg !5249
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5249
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %8, i32 0, i32 22, !dbg !5249
  store %struct.kfifo* %write_fifo, %struct.kfifo** %__tmpl, align 8, !dbg !5249
  %9 = load %struct.kfifo*, %struct.kfifo** %__tmpl, align 8, !dbg !5249
  %10 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %9, i32 0, i32 0, !dbg !5249
  %kfifo = bitcast %union.anon.66* %10 to %struct.__kfifo*, !dbg !5249
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo, i32 0, i32 0, !dbg !5249
  %11 = load i32, i32* %in, align 8, !dbg !5249
  %12 = load %struct.kfifo*, %struct.kfifo** %__tmpl, align 8, !dbg !5249
  %13 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %12, i32 0, i32 0, !dbg !5249
  %kfifo22 = bitcast %union.anon.66* %13 to %struct.__kfifo*, !dbg !5249
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo22, i32 0, i32 1, !dbg !5249
  %14 = load i32, i32* %out, align 4, !dbg !5249
  %sub = sub i32 %11, %14, !dbg !5249
  store i32 %sub, i32* %tmp21, align 4, !dbg !5249
  %15 = load i32, i32* %tmp21, align 4, !dbg !5249
  %tobool23 = icmp ne i32 %15, 0, !dbg !5250
  br i1 %tobool23, label %if.end27, label %if.then24, !dbg !5251

if.then24:                                        ; preds = %lor.lhs.false, %do.end20
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5252
  %flags25 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %16, i32 0, i32 29, !dbg !5253
  call void @clear_bit_unlock(i64 0, i64* %flags25) #8, !dbg !5254
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5255
  %lock26 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %17, i32 0, i32 2, !dbg !5256
  %18 = load i64, i64* %flags, align 8, !dbg !5257
  store %struct.spinlock* %lock26, %struct.spinlock** %lock.addr.i111, align 8
  store i64 %18, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !111, metadata !5047, metadata !DIExpression()) #7, !dbg !5258
  call void @llvm.dbg.declare(metadata !111, metadata !5051, metadata !DIExpression()) #7, !dbg !5258
  store i32 1, i32* %tmp.i, align 4, !dbg !5258
  %19 = load i32, i32* %tmp.i, align 4, !dbg !5258
  call void @llvm.dbg.declare(metadata !111, metadata !5052, metadata !DIExpression()) #7, !dbg !5259
  call void @llvm.dbg.declare(metadata !111, metadata !5058, metadata !DIExpression()) #7, !dbg !5259
  store i32 1, i32* %tmp8.i, align 4, !dbg !5259
  %20 = load i32, i32* %tmp8.i, align 4, !dbg !5259
  %21 = load i64, i64* %flags.addr.i, align 8, !dbg !5260
  call void @arch_local_irq_restore(i64 %21) #9, !dbg !5260
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5261, !srcloc !5062
  %22 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i111, align 8, !dbg !5262
  %23 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %22, i32 0, i32 0, !dbg !5262
  %rlock.i112 = bitcast %union.anon.1* %23 to %struct.raw_spinlock*, !dbg !5262
  store i32 0, i32* %retval, align 4, !dbg !5263
  br label %return, !dbg !5263

if.end27:                                         ; preds = %lor.lhs.false
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5264
  %write_urbs_free28 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %24, i32 0, i32 25, !dbg !5265
  %call29 = call i64 @find_first_bit(i64* %write_urbs_free28, i64 2) #8, !dbg !5266
  %conv30 = trunc i64 %call29 to i32, !dbg !5267
  store i32 %conv30, i32* %i, align 4, !dbg !5268
  %25 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5269
  %lock31 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %25, i32 0, i32 2, !dbg !5270
  %26 = load i64, i64* %flags, align 8, !dbg !5271
  store %struct.spinlock* %lock31, %struct.spinlock** %lock.addr.i113, align 8
  store i64 %26, i64* %flags.addr.i114, align 8
  call void @llvm.dbg.declare(metadata !111, metadata !5047, metadata !DIExpression()) #7, !dbg !5272
  call void @llvm.dbg.declare(metadata !111, metadata !5051, metadata !DIExpression()) #7, !dbg !5272
  store i32 1, i32* %tmp.i115, align 4, !dbg !5272
  %27 = load i32, i32* %tmp.i115, align 4, !dbg !5272
  call void @llvm.dbg.declare(metadata !111, metadata !5052, metadata !DIExpression()) #7, !dbg !5273
  call void @llvm.dbg.declare(metadata !111, metadata !5058, metadata !DIExpression()) #7, !dbg !5273
  store i32 1, i32* %tmp8.i116, align 4, !dbg !5273
  %28 = load i32, i32* %tmp8.i116, align 4, !dbg !5273
  %29 = load i64, i64* %flags.addr.i114, align 8, !dbg !5274
  call void @arch_local_irq_restore(i64 %29) #9, !dbg !5274
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5275, !srcloc !5062
  %30 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i113, align 8, !dbg !5276
  %31 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %30, i32 0, i32 0, !dbg !5276
  %rlock.i117 = bitcast %union.anon.1* %31 to %struct.raw_spinlock*, !dbg !5276
  %32 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5277
  %write_urbs = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %32, i32 0, i32 24, !dbg !5278
  %33 = load i32, i32* %i, align 4, !dbg !5279
  %idxprom = sext i32 %33 to i64, !dbg !5277
  %arrayidx = getelementptr [2 x %struct.urb*], [2 x %struct.urb*]* %write_urbs, i64 0, i64 %idxprom, !dbg !5277
  %34 = load %struct.urb*, %struct.urb** %arrayidx, align 8, !dbg !5277
  store %struct.urb* %34, %struct.urb** %urb, align 8, !dbg !5280
  %35 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5281
  %serial = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %35, i32 0, i32 0, !dbg !5282
  %36 = load %struct.usb_serial*, %struct.usb_serial** %serial, align 8, !dbg !5282
  %type = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %36, i32 0, i32 1, !dbg !5283
  %37 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %type, align 8, !dbg !5283
  %prepare_write_buffer = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %37, i32 0, i32 49, !dbg !5284
  %38 = load i32 (%struct.usb_serial_port*, i8*, i64)*, i32 (%struct.usb_serial_port*, i8*, i64)** %prepare_write_buffer, align 8, !dbg !5284
  %39 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5285
  %40 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5286
  %transfer_buffer = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 14, !dbg !5287
  %41 = load i8*, i8** %transfer_buffer, align 8, !dbg !5287
  %42 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5288
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %42, i32 0, i32 20, !dbg !5289
  %43 = load i32, i32* %bulk_out_size, align 8, !dbg !5289
  %conv32 = sext i32 %43 to i64, !dbg !5288
  %call33 = call i32 %38(%struct.usb_serial_port* %39, i8* %41, i64 %conv32) #8, !dbg !5281
  store i32 %call33, i32* %count, align 4, !dbg !5290
  %44 = load i32, i32* %count, align 4, !dbg !5291
  %45 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5292
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 19, !dbg !5293
  store i32 %44, i32* %transfer_buffer_length, align 8, !dbg !5294
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5295
  %dev = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %46, i32 0, i32 33, !dbg !5296
  %47 = load i32, i32* %count, align 4, !dbg !5297
  %48 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5298
  %transfer_buffer34 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 14, !dbg !5299
  %49 = load i8*, i8** %transfer_buffer34, align 8, !dbg !5299
  call void @usb_serial_debug_data(%struct.device* %dev, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.usb_serial_generic_write_start, i64 0, i64 0), i32 %47, i8* %49) #8, !dbg !5300
  br label %do.body35, !dbg !5301

do.body35:                                        ; preds = %if.end27
  br label %do.body36, !dbg !5302

do.body36:                                        ; preds = %do.body35
  call void @llvm.dbg.declare(metadata i64* %__dummy37, metadata !5303, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.declare(metadata i64* %__dummy238, metadata !5306, metadata !DIExpression()), !dbg !5305
  %cmp39 = icmp eq i64* %__dummy37, %__dummy238, !dbg !5305
  %conv40 = zext i1 %cmp39 to i32, !dbg !5305
  store i32 1, i32* %tmp41, align 4, !dbg !5305
  %50 = load i32, i32* %tmp41, align 4, !dbg !5305
  br label %do.body42, !dbg !5307

do.body42:                                        ; preds = %do.body36
  br label %do.body43, !dbg !5308

do.body43:                                        ; preds = %do.body42
  br label %do.body44, !dbg !5309

do.body44:                                        ; preds = %do.body43
  call void @llvm.dbg.declare(metadata i64* %__dummy45, metadata !5311, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.declare(metadata i64* %__dummy246, metadata !5315, metadata !DIExpression()), !dbg !5314
  %cmp47 = icmp eq i64* %__dummy45, %__dummy246, !dbg !5314
  %conv48 = zext i1 %cmp47 to i32, !dbg !5314
  store i32 1, i32* %tmp49, align 4, !dbg !5314
  %51 = load i32, i32* %tmp49, align 4, !dbg !5314
  %call50 = call i64 @arch_local_irq_save() #8, !dbg !5316
  store i64 %call50, i64* %flags, align 8, !dbg !5316
  br label %do.end51, !dbg !5316

do.end51:                                         ; preds = %do.body44
  br label %do.end52, !dbg !5309

do.end52:                                         ; preds = %do.end51
  br label %do.body53, !dbg !5308

do.body53:                                        ; preds = %do.end52
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5317, !srcloc !5318
  br label %do.body54, !dbg !5317

do.body54:                                        ; preds = %do.body53
  %52 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5319
  %lock55 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %52, i32 0, i32 2, !dbg !5319
  store %struct.spinlock* %lock55, %struct.spinlock** %lock.addr.i118, align 8
  %53 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i118, align 8, !dbg !5320
  %54 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %53, i32 0, i32 0, !dbg !5321
  %rlock.i119 = bitcast %union.anon.1* %54 to %struct.raw_spinlock*, !dbg !5321
  br label %do.end57, !dbg !5319

do.end57:                                         ; preds = %do.body54
  br label %do.end58, !dbg !5317

do.end58:                                         ; preds = %do.end57
  br label %do.end59, !dbg !5308

do.end59:                                         ; preds = %do.end58
  br label %do.end60, !dbg !5307

do.end60:                                         ; preds = %do.end59
  br label %do.end61, !dbg !5302

do.end61:                                         ; preds = %do.end60
  %55 = load i32, i32* %count, align 4, !dbg !5322
  %56 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5323
  %tx_bytes = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %56, i32 0, i32 28, !dbg !5324
  %57 = load i32, i32* %tx_bytes, align 8, !dbg !5325
  %add = add i32 %57, %55, !dbg !5325
  store i32 %add, i32* %tx_bytes, align 8, !dbg !5325
  %58 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5326
  %lock62 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %58, i32 0, i32 2, !dbg !5327
  %59 = load i64, i64* %flags, align 8, !dbg !5328
  store %struct.spinlock* %lock62, %struct.spinlock** %lock.addr.i120, align 8
  store i64 %59, i64* %flags.addr.i121, align 8
  call void @llvm.dbg.declare(metadata !111, metadata !5047, metadata !DIExpression()) #7, !dbg !5329
  call void @llvm.dbg.declare(metadata !111, metadata !5051, metadata !DIExpression()) #7, !dbg !5329
  store i32 1, i32* %tmp.i122, align 4, !dbg !5329
  %60 = load i32, i32* %tmp.i122, align 4, !dbg !5329
  call void @llvm.dbg.declare(metadata !111, metadata !5052, metadata !DIExpression()) #7, !dbg !5330
  call void @llvm.dbg.declare(metadata !111, metadata !5058, metadata !DIExpression()) #7, !dbg !5330
  store i32 1, i32* %tmp8.i123, align 4, !dbg !5330
  %61 = load i32, i32* %tmp8.i123, align 4, !dbg !5330
  %62 = load i64, i64* %flags.addr.i121, align 8, !dbg !5331
  call void @arch_local_irq_restore(i64 %62) #9, !dbg !5331
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5332, !srcloc !5062
  %63 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i120, align 8, !dbg !5333
  %64 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %63, i32 0, i32 0, !dbg !5333
  %rlock.i124 = bitcast %union.anon.1* %64 to %struct.raw_spinlock*, !dbg !5333
  %65 = load i32, i32* %i, align 4, !dbg !5334
  %conv63 = sext i32 %65 to i64, !dbg !5334
  %66 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5335
  %write_urbs_free64 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %66, i32 0, i32 25, !dbg !5336
  call void @clear_bit(i64 %conv63, i64* %write_urbs_free64) #8, !dbg !5337
  %67 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5338
  %68 = load i32, i32* %mem_flags.addr, align 4, !dbg !5339
  %call65 = call i32 @usb_submit_urb(%struct.urb* %67, i32 %68) #8, !dbg !5340
  store i32 %call65, i32* %result, align 4, !dbg !5341
  %69 = load i32, i32* %result, align 4, !dbg !5342
  %tobool66 = icmp ne i32 %69, 0, !dbg !5342
  br i1 %tobool66, label %if.then67, label %if.end110, !dbg !5343

if.then67:                                        ; preds = %do.end61
  br label %do.body68, !dbg !5344

do.body68:                                        ; preds = %if.then67
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %__port, metadata !5345, metadata !DIExpression()), !dbg !5347
  %70 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5347
  store %struct.usb_serial_port* %70, %struct.usb_serial_port** %__port, align 8, !dbg !5347
  %71 = load %struct.usb_serial_port*, %struct.usb_serial_port** %__port, align 8, !dbg !5348
  %port69 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %71, i32 0, i32 1, !dbg !5348
  %console = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port69, i32 0, i32 12, !dbg !5348
  %bf.load = load i8, i8* %console, align 8, !dbg !5348
  %bf.clear = and i8 %bf.load, 1, !dbg !5348
  %tobool70 = icmp ne i8 %bf.clear, 0, !dbg !5348
  br i1 %tobool70, label %lor.lhs.false71, label %if.then73, !dbg !5348

lor.lhs.false71:                                  ; preds = %do.body68
  %72 = load i8, i8* @usb_serial_generic_write_start.__print_once, align 1, !dbg !5348
  %tobool72 = trunc i8 %72 to i1, !dbg !5348
  br i1 %tobool72, label %if.end75, label %if.then73, !dbg !5347

if.then73:                                        ; preds = %lor.lhs.false71, %do.body68
  store i8 1, i8* @usb_serial_generic_write_start.__print_once, align 1, !dbg !5350
  %73 = load %struct.usb_serial_port*, %struct.usb_serial_port** %__port, align 8, !dbg !5350
  %dev74 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %73, i32 0, i32 33, !dbg !5350
  %74 = load i32, i32* %result, align 4, !dbg !5350
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.usb_serial_generic_write_start, i64 0, i64 0), i32 %74) #10, !dbg !5350
  br label %if.end75, !dbg !5350

if.end75:                                         ; preds = %if.then73, %lor.lhs.false71
  br label %do.end76, !dbg !5347

do.end76:                                         ; preds = %if.end75
  %75 = load i32, i32* %i, align 4, !dbg !5352
  %conv77 = sext i32 %75 to i64, !dbg !5352
  %76 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5353
  %write_urbs_free78 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %76, i32 0, i32 25, !dbg !5354
  call void @set_bit(i64 %conv77, i64* %write_urbs_free78) #8, !dbg !5355
  br label %do.body79, !dbg !5356

do.body79:                                        ; preds = %do.end76
  br label %do.body80, !dbg !5357

do.body80:                                        ; preds = %do.body79
  call void @llvm.dbg.declare(metadata i64* %__dummy81, metadata !5358, metadata !DIExpression()), !dbg !5360
  call void @llvm.dbg.declare(metadata i64* %__dummy282, metadata !5361, metadata !DIExpression()), !dbg !5360
  %cmp83 = icmp eq i64* %__dummy81, %__dummy282, !dbg !5360
  %conv84 = zext i1 %cmp83 to i32, !dbg !5360
  store i32 1, i32* %tmp85, align 4, !dbg !5360
  %77 = load i32, i32* %tmp85, align 4, !dbg !5360
  br label %do.body86, !dbg !5362

do.body86:                                        ; preds = %do.body80
  br label %do.body87, !dbg !5363

do.body87:                                        ; preds = %do.body86
  br label %do.body88, !dbg !5364

do.body88:                                        ; preds = %do.body87
  call void @llvm.dbg.declare(metadata i64* %__dummy89, metadata !5366, metadata !DIExpression()), !dbg !5369
  call void @llvm.dbg.declare(metadata i64* %__dummy290, metadata !5370, metadata !DIExpression()), !dbg !5369
  %cmp91 = icmp eq i64* %__dummy89, %__dummy290, !dbg !5369
  %conv92 = zext i1 %cmp91 to i32, !dbg !5369
  store i32 1, i32* %tmp93, align 4, !dbg !5369
  %78 = load i32, i32* %tmp93, align 4, !dbg !5369
  %call94 = call i64 @arch_local_irq_save() #8, !dbg !5371
  store i64 %call94, i64* %flags, align 8, !dbg !5371
  br label %do.end95, !dbg !5371

do.end95:                                         ; preds = %do.body88
  br label %do.end96, !dbg !5364

do.end96:                                         ; preds = %do.end95
  br label %do.body97, !dbg !5363

do.body97:                                        ; preds = %do.end96
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5372, !srcloc !5373
  br label %do.body98, !dbg !5372

do.body98:                                        ; preds = %do.body97
  %79 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5374
  %lock99 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %79, i32 0, i32 2, !dbg !5374
  store %struct.spinlock* %lock99, %struct.spinlock** %lock.addr.i125, align 8
  %80 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i125, align 8, !dbg !5375
  %81 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %80, i32 0, i32 0, !dbg !5376
  %rlock.i126 = bitcast %union.anon.1* %81 to %struct.raw_spinlock*, !dbg !5376
  br label %do.end101, !dbg !5374

do.end101:                                        ; preds = %do.body98
  br label %do.end102, !dbg !5372

do.end102:                                        ; preds = %do.end101
  br label %do.end103, !dbg !5363

do.end103:                                        ; preds = %do.end102
  br label %do.end104, !dbg !5362

do.end104:                                        ; preds = %do.end103
  br label %do.end105, !dbg !5357

do.end105:                                        ; preds = %do.end104
  %82 = load i32, i32* %count, align 4, !dbg !5377
  %83 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5378
  %tx_bytes106 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %83, i32 0, i32 28, !dbg !5379
  %84 = load i32, i32* %tx_bytes106, align 8, !dbg !5380
  %sub107 = sub i32 %84, %82, !dbg !5380
  store i32 %sub107, i32* %tx_bytes106, align 8, !dbg !5380
  %85 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5381
  %lock108 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %85, i32 0, i32 2, !dbg !5382
  %86 = load i64, i64* %flags, align 8, !dbg !5383
  store %struct.spinlock* %lock108, %struct.spinlock** %lock.addr.i127, align 8
  store i64 %86, i64* %flags.addr.i128, align 8
  call void @llvm.dbg.declare(metadata !111, metadata !5047, metadata !DIExpression()) #7, !dbg !5384
  call void @llvm.dbg.declare(metadata !111, metadata !5051, metadata !DIExpression()) #7, !dbg !5384
  store i32 1, i32* %tmp.i129, align 4, !dbg !5384
  %87 = load i32, i32* %tmp.i129, align 4, !dbg !5384
  call void @llvm.dbg.declare(metadata !111, metadata !5052, metadata !DIExpression()) #7, !dbg !5385
  call void @llvm.dbg.declare(metadata !111, metadata !5058, metadata !DIExpression()) #7, !dbg !5385
  store i32 1, i32* %tmp8.i130, align 4, !dbg !5385
  %88 = load i32, i32* %tmp8.i130, align 4, !dbg !5385
  %89 = load i64, i64* %flags.addr.i128, align 8, !dbg !5386
  call void @arch_local_irq_restore(i64 %89) #9, !dbg !5386
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5387, !srcloc !5062
  %90 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i127, align 8, !dbg !5388
  %91 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %90, i32 0, i32 0, !dbg !5388
  %rlock.i131 = bitcast %union.anon.1* %91 to %struct.raw_spinlock*, !dbg !5388
  %92 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5389
  %flags109 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %92, i32 0, i32 29, !dbg !5390
  call void @clear_bit_unlock(i64 0, i64* %flags109) #8, !dbg !5391
  %93 = load i32, i32* %result, align 4, !dbg !5392
  store i32 %93, i32* %retval, align 4, !dbg !5393
  br label %return, !dbg !5393

if.end110:                                        ; preds = %do.end61
  br label %retry, !dbg !5394

return:                                           ; preds = %do.end105, %if.then24, %if.then
  %94 = load i32, i32* %retval, align 4, !dbg !5395
  ret i32 %94, !dbg !5395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit_lock(i64 %nr, i64* %addr) #0 !dbg !5396 {
entry:
  %nr.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i.i, metadata !5400, metadata !DIExpression()), !dbg !5402
  %addr.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i.i, metadata !5406, metadata !DIExpression()), !dbg !5407
  %c.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i.i, metadata !5408, metadata !DIExpression()), !dbg !5410
  %tmp.i.i = alloca i8, align 1
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5411, metadata !DIExpression()), !dbg !5412
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5413, metadata !DIExpression()), !dbg !5414
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5415, metadata !DIExpression()), !dbg !5417
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5419, metadata !DIExpression()), !dbg !5420
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5421, metadata !DIExpression()), !dbg !5422
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5423, metadata !DIExpression()), !dbg !5424
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5425
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5426
  %div = sdiv i64 %1, 64, !dbg !5426
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5427
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5425
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5428
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5429
  %conv.i = trunc i64 %4 to i32, !dbg !5429
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !5430
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5431
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5431
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #9, !dbg !5431
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5432
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5433
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5434
  %10 = load i64*, i64** %addr.addr.i, align 8, !dbg !5435
  store i64 %9, i64* %nr.addr.i.i, align 8
  store i64* %10, i64** %addr.addr.i.i, align 8
  %11 = load i64*, i64** %addr.addr.i.i, align 8, !dbg !5410
  %12 = load i64, i64* %nr.addr.i.i, align 8, !dbg !5410
  %13 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %11, i64 %12, i64* %11) #7, !dbg !5410, !srcloc !5436
  store i8 %13, i8* %c.i.i, align 1, !dbg !5410
  %14 = load i8, i8* %c.i.i, align 1, !dbg !5410
  %tobool.i.i = trunc i8 %14 to i1, !dbg !5410
  %frombool.i.i = zext i1 %tobool.i.i to i8, !dbg !5410
  store i8 %frombool.i.i, i8* %tmp.i.i, align 1, !dbg !5410
  %15 = load i8, i8* %tmp.i.i, align 1, !dbg !5410
  %tobool1.i.i = trunc i8 %15 to i1, !dbg !5410
  ret i1 %tobool1.i.i, !dbg !5437
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit_unlock(i64 %nr, i64* %addr) #0 !dbg !5438 {
entry:
  %nr.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i.i, metadata !4871, metadata !DIExpression()), !dbg !5439
  %addr.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i.i, metadata !4876, metadata !DIExpression()), !dbg !5443
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5444, metadata !DIExpression()), !dbg !5445
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5446, metadata !DIExpression()), !dbg !5447
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4878, metadata !DIExpression()), !dbg !5448
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4888, metadata !DIExpression()), !dbg !5450
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5451, metadata !DIExpression()), !dbg !5452
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5453, metadata !DIExpression()), !dbg !5454
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5455
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5456
  %div = sdiv i64 %1, 64, !dbg !5456
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5457
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5455
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5458
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5459
  %conv.i = trunc i64 %4 to i32, !dbg !5459
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !5460
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5461
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5461
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #9, !dbg !5461
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5462
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5463
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5464, !srcloc !5465
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5466
  %10 = load i64*, i64** %addr.addr.i, align 8, !dbg !5467
  store i64 %9, i64* %nr.addr.i.i, align 8
  store i64* %10, i64** %addr.addr.i.i, align 8
  %11 = load i64, i64* %nr.addr.i.i, align 8, !dbg !5468
  %12 = call i1 @llvm.is.constant.i64(i64 %11) #7, !dbg !5469
  br i1 %12, label %if.then.i.i, label %if.else.i.i, !dbg !5470

if.then.i.i:                                      ; preds = %entry
  %13 = load i64*, i64** %addr.addr.i.i, align 8, !dbg !5471
  %14 = bitcast i64* %13 to i8*, !dbg !5471
  %15 = load i64, i64* %nr.addr.i.i, align 8, !dbg !5471
  %shr.i.i = ashr i64 %15, 3, !dbg !5471
  %add.ptr.i.i = getelementptr i8, i8* %14, i64 %shr.i.i, !dbg !5471
  %16 = load i64, i64* %nr.addr.i.i, align 8, !dbg !5472
  %and.i.i = and i64 %16, 7, !dbg !5472
  %sh_prom.i.i = trunc i64 %and.i.i to i32, !dbg !5472
  %shl.i.i = shl i32 1, %sh_prom.i.i, !dbg !5472
  %neg.i.i = xor i32 %shl.i.i, -1, !dbg !5473
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i.i, i32 %neg.i.i, i8* %add.ptr.i.i) #7, !dbg !5474, !srcloc !4912
  br label %arch_clear_bit_unlock.exit, !dbg !5475

if.else.i.i:                                      ; preds = %entry
  %17 = load i64*, i64** %addr.addr.i.i, align 8, !dbg !5476
  %18 = load i64, i64* %nr.addr.i.i, align 8, !dbg !5477
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #7, !dbg !5478, !srcloc !4918
  br label %arch_clear_bit_unlock.exit

arch_clear_bit_unlock.exit:                       ; preds = %if.then.i.i, %if.else.i.i
  ret void, !dbg !5479
}

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_serial_debug_data(%struct.device* %dev, i8* %function, i32 %size, i8* %data) #0 !dbg !5480 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %function.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5483, metadata !DIExpression()), !dbg !5484
  store i8* %function, i8** %function.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %function.addr, metadata !5485, metadata !DIExpression()), !dbg !5486
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5487, metadata !DIExpression()), !dbg !5488
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5489, metadata !DIExpression()), !dbg !5490
  ret void, !dbg !5491
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !5492 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5493, metadata !DIExpression()), !dbg !5495
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5497, metadata !DIExpression()), !dbg !5498
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4878, metadata !DIExpression()), !dbg !5499
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4888, metadata !DIExpression()), !dbg !5501
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5502, metadata !DIExpression()), !dbg !5503
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5504, metadata !DIExpression()), !dbg !5505
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5506
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5507
  %div = sdiv i64 %1, 64, !dbg !5507
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5508
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5506
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5509
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5510
  %conv.i = trunc i64 %4 to i32, !dbg !5510
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !5511
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5512
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5512
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #9, !dbg !5512
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5513
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5514
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5515
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #7, !dbg !5517
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5518

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5519
  %12 = bitcast i64* %11 to i8*, !dbg !5519
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5519
  %shr.i = ashr i64 %13, 3, !dbg !5519
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5519
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5521
  %and.i = and i64 %14, 7, !dbg !5521
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5521
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5521
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #7, !dbg !5522, !srcloc !5523
  br label %arch_set_bit.exit, !dbg !5524

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5525
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5527
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #7, !dbg !5528, !srcloc !5529
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5530
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_serial_generic_write(%struct.tty_struct* %tty, %struct.usb_serial_port* %port, i8* %buf, i32 %count) #0 !dbg !5531 {
entry:
  %lock.addr.i32 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i32, metadata !4972, metadata !DIExpression()), !dbg !5532
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4981, metadata !DIExpression()), !dbg !5535
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4983, metadata !DIExpression()), !dbg !5536
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %port.addr = alloca %struct.usb_serial_port*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %__flags = alloca i64, align 8
  %__ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %__tmp = alloca %struct.kfifo*, align 8
  %__buf = alloca i8*, align 8
  %__n = alloca i64, align 8
  %__recsize = alloca i64, align 8
  %__kfifo = alloca %struct.__kfifo*, align 8
  %tmp23 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  store %struct.usb_serial_port* %port, %struct.usb_serial_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port.addr, metadata !5545, metadata !DIExpression()), !dbg !5546
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5547, metadata !DIExpression()), !dbg !5548
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5549, metadata !DIExpression()), !dbg !5550
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5551, metadata !DIExpression()), !dbg !5552
  %0 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5553
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %0, i32 0, i32 20, !dbg !5555
  %1 = load i32, i32* %bulk_out_size, align 8, !dbg !5555
  %tobool = icmp ne i32 %1, 0, !dbg !5553
  br i1 %tobool, label %if.end, label %if.then, !dbg !5556

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5557
  br label %return, !dbg !5557

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %count.addr, align 4, !dbg !5558
  %tobool1 = icmp ne i32 %2, 0, !dbg !5558
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5560

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5561
  br label %return, !dbg !5561

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__flags, metadata !5562, metadata !DIExpression()), !dbg !5563
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5564, metadata !DIExpression()), !dbg !5563
  br label %do.body, !dbg !5563

do.body:                                          ; preds = %if.end3
  br label %do.body4, !dbg !5565

do.body4:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5566, metadata !DIExpression()), !dbg !5568
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5569, metadata !DIExpression()), !dbg !5568
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5568
  %conv = zext i1 %cmp to i32, !dbg !5568
  store i32 1, i32* %tmp, align 4, !dbg !5568
  %3 = load i32, i32* %tmp, align 4, !dbg !5568
  br label %do.body5, !dbg !5570

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !5571

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !5572

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !5574, metadata !DIExpression()), !dbg !5577
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !5578, metadata !DIExpression()), !dbg !5577
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !5577
  %conv11 = zext i1 %cmp10 to i32, !dbg !5577
  store i32 1, i32* %tmp12, align 4, !dbg !5577
  %4 = load i32, i32* %tmp12, align 4, !dbg !5577
  %call = call i64 @arch_local_irq_save() #8, !dbg !5579
  store i64 %call, i64* %__flags, align 8, !dbg !5579
  br label %do.end, !dbg !5579

do.end:                                           ; preds = %do.body7
  br label %do.end13, !dbg !5572

do.end13:                                         ; preds = %do.end
  br label %do.body14, !dbg !5571

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5580, !srcloc !5581
  br label %do.body15, !dbg !5580

do.body15:                                        ; preds = %do.body14
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5582
  %lock = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %5, i32 0, i32 2, !dbg !5582
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5583
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !5584
  %rlock.i = bitcast %union.anon.1* %7 to %struct.raw_spinlock*, !dbg !5584
  br label %do.end17, !dbg !5582

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !5580

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5571

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !5570

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !5565

do.end21:                                         ; preds = %do.end20
  call void @llvm.dbg.declare(metadata %struct.kfifo** %__tmp, metadata !5585, metadata !DIExpression()), !dbg !5587
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5587
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %8, i32 0, i32 22, !dbg !5587
  store %struct.kfifo* %write_fifo, %struct.kfifo** %__tmp, align 8, !dbg !5587
  call void @llvm.dbg.declare(metadata i8** %__buf, metadata !5588, metadata !DIExpression()), !dbg !5587
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5587
  store i8* %9, i8** %__buf, align 8, !dbg !5587
  call void @llvm.dbg.declare(metadata i64* %__n, metadata !5589, metadata !DIExpression()), !dbg !5587
  %10 = load i32, i32* %count.addr, align 4, !dbg !5587
  %conv22 = sext i32 %10 to i64, !dbg !5587
  store i64 %conv22, i64* %__n, align 8, !dbg !5587
  call void @llvm.dbg.declare(metadata i64* %__recsize, metadata !5590, metadata !DIExpression()), !dbg !5587
  store i64 0, i64* %__recsize, align 8, !dbg !5587
  call void @llvm.dbg.declare(metadata %struct.__kfifo** %__kfifo, metadata !5591, metadata !DIExpression()), !dbg !5587
  %11 = load %struct.kfifo*, %struct.kfifo** %__tmp, align 8, !dbg !5587
  %12 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %11, i32 0, i32 0, !dbg !5587
  %kfifo = bitcast %union.anon.66* %12 to %struct.__kfifo*, !dbg !5587
  store %struct.__kfifo* %kfifo, %struct.__kfifo** %__kfifo, align 8, !dbg !5587
  %13 = load %struct.__kfifo*, %struct.__kfifo** %__kfifo, align 8, !dbg !5587
  %14 = load i8*, i8** %__buf, align 8, !dbg !5587
  %15 = load i64, i64* %__n, align 8, !dbg !5587
  %conv24 = trunc i64 %15 to i32, !dbg !5587
  %call25 = call i32 @__kfifo_in(%struct.__kfifo* %13, i8* %14, i32 %conv24) #8, !dbg !5587
  store i32 %call25, i32* %tmp23, align 4, !dbg !5587
  %16 = load i32, i32* %tmp23, align 4, !dbg !5587
  store i32 %16, i32* %__ret, align 4, !dbg !5563
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5563
  %lock26 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %17, i32 0, i32 2, !dbg !5563
  %18 = load i64, i64* %__flags, align 8, !dbg !5563
  store %struct.spinlock* %lock26, %struct.spinlock** %lock.addr.i32, align 8
  store i64 %18, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !111, metadata !5047, metadata !DIExpression()) #7, !dbg !5592
  call void @llvm.dbg.declare(metadata !111, metadata !5051, metadata !DIExpression()) #7, !dbg !5592
  store i32 1, i32* %tmp.i, align 4, !dbg !5592
  %19 = load i32, i32* %tmp.i, align 4, !dbg !5592
  call void @llvm.dbg.declare(metadata !111, metadata !5052, metadata !DIExpression()) #7, !dbg !5593
  call void @llvm.dbg.declare(metadata !111, metadata !5058, metadata !DIExpression()) #7, !dbg !5593
  store i32 1, i32* %tmp8.i, align 4, !dbg !5593
  %20 = load i32, i32* %tmp8.i, align 4, !dbg !5593
  %21 = load i64, i64* %flags.addr.i, align 8, !dbg !5594
  call void @arch_local_irq_restore(i64 %21) #9, !dbg !5594
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5595, !srcloc !5062
  %22 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i32, align 8, !dbg !5596
  %23 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %22, i32 0, i32 0, !dbg !5596
  %rlock.i33 = bitcast %union.anon.1* %23 to %struct.raw_spinlock*, !dbg !5596
  %24 = load i32, i32* %__ret, align 4, !dbg !5563
  store i32 %24, i32* %tmp27, align 4, !dbg !5563
  %25 = load i32, i32* %tmp27, align 4, !dbg !5563
  store i32 %25, i32* %count.addr, align 4, !dbg !5597
  %26 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5598
  %call28 = call i32 @usb_serial_generic_write_start(%struct.usb_serial_port* %26, i32 2592) #8, !dbg !5599
  store i32 %call28, i32* %result, align 4, !dbg !5600
  %27 = load i32, i32* %result, align 4, !dbg !5601
  %tobool29 = icmp ne i32 %27, 0, !dbg !5601
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5603

if.then30:                                        ; preds = %do.end21
  %28 = load i32, i32* %result, align 4, !dbg !5604
  store i32 %28, i32* %retval, align 4, !dbg !5605
  br label %return, !dbg !5605

if.end31:                                         ; preds = %do.end21
  %29 = load i32, i32* %count.addr, align 4, !dbg !5606
  store i32 %29, i32* %retval, align 4, !dbg !5607
  br label %return, !dbg !5607

return:                                           ; preds = %if.end31, %if.then30, %if.then2, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !5608
  ret i32 %30, !dbg !5608
}

; Function Attrs: noredzone
declare dso_local i32 @__kfifo_in(%struct.__kfifo*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_serial_generic_write_room(%struct.tty_struct* %tty) #0 !dbg !5609 {
entry:
  %lock.addr.i26 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i26, metadata !4972, metadata !DIExpression()), !dbg !5610
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4981, metadata !DIExpression()), !dbg !5612
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4983, metadata !DIExpression()), !dbg !5613
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %port = alloca %struct.usb_serial_port*, align 8
  %flags = alloca i64, align 8
  %room = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__tmpq = alloca %struct.kfifo*, align 8
  %__recsize = alloca i64, align 8
  %__avail = alloca i32, align 4
  %__tmpl = alloca %struct.kfifo*, align 8
  %tmp19 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5620, metadata !DIExpression()), !dbg !5621
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port, metadata !5622, metadata !DIExpression()), !dbg !5623
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5624
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 37, !dbg !5625
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5625
  %2 = bitcast i8* %1 to %struct.usb_serial_port*, !dbg !5624
  store %struct.usb_serial_port* %2, %struct.usb_serial_port** %port, align 8, !dbg !5623
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5626, metadata !DIExpression()), !dbg !5627
  call void @llvm.dbg.declare(metadata i32* %room, metadata !5628, metadata !DIExpression()), !dbg !5629
  %3 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5630
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %3, i32 0, i32 20, !dbg !5632
  %4 = load i32, i32* %bulk_out_size, align 8, !dbg !5632
  %tobool = icmp ne i32 %4, 0, !dbg !5630
  br i1 %tobool, label %if.end, label %if.then, !dbg !5633

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5634
  br label %return, !dbg !5634

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5635

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !5636

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5637, metadata !DIExpression()), !dbg !5639
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5640, metadata !DIExpression()), !dbg !5639
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5639
  %conv = zext i1 %cmp to i32, !dbg !5639
  store i32 1, i32* %tmp, align 4, !dbg !5639
  %5 = load i32, i32* %tmp, align 4, !dbg !5639
  br label %do.body2, !dbg !5641

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5642

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5643

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5645, metadata !DIExpression()), !dbg !5648
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5649, metadata !DIExpression()), !dbg !5648
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5648
  %conv8 = zext i1 %cmp7 to i32, !dbg !5648
  store i32 1, i32* %tmp9, align 4, !dbg !5648
  %6 = load i32, i32* %tmp9, align 4, !dbg !5648
  %call = call i64 @arch_local_irq_save() #8, !dbg !5650
  store i64 %call, i64* %flags, align 8, !dbg !5650
  br label %do.end, !dbg !5650

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5643

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5642

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5651, !srcloc !5652
  br label %do.body12, !dbg !5651

do.body12:                                        ; preds = %do.body11
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5653
  %lock = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %7, i32 0, i32 2, !dbg !5653
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5654
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !5655
  %rlock.i = bitcast %union.anon.1* %9 to %struct.raw_spinlock*, !dbg !5655
  br label %do.end14, !dbg !5653

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5651

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5642

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5641

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5636

do.end18:                                         ; preds = %do.end17
  call void @llvm.dbg.declare(metadata %struct.kfifo** %__tmpq, metadata !5656, metadata !DIExpression()), !dbg !5658
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5658
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %10, i32 0, i32 22, !dbg !5658
  store %struct.kfifo* %write_fifo, %struct.kfifo** %__tmpq, align 8, !dbg !5658
  call void @llvm.dbg.declare(metadata i64* %__recsize, metadata !5659, metadata !DIExpression()), !dbg !5658
  store i64 0, i64* %__recsize, align 8, !dbg !5658
  call void @llvm.dbg.declare(metadata i32* %__avail, metadata !5660, metadata !DIExpression()), !dbg !5658
  %11 = load %struct.kfifo*, %struct.kfifo** %__tmpq, align 8, !dbg !5658
  %12 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %11, i32 0, i32 0, !dbg !5658
  %kfifo = bitcast %union.anon.66* %12 to %struct.__kfifo*, !dbg !5658
  %mask = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo, i32 0, i32 2, !dbg !5658
  %13 = load i32, i32* %mask, align 8, !dbg !5658
  %add = add i32 %13, 1, !dbg !5658
  call void @llvm.dbg.declare(metadata %struct.kfifo** %__tmpl, metadata !5661, metadata !DIExpression()), !dbg !5663
  %14 = load %struct.kfifo*, %struct.kfifo** %__tmpq, align 8, !dbg !5663
  store %struct.kfifo* %14, %struct.kfifo** %__tmpl, align 8, !dbg !5663
  %15 = load %struct.kfifo*, %struct.kfifo** %__tmpl, align 8, !dbg !5663
  %16 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %15, i32 0, i32 0, !dbg !5663
  %kfifo20 = bitcast %union.anon.66* %16 to %struct.__kfifo*, !dbg !5663
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo20, i32 0, i32 0, !dbg !5663
  %17 = load i32, i32* %in, align 8, !dbg !5663
  %18 = load %struct.kfifo*, %struct.kfifo** %__tmpl, align 8, !dbg !5663
  %19 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %18, i32 0, i32 0, !dbg !5663
  %kfifo21 = bitcast %union.anon.66* %19 to %struct.__kfifo*, !dbg !5663
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo21, i32 0, i32 1, !dbg !5663
  %20 = load i32, i32* %out, align 4, !dbg !5663
  %sub = sub i32 %17, %20, !dbg !5663
  store i32 %sub, i32* %tmp19, align 4, !dbg !5663
  %21 = load i32, i32* %tmp19, align 4, !dbg !5663
  %sub22 = sub i32 %add, %21, !dbg !5658
  store i32 %sub22, i32* %__avail, align 4, !dbg !5658
  %22 = load i32, i32* %__avail, align 4, !dbg !5658
  store i32 %22, i32* %tmp23, align 4, !dbg !5658
  %23 = load i32, i32* %tmp23, align 4, !dbg !5658
  %call24 = call i32 @__kfifo_uint_must_check_helper(i32 %23) #8, !dbg !5664
  store i32 %call24, i32* %room, align 4, !dbg !5665
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5666
  %lock25 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %24, i32 0, i32 2, !dbg !5667
  %25 = load i64, i64* %flags, align 8, !dbg !5668
  store %struct.spinlock* %lock25, %struct.spinlock** %lock.addr.i26, align 8
  store i64 %25, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !111, metadata !5047, metadata !DIExpression()) #7, !dbg !5669
  call void @llvm.dbg.declare(metadata !111, metadata !5051, metadata !DIExpression()) #7, !dbg !5669
  store i32 1, i32* %tmp.i, align 4, !dbg !5669
  %26 = load i32, i32* %tmp.i, align 4, !dbg !5669
  call void @llvm.dbg.declare(metadata !111, metadata !5052, metadata !DIExpression()) #7, !dbg !5670
  call void @llvm.dbg.declare(metadata !111, metadata !5058, metadata !DIExpression()) #7, !dbg !5670
  store i32 1, i32* %tmp8.i, align 4, !dbg !5670
  %27 = load i32, i32* %tmp8.i, align 4, !dbg !5670
  %28 = load i64, i64* %flags.addr.i, align 8, !dbg !5671
  call void @arch_local_irq_restore(i64 %28) #9, !dbg !5671
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5672, !srcloc !5062
  %29 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i26, align 8, !dbg !5673
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %29, i32 0, i32 0, !dbg !5673
  %rlock.i27 = bitcast %union.anon.1* %30 to %struct.raw_spinlock*, !dbg !5673
  %31 = load i32, i32* %room, align 4, !dbg !5674
  store i32 %31, i32* %retval, align 4, !dbg !5675
  br label %return, !dbg !5675

return:                                           ; preds = %do.end18, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !5676
  ret i32 %32, !dbg !5676
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_serial_generic_chars_in_buffer(%struct.tty_struct* %tty) #0 !dbg !5677 {
entry:
  %lock.addr.i22 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i22, metadata !4972, metadata !DIExpression()), !dbg !5678
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4981, metadata !DIExpression()), !dbg !5680
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4983, metadata !DIExpression()), !dbg !5681
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %port = alloca %struct.usb_serial_port*, align 8
  %flags = alloca i64, align 8
  %chars = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__tmpl = alloca %struct.kfifo*, align 8
  %tmp19 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5688, metadata !DIExpression()), !dbg !5689
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port, metadata !5690, metadata !DIExpression()), !dbg !5691
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5692
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 37, !dbg !5693
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5693
  %2 = bitcast i8* %1 to %struct.usb_serial_port*, !dbg !5692
  store %struct.usb_serial_port* %2, %struct.usb_serial_port** %port, align 8, !dbg !5691
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5694, metadata !DIExpression()), !dbg !5695
  call void @llvm.dbg.declare(metadata i32* %chars, metadata !5696, metadata !DIExpression()), !dbg !5697
  %3 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5698
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %3, i32 0, i32 20, !dbg !5700
  %4 = load i32, i32* %bulk_out_size, align 8, !dbg !5700
  %tobool = icmp ne i32 %4, 0, !dbg !5698
  br i1 %tobool, label %if.end, label %if.then, !dbg !5701

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5702
  br label %return, !dbg !5702

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5703

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !5704

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5705, metadata !DIExpression()), !dbg !5707
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5708, metadata !DIExpression()), !dbg !5707
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5707
  %conv = zext i1 %cmp to i32, !dbg !5707
  store i32 1, i32* %tmp, align 4, !dbg !5707
  %5 = load i32, i32* %tmp, align 4, !dbg !5707
  br label %do.body2, !dbg !5709

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5710

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5711

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5713, metadata !DIExpression()), !dbg !5716
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5717, metadata !DIExpression()), !dbg !5716
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5716
  %conv8 = zext i1 %cmp7 to i32, !dbg !5716
  store i32 1, i32* %tmp9, align 4, !dbg !5716
  %6 = load i32, i32* %tmp9, align 4, !dbg !5716
  %call = call i64 @arch_local_irq_save() #8, !dbg !5718
  store i64 %call, i64* %flags, align 8, !dbg !5718
  br label %do.end, !dbg !5718

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5711

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5710

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5719, !srcloc !5720
  br label %do.body12, !dbg !5719

do.body12:                                        ; preds = %do.body11
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5721
  %lock = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %7, i32 0, i32 2, !dbg !5721
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5722
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !5723
  %rlock.i = bitcast %union.anon.1* %9 to %struct.raw_spinlock*, !dbg !5723
  br label %do.end14, !dbg !5721

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5719

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5710

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5709

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5704

do.end18:                                         ; preds = %do.end17
  call void @llvm.dbg.declare(metadata %struct.kfifo** %__tmpl, metadata !5724, metadata !DIExpression()), !dbg !5726
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5726
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %10, i32 0, i32 22, !dbg !5726
  store %struct.kfifo* %write_fifo, %struct.kfifo** %__tmpl, align 8, !dbg !5726
  %11 = load %struct.kfifo*, %struct.kfifo** %__tmpl, align 8, !dbg !5726
  %12 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %11, i32 0, i32 0, !dbg !5726
  %kfifo = bitcast %union.anon.66* %12 to %struct.__kfifo*, !dbg !5726
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo, i32 0, i32 0, !dbg !5726
  %13 = load i32, i32* %in, align 8, !dbg !5726
  %14 = load %struct.kfifo*, %struct.kfifo** %__tmpl, align 8, !dbg !5726
  %15 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %14, i32 0, i32 0, !dbg !5726
  %kfifo20 = bitcast %union.anon.66* %15 to %struct.__kfifo*, !dbg !5726
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo20, i32 0, i32 1, !dbg !5726
  %16 = load i32, i32* %out, align 4, !dbg !5726
  %sub = sub i32 %13, %16, !dbg !5726
  store i32 %sub, i32* %tmp19, align 4, !dbg !5726
  %17 = load i32, i32* %tmp19, align 4, !dbg !5726
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5727
  %tx_bytes = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %18, i32 0, i32 28, !dbg !5728
  %19 = load i32, i32* %tx_bytes, align 8, !dbg !5728
  %add = add i32 %17, %19, !dbg !5729
  store i32 %add, i32* %chars, align 4, !dbg !5730
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5731
  %lock21 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %20, i32 0, i32 2, !dbg !5732
  %21 = load i64, i64* %flags, align 8, !dbg !5733
  store %struct.spinlock* %lock21, %struct.spinlock** %lock.addr.i22, align 8
  store i64 %21, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !111, metadata !5047, metadata !DIExpression()) #7, !dbg !5734
  call void @llvm.dbg.declare(metadata !111, metadata !5051, metadata !DIExpression()) #7, !dbg !5734
  store i32 1, i32* %tmp.i, align 4, !dbg !5734
  %22 = load i32, i32* %tmp.i, align 4, !dbg !5734
  call void @llvm.dbg.declare(metadata !111, metadata !5052, metadata !DIExpression()) #7, !dbg !5735
  call void @llvm.dbg.declare(metadata !111, metadata !5058, metadata !DIExpression()) #7, !dbg !5735
  store i32 1, i32* %tmp8.i, align 4, !dbg !5735
  %23 = load i32, i32* %tmp8.i, align 4, !dbg !5735
  %24 = load i64, i64* %flags.addr.i, align 8, !dbg !5736
  call void @arch_local_irq_restore(i64 %24) #9, !dbg !5736
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5737, !srcloc !5062
  %25 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i22, align 8, !dbg !5738
  %26 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %25, i32 0, i32 0, !dbg !5738
  %rlock.i23 = bitcast %union.anon.1* %26 to %struct.raw_spinlock*, !dbg !5738
  %27 = load i32, i32* %chars, align 4, !dbg !5739
  store i32 %27, i32* %retval, align 4, !dbg !5740
  br label %return, !dbg !5740

return:                                           ; preds = %do.end18, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !5741
  ret i32 %28, !dbg !5741
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_serial_generic_wait_until_sent(%struct.tty_struct* %tty, i64 %timeout) #0 !dbg !5742 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !5743, metadata !DIExpression()), !dbg !5749
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !5753, metadata !DIExpression()), !dbg !5755
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !5756, metadata !DIExpression()), !dbg !5758
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  %timeout.addr = alloca i64, align 8
  %port = alloca %struct.usb_serial_port*, align 8
  %bps = alloca i32, align 4
  %period = alloca i64, align 8
  %expire = alloca i64, align 8
  %__UNIQUE_ID___x238 = alloca i64, align 8
  %__UNIQUE_ID___y239 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x240 = alloca i64, align 8
  %__UNIQUE_ID___y241 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5759, metadata !DIExpression()), !dbg !5760
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !5761, metadata !DIExpression()), !dbg !5762
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port, metadata !5763, metadata !DIExpression()), !dbg !5764
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5765
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 37, !dbg !5766
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5766
  %2 = bitcast i8* %1 to %struct.usb_serial_port*, !dbg !5765
  store %struct.usb_serial_port* %2, %struct.usb_serial_port** %port, align 8, !dbg !5764
  call void @llvm.dbg.declare(metadata i32* %bps, metadata !5767, metadata !DIExpression()), !dbg !5768
  call void @llvm.dbg.declare(metadata i64* %period, metadata !5769, metadata !DIExpression()), !dbg !5770
  call void @llvm.dbg.declare(metadata i64* %expire, metadata !5771, metadata !DIExpression()), !dbg !5772
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5773
  %call = call i32 @tty_get_baud_rate(%struct.tty_struct* %3) #8, !dbg !5774
  store i32 %call, i32* %bps, align 4, !dbg !5775
  %4 = load i32, i32* %bps, align 4, !dbg !5776
  %tobool = icmp ne i32 %4, 0, !dbg !5776
  br i1 %tobool, label %if.end, label %if.then, !dbg !5778

if.then:                                          ; preds = %entry
  store i32 9600, i32* %bps, align 4, !dbg !5779
  br label %if.end, !dbg !5780

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x238, metadata !5781, metadata !DIExpression()), !dbg !5783
  %5 = load i32, i32* %bps, align 4, !dbg !5783
  %div = udiv i32 2500, %5, !dbg !5783
  %conv = zext i32 %div to i64, !dbg !5783
  store i64 %conv, i64* %__UNIQUE_ID___x238, align 8, !dbg !5783
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y239, metadata !5784, metadata !DIExpression()), !dbg !5783
  store i64 1, i64* %__UNIQUE_ID___y239, align 8, !dbg !5783
  %6 = load i64, i64* %__UNIQUE_ID___x238, align 8, !dbg !5783
  %7 = load i64, i64* %__UNIQUE_ID___y239, align 8, !dbg !5783
  %cmp = icmp ugt i64 %6, %7, !dbg !5783
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5783

cond.true:                                        ; preds = %if.end
  %8 = load i64, i64* %__UNIQUE_ID___x238, align 8, !dbg !5783
  br label %cond.end, !dbg !5783

cond.false:                                       ; preds = %if.end
  %9 = load i64, i64* %__UNIQUE_ID___y239, align 8, !dbg !5783
  br label %cond.end, !dbg !5783

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !5783
  store i64 %cond, i64* %tmp, align 8, !dbg !5783
  %10 = load i64, i64* %tmp, align 8, !dbg !5783
  store i64 %10, i64* %period, align 8, !dbg !5785
  %11 = load i64, i64* %timeout.addr, align 8, !dbg !5786
  %tobool2 = icmp ne i64 %11, 0, !dbg !5786
  br i1 %tobool2, label %if.then3, label %if.end11, !dbg !5788

if.then3:                                         ; preds = %cond.end
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x240, metadata !5789, metadata !DIExpression()), !dbg !5791
  %12 = load i64, i64* %period, align 8, !dbg !5791
  store i64 %12, i64* %__UNIQUE_ID___x240, align 8, !dbg !5791
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y241, metadata !5792, metadata !DIExpression()), !dbg !5791
  %13 = load i64, i64* %timeout.addr, align 8, !dbg !5791
  store i64 %13, i64* %__UNIQUE_ID___y241, align 8, !dbg !5791
  %14 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !5791
  %15 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !5791
  %cmp5 = icmp ult i64 %14, %15, !dbg !5791
  br i1 %cmp5, label %cond.true7, label %cond.false8, !dbg !5791

cond.true7:                                       ; preds = %if.then3
  %16 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !5791
  br label %cond.end9, !dbg !5791

cond.false8:                                      ; preds = %if.then3
  %17 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !5791
  br label %cond.end9, !dbg !5791

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i64 [ %16, %cond.true7 ], [ %17, %cond.false8 ], !dbg !5791
  store i64 %cond10, i64* %tmp4, align 8, !dbg !5791
  %18 = load i64, i64* %tmp4, align 8, !dbg !5791
  store i64 %18, i64* %period, align 8, !dbg !5793
  br label %if.end11, !dbg !5794

if.end11:                                         ; preds = %cond.end9, %cond.end
  %19 = load volatile i64, i64* @jiffies, align 8, !dbg !5795
  %20 = load i64, i64* %timeout.addr, align 8, !dbg !5796
  %add = add i64 %19, %20, !dbg !5797
  store i64 %add, i64* %expire, align 8, !dbg !5798
  br label %while.cond, !dbg !5799

while.cond:                                       ; preds = %if.end23, %if.end11
  %21 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5800
  %serial = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %21, i32 0, i32 0, !dbg !5801
  %22 = load %struct.usb_serial*, %struct.usb_serial** %serial, align 8, !dbg !5801
  %type = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %22, i32 0, i32 1, !dbg !5802
  %23 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %type, align 8, !dbg !5802
  %tx_empty = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %23, i32 0, i32 34, !dbg !5803
  %24 = load i1 (%struct.usb_serial_port*)*, i1 (%struct.usb_serial_port*)** %tx_empty, align 8, !dbg !5803
  %25 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5804
  %call12 = call zeroext i1 %24(%struct.usb_serial_port* %25) #8, !dbg !5800
  %lnot = xor i1 %call12, true, !dbg !5805
  br i1 %lnot, label %while.body, label %while.end, !dbg !5799

while.body:                                       ; preds = %while.cond
  %26 = load i64, i64* %period, align 8, !dbg !5806
  %call13 = call i64 @schedule_timeout_interruptible(i64 %26) #8, !dbg !5807
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5755
  %27 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5755
  %28 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #11, !dbg !5758, !srcloc !5808
  store i64 %28, i64* %pfo_val__.i, align 8, !dbg !5758
  %29 = load i64, i64* %pfo_val__.i, align 8, !dbg !5758
  %30 = inttoptr i64 %29 to %struct.task_struct*, !dbg !5758
  store %struct.task_struct* %30, %struct.task_struct** %tmp.i, align 8, !dbg !5758
  %31 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5758
  store %struct.task_struct* %31, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5749
  %32 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5749
  store %struct.task_struct* %32, %struct.task_struct** %tmp1.i, align 8, !dbg !5749
  %33 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5749
  %call15 = call i32 @signal_pending(%struct.task_struct* %33) #8, !dbg !5809
  %tobool16 = icmp ne i32 %call15, 0, !dbg !5809
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !5810

if.then17:                                        ; preds = %while.body
  br label %while.end, !dbg !5811

if.end18:                                         ; preds = %while.body
  %34 = load i64, i64* %timeout.addr, align 8, !dbg !5812
  %tobool19 = icmp ne i64 %34, 0, !dbg !5812
  br i1 %tobool19, label %land.lhs.true, label %if.end23, !dbg !5814

land.lhs.true:                                    ; preds = %if.end18
  %35 = load i64, i64* %expire, align 8, !dbg !5815
  %36 = load volatile i64, i64* @jiffies, align 8, !dbg !5815
  %sub = sub i64 %35, %36, !dbg !5815
  %cmp20 = icmp slt i64 %sub, 0, !dbg !5815
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5816

if.then22:                                        ; preds = %land.lhs.true
  br label %while.end, !dbg !5817

if.end23:                                         ; preds = %land.lhs.true, %if.end18
  br label %while.cond, !dbg !5799, !llvm.loop !5818

while.end:                                        ; preds = %if.then22, %if.then17, %while.cond
  ret void, !dbg !5820
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tty_get_baud_rate(%struct.tty_struct* %tty) #0 !dbg !5821 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5826
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 15, !dbg !5827
  %call = call i32 @tty_termios_baud_rate(%struct.ktermios* %termios) #8, !dbg !5828
  ret i32 %call, !dbg !5829
}

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout_interruptible(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @signal_pending(%struct.task_struct* %p) #0 !dbg !5830 {
entry:
  %p.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %p, %struct.task_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p.addr, metadata !5833, metadata !DIExpression()), !dbg !5834
  %0 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !5835
  %call = call i32 @test_tsk_thread_flag(%struct.task_struct* %0, i32 2) #8, !dbg !5835
  %tobool = icmp ne i32 %call, 0, !dbg !5835
  %lnot = xor i1 %tobool, true, !dbg !5835
  %lnot1 = xor i1 %lnot, true, !dbg !5835
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5835
  %conv = sext i32 %lnot.ext to i64, !dbg !5835
  %conv2 = trunc i64 %conv to i32, !dbg !5835
  ret i32 %conv2, !dbg !5836
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_serial_generic_submit_read_urb(%struct.usb_serial_port* %port, i32 %index, i32 %mem_flags) #0 !dbg !5837 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca %struct.usb_serial_port*, align 8
  %index.addr = alloca i32, align 4
  %mem_flags.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.usb_serial_port* %port, %struct.usb_serial_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port.addr, metadata !5840, metadata !DIExpression()), !dbg !5841
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5842, metadata !DIExpression()), !dbg !5843
  store i32 %mem_flags, i32* %mem_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mem_flags.addr, metadata !5844, metadata !DIExpression()), !dbg !5845
  call void @llvm.dbg.declare(metadata i32* %res, metadata !5846, metadata !DIExpression()), !dbg !5847
  %0 = load i32, i32* %index.addr, align 4, !dbg !5848
  %conv = sext i32 %0 to i64, !dbg !5848
  %1 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5850
  %read_urbs_free = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %1, i32 0, i32 18, !dbg !5851
  %call = call zeroext i1 @test_and_clear_bit(i64 %conv, i64* %read_urbs_free) #8, !dbg !5852
  br i1 %call, label %if.end, label %if.then, !dbg !5853

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5854
  br label %return, !dbg !5854

if.end:                                           ; preds = %entry
  %2 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5855
  %read_urbs = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %2, i32 0, i32 17, !dbg !5856
  %3 = load i32, i32* %index.addr, align 4, !dbg !5857
  %idxprom = sext i32 %3 to i64, !dbg !5855
  %arrayidx = getelementptr [2 x %struct.urb*], [2 x %struct.urb*]* %read_urbs, i64 0, i64 %idxprom, !dbg !5855
  %4 = load %struct.urb*, %struct.urb** %arrayidx, align 8, !dbg !5855
  %5 = load i32, i32* %mem_flags.addr, align 4, !dbg !5858
  %call1 = call i32 @usb_submit_urb(%struct.urb* %4, i32 %5) #8, !dbg !5859
  store i32 %call1, i32* %res, align 4, !dbg !5860
  %6 = load i32, i32* %res, align 4, !dbg !5861
  %tobool = icmp ne i32 %6, 0, !dbg !5861
  br i1 %tobool, label %if.then2, label %if.end10, !dbg !5863

if.then2:                                         ; preds = %if.end
  %7 = load i32, i32* %res, align 4, !dbg !5864
  %cmp = icmp ne i32 %7, -1, !dbg !5867
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !5868

land.lhs.true:                                    ; preds = %if.then2
  %8 = load i32, i32* %res, align 4, !dbg !5869
  %cmp4 = icmp ne i32 %8, -19, !dbg !5870
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !5871

if.then6:                                         ; preds = %land.lhs.true
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5872
  %dev = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 33, !dbg !5872
  %10 = load i32, i32* %res, align 4, !dbg !5872
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.usb_serial_generic_submit_read_urb, i64 0, i64 0), i32 %10) #10, !dbg !5872
  br label %if.end7, !dbg !5874

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.then2
  %11 = load i32, i32* %index.addr, align 4, !dbg !5875
  %conv8 = sext i32 %11 to i64, !dbg !5875
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !5876
  %read_urbs_free9 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 18, !dbg !5877
  call void @set_bit(i64 %conv8, i64* %read_urbs_free9) #8, !dbg !5878
  %13 = load i32, i32* %res, align 4, !dbg !5879
  store i32 %13, i32* %retval, align 4, !dbg !5880
  br label %return, !dbg !5880

if.end10:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5881
  br label %return, !dbg !5881

return:                                           ; preds = %if.end10, %if.end7, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5882
  ret i32 %14, !dbg !5882
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_serial_generic_process_read_urb(%struct.urb* %urb) #0 !dbg !5883 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %port = alloca %struct.usb_serial_port*, align 8
  %ch = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5884, metadata !DIExpression()), !dbg !5885
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port, metadata !5886, metadata !DIExpression()), !dbg !5887
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5888
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5889
  %1 = load i8*, i8** %context, align 8, !dbg !5889
  %2 = bitcast i8* %1 to %struct.usb_serial_port*, !dbg !5888
  store %struct.usb_serial_port* %2, %struct.usb_serial_port** %port, align 8, !dbg !5887
  call void @llvm.dbg.declare(metadata i8** %ch, metadata !5890, metadata !DIExpression()), !dbg !5891
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5892
  %transfer_buffer = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 14, !dbg !5893
  %4 = load i8*, i8** %transfer_buffer, align 8, !dbg !5893
  store i8* %4, i8** %ch, align 8, !dbg !5891
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5894, metadata !DIExpression()), !dbg !5895
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5896
  %actual_length = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 20, !dbg !5898
  %6 = load i32, i32* %actual_length, align 4, !dbg !5898
  %tobool = icmp ne i32 %6, 0, !dbg !5896
  br i1 %tobool, label %if.end, label %if.then, !dbg !5899

if.then:                                          ; preds = %entry
  br label %return, !dbg !5900

if.end:                                           ; preds = %entry
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5901
  %sysrq = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %7, i32 0, i32 32, !dbg !5903
  %8 = load i64, i64* %sysrq, align 8, !dbg !5903
  %tobool1 = icmp ne i64 %8, 0, !dbg !5901
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5904

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5905
  br label %for.cond, !dbg !5908

for.cond:                                         ; preds = %for.inc, %if.then2
  %9 = load i32, i32* %i, align 4, !dbg !5909
  %10 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5911
  %actual_length3 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 20, !dbg !5912
  %11 = load i32, i32* %actual_length3, align 4, !dbg !5912
  %cmp = icmp ult i32 %9, %11, !dbg !5913
  br i1 %cmp, label %for.body, label %for.end, !dbg !5914

for.body:                                         ; preds = %for.cond
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5915
  %13 = load i8*, i8** %ch, align 8, !dbg !5918
  %14 = load i8, i8* %13, align 1, !dbg !5919
  %conv = sext i8 %14 to i32, !dbg !5919
  %call = call i32 @usb_serial_handle_sysrq_char(%struct.usb_serial_port* %12, i32 %conv) #8, !dbg !5920
  %tobool4 = icmp ne i32 %call, 0, !dbg !5920
  br i1 %tobool4, label %if.end8, label %if.then5, !dbg !5921

if.then5:                                         ; preds = %for.body
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5922
  %port6 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %15, i32 0, i32 1, !dbg !5923
  %16 = load i8*, i8** %ch, align 8, !dbg !5924
  %17 = load i8, i8* %16, align 1, !dbg !5925
  %call7 = call i32 @tty_insert_flip_char(%struct.tty_port* %port6, i8 zeroext %17, i8 signext 0) #8, !dbg !5926
  br label %if.end8, !dbg !5926

if.end8:                                          ; preds = %if.then5, %for.body
  br label %for.inc, !dbg !5927

for.inc:                                          ; preds = %if.end8
  %18 = load i32, i32* %i, align 4, !dbg !5928
  %inc = add i32 %18, 1, !dbg !5928
  store i32 %inc, i32* %i, align 4, !dbg !5928
  %19 = load i8*, i8** %ch, align 8, !dbg !5929
  %incdec.ptr = getelementptr i8, i8* %19, i32 1, !dbg !5929
  store i8* %incdec.ptr, i8** %ch, align 8, !dbg !5929
  br label %for.cond, !dbg !5930, !llvm.loop !5931

for.end:                                          ; preds = %for.cond
  br label %if.end13, !dbg !5933

if.else:                                          ; preds = %if.end
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5934
  %port9 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %20, i32 0, i32 1, !dbg !5936
  %21 = load i8*, i8** %ch, align 8, !dbg !5937
  %22 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5938
  %actual_length10 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 20, !dbg !5939
  %23 = load i32, i32* %actual_length10, align 4, !dbg !5939
  %conv11 = zext i32 %23 to i64, !dbg !5938
  %call12 = call i32 @tty_insert_flip_string(%struct.tty_port* %port9, i8* %21, i64 %conv11) #8, !dbg !5940
  br label %if.end13

if.end13:                                         ; preds = %if.else, %for.end
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !5941
  %port14 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %24, i32 0, i32 1, !dbg !5942
  call void @tty_flip_buffer_push(%struct.tty_port* %port14) #8, !dbg !5943
  br label %return, !dbg !5944

return:                                           ; preds = %if.end13, %if.then
  ret void, !dbg !5944
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_serial_handle_sysrq_char(%struct.usb_serial_port* %port, i32 %ch) #0 !dbg !5945 {
entry:
  %port.addr = alloca %struct.usb_serial_port*, align 8
  %ch.addr = alloca i32, align 4
  store %struct.usb_serial_port* %port, %struct.usb_serial_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port.addr, metadata !5948, metadata !DIExpression()), !dbg !5949
  store i32 %ch, i32* %ch.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ch.addr, metadata !5950, metadata !DIExpression()), !dbg !5951
  ret i32 0, !dbg !5952
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tty_insert_flip_char(%struct.tty_port* %port, i8 zeroext %ch, i8 signext %flag) #0 !dbg !5953 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca %struct.tty_port*, align 8
  %ch.addr = alloca i8, align 1
  %flag.addr = alloca i8, align 1
  %tb = alloca %struct.tty_buffer*, align 8
  %change = alloca i32, align 4
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  store i8 %ch, i8* %ch.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ch.addr, metadata !5959, metadata !DIExpression()), !dbg !5960
  store i8 %flag, i8* %flag.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flag.addr, metadata !5961, metadata !DIExpression()), !dbg !5962
  call void @llvm.dbg.declare(metadata %struct.tty_buffer** %tb, metadata !5963, metadata !DIExpression()), !dbg !5964
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5965
  %buf = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 0, !dbg !5966
  %tail = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %buf, i32 0, i32 8, !dbg !5967
  %1 = load %struct.tty_buffer*, %struct.tty_buffer** %tail, align 8, !dbg !5967
  store %struct.tty_buffer* %1, %struct.tty_buffer** %tb, align 8, !dbg !5964
  call void @llvm.dbg.declare(metadata i32* %change, metadata !5968, metadata !DIExpression()), !dbg !5969
  %2 = load %struct.tty_buffer*, %struct.tty_buffer** %tb, align 8, !dbg !5970
  %flags = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %2, i32 0, i32 5, !dbg !5971
  %3 = load i32, i32* %flags, align 8, !dbg !5971
  %and = and i32 %3, 1, !dbg !5972
  %tobool = icmp ne i32 %and, 0, !dbg !5972
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5973

land.rhs:                                         ; preds = %entry
  %4 = load i8, i8* %flag.addr, align 1, !dbg !5974
  %conv = sext i8 %4 to i32, !dbg !5974
  %cmp = icmp ne i32 %conv, 0, !dbg !5975
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5976
  %land.ext = zext i1 %5 to i32, !dbg !5973
  store i32 %land.ext, i32* %change, align 4, !dbg !5977
  %6 = load i32, i32* %change, align 4, !dbg !5978
  %tobool2 = icmp ne i32 %6, 0, !dbg !5978
  br i1 %tobool2, label %if.end12, label %land.lhs.true, !dbg !5980

land.lhs.true:                                    ; preds = %land.end
  %7 = load %struct.tty_buffer*, %struct.tty_buffer** %tb, align 8, !dbg !5981
  %used = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %7, i32 0, i32 1, !dbg !5982
  %8 = load i32, i32* %used, align 8, !dbg !5982
  %9 = load %struct.tty_buffer*, %struct.tty_buffer** %tb, align 8, !dbg !5983
  %size = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %9, i32 0, i32 2, !dbg !5984
  %10 = load i32, i32* %size, align 4, !dbg !5984
  %cmp3 = icmp slt i32 %8, %10, !dbg !5985
  br i1 %cmp3, label %if.then, label %if.end12, !dbg !5986

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.tty_buffer*, %struct.tty_buffer** %tb, align 8, !dbg !5987
  %flags5 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %11, i32 0, i32 5, !dbg !5990
  %12 = load i32, i32* %flags5, align 8, !dbg !5990
  %neg = xor i32 %12, -1, !dbg !5991
  %and6 = and i32 %neg, 1, !dbg !5992
  %tobool7 = icmp ne i32 %and6, 0, !dbg !5992
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !5993

if.then8:                                         ; preds = %if.then
  %13 = load i8, i8* %flag.addr, align 1, !dbg !5994
  %14 = load %struct.tty_buffer*, %struct.tty_buffer** %tb, align 8, !dbg !5995
  %15 = load %struct.tty_buffer*, %struct.tty_buffer** %tb, align 8, !dbg !5996
  %used9 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %15, i32 0, i32 1, !dbg !5997
  %16 = load i32, i32* %used9, align 8, !dbg !5997
  %call = call i8* @flag_buf_ptr(%struct.tty_buffer* %14, i32 %16) #8, !dbg !5998
  store i8 %13, i8* %call, align 1, !dbg !5999
  br label %if.end, !dbg !6000

if.end:                                           ; preds = %if.then8, %if.then
  %17 = load i8, i8* %ch.addr, align 1, !dbg !6001
  %18 = load %struct.tty_buffer*, %struct.tty_buffer** %tb, align 8, !dbg !6002
  %19 = load %struct.tty_buffer*, %struct.tty_buffer** %tb, align 8, !dbg !6003
  %used10 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %19, i32 0, i32 1, !dbg !6004
  %20 = load i32, i32* %used10, align 8, !dbg !6005
  %inc = add i32 %20, 1, !dbg !6005
  store i32 %inc, i32* %used10, align 8, !dbg !6005
  %call11 = call i8* @char_buf_ptr(%struct.tty_buffer* %18, i32 %20) #8, !dbg !6006
  store i8 %17, i8* %call11, align 1, !dbg !6007
  store i32 1, i32* %retval, align 4, !dbg !6008
  br label %return, !dbg !6008

if.end12:                                         ; preds = %land.lhs.true, %land.end
  %21 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !6009
  %22 = load i8, i8* %ch.addr, align 1, !dbg !6010
  %23 = load i8, i8* %flag.addr, align 1, !dbg !6011
  %call13 = call i32 @__tty_insert_flip_char(%struct.tty_port* %21, i8 zeroext %22, i8 signext %23) #8, !dbg !6012
  store i32 %call13, i32* %retval, align 4, !dbg !6013
  br label %return, !dbg !6013

return:                                           ; preds = %if.end12, %if.end
  %24 = load i32, i32* %retval, align 4, !dbg !6014
  ret i32 %24, !dbg !6014
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tty_insert_flip_string(%struct.tty_port* %port, i8* %chars, i64 %size) #0 !dbg !6015 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %chars.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !6018, metadata !DIExpression()), !dbg !6019
  store i8* %chars, i8** %chars.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %chars.addr, metadata !6020, metadata !DIExpression()), !dbg !6021
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6022, metadata !DIExpression()), !dbg !6023
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !6024
  %1 = load i8*, i8** %chars.addr, align 8, !dbg !6025
  %2 = load i64, i64* %size.addr, align 8, !dbg !6026
  %call = call i32 @tty_insert_flip_string_fixed_flag(%struct.tty_port* %0, i8* %1, i8 signext 0, i64 %2) #8, !dbg !6027
  ret i32 %call, !dbg !6028
}

; Function Attrs: noredzone
declare dso_local void @tty_flip_buffer_push(%struct.tty_port*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_serial_generic_read_bulk_callback(%struct.urb* %urb) #0 !dbg !6029 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %port = alloca %struct.usb_serial_port*, align 8
  %data = alloca i8*, align 8
  %stopped = alloca i8, align 1
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !6030, metadata !DIExpression()), !dbg !6031
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port, metadata !6032, metadata !DIExpression()), !dbg !6033
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6034
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !6035
  %1 = load i8*, i8** %context, align 8, !dbg !6035
  %2 = bitcast i8* %1 to %struct.usb_serial_port*, !dbg !6034
  store %struct.usb_serial_port* %2, %struct.usb_serial_port** %port, align 8, !dbg !6033
  call void @llvm.dbg.declare(metadata i8** %data, metadata !6036, metadata !DIExpression()), !dbg !6037
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6038
  %transfer_buffer = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 14, !dbg !6039
  %4 = load i8*, i8** %transfer_buffer, align 8, !dbg !6039
  store i8* %4, i8** %data, align 8, !dbg !6037
  call void @llvm.dbg.declare(metadata i8* %stopped, metadata !6040, metadata !DIExpression()), !dbg !6041
  store i8 0, i8* %stopped, align 1, !dbg !6041
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6042, metadata !DIExpression()), !dbg !6043
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6044
  %status1 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 12, !dbg !6045
  %6 = load i32, i32* %status1, align 8, !dbg !6045
  store i32 %6, i32* %status, align 4, !dbg !6043
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6046, metadata !DIExpression()), !dbg !6047
  store i32 0, i32* %i, align 4, !dbg !6048
  br label %for.cond, !dbg !6050

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !6051
  %conv = sext i32 %7 to i64, !dbg !6051
  %cmp = icmp ult i64 %conv, 2, !dbg !6053
  br i1 %cmp, label %for.body, label %for.end, !dbg !6054

for.body:                                         ; preds = %for.cond
  %8 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6055
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6058
  %read_urbs = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 17, !dbg !6059
  %10 = load i32, i32* %i, align 4, !dbg !6060
  %idxprom = sext i32 %10 to i64, !dbg !6058
  %arrayidx = getelementptr [2 x %struct.urb*], [2 x %struct.urb*]* %read_urbs, i64 0, i64 %idxprom, !dbg !6058
  %11 = load %struct.urb*, %struct.urb** %arrayidx, align 8, !dbg !6058
  %cmp3 = icmp eq %struct.urb* %8, %11, !dbg !6061
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6062

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !6063

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6064

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !6065
  %inc = add i32 %12, 1, !dbg !6065
  store i32 %inc, i32* %i, align 4, !dbg !6065
  br label %for.cond, !dbg !6066, !llvm.loop !6067

for.end:                                          ; preds = %if.then, %for.cond
  %13 = load i32, i32* %status, align 4, !dbg !6069
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %sw.bb5
    i32 -104, label %sw.bb5
    i32 -108, label %sw.bb5
    i32 -32, label %sw.bb6
  ], !dbg !6070

sw.bb:                                            ; preds = %for.end
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6071
  %dev = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 33, !dbg !6073
  %15 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6074
  %actual_length = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 20, !dbg !6075
  %16 = load i32, i32* %actual_length, align 4, !dbg !6075
  %17 = load i8*, i8** %data, align 8, !dbg !6076
  call void @usb_serial_debug_data(%struct.device* %dev, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.usb_serial_generic_read_bulk_callback, i64 0, i64 0), i32 %16, i8* %17) #8, !dbg !6077
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6078
  %serial = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %18, i32 0, i32 0, !dbg !6079
  %19 = load %struct.usb_serial*, %struct.usb_serial** %serial, align 8, !dbg !6079
  %type = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %19, i32 0, i32 1, !dbg !6080
  %20 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %type, align 8, !dbg !6080
  %process_read_urb = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %20, i32 0, i32 48, !dbg !6081
  %21 = load void (%struct.urb*)*, void (%struct.urb*)** %process_read_urb, align 8, !dbg !6081
  %22 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6082
  call void %21(%struct.urb* %22) #8, !dbg !6078
  br label %sw.epilog, !dbg !6083

sw.bb5:                                           ; preds = %for.end, %for.end, %for.end
  store i8 1, i8* %stopped, align 1, !dbg !6084
  br label %sw.epilog, !dbg !6085

sw.bb6:                                           ; preds = %for.end
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6086
  %dev7 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %23, i32 0, i32 33, !dbg !6086
  %24 = load i32, i32* %status, align 4, !dbg !6086
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.usb_serial_generic_read_bulk_callback, i64 0, i64 0), i32 %24) #10, !dbg !6086
  store i8 1, i8* %stopped, align 1, !dbg !6087
  br label %sw.epilog, !dbg !6088

sw.default:                                       ; preds = %for.end
  br label %sw.epilog, !dbg !6089

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6090, !srcloc !6091
  %25 = load i32, i32* %i, align 4, !dbg !6092
  %conv8 = sext i32 %25 to i64, !dbg !6092
  %26 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6093
  %read_urbs_free = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %26, i32 0, i32 18, !dbg !6094
  call void @set_bit(i64 %conv8, i64* %read_urbs_free) #8, !dbg !6095
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6096, !srcloc !6097
  %27 = load i8, i8* %stopped, align 1, !dbg !6098
  %tobool = trunc i8 %27 to i1, !dbg !6098
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !6100

if.then9:                                         ; preds = %sw.epilog
  br label %return, !dbg !6101

if.end10:                                         ; preds = %sw.epilog
  %28 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6102
  %flags = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %28, i32 0, i32 29, !dbg !6104
  %call = call zeroext i1 @test_bit(i64 1, i64* %flags) #8, !dbg !6105
  br i1 %call, label %if.then11, label %if.end12, !dbg !6106

if.then11:                                        ; preds = %if.end10
  br label %return, !dbg !6107

if.end12:                                         ; preds = %if.end10
  %29 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6108
  %30 = load i32, i32* %i, align 4, !dbg !6109
  %call13 = call i32 @usb_serial_generic_submit_read_urb(%struct.usb_serial_port* %29, i32 %30, i32 2592) #8, !dbg !6110
  br label %return, !dbg !6111

return:                                           ; preds = %if.end12, %if.then11, %if.then9
  ret void, !dbg !6111
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !6112 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !6118, metadata !DIExpression()), !dbg !6120
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !6122, metadata !DIExpression()), !dbg !6123
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !6124, metadata !DIExpression()), !dbg !6125
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6126, metadata !DIExpression()), !dbg !6128
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6130, metadata !DIExpression()), !dbg !6131
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6132, metadata !DIExpression()), !dbg !6134
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6136, metadata !DIExpression()), !dbg !6137
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6138, metadata !DIExpression()), !dbg !6139
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6140, metadata !DIExpression()), !dbg !6141
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6142
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6143
  %div = sdiv i64 %1, 64, !dbg !6143
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6144
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6142
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6145
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6146
  %conv.i = trunc i64 %4 to i32, !dbg !6146
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #9, !dbg !6147
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6148
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6148
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #9, !dbg !6148
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6149
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6149
  br i1 %8, label %cond.true, label %cond.false, !dbg !6149

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !6149
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !6149
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !6150
  %and.i = and i64 %11, 63, !dbg !6151
  %shl.i = shl i64 1, %and.i, !dbg !6152
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !6153
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6154
  %shr.i = ashr i64 %13, 6, !dbg !6155
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !6153
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !6153
  %and1.i = and i64 %shl.i, %14, !dbg !6156
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !6157
  %conv = zext i1 %cmp.i to i32, !dbg !6149
  br label %cond.end, !dbg !6149

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !6149
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !6149
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !6158
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !6159
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #7, !dbg !6160, !srcloc !6161
  store i8 %19, i8* %oldbit.i, align 1, !dbg !6160
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !6162
  %tobool.i = trunc i8 %20 to i1, !dbg !6162
  %conv2 = zext i1 %tobool.i to i32, !dbg !6149
  br label %cond.end, !dbg !6149

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6149
  %tobool = icmp ne i32 %cond, 0, !dbg !6149
  ret i1 %tobool, !dbg !6163
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_serial_generic_write_bulk_callback(%struct.urb* %urb) #0 !dbg !4827 {
entry:
  %lock.addr.i49 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i49, metadata !4972, metadata !DIExpression()), !dbg !6164
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4981, metadata !DIExpression()), !dbg !6166
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4983, metadata !DIExpression()), !dbg !6167
  %urb.addr = alloca %struct.urb*, align 8
  %flags = alloca i64, align 8
  %port = alloca %struct.usb_serial_port*, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy11 = alloca i64, align 8
  %__dummy212 = alloca i64, align 8
  %tmp15 = alloca i32, align 4
  %__port = alloca %struct.usb_serial_port*, align 8
  %__port36 = alloca %struct.usb_serial_port*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !6174, metadata !DIExpression()), !dbg !6175
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6176, metadata !DIExpression()), !dbg !6177
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port, metadata !6178, metadata !DIExpression()), !dbg !6179
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6180
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !6181
  %1 = load i8*, i8** %context, align 8, !dbg !6181
  %2 = bitcast i8* %1 to %struct.usb_serial_port*, !dbg !6180
  store %struct.usb_serial_port* %2, %struct.usb_serial_port** %port, align 8, !dbg !6179
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6182, metadata !DIExpression()), !dbg !6183
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6184
  %status1 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !6185
  %4 = load i32, i32* %status1, align 8, !dbg !6185
  store i32 %4, i32* %status, align 4, !dbg !6183
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6186, metadata !DIExpression()), !dbg !6187
  store i32 0, i32* %i, align 4, !dbg !6188
  br label %for.cond, !dbg !6190

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !6191
  %conv = sext i32 %5 to i64, !dbg !6191
  %cmp = icmp ult i64 %conv, 2, !dbg !6193
  br i1 %cmp, label %for.body, label %for.end, !dbg !6194

for.body:                                         ; preds = %for.cond
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6195
  %write_urbs = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %6, i32 0, i32 24, !dbg !6198
  %7 = load i32, i32* %i, align 4, !dbg !6199
  %idxprom = sext i32 %7 to i64, !dbg !6195
  %arrayidx = getelementptr [2 x %struct.urb*], [2 x %struct.urb*]* %write_urbs, i64 0, i64 %idxprom, !dbg !6195
  %8 = load %struct.urb*, %struct.urb** %arrayidx, align 8, !dbg !6195
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6200
  %cmp3 = icmp eq %struct.urb* %8, %9, !dbg !6201
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6202

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !6203

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6204

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !6205
  %inc = add i32 %10, 1, !dbg !6205
  store i32 %inc, i32* %i, align 4, !dbg !6205
  br label %for.cond, !dbg !6206, !llvm.loop !6207

for.end:                                          ; preds = %if.then, %for.cond
  br label %do.body, !dbg !6209

do.body:                                          ; preds = %for.end
  br label %do.body5, !dbg !6210

do.body5:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6211, metadata !DIExpression()), !dbg !6213
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6214, metadata !DIExpression()), !dbg !6213
  %cmp6 = icmp eq i64* %__dummy, %__dummy2, !dbg !6213
  %conv7 = zext i1 %cmp6 to i32, !dbg !6213
  store i32 1, i32* %tmp, align 4, !dbg !6213
  %11 = load i32, i32* %tmp, align 4, !dbg !6213
  br label %do.body8, !dbg !6215

do.body8:                                         ; preds = %do.body5
  br label %do.body9, !dbg !6216

do.body9:                                         ; preds = %do.body8
  br label %do.body10, !dbg !6217

do.body10:                                        ; preds = %do.body9
  call void @llvm.dbg.declare(metadata i64* %__dummy11, metadata !6219, metadata !DIExpression()), !dbg !6222
  call void @llvm.dbg.declare(metadata i64* %__dummy212, metadata !6223, metadata !DIExpression()), !dbg !6222
  %cmp13 = icmp eq i64* %__dummy11, %__dummy212, !dbg !6222
  %conv14 = zext i1 %cmp13 to i32, !dbg !6222
  store i32 1, i32* %tmp15, align 4, !dbg !6222
  %12 = load i32, i32* %tmp15, align 4, !dbg !6222
  %call = call i64 @arch_local_irq_save() #8, !dbg !6224
  store i64 %call, i64* %flags, align 8, !dbg !6224
  br label %do.end, !dbg !6224

do.end:                                           ; preds = %do.body10
  br label %do.end16, !dbg !6217

do.end16:                                         ; preds = %do.end
  br label %do.body17, !dbg !6216

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6225, !srcloc !6226
  br label %do.body18, !dbg !6225

do.body18:                                        ; preds = %do.body17
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6227
  %lock = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %13, i32 0, i32 2, !dbg !6227
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6228
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !6229
  %rlock.i = bitcast %union.anon.1* %15 to %struct.raw_spinlock*, !dbg !6229
  br label %do.end20, !dbg !6227

do.end20:                                         ; preds = %do.body18
  br label %do.end21, !dbg !6225

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !6216

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !6215

do.end23:                                         ; preds = %do.end22
  br label %do.end24, !dbg !6210

do.end24:                                         ; preds = %do.end23
  %16 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6230
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 19, !dbg !6231
  %17 = load i32, i32* %transfer_buffer_length, align 8, !dbg !6231
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6232
  %tx_bytes = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %18, i32 0, i32 28, !dbg !6233
  %19 = load i32, i32* %tx_bytes, align 8, !dbg !6234
  %sub = sub i32 %19, %17, !dbg !6234
  store i32 %sub, i32* %tx_bytes, align 8, !dbg !6234
  %20 = load i32, i32* %i, align 4, !dbg !6235
  %conv25 = sext i32 %20 to i64, !dbg !6235
  %21 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6236
  %write_urbs_free = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %21, i32 0, i32 25, !dbg !6237
  call void @set_bit(i64 %conv25, i64* %write_urbs_free) #8, !dbg !6238
  %22 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6239
  %lock26 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %22, i32 0, i32 2, !dbg !6240
  %23 = load i64, i64* %flags, align 8, !dbg !6241
  store %struct.spinlock* %lock26, %struct.spinlock** %lock.addr.i49, align 8
  store i64 %23, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !111, metadata !5047, metadata !DIExpression()) #7, !dbg !6242
  call void @llvm.dbg.declare(metadata !111, metadata !5051, metadata !DIExpression()) #7, !dbg !6242
  store i32 1, i32* %tmp.i, align 4, !dbg !6242
  %24 = load i32, i32* %tmp.i, align 4, !dbg !6242
  call void @llvm.dbg.declare(metadata !111, metadata !5052, metadata !DIExpression()) #7, !dbg !6243
  call void @llvm.dbg.declare(metadata !111, metadata !5058, metadata !DIExpression()) #7, !dbg !6243
  store i32 1, i32* %tmp8.i, align 4, !dbg !6243
  %25 = load i32, i32* %tmp8.i, align 4, !dbg !6243
  %26 = load i64, i64* %flags.addr.i, align 8, !dbg !6244
  call void @arch_local_irq_restore(i64 %26) #9, !dbg !6244
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6245, !srcloc !5062
  %27 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i49, align 8, !dbg !6246
  %28 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %27, i32 0, i32 0, !dbg !6246
  %rlock.i50 = bitcast %union.anon.1* %28 to %struct.raw_spinlock*, !dbg !6246
  %29 = load i32, i32* %status, align 4, !dbg !6247
  switch i32 %29, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %sw.bb27
    i32 -104, label %sw.bb27
    i32 -108, label %sw.bb27
    i32 -32, label %sw.bb28
  ], !dbg !6248

sw.bb:                                            ; preds = %do.end24
  br label %sw.epilog, !dbg !6249

sw.bb27:                                          ; preds = %do.end24, %do.end24, %do.end24
  br label %return, !dbg !6251

sw.bb28:                                          ; preds = %do.end24
  br label %do.body29, !dbg !6252

do.body29:                                        ; preds = %sw.bb28
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %__port, metadata !6253, metadata !DIExpression()), !dbg !6255
  %30 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6255
  store %struct.usb_serial_port* %30, %struct.usb_serial_port** %__port, align 8, !dbg !6255
  %31 = load %struct.usb_serial_port*, %struct.usb_serial_port** %__port, align 8, !dbg !6256
  %port30 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %31, i32 0, i32 1, !dbg !6256
  %console = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port30, i32 0, i32 12, !dbg !6256
  %bf.load = load i8, i8* %console, align 8, !dbg !6256
  %bf.clear = and i8 %bf.load, 1, !dbg !6256
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !6256
  br i1 %tobool, label %lor.lhs.false, label %if.then32, !dbg !6256

lor.lhs.false:                                    ; preds = %do.body29
  %32 = load i8, i8* @usb_serial_generic_write_bulk_callback.__print_once, align 1, !dbg !6256
  %tobool31 = trunc i8 %32 to i1, !dbg !6256
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !6255

if.then32:                                        ; preds = %lor.lhs.false, %do.body29
  store i8 1, i8* @usb_serial_generic_write_bulk_callback.__print_once, align 1, !dbg !6258
  %33 = load %struct.usb_serial_port*, %struct.usb_serial_port** %__port, align 8, !dbg !6258
  %dev = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %33, i32 0, i32 33, !dbg !6258
  %34 = load i32, i32* %status, align 4, !dbg !6258
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.usb_serial_generic_write_bulk_callback, i64 0, i64 0), i32 %34) #10, !dbg !6258
  br label %if.end33, !dbg !6258

if.end33:                                         ; preds = %if.then32, %lor.lhs.false
  br label %do.end34, !dbg !6255

do.end34:                                         ; preds = %if.end33
  br label %return, !dbg !6260

sw.default:                                       ; preds = %do.end24
  br label %do.body35, !dbg !6261

do.body35:                                        ; preds = %sw.default
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %__port36, metadata !6262, metadata !DIExpression()), !dbg !6264
  %35 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6264
  store %struct.usb_serial_port* %35, %struct.usb_serial_port** %__port36, align 8, !dbg !6264
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %__port36, align 8, !dbg !6265
  %port37 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %36, i32 0, i32 1, !dbg !6265
  %console38 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port37, i32 0, i32 12, !dbg !6265
  %bf.load39 = load i8, i8* %console38, align 8, !dbg !6265
  %bf.clear40 = and i8 %bf.load39, 1, !dbg !6265
  %tobool41 = icmp ne i8 %bf.clear40, 0, !dbg !6265
  br i1 %tobool41, label %lor.lhs.false42, label %if.then44, !dbg !6265

lor.lhs.false42:                                  ; preds = %do.body35
  %37 = load i8, i8* @usb_serial_generic_write_bulk_callback.__print_once.2, align 1, !dbg !6265
  %tobool43 = trunc i8 %37 to i1, !dbg !6265
  br i1 %tobool43, label %if.end46, label %if.then44, !dbg !6264

if.then44:                                        ; preds = %lor.lhs.false42, %do.body35
  store i8 1, i8* @usb_serial_generic_write_bulk_callback.__print_once.2, align 1, !dbg !6267
  %38 = load %struct.usb_serial_port*, %struct.usb_serial_port** %__port36, align 8, !dbg !6267
  %dev45 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %38, i32 0, i32 33, !dbg !6267
  %39 = load i32, i32* %status, align 4, !dbg !6267
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.usb_serial_generic_write_bulk_callback, i64 0, i64 0), i32 %39) #10, !dbg !6267
  br label %if.end46, !dbg !6267

if.end46:                                         ; preds = %if.then44, %lor.lhs.false42
  br label %do.end47, !dbg !6264

do.end47:                                         ; preds = %if.end46
  br label %sw.epilog, !dbg !6269

sw.epilog:                                        ; preds = %do.end47, %sw.bb
  %40 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6270
  %call48 = call i32 @usb_serial_generic_write_start(%struct.usb_serial_port* %40, i32 2592) #8, !dbg !6271
  %41 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6272
  call void @usb_serial_port_softint(%struct.usb_serial_port* %41) #8, !dbg !6273
  br label %return, !dbg !6274

return:                                           ; preds = %sw.epilog, %do.end34, %sw.bb27
  ret void, !dbg !6274
}

; Function Attrs: noredzone
declare dso_local void @usb_serial_port_softint(%struct.usb_serial_port*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_serial_generic_throttle(%struct.tty_struct* %tty) #0 !dbg !6275 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %port = alloca %struct.usb_serial_port*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6276, metadata !DIExpression()), !dbg !6277
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port, metadata !6278, metadata !DIExpression()), !dbg !6279
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6280
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 37, !dbg !6281
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6281
  %2 = bitcast i8* %1 to %struct.usb_serial_port*, !dbg !6280
  store %struct.usb_serial_port* %2, %struct.usb_serial_port** %port, align 8, !dbg !6279
  %3 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6282
  %flags = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %3, i32 0, i32 29, !dbg !6283
  call void @set_bit(i64 1, i64* %flags) #8, !dbg !6284
  ret void, !dbg !6285
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_serial_generic_unthrottle(%struct.tty_struct* %tty) #0 !dbg !6286 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %port = alloca %struct.usb_serial_port*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6287, metadata !DIExpression()), !dbg !6288
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port, metadata !6289, metadata !DIExpression()), !dbg !6290
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6291
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 37, !dbg !6292
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6292
  %2 = bitcast i8* %1 to %struct.usb_serial_port*, !dbg !6291
  store %struct.usb_serial_port* %2, %struct.usb_serial_port** %port, align 8, !dbg !6290
  %3 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6293
  %flags = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %3, i32 0, i32 29, !dbg !6294
  call void @clear_bit(i64 1, i64* %flags) #8, !dbg !6295
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6296, !srcloc !6297
  %4 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6298
  %call = call i32 @usb_serial_generic_submit_read_urbs(%struct.usb_serial_port* %4, i32 3264) #8, !dbg !6299
  ret void, !dbg !6300
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_serial_generic_tiocmiwait(%struct.tty_struct* %tty, i64 %arg) #0 !dbg !6301 {
entry:
  %lock.addr.i43 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i43, metadata !4972, metadata !DIExpression()), !dbg !6302
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4981, metadata !DIExpression()), !dbg !6304
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4983, metadata !DIExpression()), !dbg !6305
  %tty.addr = alloca %struct.tty_struct*, align 8
  %arg.addr = alloca i64, align 8
  %port = alloca %struct.usb_serial_port*, align 8
  %cnow = alloca %struct.async_icount, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret25 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp34 = alloca i64, align 8
  %tmp37 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6312, metadata !DIExpression()), !dbg !6313
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !6314, metadata !DIExpression()), !dbg !6315
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port, metadata !6316, metadata !DIExpression()), !dbg !6317
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6318
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 37, !dbg !6319
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6319
  %2 = bitcast i8* %1 to %struct.usb_serial_port*, !dbg !6318
  store %struct.usb_serial_port* %2, %struct.usb_serial_port** %port, align 8, !dbg !6317
  call void @llvm.dbg.declare(metadata %struct.async_icount* %cnow, metadata !6320, metadata !DIExpression()), !dbg !6321
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6322, metadata !DIExpression()), !dbg !6323
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6324, metadata !DIExpression()), !dbg !6325
  br label %do.body, !dbg !6326

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6327

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6328, metadata !DIExpression()), !dbg !6330
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6331, metadata !DIExpression()), !dbg !6330
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6330
  %conv = zext i1 %cmp to i32, !dbg !6330
  store i32 1, i32* %tmp, align 4, !dbg !6330
  %3 = load i32, i32* %tmp, align 4, !dbg !6330
  br label %do.body2, !dbg !6332

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !6333

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6334

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !6336, metadata !DIExpression()), !dbg !6339
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !6340, metadata !DIExpression()), !dbg !6339
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !6339
  %conv8 = zext i1 %cmp7 to i32, !dbg !6339
  store i32 1, i32* %tmp9, align 4, !dbg !6339
  %4 = load i32, i32* %tmp9, align 4, !dbg !6339
  %call = call i64 @arch_local_irq_save() #8, !dbg !6341
  store i64 %call, i64* %flags, align 8, !dbg !6341
  br label %do.end, !dbg !6341

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !6334

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !6333

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6342, !srcloc !6343
  br label %do.body12, !dbg !6342

do.body12:                                        ; preds = %do.body11
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6344
  %lock = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %5, i32 0, i32 2, !dbg !6344
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6345
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !6346
  %rlock.i = bitcast %union.anon.1* %7 to %struct.raw_spinlock*, !dbg !6346
  br label %do.end14, !dbg !6344

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !6342

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !6333

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6332

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6327

do.end18:                                         ; preds = %do.end17
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6347
  %icount = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %8, i32 0, i32 27, !dbg !6348
  %9 = bitcast %struct.async_icount* %cnow to i8*, !dbg !6348
  %10 = bitcast %struct.async_icount* %icount to i8*, !dbg !6348
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 44, i1 false), !dbg !6348
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6349
  %lock19 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %11, i32 0, i32 2, !dbg !6350
  %12 = load i64, i64* %flags, align 8, !dbg !6351
  store %struct.spinlock* %lock19, %struct.spinlock** %lock.addr.i43, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !111, metadata !5047, metadata !DIExpression()) #7, !dbg !6352
  call void @llvm.dbg.declare(metadata !111, metadata !5051, metadata !DIExpression()) #7, !dbg !6352
  store i32 1, i32* %tmp.i, align 4, !dbg !6352
  %13 = load i32, i32* %tmp.i, align 4, !dbg !6352
  call void @llvm.dbg.declare(metadata !111, metadata !5052, metadata !DIExpression()) #7, !dbg !6353
  call void @llvm.dbg.declare(metadata !111, metadata !5058, metadata !DIExpression()) #7, !dbg !6353
  store i32 1, i32* %tmp8.i, align 4, !dbg !6353
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !6353
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !6354
  call void @arch_local_irq_restore(i64 %15) #9, !dbg !6354
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6355, !srcloc !5062
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i43, align 8, !dbg !6356
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !6356
  %rlock.i44 = bitcast %union.anon.1* %17 to %struct.raw_spinlock*, !dbg !6356
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !6357, metadata !DIExpression()), !dbg !6359
  store i32 0, i32* %__ret, align 4, !dbg !6359
  br label %do.body20, !dbg !6359

do.body20:                                        ; preds = %do.end18
  br label %do.body21, !dbg !6360

do.body21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6362

do.end22:                                         ; preds = %do.body21
  br label %do.end23, !dbg !6360

do.end23:                                         ; preds = %do.end22
  %18 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6364
  %19 = load i64, i64* %arg.addr, align 8, !dbg !6364
  %call24 = call zeroext i1 @usb_serial_generic_msr_changed(%struct.tty_struct* %18, i64 %19, %struct.async_icount* %cnow) #8, !dbg !6364
  br i1 %call24, label %if.end36, label %if.then, !dbg !6359

if.then:                                          ; preds = %do.end23
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !6366, metadata !DIExpression()), !dbg !6379
  call void @llvm.dbg.declare(metadata i64* %__ret25, metadata !6380, metadata !DIExpression()), !dbg !6379
  store i64 0, i64* %__ret25, align 8, !dbg !6379
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #8, !dbg !6379
  br label %for.cond, !dbg !6379

for.cond:                                         ; preds = %if.end31, %if.then
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !6381, metadata !DIExpression()), !dbg !6385
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6385
  %port26 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %20, i32 0, i32 1, !dbg !6385
  %delta_msr_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port26, i32 0, i32 9, !dbg !6385
  %call27 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %delta_msr_wait, %struct.wait_queue_entry* %__wq_entry, i32 1) #8, !dbg !6385
  store i64 %call27, i64* %__int, align 8, !dbg !6385
  %21 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6386
  %22 = load i64, i64* %arg.addr, align 8, !dbg !6386
  %call28 = call zeroext i1 @usb_serial_generic_msr_changed(%struct.tty_struct* %21, i64 %22, %struct.async_icount* %cnow) #8, !dbg !6386
  br i1 %call28, label %if.then29, label %if.end, !dbg !6385

if.then29:                                        ; preds = %for.cond
  br label %for.end, !dbg !6386

if.end:                                           ; preds = %for.cond
  %23 = load i64, i64* %__int, align 8, !dbg !6388
  %tobool = icmp ne i64 %23, 0, !dbg !6388
  br i1 %tobool, label %if.then30, label %if.end31, !dbg !6385

if.then30:                                        ; preds = %if.end
  %24 = load i64, i64* %__int, align 8, !dbg !6390
  store i64 %24, i64* %__ret25, align 8, !dbg !6390
  br label %__out, !dbg !6390

if.end31:                                         ; preds = %if.end
  call void @schedule() #8, !dbg !6385
  br label %for.cond, !dbg !6392, !llvm.loop !6393

for.end:                                          ; preds = %if.then29
  %25 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6379
  %port32 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %25, i32 0, i32 1, !dbg !6379
  %delta_msr_wait33 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port32, i32 0, i32 9, !dbg !6379
  call void @finish_wait(%struct.wait_queue_head* %delta_msr_wait33, %struct.wait_queue_entry* %__wq_entry) #8, !dbg !6379
  br label %__out, !dbg !6379

__out:                                            ; preds = %for.end, %if.then30
  call void @llvm.dbg.label(metadata !6395), !dbg !6379
  %26 = load i64, i64* %__ret25, align 8, !dbg !6379
  store i64 %26, i64* %tmp34, align 8, !dbg !6379
  %27 = load i64, i64* %tmp34, align 8, !dbg !6379
  %conv35 = trunc i64 %27 to i32, !dbg !6364
  store i32 %conv35, i32* %__ret, align 4, !dbg !6364
  br label %if.end36, !dbg !6364

if.end36:                                         ; preds = %__out, %do.end23
  %28 = load i32, i32* %__ret, align 4, !dbg !6359
  store i32 %28, i32* %tmp37, align 4, !dbg !6364
  %29 = load i32, i32* %tmp37, align 4, !dbg !6359
  store i32 %29, i32* %ret, align 4, !dbg !6396
  %30 = load i32, i32* %ret, align 4, !dbg !6397
  %tobool38 = icmp ne i32 %30, 0, !dbg !6397
  br i1 %tobool38, label %if.end42, label %land.lhs.true, !dbg !6399

land.lhs.true:                                    ; preds = %if.end36
  %31 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6400
  %port39 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %31, i32 0, i32 1, !dbg !6401
  %call40 = call zeroext i1 @tty_port_initialized(%struct.tty_port* %port39) #8, !dbg !6402
  br i1 %call40, label %if.end42, label %if.then41, !dbg !6403

if.then41:                                        ; preds = %land.lhs.true
  store i32 -5, i32* %ret, align 4, !dbg !6404
  br label %if.end42, !dbg !6405

if.end42:                                         ; preds = %if.then41, %land.lhs.true, %if.end36
  %32 = load i32, i32* %ret, align 4, !dbg !6406
  ret i32 %32, !dbg !6407
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @usb_serial_generic_msr_changed(%struct.tty_struct* %tty, i64 %arg, %struct.async_icount* %cprev) #0 !dbg !6408 {
entry:
  %lock.addr.i44 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i44, metadata !4972, metadata !DIExpression()), !dbg !6412
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4981, metadata !DIExpression()), !dbg !6414
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4983, metadata !DIExpression()), !dbg !6415
  %retval = alloca i1, align 1
  %tty.addr = alloca %struct.tty_struct*, align 8
  %arg.addr = alloca i64, align 8
  %cprev.addr = alloca %struct.async_icount*, align 8
  %port = alloca %struct.usb_serial_port*, align 8
  %cnow = alloca %struct.async_icount, align 4
  %flags = alloca i64, align 8
  %ret = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6422, metadata !DIExpression()), !dbg !6423
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !6424, metadata !DIExpression()), !dbg !6425
  store %struct.async_icount* %cprev, %struct.async_icount** %cprev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.async_icount** %cprev.addr, metadata !6426, metadata !DIExpression()), !dbg !6427
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port, metadata !6428, metadata !DIExpression()), !dbg !6429
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6430
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 37, !dbg !6431
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6431
  %2 = bitcast i8* %1 to %struct.usb_serial_port*, !dbg !6430
  store %struct.usb_serial_port* %2, %struct.usb_serial_port** %port, align 8, !dbg !6429
  call void @llvm.dbg.declare(metadata %struct.async_icount* %cnow, metadata !6432, metadata !DIExpression()), !dbg !6433
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6434, metadata !DIExpression()), !dbg !6435
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !6436, metadata !DIExpression()), !dbg !6437
  %3 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6438
  %port1 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %3, i32 0, i32 1, !dbg !6440
  %call = call zeroext i1 @tty_port_initialized(%struct.tty_port* %port1) #8, !dbg !6441
  br i1 %call, label %if.end, label %if.then, !dbg !6442

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !6443
  br label %return, !dbg !6443

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6444

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !6445

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6446, metadata !DIExpression()), !dbg !6448
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6449, metadata !DIExpression()), !dbg !6448
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6448
  %conv = zext i1 %cmp to i32, !dbg !6448
  store i32 1, i32* %tmp, align 4, !dbg !6448
  %4 = load i32, i32* %tmp, align 4, !dbg !6448
  br label %do.body3, !dbg !6450

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6451

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !6452

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !6454, metadata !DIExpression()), !dbg !6457
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !6458, metadata !DIExpression()), !dbg !6457
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !6457
  %conv9 = zext i1 %cmp8 to i32, !dbg !6457
  store i32 1, i32* %tmp10, align 4, !dbg !6457
  %5 = load i32, i32* %tmp10, align 4, !dbg !6457
  %call11 = call i64 @arch_local_irq_save() #8, !dbg !6459
  store i64 %call11, i64* %flags, align 8, !dbg !6459
  br label %do.end, !dbg !6459

do.end:                                           ; preds = %do.body5
  br label %do.end12, !dbg !6452

do.end12:                                         ; preds = %do.end
  br label %do.body13, !dbg !6451

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6460, !srcloc !6461
  br label %do.body14, !dbg !6460

do.body14:                                        ; preds = %do.body13
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6462
  %lock = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %6, i32 0, i32 2, !dbg !6462
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6463
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i32 0, i32 0, !dbg !6464
  %rlock.i = bitcast %union.anon.1* %8 to %struct.raw_spinlock*, !dbg !6464
  br label %do.end16, !dbg !6462

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !6460

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6451

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6450

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !6445

do.end20:                                         ; preds = %do.end19
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6465
  %icount = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 27, !dbg !6466
  %10 = bitcast %struct.async_icount* %cnow to i8*, !dbg !6466
  %11 = bitcast %struct.async_icount* %icount to i8*, !dbg !6466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 44, i1 false), !dbg !6466
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6467
  %lock21 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 2, !dbg !6468
  %13 = load i64, i64* %flags, align 8, !dbg !6469
  store %struct.spinlock* %lock21, %struct.spinlock** %lock.addr.i44, align 8
  store i64 %13, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !111, metadata !5047, metadata !DIExpression()) #7, !dbg !6470
  call void @llvm.dbg.declare(metadata !111, metadata !5051, metadata !DIExpression()) #7, !dbg !6470
  store i32 1, i32* %tmp.i, align 4, !dbg !6470
  %14 = load i32, i32* %tmp.i, align 4, !dbg !6470
  call void @llvm.dbg.declare(metadata !111, metadata !5052, metadata !DIExpression()) #7, !dbg !6471
  call void @llvm.dbg.declare(metadata !111, metadata !5058, metadata !DIExpression()) #7, !dbg !6471
  store i32 1, i32* %tmp8.i, align 4, !dbg !6471
  %15 = load i32, i32* %tmp8.i, align 4, !dbg !6471
  %16 = load i64, i64* %flags.addr.i, align 8, !dbg !6472
  call void @arch_local_irq_restore(i64 %16) #9, !dbg !6472
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6473, !srcloc !5062
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i44, align 8, !dbg !6474
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !6474
  %rlock.i45 = bitcast %union.anon.1* %18 to %struct.raw_spinlock*, !dbg !6474
  %19 = load i64, i64* %arg.addr, align 8, !dbg !6475
  %and = and i64 %19, 128, !dbg !6476
  %tobool = icmp ne i64 %and, 0, !dbg !6476
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false, !dbg !6477

land.lhs.true:                                    ; preds = %do.end20
  %rng = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 2, !dbg !6478
  %20 = load i32, i32* %rng, align 4, !dbg !6478
  %21 = load %struct.async_icount*, %struct.async_icount** %cprev.addr, align 8, !dbg !6479
  %rng22 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %21, i32 0, i32 2, !dbg !6480
  %22 = load i32, i32* %rng22, align 4, !dbg !6480
  %cmp23 = icmp ne i32 %20, %22, !dbg !6481
  br i1 %cmp23, label %lor.end, label %lor.lhs.false, !dbg !6482

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.end20
  %23 = load i64, i64* %arg.addr, align 8, !dbg !6483
  %and25 = and i64 %23, 256, !dbg !6484
  %tobool26 = icmp ne i64 %and25, 0, !dbg !6484
  br i1 %tobool26, label %land.lhs.true27, label %lor.lhs.false31, !dbg !6485

land.lhs.true27:                                  ; preds = %lor.lhs.false
  %dsr = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 1, !dbg !6486
  %24 = load i32, i32* %dsr, align 4, !dbg !6486
  %25 = load %struct.async_icount*, %struct.async_icount** %cprev.addr, align 8, !dbg !6487
  %dsr28 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %25, i32 0, i32 1, !dbg !6488
  %26 = load i32, i32* %dsr28, align 4, !dbg !6488
  %cmp29 = icmp ne i32 %24, %26, !dbg !6489
  br i1 %cmp29, label %lor.end, label %lor.lhs.false31, !dbg !6490

lor.lhs.false31:                                  ; preds = %land.lhs.true27, %lor.lhs.false
  %27 = load i64, i64* %arg.addr, align 8, !dbg !6491
  %and32 = and i64 %27, 64, !dbg !6492
  %tobool33 = icmp ne i64 %and32, 0, !dbg !6492
  br i1 %tobool33, label %land.lhs.true34, label %lor.rhs, !dbg !6493

land.lhs.true34:                                  ; preds = %lor.lhs.false31
  %dcd = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 3, !dbg !6494
  %28 = load i32, i32* %dcd, align 4, !dbg !6494
  %29 = load %struct.async_icount*, %struct.async_icount** %cprev.addr, align 8, !dbg !6495
  %dcd35 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %29, i32 0, i32 3, !dbg !6496
  %30 = load i32, i32* %dcd35, align 4, !dbg !6496
  %cmp36 = icmp ne i32 %28, %30, !dbg !6497
  br i1 %cmp36, label %lor.end, label %lor.rhs, !dbg !6498

lor.rhs:                                          ; preds = %land.lhs.true34, %lor.lhs.false31
  %31 = load i64, i64* %arg.addr, align 8, !dbg !6499
  %and38 = and i64 %31, 32, !dbg !6500
  %tobool39 = icmp ne i64 %and38, 0, !dbg !6500
  br i1 %tobool39, label %land.rhs, label %land.end, !dbg !6501

land.rhs:                                         ; preds = %lor.rhs
  %cts = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 0, !dbg !6502
  %32 = load i32, i32* %cts, align 4, !dbg !6502
  %33 = load %struct.async_icount*, %struct.async_icount** %cprev.addr, align 8, !dbg !6503
  %cts40 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %33, i32 0, i32 0, !dbg !6504
  %34 = load i32, i32* %cts40, align 4, !dbg !6504
  %cmp41 = icmp ne i32 %32, %34, !dbg !6505
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %35 = phi i1 [ false, %lor.rhs ], [ %cmp41, %land.rhs ], !dbg !6506
  br label %lor.end, !dbg !6498

lor.end:                                          ; preds = %land.end, %land.lhs.true34, %land.lhs.true27, %land.lhs.true
  %36 = phi i1 [ true, %land.lhs.true34 ], [ true, %land.lhs.true27 ], [ true, %land.lhs.true ], [ %35, %land.end ]
  %frombool = zext i1 %36 to i8, !dbg !6507
  store i8 %frombool, i8* %ret, align 1, !dbg !6507
  %37 = load %struct.async_icount*, %struct.async_icount** %cprev.addr, align 8, !dbg !6508
  %38 = bitcast %struct.async_icount* %37 to i8*, !dbg !6509
  %39 = bitcast %struct.async_icount* %cnow to i8*, !dbg !6509
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 44, i1 false), !dbg !6509
  %40 = load i8, i8* %ret, align 1, !dbg !6510
  %tobool43 = trunc i8 %40 to i1, !dbg !6510
  store i1 %tobool43, i1* %retval, align 1, !dbg !6511
  br label %return, !dbg !6511

return:                                           ; preds = %lor.end, %if.then
  %41 = load i1, i1* %retval, align 1, !dbg !6512
  ret i1 %41, !dbg !6512
}

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local void @schedule() #2

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @tty_port_initialized(%struct.tty_port* %port) #0 !dbg !6513 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !6516, metadata !DIExpression()), !dbg !6517
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !6518
  %iflags = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 11, !dbg !6519
  %call = call zeroext i1 @test_bit(i64 0, i64* %iflags) #8, !dbg !6520
  ret i1 %call, !dbg !6521
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_serial_generic_get_icount(%struct.tty_struct* %tty, %struct.serial_icounter_struct* %icount) #0 !dbg !6522 {
entry:
  %lock.addr.i32 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i32, metadata !4972, metadata !DIExpression()), !dbg !6523
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4981, metadata !DIExpression()), !dbg !6525
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4983, metadata !DIExpression()), !dbg !6526
  %tty.addr = alloca %struct.tty_struct*, align 8
  %icount.addr = alloca %struct.serial_icounter_struct*, align 8
  %port = alloca %struct.usb_serial_port*, align 8
  %cnow = alloca %struct.async_icount, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6533, metadata !DIExpression()), !dbg !6534
  store %struct.serial_icounter_struct* %icount, %struct.serial_icounter_struct** %icount.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serial_icounter_struct** %icount.addr, metadata !6535, metadata !DIExpression()), !dbg !6536
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port, metadata !6537, metadata !DIExpression()), !dbg !6538
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6539
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 37, !dbg !6540
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6540
  %2 = bitcast i8* %1 to %struct.usb_serial_port*, !dbg !6539
  store %struct.usb_serial_port* %2, %struct.usb_serial_port** %port, align 8, !dbg !6538
  call void @llvm.dbg.declare(metadata %struct.async_icount* %cnow, metadata !6541, metadata !DIExpression()), !dbg !6542
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6543, metadata !DIExpression()), !dbg !6544
  br label %do.body, !dbg !6545

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6546

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6547, metadata !DIExpression()), !dbg !6549
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6550, metadata !DIExpression()), !dbg !6549
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6549
  %conv = zext i1 %cmp to i32, !dbg !6549
  store i32 1, i32* %tmp, align 4, !dbg !6549
  %3 = load i32, i32* %tmp, align 4, !dbg !6549
  br label %do.body2, !dbg !6551

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !6552

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6553

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !6555, metadata !DIExpression()), !dbg !6558
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !6559, metadata !DIExpression()), !dbg !6558
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !6558
  %conv8 = zext i1 %cmp7 to i32, !dbg !6558
  store i32 1, i32* %tmp9, align 4, !dbg !6558
  %4 = load i32, i32* %tmp9, align 4, !dbg !6558
  %call = call i64 @arch_local_irq_save() #8, !dbg !6560
  store i64 %call, i64* %flags, align 8, !dbg !6560
  br label %do.end, !dbg !6560

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !6553

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !6552

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6561, !srcloc !6562
  br label %do.body12, !dbg !6561

do.body12:                                        ; preds = %do.body11
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6563
  %lock = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %5, i32 0, i32 2, !dbg !6563
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6564
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !6565
  %rlock.i = bitcast %union.anon.1* %7 to %struct.raw_spinlock*, !dbg !6565
  br label %do.end14, !dbg !6563

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !6561

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !6552

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6551

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6546

do.end18:                                         ; preds = %do.end17
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6566
  %icount19 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %8, i32 0, i32 27, !dbg !6567
  %9 = bitcast %struct.async_icount* %cnow to i8*, !dbg !6567
  %10 = bitcast %struct.async_icount* %icount19 to i8*, !dbg !6567
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 44, i1 false), !dbg !6567
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6568
  %lock20 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %11, i32 0, i32 2, !dbg !6569
  %12 = load i64, i64* %flags, align 8, !dbg !6570
  store %struct.spinlock* %lock20, %struct.spinlock** %lock.addr.i32, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !111, metadata !5047, metadata !DIExpression()) #7, !dbg !6571
  call void @llvm.dbg.declare(metadata !111, metadata !5051, metadata !DIExpression()) #7, !dbg !6571
  store i32 1, i32* %tmp.i, align 4, !dbg !6571
  %13 = load i32, i32* %tmp.i, align 4, !dbg !6571
  call void @llvm.dbg.declare(metadata !111, metadata !5052, metadata !DIExpression()) #7, !dbg !6572
  call void @llvm.dbg.declare(metadata !111, metadata !5058, metadata !DIExpression()) #7, !dbg !6572
  store i32 1, i32* %tmp8.i, align 4, !dbg !6572
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !6572
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !6573
  call void @arch_local_irq_restore(i64 %15) #9, !dbg !6573
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6574, !srcloc !5062
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i32, align 8, !dbg !6575
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !6575
  %rlock.i33 = bitcast %union.anon.1* %17 to %struct.raw_spinlock*, !dbg !6575
  %cts = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 0, !dbg !6576
  %18 = load i32, i32* %cts, align 4, !dbg !6576
  %19 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %icount.addr, align 8, !dbg !6577
  %cts21 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %19, i32 0, i32 0, !dbg !6578
  store i32 %18, i32* %cts21, align 4, !dbg !6579
  %dsr = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 1, !dbg !6580
  %20 = load i32, i32* %dsr, align 4, !dbg !6580
  %21 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %icount.addr, align 8, !dbg !6581
  %dsr22 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %21, i32 0, i32 1, !dbg !6582
  store i32 %20, i32* %dsr22, align 4, !dbg !6583
  %rng = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 2, !dbg !6584
  %22 = load i32, i32* %rng, align 4, !dbg !6584
  %23 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %icount.addr, align 8, !dbg !6585
  %rng23 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %23, i32 0, i32 2, !dbg !6586
  store i32 %22, i32* %rng23, align 4, !dbg !6587
  %dcd = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 3, !dbg !6588
  %24 = load i32, i32* %dcd, align 4, !dbg !6588
  %25 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %icount.addr, align 8, !dbg !6589
  %dcd24 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %25, i32 0, i32 3, !dbg !6590
  store i32 %24, i32* %dcd24, align 4, !dbg !6591
  %tx = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 4, !dbg !6592
  %26 = load i32, i32* %tx, align 4, !dbg !6592
  %27 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %icount.addr, align 8, !dbg !6593
  %tx25 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %27, i32 0, i32 5, !dbg !6594
  store i32 %26, i32* %tx25, align 4, !dbg !6595
  %rx = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 5, !dbg !6596
  %28 = load i32, i32* %rx, align 4, !dbg !6596
  %29 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %icount.addr, align 8, !dbg !6597
  %rx26 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %29, i32 0, i32 4, !dbg !6598
  store i32 %28, i32* %rx26, align 4, !dbg !6599
  %frame = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 6, !dbg !6600
  %30 = load i32, i32* %frame, align 4, !dbg !6600
  %31 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %icount.addr, align 8, !dbg !6601
  %frame27 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %31, i32 0, i32 6, !dbg !6602
  store i32 %30, i32* %frame27, align 4, !dbg !6603
  %parity = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 7, !dbg !6604
  %32 = load i32, i32* %parity, align 4, !dbg !6604
  %33 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %icount.addr, align 8, !dbg !6605
  %parity28 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %33, i32 0, i32 8, !dbg !6606
  store i32 %32, i32* %parity28, align 4, !dbg !6607
  %overrun = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 8, !dbg !6608
  %34 = load i32, i32* %overrun, align 4, !dbg !6608
  %35 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %icount.addr, align 8, !dbg !6609
  %overrun29 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %35, i32 0, i32 7, !dbg !6610
  store i32 %34, i32* %overrun29, align 4, !dbg !6611
  %brk = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 9, !dbg !6612
  %36 = load i32, i32* %brk, align 4, !dbg !6612
  %37 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %icount.addr, align 8, !dbg !6613
  %brk30 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %37, i32 0, i32 9, !dbg !6614
  store i32 %36, i32* %brk30, align 4, !dbg !6615
  %buf_overrun = getelementptr inbounds %struct.async_icount, %struct.async_icount* %cnow, i32 0, i32 10, !dbg !6616
  %38 = load i32, i32* %buf_overrun, align 4, !dbg !6616
  %39 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %icount.addr, align 8, !dbg !6617
  %buf_overrun31 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %39, i32 0, i32 10, !dbg !6618
  store i32 %38, i32* %buf_overrun31, align 4, !dbg !6619
  ret i32 0, !dbg !6620
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_serial_handle_dcd_change(%struct.usb_serial_port* %port, %struct.tty_struct* %tty, i32 %status) #0 !dbg !6621 {
entry:
  %port.addr = alloca %struct.usb_serial_port*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  %status.addr = alloca i32, align 4
  %ld = alloca %struct.tty_ldisc*, align 8
  store %struct.usb_serial_port* %port, %struct.usb_serial_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port.addr, metadata !6624, metadata !DIExpression()), !dbg !6625
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6626, metadata !DIExpression()), !dbg !6627
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !6628, metadata !DIExpression()), !dbg !6629
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6630
  %tobool = icmp ne %struct.tty_struct* %0, null, !dbg !6630
  br i1 %tobool, label %if.then, label %if.end8, !dbg !6632

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld, metadata !6633, metadata !DIExpression()), !dbg !6635
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6636
  %call = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %1) #8, !dbg !6637
  store %struct.tty_ldisc* %call, %struct.tty_ldisc** %ld, align 8, !dbg !6635
  %2 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !6638
  %tobool1 = icmp ne %struct.tty_ldisc* %2, null, !dbg !6638
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !6640

if.then2:                                         ; preds = %if.then
  %3 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !6641
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %3, i32 0, i32 0, !dbg !6644
  %4 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8, !dbg !6644
  %dcd_change = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %4, i32 0, i32 16, !dbg !6645
  %5 = load void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i32)** %dcd_change, align 8, !dbg !6645
  %tobool3 = icmp ne void (%struct.tty_struct*, i32)* %5, null, !dbg !6641
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !6646

if.then4:                                         ; preds = %if.then2
  %6 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !6647
  %ops5 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %6, i32 0, i32 0, !dbg !6648
  %7 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops5, align 8, !dbg !6648
  %dcd_change6 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %7, i32 0, i32 16, !dbg !6649
  %8 = load void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i32)** %dcd_change6, align 8, !dbg !6649
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6650
  %10 = load i32, i32* %status.addr, align 4, !dbg !6651
  call void %8(%struct.tty_struct* %9, i32 %10) #8, !dbg !6647
  br label %if.end, !dbg !6647

if.end:                                           ; preds = %if.then4, %if.then2
  %11 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !6652
  call void @tty_ldisc_deref(%struct.tty_ldisc* %11) #8, !dbg !6653
  br label %if.end7, !dbg !6654

if.end7:                                          ; preds = %if.end, %if.then
  br label %if.end8, !dbg !6655

if.end8:                                          ; preds = %if.end7, %entry
  %12 = load i32, i32* %status.addr, align 4, !dbg !6656
  %tobool9 = icmp ne i32 %12, 0, !dbg !6656
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !6658

if.then10:                                        ; preds = %if.end8
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port.addr, align 8, !dbg !6659
  %port11 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %13, i32 0, i32 1, !dbg !6659
  %open_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port11, i32 0, i32 8, !dbg !6659
  call void @__wake_up(%struct.wait_queue_head* %open_wait, i32 1, i32 1, i8* null) #8, !dbg !6659
  br label %if.end16, !dbg !6659

if.else:                                          ; preds = %if.end8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6660
  %tobool12 = icmp ne %struct.tty_struct* %14, null, !dbg !6660
  br i1 %tobool12, label %land.lhs.true, label %if.end15, !dbg !6662

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6663
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 15, !dbg !6663
  %c_cflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i32 0, i32 2, !dbg !6663
  %16 = load i32, i32* %c_cflag, align 8, !dbg !6663
  %and = and i32 %16, 2048, !dbg !6663
  %tobool13 = icmp ne i32 %and, 0, !dbg !6663
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !6664

if.then14:                                        ; preds = %land.lhs.true
  %17 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6665
  call void @tty_hangup(%struct.tty_struct* %17) #8, !dbg !6666
  br label %if.end15, !dbg !6666

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then10
  ret void, !dbg !6667
}

; Function Attrs: noredzone
declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct*) #2

; Function Attrs: noredzone
declare dso_local void @tty_ldisc_deref(%struct.tty_ldisc*) #2

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #2

; Function Attrs: noredzone
declare dso_local void @tty_hangup(%struct.tty_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_serial_generic_resume(%struct.usb_serial* %serial) #0 !dbg !6668 {
entry:
  %serial.addr = alloca %struct.usb_serial*, align 8
  %port = alloca %struct.usb_serial_port*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.usb_serial* %serial, %struct.usb_serial** %serial.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_serial** %serial.addr, metadata !6669, metadata !DIExpression()), !dbg !6670
  call void @llvm.dbg.declare(metadata %struct.usb_serial_port** %port, metadata !6671, metadata !DIExpression()), !dbg !6672
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6673, metadata !DIExpression()), !dbg !6674
  call void @llvm.dbg.declare(metadata i32* %c, metadata !6675, metadata !DIExpression()), !dbg !6676
  store i32 0, i32* %c, align 4, !dbg !6676
  call void @llvm.dbg.declare(metadata i32* %r, metadata !6677, metadata !DIExpression()), !dbg !6678
  store i32 0, i32* %i, align 4, !dbg !6679
  br label %for.cond, !dbg !6681

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6682
  %1 = load %struct.usb_serial*, %struct.usb_serial** %serial.addr, align 8, !dbg !6684
  %num_ports = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %1, i32 0, i32 4, !dbg !6685
  %2 = load i8, i8* %num_ports, align 1, !dbg !6685
  %conv = zext i8 %2 to i32, !dbg !6684
  %cmp = icmp slt i32 %0, %conv, !dbg !6686
  br i1 %cmp, label %for.body, label %for.end, !dbg !6687

for.body:                                         ; preds = %for.cond
  %3 = load %struct.usb_serial*, %struct.usb_serial** %serial.addr, align 8, !dbg !6688
  %port2 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %3, i32 0, i32 10, !dbg !6690
  %4 = load i32, i32* %i, align 4, !dbg !6691
  %idxprom = sext i32 %4 to i64, !dbg !6688
  %arrayidx = getelementptr [16 x %struct.usb_serial_port*], [16 x %struct.usb_serial_port*]* %port2, i64 0, i64 %idxprom, !dbg !6688
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %arrayidx, align 8, !dbg !6688
  store %struct.usb_serial_port* %5, %struct.usb_serial_port** %port, align 8, !dbg !6692
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6693
  %port3 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %6, i32 0, i32 1, !dbg !6695
  %call = call zeroext i1 @tty_port_initialized(%struct.tty_port* %port3) #8, !dbg !6696
  br i1 %call, label %if.end, label %if.then, !dbg !6697

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !6698

if.end:                                           ; preds = %for.body
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6699
  %bulk_in_size = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %7, i32 0, i32 13, !dbg !6701
  %8 = load i32, i32* %bulk_in_size, align 8, !dbg !6701
  %tobool = icmp ne i32 %8, 0, !dbg !6699
  br i1 %tobool, label %if.then4, label %if.end10, !dbg !6702

if.then4:                                         ; preds = %if.end
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6703
  %call5 = call i32 @usb_serial_generic_submit_read_urbs(%struct.usb_serial_port* %9, i32 3072) #8, !dbg !6705
  store i32 %call5, i32* %r, align 4, !dbg !6706
  %10 = load i32, i32* %r, align 4, !dbg !6707
  %cmp6 = icmp slt i32 %10, 0, !dbg !6709
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !6710

if.then8:                                         ; preds = %if.then4
  %11 = load i32, i32* %c, align 4, !dbg !6711
  %inc = add i32 %11, 1, !dbg !6711
  store i32 %inc, i32* %c, align 4, !dbg !6711
  br label %if.end9, !dbg !6712

if.end9:                                          ; preds = %if.then8, %if.then4
  br label %if.end10, !dbg !6713

if.end10:                                         ; preds = %if.end9, %if.end
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6714
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 20, !dbg !6716
  %13 = load i32, i32* %bulk_out_size, align 8, !dbg !6716
  %tobool11 = icmp ne i32 %13, 0, !dbg !6714
  br i1 %tobool11, label %if.then12, label %if.end19, !dbg !6717

if.then12:                                        ; preds = %if.end10
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %port, align 8, !dbg !6718
  %call13 = call i32 @usb_serial_generic_write_start(%struct.usb_serial_port* %14, i32 3072) #8, !dbg !6720
  store i32 %call13, i32* %r, align 4, !dbg !6721
  %15 = load i32, i32* %r, align 4, !dbg !6722
  %cmp14 = icmp slt i32 %15, 0, !dbg !6724
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !6725

if.then16:                                        ; preds = %if.then12
  %16 = load i32, i32* %c, align 4, !dbg !6726
  %inc17 = add i32 %16, 1, !dbg !6726
  store i32 %inc17, i32* %c, align 4, !dbg !6726
  br label %if.end18, !dbg !6727

if.end18:                                         ; preds = %if.then16, %if.then12
  br label %if.end19, !dbg !6728

if.end19:                                         ; preds = %if.end18, %if.end10
  br label %for.inc, !dbg !6729

for.inc:                                          ; preds = %if.end19, %if.then
  %17 = load i32, i32* %i, align 4, !dbg !6730
  %inc20 = add i32 %17, 1, !dbg !6730
  store i32 %inc20, i32* %i, align 4, !dbg !6730
  br label %for.cond, !dbg !6731, !llvm.loop !6732

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %c, align 4, !dbg !6734
  %tobool21 = icmp ne i32 %18, 0, !dbg !6734
  %19 = zext i1 %tobool21 to i64, !dbg !6734
  %cond = select i1 %tobool21, i32 -5, i32 0, !dbg !6734
  ret i32 %cond, !dbg !6735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !6736 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6740, metadata !DIExpression()), !dbg !6741
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6742, metadata !DIExpression()), !dbg !6743
  ret i1 true, !dbg !6744
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !6745 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6749, metadata !DIExpression()), !dbg !6750
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6751, metadata !DIExpression()), !dbg !6752
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6753, metadata !DIExpression()), !dbg !6754
  ret void, !dbg !6755
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !6756 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6757, metadata !DIExpression()), !dbg !6759
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6760, metadata !DIExpression()), !dbg !6759
  %0 = load i64, i64* %__edi, align 8, !dbg !6759
  store i64 %0, i64* %__edi, align 8, !dbg !6759
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6761, metadata !DIExpression()), !dbg !6759
  %1 = load i64, i64* %__esi, align 8, !dbg !6759
  store i64 %1, i64* %__esi, align 8, !dbg !6759
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6762, metadata !DIExpression()), !dbg !6759
  %2 = load i64, i64* %__edx, align 8, !dbg !6759
  store i64 %2, i64* %__edx, align 8, !dbg !6759
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6763, metadata !DIExpression()), !dbg !6759
  %3 = load i64, i64* %__ecx, align 8, !dbg !6759
  store i64 %3, i64* %__ecx, align 8, !dbg !6759
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6764, metadata !DIExpression()), !dbg !6759
  %4 = load i64, i64* %__eax, align 8, !dbg !6759
  store i64 %4, i64* %__eax, align 8, !dbg !6759
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6759
  %6 = call i64 @llvm.read_register.i64(metadata !4830), !dbg !6765
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !6765, !srcloc !6768
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6765
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6765
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6765
  call void @llvm.write_register.i64(metadata !4830, i64 %asmresult1), !dbg !6765
  %8 = load i64, i64* %__eax, align 8, !dbg !6765
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6769, metadata !DIExpression()), !dbg !6771
  store i64 -1, i64* %__mask, align 8, !dbg !6771
  %9 = load i64, i64* %__mask, align 8, !dbg !6771
  store i64 %9, i64* %tmp, align 8, !dbg !6771
  %10 = load i64, i64* %tmp, align 8, !dbg !6771
  %and = and i64 %8, %10, !dbg !6765
  store i64 %and, i64* %__ret, align 8, !dbg !6765
  %11 = load i64, i64* %__ret, align 8, !dbg !6759
  store i64 %11, i64* %tmp2, align 8, !dbg !6772
  %12 = load i64, i64* %tmp2, align 8, !dbg !6759
  ret i64 %12, !dbg !6773
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6774 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6775, metadata !DIExpression()), !dbg !6777
  %0 = load i64, i64* %__edi, align 8, !dbg !6777
  store i64 %0, i64* %__edi, align 8, !dbg !6777
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6778, metadata !DIExpression()), !dbg !6777
  %1 = load i64, i64* %__esi, align 8, !dbg !6777
  store i64 %1, i64* %__esi, align 8, !dbg !6777
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6779, metadata !DIExpression()), !dbg !6777
  %2 = load i64, i64* %__edx, align 8, !dbg !6777
  store i64 %2, i64* %__edx, align 8, !dbg !6777
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6780, metadata !DIExpression()), !dbg !6777
  %3 = load i64, i64* %__ecx, align 8, !dbg !6777
  store i64 %3, i64* %__ecx, align 8, !dbg !6777
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6781, metadata !DIExpression()), !dbg !6777
  %4 = load i64, i64* %__eax, align 8, !dbg !6777
  store i64 %4, i64* %__eax, align 8, !dbg !6777
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6777
  %6 = call i64 @llvm.read_register.i64(metadata !4830), !dbg !6777
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !6777, !srcloc !6782
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6777
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6777
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6777
  call void @llvm.write_register.i64(metadata !4830, i64 %asmresult1), !dbg !6777
  ret void, !dbg !6783
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !6784 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6787, metadata !DIExpression()), !dbg !6788
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6789, metadata !DIExpression()), !dbg !6791
  %0 = load i64, i64* %__edi, align 8, !dbg !6791
  store i64 %0, i64* %__edi, align 8, !dbg !6791
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6792, metadata !DIExpression()), !dbg !6791
  %1 = load i64, i64* %__esi, align 8, !dbg !6791
  store i64 %1, i64* %__esi, align 8, !dbg !6791
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6793, metadata !DIExpression()), !dbg !6791
  %2 = load i64, i64* %__edx, align 8, !dbg !6791
  store i64 %2, i64* %__edx, align 8, !dbg !6791
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6794, metadata !DIExpression()), !dbg !6791
  %3 = load i64, i64* %__ecx, align 8, !dbg !6791
  store i64 %3, i64* %__ecx, align 8, !dbg !6791
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6795, metadata !DIExpression()), !dbg !6791
  %4 = load i64, i64* %__eax, align 8, !dbg !6791
  store i64 %4, i64* %__eax, align 8, !dbg !6791
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6791
  %6 = call i64 @llvm.read_register.i64(metadata !4830), !dbg !6791
  %7 = load i64, i64* %f.addr, align 8, !dbg !6791
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !6791, !srcloc !6796
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6791
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6791
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6791
  call void @llvm.write_register.i64(metadata !4830, i64 %asmresult1), !dbg !6791
  ret void, !dbg !6797
}

; Function Attrs: noredzone
declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_tsk_thread_flag(%struct.task_struct* %tsk, i32 %flag) #0 !dbg !6798 {
entry:
  %tsk.addr = alloca %struct.task_struct*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.task_struct* %tsk, %struct.task_struct** %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %tsk.addr, metadata !6801, metadata !DIExpression()), !dbg !6802
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !6803, metadata !DIExpression()), !dbg !6804
  %0 = load %struct.task_struct*, %struct.task_struct** %tsk.addr, align 8, !dbg !6805
  %call = call %struct.thread_info* @task_thread_info(%struct.task_struct* %0) #8, !dbg !6806
  %1 = load i32, i32* %flag.addr, align 4, !dbg !6807
  %call1 = call i32 @test_ti_thread_flag(%struct.thread_info* %call, i32 %1) #8, !dbg !6808
  ret i32 %call1, !dbg !6809
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #0 !dbg !6810 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !6815, metadata !DIExpression()), !dbg !6816
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !6817, metadata !DIExpression()), !dbg !6818
  %0 = load i32, i32* %flag.addr, align 4, !dbg !6819
  %conv = sext i32 %0 to i64, !dbg !6819
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !6820
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !6821
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %flags) #8, !dbg !6822
  %conv1 = zext i1 %call to i32, !dbg !6822
  ret i32 %conv1, !dbg !6823
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.thread_info* @task_thread_info(%struct.task_struct* %task) #0 !dbg !6824 {
entry:
  %task.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %task, %struct.task_struct** %task.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %task.addr, metadata !6827, metadata !DIExpression()), !dbg !6828
  %0 = load %struct.task_struct*, %struct.task_struct** %task.addr, align 8, !dbg !6829
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 0, !dbg !6830
  ret %struct.thread_info* %thread_info, !dbg !6831
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 %nr, i64* %addr) #0 !dbg !6832 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6833, metadata !DIExpression()), !dbg !6835
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6837, metadata !DIExpression()), !dbg !6838
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !6839, metadata !DIExpression()), !dbg !6841
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5415, metadata !DIExpression()), !dbg !6842
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5419, metadata !DIExpression()), !dbg !6844
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6845, metadata !DIExpression()), !dbg !6846
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6847, metadata !DIExpression()), !dbg !6848
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6849
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6850
  %div = sdiv i64 %1, 64, !dbg !6850
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6851
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6849
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6852
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6853
  %conv.i = trunc i64 %4 to i32, !dbg !6853
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !6854
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6855
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6855
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #9, !dbg !6855
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6856
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6857
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !6841
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !6841
  %11 = call i8 asm sideeffect " btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #7, !dbg !6841, !srcloc !6858
  store i8 %11, i8* %c.i, align 1, !dbg !6841
  %12 = load i8, i8* %c.i, align 1, !dbg !6841
  %tobool.i = trunc i8 %12 to i1, !dbg !6841
  %frombool.i = zext i1 %tobool.i to i8, !dbg !6841
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !6841
  %13 = load i8, i8* %tmp.i, align 1, !dbg !6841
  %tobool1.i = trunc i8 %13 to i1, !dbg !6841
  ret i1 %tobool1.i, !dbg !6859
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @flag_buf_ptr(%struct.tty_buffer* %b, i32 %ofs) #0 !dbg !6860 {
entry:
  %b.addr = alloca %struct.tty_buffer*, align 8
  %ofs.addr = alloca i32, align 4
  store %struct.tty_buffer* %b, %struct.tty_buffer** %b.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_buffer** %b.addr, metadata !6863, metadata !DIExpression()), !dbg !6864
  store i32 %ofs, i32* %ofs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ofs.addr, metadata !6865, metadata !DIExpression()), !dbg !6866
  %0 = load %struct.tty_buffer*, %struct.tty_buffer** %b.addr, align 8, !dbg !6867
  %1 = load i32, i32* %ofs.addr, align 4, !dbg !6868
  %call = call i8* @char_buf_ptr(%struct.tty_buffer* %0, i32 %1) #8, !dbg !6869
  %2 = load %struct.tty_buffer*, %struct.tty_buffer** %b.addr, align 8, !dbg !6870
  %size = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %2, i32 0, i32 2, !dbg !6871
  %3 = load i32, i32* %size, align 4, !dbg !6871
  %idx.ext = sext i32 %3 to i64, !dbg !6872
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext, !dbg !6872
  ret i8* %add.ptr, !dbg !6873
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @char_buf_ptr(%struct.tty_buffer* %b, i32 %ofs) #0 !dbg !6874 {
entry:
  %b.addr = alloca %struct.tty_buffer*, align 8
  %ofs.addr = alloca i32, align 4
  store %struct.tty_buffer* %b, %struct.tty_buffer** %b.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_buffer** %b.addr, metadata !6877, metadata !DIExpression()), !dbg !6878
  store i32 %ofs, i32* %ofs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ofs.addr, metadata !6879, metadata !DIExpression()), !dbg !6880
  %0 = load %struct.tty_buffer*, %struct.tty_buffer** %b.addr, align 8, !dbg !6881
  %data = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i32 0, i32 6, !dbg !6882
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %data, i64 0, i64 0, !dbg !6881
  %1 = bitcast i64* %arraydecay to i8*, !dbg !6883
  %2 = load i32, i32* %ofs.addr, align 4, !dbg !6884
  %idx.ext = sext i32 %2 to i64, !dbg !6885
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !6885
  ret i8* %add.ptr, !dbg !6886
}

; Function Attrs: noredzone
declare dso_local i32 @__tty_insert_flip_char(%struct.tty_port*, i8 zeroext, i8 signext) #2

; Function Attrs: noredzone
declare dso_local i32 @tty_insert_flip_string_fixed_flag(%struct.tty_port*, i8*, i8 signext, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !6887 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6888, metadata !DIExpression()), !dbg !6889
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6890, metadata !DIExpression()), !dbg !6891
  ret i1 true, !dbg !6892
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { noredzone nounwind }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind readnone }

!llvm.dbg.cu = !{!4811}
!llvm.named.register.rsp = !{!4830}
!llvm.module.flags = !{!4831, !4832, !4833, !4834}
!llvm.ident = !{!4835}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__print_once", scope: !2, file: !3, line: 188, type: !352, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "usb_serial_generic_write_start", scope: !3, file: !3, line: 154, type: !4, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!3 = !DIFile(filename: "drivers/usb/serial/generic.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !657}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_serial_port", file: !9, line: 72, size: 10816, elements: !10)
!9 = !DIFile(filename: "./include/linux/usb/serial.h", directory: "/home/lizy2001/genbc/linux")
!10 = !{!11, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4756, !4758, !4759, !4760, !4761, !4762, !4786, !4787, !4788, !4789, !4790, !4805, !4806, !4807, !4808, !4809, !4810}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !8, file: !9, line: 73, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_serial", file: !9, line: 146, size: 1600, elements: !14)
!14 = !{!15, !4490, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4736, !4737, !4738}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !13, file: !9, line: 147, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !18, line: 631, size: 10624, elements: !19)
!18 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !26, !32, !45, !55, !56, !57, !60, !61, !65, !66, !4221, !4261, !4262, !4279, !4340, !4428, !4429, !4431, !4432, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4467, !4468, !4474, !4479, !4486, !4487, !4488, !4489}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !17, file: !18, line: 632, baseType: !6, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !17, file: !18, line: 633, baseType: !22, size: 128, offset: 32)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !24)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{!25}
!25 = !DISubrange(count: 16)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !17, file: !18, line: 634, baseType: !27, size: 32, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !28, line: 21, baseType: !29)
!28 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !30, line: 27, baseType: !31)
!30 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !17, file: !18, line: 635, baseType: !33, size: 32, offset: 192)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !34, line: 1156, baseType: !31, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44}
!36 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!37 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!38 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!39 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!40 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!41 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!42 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!43 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!44 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !17, file: !18, line: 636, baseType: !46, size: 32, offset: 224)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !34, line: 1146, baseType: !31, size: 32, elements: !47)
!47 = !{!48, !49, !50, !51, !52, !53, !54}
!48 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!51 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!52 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!53 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!54 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !17, file: !18, line: 637, baseType: !31, size: 32, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !17, file: !18, line: 638, baseType: !31, size: 32, offset: 288)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !17, file: !18, line: 640, baseType: !58, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !18, line: 474, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !17, file: !18, line: 641, baseType: !6, size: 32, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !17, file: !18, line: 643, baseType: !62, size: 64, offset: 416)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 2)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !17, file: !18, line: 645, baseType: !16, size: 64, offset: 512)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !17, file: !18, line: 646, baseType: !67, size: 64, offset: 576)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !18, line: 424, size: 960, elements: !69)
!69 = !{!70, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4215, !4216, !4217, !4218, !4219, !4220}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !68, file: !18, line: 425, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !74)
!73 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !3728, !3729, !3732, !3733, !3785, !3880, !3881, !3882, !3883, !3884, !3899, !4017, !4030, !4033, !4034, !4038, !4040, !4041, !4042, !4046, !4052, !4053, !4056, !4060, !4150, !4151, !4152, !4153, !4154, !4186, !4187, !4188, !4191, !4194, !4195, !4196, !4197}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !72, file: !73, line: 462, baseType: !76, size: 512)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !77, line: 64, size: 512, elements: !78)
!77 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!78 = !{!79, !82, !89, !91, !151, !3594, !3722, !3723, !3724, !3725, !3726, !3727}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !76, file: !77, line: 65, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !76, file: !77, line: 66, baseType: !83, size: 128, offset: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !84, line: 178, size: 128, elements: !85)
!84 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!85 = !{!86, !88}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !84, line: 179, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !83, file: !84, line: 179, baseType: !87, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !76, file: !77, line: 67, baseType: !90, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !76, file: !77, line: 68, baseType: !92, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !77, line: 192, size: 704, elements: !94)
!94 = !{!95, !96, !112, !113}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !93, file: !77, line: 193, baseType: !83, size: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !93, file: !77, line: 194, baseType: !97, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !98, line: 83, baseType: !99)
!98 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !98, line: 71, elements: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !99, file: !98, line: 72, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !99, file: !98, line: 72, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !102, file: !98, line: 73, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !98, line: 20, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !105, file: !98, line: 21, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !109, line: 25, baseType: !110)
!109 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 25, elements: !111)
!111 = !{}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !93, file: !77, line: 195, baseType: !76, size: 512, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !93, file: !77, line: 196, baseType: !114, size: 64, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !77, line: 156, size: 192, elements: !117)
!117 = !{!118, !123, !128}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !116, file: !77, line: 157, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!6, !92, !90}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !77, line: 158, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!80, !92, !90}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !116, file: !77, line: 159, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!6, !92, !90, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !77, line: 148, size: 20736, elements: !135)
!135 = !{!136, !141, !145, !146, !150}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !134, file: !77, line: 149, baseType: !137, size: 192)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 192, elements: !139)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!139 = !{!140}
!140 = !DISubrange(count: 3)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !134, file: !77, line: 150, baseType: !142, size: 4096, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 4096, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !134, file: !77, line: 151, baseType: !6, size: 32, offset: 4288)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !134, file: !77, line: 152, baseType: !147, size: 16384, offset: 4320)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 16384, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 2048)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !134, file: !77, line: 153, baseType: !6, size: 32, offset: 20704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !76, file: !77, line: 69, baseType: !152, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !77, line: 138, size: 448, elements: !154)
!154 = !{!155, !159, !189, !191, !3550, !3584, !3588}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !153, file: !77, line: 139, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !90}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !153, file: !77, line: 140, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !163, line: 230, size: 128, elements: !164)
!163 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!164 = !{!165, !181}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !162, file: !163, line: 231, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!169, !90, !174, !138}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !84, line: 60, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !171, line: 73, baseType: !172)
!171 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !171, line: 15, baseType: !173)
!173 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !163, line: 30, size: 128, elements: !176)
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !163, line: 31, baseType: !80, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !175, file: !163, line: 32, baseType: !179, size: 16, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !84, line: 19, baseType: !180)
!180 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !162, file: !163, line: 232, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!169, !90, !174, !80, !185}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 55, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !171, line: 72, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !171, line: 16, baseType: !188)
!188 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !153, file: !77, line: 141, baseType: !190, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !153, file: !77, line: 142, baseType: !192, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !163, line: 84, size: 320, elements: !196)
!196 = !{!197, !198, !202, !3547, !3548}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !163, line: 85, baseType: !80, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !195, file: !163, line: 86, baseType: !199, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!179, !90, !174, !6}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !195, file: !163, line: 88, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!179, !90, !206, !6}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !163, line: 168, size: 448, elements: !208)
!208 = !{!209, !210, !211, !213, !3542, !3543}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !207, file: !163, line: 169, baseType: !175, size: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !207, file: !163, line: 170, baseType: !185, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !207, file: !163, line: 171, baseType: !212, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !207, file: !163, line: 172, baseType: !214, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!169, !217, !90, !206, !138, !393, !185}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !219, line: 916, size: 1856, align: 32, elements: !220)
!219 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!220 = !{!221, !239, !3492, !3493, !3494, !3495, !3504, !3505, !3506, !3507, !3508, !3509, !3525, !3526, !3535, !3536, !3537, !3538, !3539, !3540, !3541}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !218, file: !219, line: 920, baseType: !222, size: 128)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !219, line: 917, size: 128, elements: !223)
!223 = !{!224, !230}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !222, file: !219, line: 918, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !226, line: 58, size: 64, elements: !227)
!226 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !226, line: 59, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !222, file: !219, line: 919, baseType: !231, size: 128, align: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !84, line: 216, size: 128, align: 64, elements: !232)
!232 = !{!233, !235}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !84, line: 217, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !231, file: !84, line: 218, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !234}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !218, file: !219, line: 921, baseType: !240, size: 128, offset: 128)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !241, line: 8, size: 128, elements: !242)
!241 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!242 = !{!243, !247}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !240, file: !241, line: 9, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !246, line: 18, flags: DIFlagFwdDecl)
!246 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!247 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !240, file: !241, line: 10, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !246, line: 89, size: 1536, elements: !250)
!250 = !{!251, !252, !262, !270, !271, !290, !3460, !3462, !3474, !3475, !3476, !3477, !3478, !3484, !3485, !3486}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !249, file: !246, line: 91, baseType: !31, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !249, file: !246, line: 92, baseType: !253, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !254, line: 277, baseType: !255)
!254 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !254, line: 277, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !255, file: !254, line: 277, baseType: !258, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !254, line: 70, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !254, line: 65, size: 32, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !259, file: !254, line: 66, baseType: !31, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !249, file: !246, line: 93, baseType: !263, size: 128, offset: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !264, line: 38, size: 128, elements: !265)
!264 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!265 = !{!266, !268}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !264, line: 39, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !263, file: !264, line: 39, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !249, file: !246, line: 94, baseType: !248, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !249, file: !246, line: 95, baseType: !272, size: 128, offset: 256)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !246, line: 47, size: 128, elements: !273)
!273 = !{!274, !286}
!274 = !DIDerivedType(tag: DW_TAG_member, scope: !272, file: !246, line: 48, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !272, file: !246, line: 48, size: 64, elements: !276)
!276 = !{!277, !282}
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !275, file: !246, line: 49, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !275, file: !246, line: 49, size: 64, elements: !279)
!279 = !{!280, !281}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !278, file: !246, line: 50, baseType: !27, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !278, file: !246, line: 50, baseType: !27, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !275, file: !246, line: 52, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !28, line: 23, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !30, line: 31, baseType: !285)
!285 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !246, line: 54, baseType: !287, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !249, file: !246, line: 96, baseType: !291, size: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !219, line: 610, size: 4224, elements: !293)
!293 = !{!294, !295, !296, !304, !311, !312, !460, !3395, !3396, !3397, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3438, !3446, !3447, !3448, !3456, !3457, !3458, !3459}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !292, file: !219, line: 611, baseType: !179, size: 16)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !292, file: !219, line: 612, baseType: !180, size: 16, offset: 16)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !292, file: !219, line: 613, baseType: !297, size: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !298, line: 23, baseType: !299)
!298 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 21, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !299, file: !298, line: 22, baseType: !302, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !84, line: 32, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !171, line: 49, baseType: !31)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !292, file: !219, line: 614, baseType: !305, size: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !298, line: 28, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 26, size: 32, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !306, file: !298, line: 27, baseType: !309, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !84, line: 33, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !171, line: 50, baseType: !31)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !292, file: !219, line: 615, baseType: !31, size: 32, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !292, file: !219, line: 622, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !219, line: 1864, size: 1536, align: 512, elements: !316)
!316 = !{!317, !321, !334, !338, !344, !348, !354, !358, !362, !366, !370, !371, !377, !381, !407, !436, !440, !446, !451, !455, !456}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !315, file: !219, line: 1865, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!248, !291, !248, !31}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !315, file: !219, line: 1866, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!80, !248, !291, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !327, line: 10, size: 128, elements: !328)
!327 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!328 = !{!329, !333}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !326, file: !327, line: 11, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !212}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !326, file: !327, line: 12, baseType: !212, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !315, file: !219, line: 1867, baseType: !335, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!6, !291, !6}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !315, file: !219, line: 1868, baseType: !339, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!342, !291, !6}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !219, line: 581, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !315, file: !219, line: 1870, baseType: !345, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!6, !248, !138, !6}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !315, file: !219, line: 1872, baseType: !349, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!6, !291, !248, !179, !352}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !84, line: 30, baseType: !353)
!353 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !315, file: !219, line: 1873, baseType: !355, size: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!6, !248, !291, !248}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !315, file: !219, line: 1874, baseType: !359, size: 64, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!6, !291, !248}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !315, file: !219, line: 1875, baseType: !363, size: 64, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!6, !291, !248, !80}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !315, file: !219, line: 1876, baseType: !367, size: 64, offset: 576)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!6, !291, !248, !179}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !315, file: !219, line: 1877, baseType: !359, size: 64, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !315, file: !219, line: 1878, baseType: !372, size: 64, offset: 704)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!6, !291, !248, !179, !375}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !84, line: 16, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !84, line: 13, baseType: !27)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !315, file: !219, line: 1879, baseType: !378, size: 64, offset: 768)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!6, !291, !248, !291, !248, !31}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !315, file: !219, line: 1881, baseType: !382, size: 64, offset: 832)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!6, !248, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !219, line: 219, size: 640, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !396, !404, !405, !406}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !386, file: !219, line: 220, baseType: !31, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !386, file: !219, line: 221, baseType: !179, size: 16, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !386, file: !219, line: 222, baseType: !297, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !386, file: !219, line: 223, baseType: !305, size: 32, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !386, file: !219, line: 224, baseType: !393, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !84, line: 46, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !171, line: 88, baseType: !395)
!395 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !386, file: !219, line: 225, baseType: !397, size: 128, offset: 192)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !398, line: 13, size: 128, elements: !399)
!398 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!399 = !{!400, !403}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !397, file: !398, line: 14, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !398, line: 8, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !30, line: 30, baseType: !395)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !397, file: !398, line: 15, baseType: !173, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !386, file: !219, line: 226, baseType: !397, size: 128, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !386, file: !219, line: 227, baseType: !397, size: 128, offset: 448)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !386, file: !219, line: 234, baseType: !217, size: 64, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !315, file: !219, line: 1882, baseType: !408, size: 64, offset: 896)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!6, !411, !413, !27, !31}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !415, line: 22, size: 1152, elements: !416)
!415 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!416 = !{!417, !418, !419, !420, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !414, file: !415, line: 23, baseType: !27, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !414, file: !415, line: 24, baseType: !179, size: 16, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !414, file: !415, line: 25, baseType: !31, size: 32, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !414, file: !415, line: 26, baseType: !421, size: 32, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !84, line: 104, baseType: !27)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !414, file: !415, line: 27, baseType: !283, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !414, file: !415, line: 28, baseType: !283, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !414, file: !415, line: 37, baseType: !283, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !414, file: !415, line: 38, baseType: !375, size: 32, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !414, file: !415, line: 39, baseType: !375, size: 32, offset: 352)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !414, file: !415, line: 40, baseType: !297, size: 32, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !414, file: !415, line: 41, baseType: !305, size: 32, offset: 416)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !414, file: !415, line: 42, baseType: !393, size: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !414, file: !415, line: 43, baseType: !397, size: 128, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !414, file: !415, line: 44, baseType: !397, size: 128, offset: 640)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !414, file: !415, line: 45, baseType: !397, size: 128, offset: 768)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !414, file: !415, line: 46, baseType: !397, size: 128, offset: 896)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !414, file: !415, line: 47, baseType: !283, size: 64, offset: 1024)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !414, file: !415, line: 48, baseType: !283, size: 64, offset: 1088)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !315, file: !219, line: 1883, baseType: !437, size: 64, offset: 960)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!169, !248, !138, !185}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !315, file: !219, line: 1884, baseType: !441, size: 64, offset: 1024)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!6, !291, !444, !283, !283}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !219, line: 50, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !315, file: !219, line: 1886, baseType: !447, size: 64, offset: 1088)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!6, !291, !450, !6}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !315, file: !219, line: 1887, baseType: !452, size: 64, offset: 1152)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!6, !291, !248, !217, !31, !179}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !315, file: !219, line: 1890, baseType: !367, size: 64, offset: 1216)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !315, file: !219, line: 1891, baseType: !457, size: 64, offset: 1280)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!6, !291, !342, !6}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !292, file: !219, line: 623, baseType: !461, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !219, line: 1416, size: 9472, elements: !463)
!463 = !{!464, !465, !466, !467, !468, !469, !518, !2996, !3084, !3167, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3183, !3187, !3188, !3191, !3192, !3195, !3196, !3197, !3238, !3265, !3266, !3267, !3268, !3269, !3270, !3273, !3275, !3282, !3283, !3285, !3286, !3287, !3346, !3347, !3362, !3363, !3364, !3365, !3366, !3369, !3370, !3371, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !462, file: !219, line: 1417, baseType: !83, size: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !462, file: !219, line: 1418, baseType: !375, size: 32, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !462, file: !219, line: 1419, baseType: !289, size: 8, offset: 160)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !462, file: !219, line: 1420, baseType: !188, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !462, file: !219, line: 1421, baseType: !393, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !462, file: !219, line: 1422, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !219, line: 2228, size: 576, elements: !472)
!472 = !{!473, !474, !475, !481, !485, !489, !493, !497, !498, !508, !511, !512, !513, !515, !516, !517}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !471, file: !219, line: 2229, baseType: !80, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !471, file: !219, line: 2230, baseType: !6, size: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !471, file: !219, line: 2238, baseType: !476, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!6, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !219, line: 69, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !471, file: !219, line: 2239, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !219, line: 70, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !471, file: !219, line: 2240, baseType: !486, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!248, !470, !6, !80, !212}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !471, file: !219, line: 2242, baseType: !490, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !461}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !471, file: !219, line: 2243, baseType: !494, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !496, line: 76, flags: DIFlagFwdDecl)
!496 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !219, line: 2244, baseType: !470, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !471, file: !219, line: 2245, baseType: !499, size: 64, offset: 512)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !84, line: 182, size: 64, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !499, file: !84, line: 183, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !84, line: 186, size: 128, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !84, line: 187, baseType: !502, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !503, file: !84, line: 187, baseType: !507, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !471, file: !219, line: 2247, baseType: !509, offset: 576)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !510, line: 187, elements: !111)
!510 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!511 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !471, file: !219, line: 2248, baseType: !509, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !471, file: !219, line: 2249, baseType: !509, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !471, file: !219, line: 2250, baseType: !514, offset: 576)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, elements: !139)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !471, file: !219, line: 2252, baseType: !509, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !471, file: !219, line: 2253, baseType: !509, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !471, file: !219, line: 2254, baseType: !509, offset: 576)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !462, file: !219, line: 1423, baseType: !519, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !219, line: 1935, size: 1472, elements: !522)
!522 = !{!523, !527, !531, !532, !536, !542, !546, !547, !548, !552, !556, !557, !558, !559, !565, !570, !571, !627, !628, !629, !630, !2980, !2995}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !521, file: !219, line: 1936, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!291, !461}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !521, file: !219, line: 1937, baseType: !528, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !291}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !521, file: !219, line: 1938, baseType: !528, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !521, file: !219, line: 1940, baseType: !533, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !291, !6}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !521, file: !219, line: 1941, baseType: !537, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!6, !291, !540}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !219, line: 289, flags: DIFlagFwdDecl)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !521, file: !219, line: 1942, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!6, !291}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !521, file: !219, line: 1943, baseType: !528, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !521, file: !219, line: 1944, baseType: !490, size: 64, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !521, file: !219, line: 1945, baseType: !549, size: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!6, !461, !6}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !521, file: !219, line: 1946, baseType: !553, size: 64, offset: 576)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!6, !461}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !521, file: !219, line: 1947, baseType: !553, size: 64, offset: 640)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !521, file: !219, line: 1948, baseType: !553, size: 64, offset: 704)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !521, file: !219, line: 1949, baseType: !553, size: 64, offset: 768)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !521, file: !219, line: 1950, baseType: !560, size: 64, offset: 832)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!6, !248, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !219, line: 57, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !521, file: !219, line: 1951, baseType: !566, size: 64, offset: 896)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!6, !461, !569, !138}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !521, file: !219, line: 1952, baseType: !490, size: 64, offset: 960)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !521, file: !219, line: 1954, baseType: !572, size: 64, offset: 1024)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!6, !575, !248}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !577, line: 16, size: 896, elements: !578)
!577 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !600, !622, !623, !626}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !576, file: !577, line: 17, baseType: !138, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !576, file: !577, line: 18, baseType: !185, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !576, file: !577, line: 19, baseType: !185, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !576, file: !577, line: 20, baseType: !185, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !576, file: !577, line: 21, baseType: !185, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !576, file: !577, line: 22, baseType: !393, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !576, file: !577, line: 23, baseType: !393, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !576, file: !577, line: 24, baseType: !587, size: 192, offset: 448)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !588, line: 53, size: 192, elements: !589)
!588 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!589 = !{!590, !598, !599}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !587, file: !588, line: 54, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !592, line: 13, baseType: !593)
!592 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !84, line: 175, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 173, size: 64, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !594, file: !84, line: 174, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !28, line: 22, baseType: !402)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !587, file: !588, line: 55, baseType: !97, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !587, file: !588, line: 59, baseType: !83, size: 128, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !576, file: !577, line: 25, baseType: !601, size: 64, offset: 640)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !577, line: 31, size: 256, elements: !604)
!604 = !{!605, !610, !614, !618}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !603, file: !577, line: 32, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!212, !575, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !603, file: !577, line: 33, baseType: !611, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !575, !212}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !603, file: !577, line: 34, baseType: !615, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!212, !575, !212, !609}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !603, file: !577, line: 35, baseType: !619, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!6, !575, !212}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !576, file: !577, line: 26, baseType: !6, size: 32, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !576, file: !577, line: 27, baseType: !624, size: 64, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !576, file: !577, line: 28, baseType: !212, size: 64, offset: 832)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !521, file: !219, line: 1955, baseType: !572, size: 64, offset: 1088)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !521, file: !219, line: 1956, baseType: !572, size: 64, offset: 1152)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !521, file: !219, line: 1957, baseType: !572, size: 64, offset: 1216)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !521, file: !219, line: 1963, baseType: !631, size: 64, offset: 1280)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!6, !461, !634, !657}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !636, line: 68, size: 512, align: 128, elements: !637)
!636 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!637 = !{!638, !639, !2972, !2979}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !636, line: 69, baseType: !188, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !636, line: 77, baseType: !640, size: 320, offset: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !636, line: 77, size: 320, elements: !641)
!641 = !{!642, !830, !835, !864, !872, !878, !2896, !2971}
!642 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !636, line: 78, baseType: !643, size: 320)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !636, line: 78, size: 320, elements: !644)
!644 = !{!645, !646, !828, !829}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !643, file: !636, line: 84, baseType: !83, size: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !643, file: !636, line: 86, baseType: !647, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !219, line: 451, size: 1216, align: 64, elements: !649)
!649 = !{!650, !651, !659, !660, !665, !680, !689, !690, !691, !692, !821, !822, !825, !826, !827}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !648, file: !219, line: 452, baseType: !291, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !648, file: !219, line: 453, baseType: !652, size: 128, offset: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !653, line: 292, size: 128, elements: !654)
!653 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!654 = !{!655, !656, !658}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !652, file: !653, line: 293, baseType: !97)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !652, file: !653, line: 295, baseType: !657, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !84, line: 148, baseType: !31)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !652, file: !653, line: 296, baseType: !212, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !648, file: !219, line: 454, baseType: !657, size: 32, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !648, file: !219, line: 455, baseType: !661, size: 32, offset: 224)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !84, line: 168, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 166, size: 32, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !662, file: !84, line: 167, baseType: !6, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !648, file: !219, line: 460, baseType: !666, size: 128, offset: 256)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !667, line: 125, size: 128, elements: !668)
!667 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!668 = !{!669, !679}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !666, file: !667, line: 126, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !667, line: 31, size: 64, elements: !671)
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !670, file: !667, line: 32, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !667, line: 24, size: 192, align: 64, elements: !675)
!675 = !{!676, !677, !678}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !674, file: !667, line: 25, baseType: !188, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !674, file: !667, line: 26, baseType: !673, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !674, file: !667, line: 27, baseType: !673, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !666, file: !667, line: 127, baseType: !673, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !648, file: !219, line: 461, baseType: !681, size: 256, offset: 384)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !682, line: 35, size: 256, elements: !683)
!682 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!683 = !{!684, !685, !686, !688}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !681, file: !682, line: 36, baseType: !591, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !681, file: !682, line: 42, baseType: !591, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !681, file: !682, line: 46, baseType: !687, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !98, line: 29, baseType: !105)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !681, file: !682, line: 47, baseType: !83, size: 128, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !648, file: !219, line: 462, baseType: !188, size: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !648, file: !219, line: 463, baseType: !188, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !648, file: !219, line: 464, baseType: !188, size: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !648, file: !219, line: 465, baseType: !693, size: 64, offset: 832)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !219, line: 367, size: 1408, elements: !696)
!696 = !{!697, !701, !705, !709, !713, !717, !723, !729, !733, !738, !742, !746, !750, !778, !789, !795, !796, !797, !801, !806, !810, !817}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !695, file: !219, line: 368, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!6, !634, !540}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !695, file: !219, line: 369, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!6, !217, !634}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !695, file: !219, line: 372, baseType: !706, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!6, !647, !540}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !695, file: !219, line: 375, baseType: !710, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!6, !634}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !695, file: !219, line: 381, baseType: !714, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!6, !217, !647, !87, !31}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !695, file: !219, line: 383, baseType: !718, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !219, line: 290, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !695, file: !219, line: 385, baseType: !724, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!6, !217, !647, !393, !31, !31, !727, !728}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !695, file: !219, line: 388, baseType: !730, size: 64, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!6, !217, !647, !393, !31, !31, !634, !212}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !695, file: !219, line: 393, baseType: !734, size: 64, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!737, !647, !737}
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !84, line: 125, baseType: !283)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !695, file: !219, line: 394, baseType: !739, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !634, !31, !31}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !695, file: !219, line: 395, baseType: !743, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!6, !634, !657}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !695, file: !219, line: 396, baseType: !747, size: 64, offset: 704)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !634}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !695, file: !219, line: 397, baseType: !751, size: 64, offset: 768)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!169, !754, !776}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !219, line: 320, size: 384, elements: !756)
!756 = !{!757, !758, !759, !763, !764, !765, !768, !769}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !755, file: !219, line: 321, baseType: !217, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !755, file: !219, line: 326, baseType: !393, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !755, file: !219, line: 327, baseType: !760, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !754, !173, !173}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !755, file: !219, line: 328, baseType: !212, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !755, file: !219, line: 329, baseType: !6, size: 32, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !755, file: !219, line: 330, baseType: !766, size: 16, offset: 288)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !28, line: 19, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !30, line: 24, baseType: !180)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !755, file: !219, line: 331, baseType: !766, size: 16, offset: 304)
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !219, line: 332, baseType: !770, size: 64, offset: 320)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !219, line: 332, size: 64, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !770, file: !219, line: 333, baseType: !31, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !770, file: !219, line: 334, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !219, line: 334, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !219, line: 64, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !695, file: !219, line: 402, baseType: !779, size: 64, offset: 832)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!6, !647, !634, !634, !782}
!782 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !783, line: 15, baseType: !31, size: 32, elements: !784)
!783 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!784 = !{!785, !786, !787, !788}
!785 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!786 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!787 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!788 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !695, file: !219, line: 404, baseType: !790, size: 64, offset: 896)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!352, !634, !793}
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !794, line: 305, baseType: !31)
!794 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!795 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !695, file: !219, line: 405, baseType: !747, size: 64, offset: 960)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !695, file: !219, line: 406, baseType: !710, size: 64, offset: 1024)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !695, file: !219, line: 407, baseType: !798, size: 64, offset: 1088)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!6, !634, !188, !188}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !695, file: !219, line: 409, baseType: !802, size: 64, offset: 1152)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !634, !805, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !695, file: !219, line: 410, baseType: !807, size: 64, offset: 1216)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!6, !647, !634}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !695, file: !219, line: 413, baseType: !811, size: 64, offset: 1280)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!6, !814, !217, !816}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !219, line: 61, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !695, file: !219, line: 415, baseType: !818, size: 64, offset: 1344)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !217}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !648, file: !219, line: 466, baseType: !188, size: 64, offset: 896)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !648, file: !219, line: 467, baseType: !823, size: 32, offset: 960)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !824, line: 8, baseType: !27)
!824 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!825 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !648, file: !219, line: 468, baseType: !97, offset: 992)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !648, file: !219, line: 469, baseType: !83, size: 128, offset: 1024)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !648, file: !219, line: 470, baseType: !212, size: 64, offset: 1152)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !643, file: !636, line: 87, baseType: !188, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !643, file: !636, line: 94, baseType: !188, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !636, line: 96, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !636, line: 96, size: 64, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !831, file: !636, line: 101, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !84, line: 143, baseType: !283)
!835 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !636, line: 103, baseType: !836, size: 320)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !636, line: 103, size: 320, elements: !837)
!837 = !{!838, !848, !852, !853}
!838 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !636, line: 104, baseType: !839, size: 128)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !636, line: 104, size: 128, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !839, file: !636, line: 105, baseType: !83, size: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, scope: !839, file: !636, line: 106, baseType: !843, size: 128)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !839, file: !636, line: 106, size: 128, elements: !844)
!844 = !{!845, !846, !847}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !843, file: !636, line: 107, baseType: !634, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !843, file: !636, line: 109, baseType: !6, size: 32, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !843, file: !636, line: 110, baseType: !6, size: 32, offset: 96)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !836, file: !636, line: 117, baseType: !849, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !851, line: 323, flags: DIFlagFwdDecl)
!851 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/lizy2001/genbc/linux")
!852 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !836, file: !636, line: 119, baseType: !212, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !636, line: 120, baseType: !854, size: 64, offset: 256)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !636, line: 120, size: 64, elements: !855)
!855 = !{!856, !857, !858}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !854, file: !636, line: 121, baseType: !212, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !854, file: !636, line: 122, baseType: !188, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !854, file: !636, line: 123, baseType: !859, size: 32)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !854, file: !636, line: 123, size: 32, elements: !860)
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !859, file: !636, line: 124, baseType: !31, size: 16, flags: DIFlagBitField, extraData: i64 0)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !859, file: !636, line: 125, baseType: !31, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !859, file: !636, line: 126, baseType: !31, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !636, line: 130, baseType: !865, size: 192)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !636, line: 130, size: 192, elements: !866)
!866 = !{!867, !868, !869, !870, !871}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !865, file: !636, line: 131, baseType: !188, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !865, file: !636, line: 134, baseType: !289, size: 8, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !865, file: !636, line: 135, baseType: !289, size: 8, offset: 72)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !865, file: !636, line: 136, baseType: !661, size: 32, offset: 96)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !865, file: !636, line: 137, baseType: !31, size: 32, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !636, line: 139, baseType: !873, size: 256)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !636, line: 139, size: 256, elements: !874)
!874 = !{!875, !876, !877}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !873, file: !636, line: 140, baseType: !188, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !873, file: !636, line: 141, baseType: !661, size: 32, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !873, file: !636, line: 143, baseType: !83, size: 128, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !636, line: 145, baseType: !879, size: 256)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !636, line: 145, size: 256, elements: !880)
!880 = !{!881, !882, !885, !886, !2895}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !879, file: !636, line: 146, baseType: !188, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !879, file: !636, line: 147, baseType: !883, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !884, line: 509, baseType: !634)
!884 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !879, file: !636, line: 148, baseType: !188, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !636, line: 149, baseType: !887, size: 64, offset: 192)
!887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !636, line: 149, size: 64, elements: !888)
!888 = !{!889, !2894}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !887, file: !636, line: 150, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !636, line: 388, size: 7296, elements: !892)
!892 = !{!893, !2893}
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !636, line: 389, baseType: !894, size: 7296)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !636, line: 389, size: 7296, elements: !895)
!895 = !{!896, !1020, !1021, !1022, !1026, !1027, !1028, !1029, !1030, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1071, !1079, !1082, !1122, !1123, !2877, !2878, !2881, !2882, !2883, !2886, !2887, !2888, !2891, !2892}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !894, file: !636, line: 390, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !636, line: 305, size: 1472, elements: !899)
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !914, !915, !920, !921, !924, !1014, !1015, !1016, !1017, !1018}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !898, file: !636, line: 308, baseType: !188, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !898, file: !636, line: 309, baseType: !188, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !898, file: !636, line: 313, baseType: !897, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !898, file: !636, line: 313, baseType: !897, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !898, file: !636, line: 315, baseType: !674, size: 192, align: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !898, file: !636, line: 323, baseType: !188, size: 64, offset: 448)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !898, file: !636, line: 327, baseType: !890, size: 64, offset: 512)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !898, file: !636, line: 333, baseType: !908, size: 64, offset: 576)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !884, line: 284, baseType: !909)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !884, line: 284, size: 64, elements: !910)
!910 = !{!911}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !909, file: !884, line: 284, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !913, line: 19, baseType: !188)
!913 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!914 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !898, file: !636, line: 334, baseType: !188, size: 64, offset: 640)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !898, file: !636, line: 343, baseType: !916, size: 256, offset: 704)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !636, line: 340, size: 256, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !916, file: !636, line: 341, baseType: !674, size: 192, align: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !916, file: !636, line: 342, baseType: !188, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !898, file: !636, line: 351, baseType: !83, size: 128, offset: 960)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !898, file: !636, line: 353, baseType: !922, size: 64, offset: 1088)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !636, line: 353, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !898, file: !636, line: 356, baseType: !925, size: 64, offset: 1152)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !927)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !928, line: 557, size: 832, elements: !929)
!928 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!929 = !{!930, !934, !935, !939, !943, !983, !992, !996, !1000, !1001, !1002, !1006, !1010}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !927, file: !928, line: 558, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !897}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !927, file: !928, line: 559, baseType: !931, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !927, file: !928, line: 560, baseType: !936, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!6, !897, !188}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !927, file: !928, line: 561, baseType: !940, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!6, !897}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !927, file: !928, line: 562, baseType: !944, size: 64, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !636, line: 682, baseType: !31)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !928, line: 508, size: 768, elements: !950)
!950 = !{!951, !952, !953, !954, !955, !956, !963, !970, !976, !977, !978, !980, !982}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !949, file: !928, line: 509, baseType: !897, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !949, file: !928, line: 510, baseType: !31, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !949, file: !928, line: 511, baseType: !657, size: 32, offset: 96)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !949, file: !928, line: 512, baseType: !188, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !949, file: !928, line: 513, baseType: !188, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !949, file: !928, line: 514, baseType: !957, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !884, line: 385, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !884, line: 385, size: 64, elements: !960)
!960 = !{!961}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !959, file: !884, line: 385, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !913, line: 15, baseType: !188)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !949, file: !928, line: 516, baseType: !964, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !884, line: 359, baseType: !966)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !884, line: 359, size: 64, elements: !967)
!967 = !{!968}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !966, file: !884, line: 359, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !913, line: 16, baseType: !188)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !949, file: !928, line: 519, baseType: !971, size: 64, offset: 384)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !913, line: 21, baseType: !972)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !913, line: 21, size: 64, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !972, file: !913, line: 21, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !913, line: 14, baseType: !188)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !949, file: !928, line: 521, baseType: !634, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !949, file: !928, line: 522, baseType: !634, size: 64, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !949, file: !928, line: 528, baseType: !979, size: 64, offset: 576)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !949, file: !928, line: 532, baseType: !981, size: 64, offset: 640)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !949, file: !928, line: 536, baseType: !883, size: 64, offset: 704)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !927, file: !928, line: 563, baseType: !984, size: 64, offset: 320)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!947, !948, !987}
!987 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !928, line: 546, baseType: !31, size: 32, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!990 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!991 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !927, file: !928, line: 565, baseType: !993, size: 64, offset: 384)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !948, !188, !188}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !927, file: !928, line: 567, baseType: !997, size: 64, offset: 448)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!188, !897}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !927, file: !928, line: 571, baseType: !944, size: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !927, file: !928, line: 574, baseType: !944, size: 64, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !927, file: !928, line: 579, baseType: !1003, size: 64, offset: 640)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!6, !897, !188, !212, !6, !6}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !927, file: !928, line: 585, baseType: !1007, size: 64, offset: 704)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!80, !897}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !927, file: !928, line: 615, baseType: !1011, size: 64, offset: 768)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!634, !897, !188}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !898, file: !636, line: 359, baseType: !188, size: 64, offset: 1216)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !898, file: !636, line: 361, baseType: !217, size: 64, offset: 1280)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !898, file: !636, line: 362, baseType: !212, size: 64, offset: 1344)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !898, file: !636, line: 365, baseType: !591, size: 64, offset: 1408)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !898, file: !636, line: 373, baseType: !1019, offset: 1472)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !636, line: 296, elements: !111)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !894, file: !636, line: 391, baseType: !670, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !894, file: !636, line: 392, baseType: !283, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !894, file: !636, line: 394, baseType: !1023, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!188, !217, !188, !188, !188, !188}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !894, file: !636, line: 398, baseType: !188, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !894, file: !636, line: 399, baseType: !188, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !894, file: !636, line: 405, baseType: !188, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !894, file: !636, line: 406, baseType: !188, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !894, file: !636, line: 407, baseType: !1031, size: 64, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !884, line: 286, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !884, line: 286, size: 64, elements: !1034)
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1033, file: !884, line: 286, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !913, line: 18, baseType: !188)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !894, file: !636, line: 416, baseType: !661, size: 32, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !894, file: !636, line: 428, baseType: !661, size: 32, offset: 608)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !894, file: !636, line: 437, baseType: !661, size: 32, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !894, file: !636, line: 447, baseType: !661, size: 32, offset: 672)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !894, file: !636, line: 450, baseType: !591, size: 64, offset: 704)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !894, file: !636, line: 452, baseType: !6, size: 32, offset: 768)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !894, file: !636, line: 454, baseType: !97, offset: 800)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !894, file: !636, line: 457, baseType: !681, size: 256, offset: 832)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !894, file: !636, line: 459, baseType: !83, size: 128, offset: 1088)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !894, file: !636, line: 466, baseType: !188, size: 64, offset: 1216)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !894, file: !636, line: 467, baseType: !188, size: 64, offset: 1280)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !894, file: !636, line: 469, baseType: !188, size: 64, offset: 1344)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !894, file: !636, line: 470, baseType: !188, size: 64, offset: 1408)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !894, file: !636, line: 471, baseType: !593, size: 64, offset: 1472)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !894, file: !636, line: 472, baseType: !188, size: 64, offset: 1536)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !894, file: !636, line: 473, baseType: !188, size: 64, offset: 1600)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !894, file: !636, line: 474, baseType: !188, size: 64, offset: 1664)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !894, file: !636, line: 475, baseType: !188, size: 64, offset: 1728)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !894, file: !636, line: 477, baseType: !97, offset: 1792)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !894, file: !636, line: 478, baseType: !188, size: 64, offset: 1792)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !894, file: !636, line: 478, baseType: !188, size: 64, offset: 1856)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !894, file: !636, line: 478, baseType: !188, size: 64, offset: 1920)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !894, file: !636, line: 478, baseType: !188, size: 64, offset: 1984)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !894, file: !636, line: 479, baseType: !188, size: 64, offset: 2048)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !894, file: !636, line: 479, baseType: !188, size: 64, offset: 2112)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !894, file: !636, line: 479, baseType: !188, size: 64, offset: 2176)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !894, file: !636, line: 480, baseType: !188, size: 64, offset: 2240)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !894, file: !636, line: 480, baseType: !188, size: 64, offset: 2304)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !894, file: !636, line: 480, baseType: !188, size: 64, offset: 2368)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !894, file: !636, line: 480, baseType: !188, size: 64, offset: 2432)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !894, file: !636, line: 482, baseType: !1068, size: 2816, offset: 2496)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 2816, elements: !1069)
!1069 = !{!1070}
!1070 = !DISubrange(count: 44)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !894, file: !636, line: 488, baseType: !1072, size: 256, offset: 5312)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1073, line: 60, size: 256, elements: !1074)
!1073 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1072, file: !1073, line: 61, baseType: !1076, size: 256)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 256, elements: !1077)
!1077 = !{!1078}
!1078 = !DISubrange(count: 4)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !894, file: !636, line: 490, baseType: !1080, size: 64, offset: 5568)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !636, line: 490, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !894, file: !636, line: 493, baseType: !1083, size: 896, offset: 5632)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1084, line: 53, baseType: !1085)
!1084 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1084, line: 13, size: 896, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1093, !1094, !1095, !1096, !1116, !1117, !1118}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1085, file: !1084, line: 18, baseType: !283, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1085, file: !1084, line: 28, baseType: !593, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1085, file: !1084, line: 31, baseType: !681, size: 256, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1085, file: !1084, line: 32, baseType: !1091, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1084, line: 32, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1085, file: !1084, line: 37, baseType: !180, size: 16, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1085, file: !1084, line: 40, baseType: !587, size: 192, offset: 512)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1085, file: !1084, line: 41, baseType: !212, size: 64, offset: 704)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1085, file: !1084, line: 42, baseType: !1097, size: 64, offset: 768)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1099)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1100, line: 13, size: 896, elements: !1101)
!1100 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1099, file: !1100, line: 14, baseType: !212, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1099, file: !1100, line: 15, baseType: !188, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1099, file: !1100, line: 17, baseType: !188, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1099, file: !1100, line: 17, baseType: !188, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1099, file: !1100, line: 19, baseType: !173, size: 64, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1099, file: !1100, line: 21, baseType: !173, size: 64, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1099, file: !1100, line: 22, baseType: !173, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1099, file: !1100, line: 23, baseType: !173, size: 64, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1099, file: !1100, line: 24, baseType: !173, size: 64, offset: 512)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1099, file: !1100, line: 25, baseType: !173, size: 64, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1099, file: !1100, line: 26, baseType: !173, size: 64, offset: 640)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1099, file: !1100, line: 27, baseType: !173, size: 64, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1099, file: !1100, line: 28, baseType: !173, size: 64, offset: 768)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1099, file: !1100, line: 29, baseType: !173, size: 64, offset: 832)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1085, file: !1084, line: 44, baseType: !661, size: 32, offset: 832)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1085, file: !1084, line: 50, baseType: !766, size: 16, offset: 864)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1085, file: !1084, line: 51, baseType: !1119, size: 16, offset: 880)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !28, line: 18, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !30, line: 23, baseType: !1121)
!1121 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !894, file: !636, line: 495, baseType: !188, size: 64, offset: 6528)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !894, file: !636, line: 497, baseType: !1124, size: 64, offset: 6592)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !636, line: 381, size: 384, elements: !1126)
!1126 = !{!1127, !1128, !2876}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1125, file: !636, line: 382, baseType: !661, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1125, file: !636, line: 383, baseType: !1129, size: 128, offset: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !636, line: 376, size: 128, elements: !1130)
!1130 = !{!1131, !2874}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1129, file: !636, line: 377, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1134, line: 640, size: 48640, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !{!1136, !1142, !1144, !1145, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1162, !1180, !1191, !1281, !1282, !1283, !1294, !1295, !1297, !1298, !1299, !1300, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1385, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1424, !1426, !1427, !1428, !1440, !1441, !1442, !1443, !1444, !1445, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1469, !1474, !1656, !1657, !1658, !1659, !1660, !1663, !1666, !1669, !1672, !1675, !2429, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2475, !2476, !2477, !2478, !2479, !2484, !2485, !2486, !2489, !2490, !2493, !2496, !2499, !2502, !2534, !2537, !2538, !2617, !2618, !2621, !2622, !2625, !2626, !2627, !2631, !2632, !2633, !2646, !2647, !2648, !2658, !2663, !2664, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1133, file: !1134, line: 646, baseType: !1137, size: 128)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1138, line: 56, size: 128, elements: !1139)
!1138 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1137, file: !1138, line: 57, baseType: !188, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1137, file: !1138, line: 58, baseType: !27, size: 32, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1133, file: !1134, line: 649, baseType: !1143, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !173)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1133, file: !1134, line: 657, baseType: !212, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1133, file: !1134, line: 658, baseType: !1146, size: 32, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1147, line: 113, baseType: !1148)
!1147 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1147, line: 111, size: 32, elements: !1149)
!1149 = !{!1150}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1148, file: !1147, line: 112, baseType: !661, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1133, file: !1134, line: 660, baseType: !31, size: 32, offset: 288)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1133, file: !1134, line: 661, baseType: !31, size: 32, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1133, file: !1134, line: 684, baseType: !6, size: 32, offset: 352)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1133, file: !1134, line: 686, baseType: !6, size: 32, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1133, file: !1134, line: 687, baseType: !6, size: 32, offset: 416)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1133, file: !1134, line: 688, baseType: !6, size: 32, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1133, file: !1134, line: 689, baseType: !31, size: 32, offset: 480)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1133, file: !1134, line: 691, baseType: !1159, size: 64, offset: 512)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1134, line: 691, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1133, file: !1134, line: 692, baseType: !1163, size: 832, offset: 576)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1134, line: 451, size: 832, elements: !1164)
!1164 = !{!1165, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1163, file: !1134, line: 453, baseType: !1166, size: 128)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1134, line: 325, size: 128, elements: !1167)
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1166, file: !1134, line: 326, baseType: !188, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1166, file: !1134, line: 327, baseType: !27, size: 32, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1163, file: !1134, line: 454, baseType: !674, size: 192, align: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1163, file: !1134, line: 455, baseType: !83, size: 128, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1163, file: !1134, line: 456, baseType: !31, size: 32, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1163, file: !1134, line: 458, baseType: !283, size: 64, offset: 512)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1163, file: !1134, line: 459, baseType: !283, size: 64, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1163, file: !1134, line: 460, baseType: !283, size: 64, offset: 640)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1163, file: !1134, line: 461, baseType: !283, size: 64, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1163, file: !1134, line: 463, baseType: !283, size: 64, offset: 768)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1163, file: !1134, line: 465, baseType: !1179, offset: 832)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1134, line: 415, elements: !111)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1133, file: !1134, line: 693, baseType: !1181, size: 384, offset: 1408)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1134, line: 489, size: 384, elements: !1182)
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1181, file: !1134, line: 490, baseType: !83, size: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1181, file: !1134, line: 491, baseType: !188, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1181, file: !1134, line: 492, baseType: !188, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1181, file: !1134, line: 493, baseType: !31, size: 32, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1181, file: !1134, line: 494, baseType: !180, size: 16, offset: 288)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1181, file: !1134, line: 495, baseType: !180, size: 16, offset: 304)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1181, file: !1134, line: 497, baseType: !1190, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1133, file: !1134, line: 697, baseType: !1192, size: 1792, offset: 1792)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1134, line: 507, size: 1792, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1278, !1279}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1192, file: !1134, line: 508, baseType: !674, size: 192, align: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1192, file: !1134, line: 515, baseType: !283, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1192, file: !1134, line: 516, baseType: !283, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1192, file: !1134, line: 517, baseType: !283, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1192, file: !1134, line: 518, baseType: !283, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1192, file: !1134, line: 519, baseType: !283, size: 64, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1192, file: !1134, line: 526, baseType: !597, size: 64, offset: 512)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1192, file: !1134, line: 527, baseType: !283, size: 64, offset: 576)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1192, file: !1134, line: 528, baseType: !31, size: 32, offset: 640)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1192, file: !1134, line: 554, baseType: !31, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1192, file: !1134, line: 555, baseType: !31, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1192, file: !1134, line: 556, baseType: !31, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1192, file: !1134, line: 557, baseType: !31, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1192, file: !1134, line: 563, baseType: !1208, size: 512, offset: 704)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1209, line: 118, size: 512, elements: !1210)
!1209 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!1210 = !{!1211, !1219, !1220, !1229, !1272, !1275, !1276, !1277}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1208, file: !1209, line: 119, baseType: !1212, size: 256)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1213, line: 9, size: 256, elements: !1214)
!1213 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1212, file: !1213, line: 10, baseType: !674, size: 192, align: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1212, file: !1213, line: 11, baseType: !1217, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1218, line: 29, baseType: !597)
!1218 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1208, file: !1209, line: 120, baseType: !1217, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1208, file: !1209, line: 121, baseType: !1221, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!1224, !1228}
!1224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1209, line: 65, baseType: !31, size: 32, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!1227 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1208, file: !1209, line: 122, baseType: !1230, size: 64, offset: 384)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1209, line: 159, size: 512, align: 512, elements: !1232)
!1232 = !{!1233, !1253, !1254, !1257, !1262, !1263, !1267, !1271}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1231, file: !1209, line: 160, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1209, line: 214, size: 4608, align: 512, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1235, file: !1209, line: 215, baseType: !687)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1235, file: !1209, line: 216, baseType: !31, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1235, file: !1209, line: 217, baseType: !31, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1235, file: !1209, line: 218, baseType: !31, size: 32, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1235, file: !1209, line: 219, baseType: !31, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1235, file: !1209, line: 220, baseType: !31, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1235, file: !1209, line: 221, baseType: !31, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1235, file: !1209, line: 222, baseType: !31, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1235, file: !1209, line: 233, baseType: !1217, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1235, file: !1209, line: 234, baseType: !1228, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1235, file: !1209, line: 235, baseType: !1217, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1235, file: !1209, line: 236, baseType: !1228, size: 64, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1235, file: !1209, line: 237, baseType: !1250, size: 4096, offset: 512)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 4096, elements: !1251)
!1251 = !{!1252}
!1252 = !DISubrange(count: 8)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1231, file: !1209, line: 161, baseType: !31, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1231, file: !1209, line: 162, baseType: !1255, size: 32, offset: 96)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !84, line: 27, baseType: !1256)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !171, line: 96, baseType: !6)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1231, file: !1209, line: 163, baseType: !1258, size: 32, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !254, line: 276, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !254, line: 276, size: 32, elements: !1260)
!1260 = !{!1261}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1259, file: !254, line: 276, baseType: !258, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1231, file: !1209, line: 164, baseType: !1228, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1231, file: !1209, line: 165, baseType: !1264, size: 128, offset: 256)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1213, line: 14, size: 128, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1264, file: !1213, line: 15, baseType: !666, size: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1231, file: !1209, line: 166, baseType: !1268, size: 64, offset: 384)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!1217}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1231, file: !1209, line: 167, baseType: !1217, size: 64, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1208, file: !1209, line: 123, baseType: !1273, size: 8, offset: 448)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !28, line: 17, baseType: !1274)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !30, line: 21, baseType: !289)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1208, file: !1209, line: 124, baseType: !1273, size: 8, offset: 456)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1208, file: !1209, line: 125, baseType: !1273, size: 8, offset: 464)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1208, file: !1209, line: 126, baseType: !1273, size: 8, offset: 472)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1192, file: !1134, line: 572, baseType: !1208, size: 512, offset: 1216)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1192, file: !1134, line: 580, baseType: !1280, size: 64, offset: 1728)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1133, file: !1134, line: 721, baseType: !31, size: 32, offset: 3584)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1133, file: !1134, line: 722, baseType: !6, size: 32, offset: 3616)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1133, file: !1134, line: 723, baseType: !1284, size: 64, offset: 3648)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1286)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1287, line: 17, baseType: !1288)
!1287 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1287, line: 17, size: 64, elements: !1289)
!1289 = !{!1290}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1288, file: !1287, line: 17, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 64, elements: !1292)
!1292 = !{!1293}
!1293 = !DISubrange(count: 1)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1133, file: !1134, line: 724, baseType: !1286, size: 64, offset: 3712)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1133, file: !1134, line: 749, baseType: !1296, offset: 3776)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1134, line: 290, elements: !111)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1133, file: !1134, line: 751, baseType: !83, size: 128, offset: 3776)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1133, file: !1134, line: 757, baseType: !890, size: 64, offset: 3904)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1133, file: !1134, line: 758, baseType: !890, size: 64, offset: 3968)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1133, file: !1134, line: 761, baseType: !1301, size: 320, offset: 4032)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1073, line: 34, size: 320, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1301, file: !1073, line: 35, baseType: !283, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1301, file: !1073, line: 36, baseType: !1305, size: 256, offset: 64)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 256, elements: !1077)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1133, file: !1134, line: 766, baseType: !6, size: 32, offset: 4352)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1133, file: !1134, line: 767, baseType: !6, size: 32, offset: 4384)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1133, file: !1134, line: 768, baseType: !6, size: 32, offset: 4416)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1133, file: !1134, line: 770, baseType: !6, size: 32, offset: 4448)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1133, file: !1134, line: 772, baseType: !188, size: 64, offset: 4480)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1133, file: !1134, line: 775, baseType: !31, size: 32, offset: 4544)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1133, file: !1134, line: 778, baseType: !31, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1133, file: !1134, line: 779, baseType: !31, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1133, file: !1134, line: 780, baseType: !31, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1133, file: !1134, line: 803, baseType: !31, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1133, file: !1134, line: 806, baseType: !31, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1133, file: !1134, line: 807, baseType: !31, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1133, file: !1134, line: 809, baseType: !31, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1133, file: !1134, line: 815, baseType: !31, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1133, file: !1134, line: 831, baseType: !188, size: 64, offset: 4672)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1133, file: !1134, line: 833, baseType: !1322, size: 384, offset: 4736)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !1323, line: 25, size: 384, elements: !1324)
!1323 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!1324 = !{!1325, !1330}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1322, file: !1323, line: 26, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!173, !1329}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1322, file: !1323, line: 27, baseType: !1331, size: 320, offset: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1322, file: !1323, line: 27, size: 320, elements: !1332)
!1332 = !{!1333, !1343, !1375}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1331, file: !1323, line: 36, baseType: !1334, size: 320)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !1323, line: 29, size: 320, elements: !1335)
!1335 = !{!1336, !1338, !1339, !1340, !1341, !1342}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1334, file: !1323, line: 30, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1334, file: !1323, line: 31, baseType: !27, size: 32, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1334, file: !1323, line: 32, baseType: !27, size: 32, offset: 96)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1334, file: !1323, line: 33, baseType: !27, size: 32, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1334, file: !1323, line: 34, baseType: !283, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1334, file: !1323, line: 35, baseType: !1337, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1331, file: !1323, line: 46, baseType: !1344, size: 192)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !1323, line: 38, size: 192, elements: !1345)
!1345 = !{!1346, !1347, !1353, !1374}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1344, file: !1323, line: 39, baseType: !1255, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1344, file: !1323, line: 40, baseType: !1348, size: 32, offset: 32)
!1348 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !1323, line: 16, baseType: !31, size: 32, elements: !1349)
!1349 = !{!1350, !1351, !1352}
!1350 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!1351 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!1352 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!1353 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !1323, line: 41, baseType: !1354, size: 64, offset: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !1323, line: 41, size: 64, elements: !1355)
!1355 = !{!1356, !1364}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1354, file: !1323, line: 42, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1359, line: 7, size: 128, elements: !1360)
!1359 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1360 = !{!1361, !1363}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1358, file: !1359, line: 8, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !171, line: 93, baseType: !395)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1358, file: !1359, line: 9, baseType: !395, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1354, file: !1323, line: 43, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1367, line: 7, size: 64, elements: !1368)
!1367 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1368 = !{!1369, !1373}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1366, file: !1367, line: 8, baseType: !1370, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1367, line: 5, baseType: !1371)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !28, line: 20, baseType: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !30, line: 26, baseType: !6)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1366, file: !1367, line: 9, baseType: !1371, size: 32, offset: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1344, file: !1323, line: 45, baseType: !283, size: 64, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1331, file: !1323, line: 54, baseType: !1376, size: 256)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !1323, line: 48, size: 256, elements: !1377)
!1377 = !{!1378, !1381, !1382, !1383, !1384}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1376, file: !1323, line: 49, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1323, line: 14, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1376, file: !1323, line: 50, baseType: !6, size: 32, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1376, file: !1323, line: 51, baseType: !6, size: 32, offset: 96)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1376, file: !1323, line: 52, baseType: !188, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1376, file: !1323, line: 53, baseType: !188, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1133, file: !1134, line: 835, baseType: !1386, size: 32, offset: 5120)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !84, line: 22, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !171, line: 28, baseType: !6)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1133, file: !1134, line: 836, baseType: !1386, size: 32, offset: 5152)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1133, file: !1134, line: 840, baseType: !188, size: 64, offset: 5184)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1133, file: !1134, line: 849, baseType: !1132, size: 64, offset: 5248)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1133, file: !1134, line: 852, baseType: !1132, size: 64, offset: 5312)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1133, file: !1134, line: 857, baseType: !83, size: 128, offset: 5376)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1133, file: !1134, line: 858, baseType: !83, size: 128, offset: 5504)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1133, file: !1134, line: 859, baseType: !1132, size: 64, offset: 5632)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1133, file: !1134, line: 867, baseType: !83, size: 128, offset: 5696)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1133, file: !1134, line: 868, baseType: !83, size: 128, offset: 5824)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1133, file: !1134, line: 871, baseType: !1398, size: 64, offset: 5952)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1400, line: 59, size: 768, elements: !1401)
!1400 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!1401 = !{!1402, !1403, !1404, !1405, !1407, !1408, !1415, !1416}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1399, file: !1400, line: 61, baseType: !1146, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1399, file: !1400, line: 62, baseType: !31, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1399, file: !1400, line: 63, baseType: !97, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1399, file: !1400, line: 65, baseType: !1406, size: 256, offset: 64)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 256, elements: !1077)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1399, file: !1400, line: 66, baseType: !499, size: 64, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1399, file: !1400, line: 68, baseType: !1409, size: 128, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1410, line: 40, baseType: !1411)
!1410 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1410, line: 36, size: 128, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1411, file: !1410, line: 37, baseType: !97)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1411, file: !1410, line: 38, baseType: !83, size: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1399, file: !1400, line: 69, baseType: !231, size: 128, align: 64, offset: 512)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1399, file: !1400, line: 70, baseType: !1417, size: 128, offset: 640)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1418, size: 128, elements: !1292)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1400, line: 54, size: 128, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1418, file: !1400, line: 55, baseType: !6, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1418, file: !1400, line: 56, baseType: !1422, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1400, line: 56, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1133, file: !1134, line: 872, baseType: !1425, size: 512, offset: 6016)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 512, elements: !1077)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1133, file: !1134, line: 873, baseType: !83, size: 128, offset: 6528)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1133, file: !1134, line: 874, baseType: !83, size: 128, offset: 6656)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1133, file: !1134, line: 876, baseType: !1429, size: 64, offset: 6784)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1431, line: 26, size: 192, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1432 = !{!1433, !1434}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1430, file: !1431, line: 27, baseType: !31, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1430, file: !1431, line: 28, baseType: !1435, size: 128, offset: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1436, line: 43, size: 128, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1435, file: !1436, line: 44, baseType: !687)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1435, file: !1436, line: 45, baseType: !83, size: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1133, file: !1134, line: 879, baseType: !569, size: 64, offset: 6848)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1133, file: !1134, line: 882, baseType: !569, size: 64, offset: 6912)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1133, file: !1134, line: 884, baseType: !283, size: 64, offset: 6976)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1133, file: !1134, line: 885, baseType: !283, size: 64, offset: 7040)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1133, file: !1134, line: 890, baseType: !283, size: 64, offset: 7104)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1133, file: !1134, line: 891, baseType: !1446, size: 128, offset: 7168)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1134, line: 242, size: 128, elements: !1447)
!1447 = !{!1448, !1449, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1446, file: !1134, line: 244, baseType: !283, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1446, file: !1134, line: 245, baseType: !283, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1446, file: !1134, line: 246, baseType: !687, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1133, file: !1134, line: 900, baseType: !188, size: 64, offset: 7296)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1133, file: !1134, line: 901, baseType: !188, size: 64, offset: 7360)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1133, file: !1134, line: 904, baseType: !283, size: 64, offset: 7424)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1133, file: !1134, line: 907, baseType: !283, size: 64, offset: 7488)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1133, file: !1134, line: 910, baseType: !188, size: 64, offset: 7552)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1133, file: !1134, line: 911, baseType: !188, size: 64, offset: 7616)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1133, file: !1134, line: 914, baseType: !1458, size: 640, offset: 7680)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1459, line: 123, size: 640, elements: !1460)
!1459 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1460 = !{!1461, !1467, !1468}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1458, file: !1459, line: 124, baseType: !1462, size: 576)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1463, size: 576, elements: !139)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1459, line: 108, size: 192, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1463, file: !1459, line: 109, baseType: !283, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1463, file: !1459, line: 110, baseType: !1264, size: 128, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1458, file: !1459, line: 125, baseType: !31, size: 32, offset: 576)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1458, file: !1459, line: 126, baseType: !31, size: 32, offset: 608)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1133, file: !1134, line: 917, baseType: !1470, size: 192, offset: 8320)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1459, line: 134, size: 192, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1470, file: !1459, line: 135, baseType: !231, size: 128, align: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1470, file: !1459, line: 136, baseType: !31, size: 32, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1133, file: !1134, line: 923, baseType: !1475, size: 64, offset: 8512)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1478, line: 111, size: 1280, elements: !1479)
!1478 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1497, !1498, !1499, !1500, !1501, !1502, !1609, !1610, !1611, !1612, !1638, !1641, !1651}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1477, file: !1478, line: 112, baseType: !661, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1477, file: !1478, line: 120, baseType: !297, size: 32, offset: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1477, file: !1478, line: 121, baseType: !305, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1477, file: !1478, line: 122, baseType: !297, size: 32, offset: 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1477, file: !1478, line: 123, baseType: !305, size: 32, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1477, file: !1478, line: 124, baseType: !297, size: 32, offset: 160)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1477, file: !1478, line: 125, baseType: !305, size: 32, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1477, file: !1478, line: 126, baseType: !297, size: 32, offset: 224)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1477, file: !1478, line: 127, baseType: !305, size: 32, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1477, file: !1478, line: 128, baseType: !31, size: 32, offset: 288)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1477, file: !1478, line: 129, baseType: !1491, size: 64, offset: 320)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1492, line: 26, baseType: !1493)
!1492 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1492, line: 24, size: 64, elements: !1494)
!1494 = !{!1495}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1493, file: !1492, line: 25, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !63)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1477, file: !1478, line: 130, baseType: !1491, size: 64, offset: 384)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1477, file: !1478, line: 131, baseType: !1491, size: 64, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1477, file: !1478, line: 132, baseType: !1491, size: 64, offset: 512)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1477, file: !1478, line: 133, baseType: !1491, size: 64, offset: 576)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1477, file: !1478, line: 135, baseType: !289, size: 8, offset: 640)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1477, file: !1478, line: 137, baseType: !1503, size: 64, offset: 704)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1505, line: 189, size: 1664, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1506 = !{!1507, !1508, !1511, !1516, !1517, !1520, !1521, !1526, !1527, !1528, !1529, !1531, !1532, !1533, !1534, !1535, !1573, !1594}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1504, file: !1505, line: 190, baseType: !1146, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1504, file: !1505, line: 191, baseType: !1509, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1505, line: 28, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !84, line: 98, baseType: !1371)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1505, line: 192, baseType: !1512, size: 192, offset: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1505, line: 192, size: 192, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1512, file: !1505, line: 193, baseType: !83, size: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1512, file: !1505, line: 194, baseType: !674, size: 192, align: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1504, file: !1505, line: 199, baseType: !681, size: 256, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1504, file: !1505, line: 200, baseType: !1518, size: 64, offset: 512)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1505, line: 200, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1504, file: !1505, line: 201, baseType: !212, size: 64, offset: 576)
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1505, line: 202, baseType: !1522, size: 64, offset: 640)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1505, line: 202, size: 64, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1522, file: !1505, line: 203, baseType: !401, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1522, file: !1505, line: 204, baseType: !401, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1504, file: !1505, line: 206, baseType: !401, size: 64, offset: 704)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1504, file: !1505, line: 207, baseType: !297, size: 32, offset: 768)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1504, file: !1505, line: 208, baseType: !305, size: 32, offset: 800)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1504, file: !1505, line: 209, baseType: !1530, size: 32, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1505, line: 31, baseType: !421)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1504, file: !1505, line: 210, baseType: !180, size: 16, offset: 864)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1504, file: !1505, line: 211, baseType: !180, size: 16, offset: 880)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1504, file: !1505, line: 215, baseType: !1121, size: 16, offset: 896)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1504, file: !1505, line: 222, baseType: !188, size: 64, offset: 960)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1505, line: 239, baseType: !1536, size: 320, offset: 1024)
!1536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1505, line: 239, size: 320, elements: !1537)
!1537 = !{!1538, !1565}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1536, file: !1505, line: 240, baseType: !1539, size: 320)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1505, line: 108, size: 320, elements: !1540)
!1540 = !{!1541, !1542, !1554, !1557, !1564}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1539, file: !1505, line: 110, baseType: !188, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1505, line: 111, baseType: !1543, size: 64, offset: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !1505, line: 111, size: 64, elements: !1544)
!1544 = !{!1545, !1553}
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !1505, line: 112, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !1505, line: 112, size: 64, elements: !1547)
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1546, file: !1505, line: 114, baseType: !766, size: 16)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1546, file: !1505, line: 115, baseType: !1550, size: 48, offset: 16)
!1550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 48, elements: !1551)
!1551 = !{!1552}
!1552 = !DISubrange(count: 6)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1543, file: !1505, line: 121, baseType: !188, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1539, file: !1505, line: 123, baseType: !1555, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1505, line: 96, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1539, file: !1505, line: 124, baseType: !1558, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1505, line: 102, size: 192, elements: !1560)
!1560 = !{!1561, !1562, !1563}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1559, file: !1505, line: 103, baseType: !231, size: 128, align: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1559, file: !1505, line: 104, baseType: !1146, size: 32, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1559, file: !1505, line: 105, baseType: !352, size: 8, offset: 160)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1539, file: !1505, line: 125, baseType: !80, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !1505, line: 241, baseType: !1566, size: 320)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1536, file: !1505, line: 241, size: 320, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1571, !1572}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1566, file: !1505, line: 242, baseType: !188, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1566, file: !1505, line: 243, baseType: !188, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1566, file: !1505, line: 244, baseType: !1555, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1566, file: !1505, line: 245, baseType: !1558, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1566, file: !1505, line: 246, baseType: !138, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1505, line: 254, baseType: !1574, size: 256, offset: 1344)
!1574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1505, line: 254, size: 256, elements: !1575)
!1575 = !{!1576, !1582}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1574, file: !1505, line: 255, baseType: !1577, size: 256)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1505, line: 128, size: 256, elements: !1578)
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1577, file: !1505, line: 129, baseType: !212, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1577, file: !1505, line: 130, baseType: !1581, size: 256)
!1581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !1077)
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1505, line: 256, baseType: !1583, size: 256)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1574, file: !1505, line: 256, size: 256, elements: !1584)
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1583, file: !1505, line: 258, baseType: !83, size: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1583, file: !1505, line: 259, baseType: !1587, size: 128, offset: 128)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1588, line: 22, size: 128, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1589 = !{!1590, !1593}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1587, file: !1588, line: 23, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1588, line: 23, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1587, file: !1588, line: 24, baseType: !188, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1504, file: !1505, line: 274, baseType: !1595, size: 64, offset: 1600)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1505, line: 170, size: 192, elements: !1597)
!1597 = !{!1598, !1607, !1608}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1596, file: !1505, line: 171, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1505, line: 165, baseType: !1600)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!6, !1503, !1603, !1605, !1503}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1556)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1577)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1596, file: !1505, line: 172, baseType: !1503, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1596, file: !1505, line: 173, baseType: !1555, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1477, file: !1478, line: 138, baseType: !1503, size: 64, offset: 768)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1477, file: !1478, line: 139, baseType: !1503, size: 64, offset: 832)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1477, file: !1478, line: 140, baseType: !1503, size: 64, offset: 896)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1477, file: !1478, line: 145, baseType: !1613, size: 64, offset: 960)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1615, line: 13, size: 896, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1614, file: !1615, line: 14, baseType: !1146, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1614, file: !1615, line: 15, baseType: !661, size: 32, offset: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1614, file: !1615, line: 16, baseType: !661, size: 32, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1614, file: !1615, line: 21, baseType: !591, size: 64, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1614, file: !1615, line: 27, baseType: !188, size: 64, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1614, file: !1615, line: 28, baseType: !188, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1614, file: !1615, line: 29, baseType: !591, size: 64, offset: 320)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1614, file: !1615, line: 32, baseType: !503, size: 128, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1614, file: !1615, line: 33, baseType: !297, size: 32, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1614, file: !1615, line: 37, baseType: !591, size: 64, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1614, file: !1615, line: 44, baseType: !1628, size: 256, offset: 640)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1629, line: 15, size: 256, elements: !1630)
!1629 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1628, file: !1629, line: 16, baseType: !687)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1628, file: !1629, line: 18, baseType: !6, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1628, file: !1629, line: 19, baseType: !6, size: 32, offset: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1628, file: !1629, line: 20, baseType: !6, size: 32, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1628, file: !1629, line: 21, baseType: !6, size: 32, offset: 96)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1628, file: !1629, line: 22, baseType: !188, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1628, file: !1629, line: 23, baseType: !188, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1477, file: !1478, line: 146, baseType: !1639, size: 64, offset: 1024)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !298, line: 18, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1477, file: !1478, line: 147, baseType: !1642, size: 64, offset: 1088)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1478, line: 25, size: 64, elements: !1644)
!1644 = !{!1645, !1646, !1647}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1643, file: !1478, line: 26, baseType: !661, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1643, file: !1478, line: 27, baseType: !6, size: 32, offset: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1643, file: !1478, line: 28, baseType: !1648, offset: 64)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, elements: !1649)
!1649 = !{!1650}
!1650 = !DISubrange(count: 0)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1478, line: 149, baseType: !1652, size: 128, offset: 1152)
!1652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1477, file: !1478, line: 149, size: 128, elements: !1653)
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1652, file: !1478, line: 150, baseType: !6, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1652, file: !1478, line: 151, baseType: !231, size: 128, align: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1133, file: !1134, line: 926, baseType: !1475, size: 64, offset: 8576)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1133, file: !1134, line: 929, baseType: !1475, size: 64, offset: 8640)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1133, file: !1134, line: 933, baseType: !1503, size: 64, offset: 8704)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1133, file: !1134, line: 943, baseType: !22, size: 128, offset: 8768)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1133, file: !1134, line: 945, baseType: !1661, size: 64, offset: 8896)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1134, line: 49, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1133, file: !1134, line: 956, baseType: !1664, size: 64, offset: 8960)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1134, line: 45, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1133, file: !1134, line: 959, baseType: !1667, size: 64, offset: 9024)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1134, line: 959, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1133, file: !1134, line: 962, baseType: !1670, size: 64, offset: 9088)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1134, line: 66, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1133, file: !1134, line: 966, baseType: !1673, size: 64, offset: 9152)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1134, line: 50, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1133, file: !1134, line: 969, baseType: !1676, size: 64, offset: 9216)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1678, line: 82, size: 7296, elements: !1679)
!1678 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1715, !1724, !1725, !1727, !1728, !1729, !2385, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2415, !2416, !2423, !2424, !2425, !2426, !2427, !2428}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1677, file: !1678, line: 83, baseType: !1146, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1677, file: !1678, line: 84, baseType: !661, size: 32, offset: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1677, file: !1678, line: 85, baseType: !6, size: 32, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1677, file: !1678, line: 86, baseType: !83, size: 128, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1677, file: !1678, line: 88, baseType: !1409, size: 128, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1677, file: !1678, line: 91, baseType: !1132, size: 64, offset: 384)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1677, file: !1678, line: 94, baseType: !1687, size: 192, offset: 448)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1688, line: 30, size: 192, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1687, file: !1688, line: 31, baseType: !83, size: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1687, file: !1688, line: 32, baseType: !1692, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1693, line: 25, baseType: !1694)
!1693 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1693, line: 23, size: 64, elements: !1695)
!1695 = !{!1696}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1694, file: !1693, line: 24, baseType: !1291, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1677, file: !1678, line: 97, baseType: !499, size: 64, offset: 640)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1677, file: !1678, line: 100, baseType: !6, size: 32, offset: 704)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1677, file: !1678, line: 106, baseType: !6, size: 32, offset: 736)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1677, file: !1678, line: 107, baseType: !1132, size: 64, offset: 768)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1677, file: !1678, line: 110, baseType: !6, size: 32, offset: 832)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1677, file: !1678, line: 111, baseType: !31, size: 32, offset: 864)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1677, file: !1678, line: 122, baseType: !31, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1677, file: !1678, line: 123, baseType: !31, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1677, file: !1678, line: 128, baseType: !6, size: 32, offset: 928)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1677, file: !1678, line: 129, baseType: !83, size: 128, offset: 960)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1677, file: !1678, line: 132, baseType: !1208, size: 512, offset: 1088)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1677, file: !1678, line: 133, baseType: !1217, size: 64, offset: 1600)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1677, file: !1678, line: 140, baseType: !1710, size: 256, offset: 1664)
!1710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1711, size: 256, elements: !63)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1678, line: 38, size: 128, elements: !1712)
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1711, file: !1678, line: 39, baseType: !283, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1711, file: !1678, line: 40, baseType: !283, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1677, file: !1678, line: 146, baseType: !1716, size: 192, offset: 1920)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1678, line: 66, size: 192, elements: !1717)
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1716, file: !1678, line: 67, baseType: !1719, size: 192)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1678, line: 47, size: 192, elements: !1720)
!1720 = !{!1721, !1722, !1723}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1719, file: !1678, line: 48, baseType: !593, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1719, file: !1678, line: 49, baseType: !593, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1719, file: !1678, line: 50, baseType: !593, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1677, file: !1678, line: 150, baseType: !1458, size: 640, offset: 2112)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1677, file: !1678, line: 153, baseType: !1726, size: 256, offset: 2752)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, size: 256, elements: !1077)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1677, file: !1678, line: 159, baseType: !1398, size: 64, offset: 3008)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1677, file: !1678, line: 162, baseType: !6, size: 32, offset: 3072)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1677, file: !1678, line: 164, baseType: !1730, size: 64, offset: 3136)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1732, line: 285, size: 5056, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !{!1734, !1735, !1740, !1741, !2284, !2285, !2286, !2295, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1731, file: !1732, line: 286, baseType: !6, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1731, file: !1732, line: 287, baseType: !1736, size: 32, offset: 32)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1737, line: 19, size: 32, elements: !1738)
!1737 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1738 = !{!1739}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1736, file: !1737, line: 20, baseType: !1146, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1731, file: !1732, line: 288, baseType: !71, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1731, file: !1732, line: 289, baseType: !1742, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !1744, line: 302, size: 1472, elements: !1745)
!1744 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/lizy2001/genbc/linux")
!1745 = !{!1746, !1747, !1748, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !2010, !2011, !2014, !2015, !2017, !2117, !2120, !2121, !2283}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1743, file: !1744, line: 303, baseType: !6, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1743, file: !1744, line: 304, baseType: !1736, size: 32, offset: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !1743, file: !1744, line: 305, baseType: !1749, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !1752, line: 14, size: 832, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !{!1754, !1755, !1756, !1980, !1981, !1982}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1751, file: !1752, line: 15, baseType: !76, size: 512)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1751, file: !1752, line: 16, baseType: !494, size: 64, offset: 512)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1751, file: !1752, line: 17, baseType: !1757, size: 64, offset: 576)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !219, line: 1822, size: 2048, elements: !1760)
!1760 = !{!1761, !1762, !1766, !1770, !1774, !1775, !1776, !1780, !1793, !1794, !1802, !1806, !1807, !1811, !1812, !1816, !1821, !1822, !1826, !1830, !1938, !1942, !1943, !1947, !1948, !1954, !1958, !1963, !1967, !1971, !1975, !1979}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1759, file: !219, line: 1823, baseType: !494, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1759, file: !219, line: 1824, baseType: !1763, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!393, !217, !393, !6}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1759, file: !219, line: 1825, baseType: !1767, size: 64, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!169, !217, !138, !185, !609}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1759, file: !219, line: 1826, baseType: !1771, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!169, !217, !80, !185, !609}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1759, file: !219, line: 1827, baseType: !751, size: 64, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1759, file: !219, line: 1828, baseType: !751, size: 64, offset: 320)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1759, file: !219, line: 1829, baseType: !1777, size: 64, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!6, !754, !352}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1759, file: !219, line: 1830, baseType: !1781, size: 64, offset: 448)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!6, !217, !1784}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !219, line: 1776, size: 128, elements: !1786)
!1786 = !{!1787, !1792}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1785, file: !219, line: 1777, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !219, line: 1773, baseType: !1789)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!6, !1784, !80, !6, !393, !283, !31}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1785, file: !219, line: 1778, baseType: !393, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1759, file: !219, line: 1831, baseType: !1781, size: 64, offset: 512)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1759, file: !219, line: 1832, baseType: !1795, size: 64, offset: 576)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!1798, !217, !1800}
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1799, line: 52, baseType: !31)
!1799 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !219, line: 56, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1759, file: !219, line: 1833, baseType: !1803, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!173, !217, !31, !188}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1759, file: !219, line: 1834, baseType: !1803, size: 64, offset: 704)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1759, file: !219, line: 1835, baseType: !1808, size: 64, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!6, !217, !897}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1759, file: !219, line: 1836, baseType: !188, size: 64, offset: 832)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1759, file: !219, line: 1837, baseType: !1813, size: 64, offset: 896)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!6, !291, !217}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1759, file: !219, line: 1838, baseType: !1817, size: 64, offset: 960)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!6, !217, !1820}
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !219, line: 1007, baseType: !212)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1759, file: !219, line: 1839, baseType: !1813, size: 64, offset: 1024)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1759, file: !219, line: 1840, baseType: !1823, size: 64, offset: 1088)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!6, !217, !393, !393, !6}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1759, file: !219, line: 1841, baseType: !1827, size: 64, offset: 1152)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!6, !6, !217, !6}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1759, file: !219, line: 1842, baseType: !1831, size: 64, offset: 1216)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!6, !217, !6, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !219, line: 1062, size: 1664, elements: !1836)
!1836 = !{!1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1868, !1869, !1870, !1883, !1914}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1835, file: !219, line: 1063, baseType: !1834, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1835, file: !219, line: 1064, baseType: !83, size: 128, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1835, file: !219, line: 1065, baseType: !503, size: 128, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1835, file: !219, line: 1066, baseType: !83, size: 128, offset: 320)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1835, file: !219, line: 1069, baseType: !83, size: 128, offset: 448)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1835, file: !219, line: 1072, baseType: !1820, size: 64, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1835, file: !219, line: 1073, baseType: !31, size: 32, offset: 640)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1835, file: !219, line: 1074, baseType: !289, size: 8, offset: 672)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1835, file: !219, line: 1075, baseType: !31, size: 32, offset: 704)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1835, file: !219, line: 1076, baseType: !6, size: 32, offset: 736)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1835, file: !219, line: 1077, baseType: !1409, size: 128, offset: 768)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1835, file: !219, line: 1078, baseType: !217, size: 64, offset: 896)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1835, file: !219, line: 1079, baseType: !393, size: 64, offset: 960)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1835, file: !219, line: 1080, baseType: !393, size: 64, offset: 1024)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1835, file: !219, line: 1082, baseType: !1852, size: 64, offset: 1088)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !219, line: 1314, size: 320, elements: !1854)
!1854 = !{!1855, !1863, !1864, !1865, !1866, !1867}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1853, file: !219, line: 1315, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1857, line: 20, baseType: !1858)
!1857 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1857, line: 11, elements: !1859)
!1859 = !{!1860}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1858, file: !1857, line: 12, baseType: !1861)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !109, line: 33, baseType: !1862)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 31, elements: !111)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1853, file: !219, line: 1316, baseType: !6, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1853, file: !219, line: 1317, baseType: !6, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1853, file: !219, line: 1318, baseType: !1852, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1853, file: !219, line: 1319, baseType: !217, size: 64, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1853, file: !219, line: 1320, baseType: !231, size: 128, align: 64, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1835, file: !219, line: 1084, baseType: !188, size: 64, offset: 1152)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1835, file: !219, line: 1085, baseType: !188, size: 64, offset: 1216)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1835, file: !219, line: 1087, baseType: !1871, size: 64, offset: 1280)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1873)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !219, line: 1011, size: 128, elements: !1874)
!1874 = !{!1875, !1879}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1873, file: !219, line: 1012, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null, !1834, !1834}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1873, file: !219, line: 1013, baseType: !1880, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !1834}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1835, file: !219, line: 1088, baseType: !1884, size: 64, offset: 1344)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1886)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !219, line: 1016, size: 512, elements: !1887)
!1887 = !{!1888, !1892, !1896, !1897, !1901, !1905, !1909, !1913}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1886, file: !219, line: 1017, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!1820, !1820}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1886, file: !219, line: 1018, baseType: !1893, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !1820}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1886, file: !219, line: 1019, baseType: !1880, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1886, file: !219, line: 1020, baseType: !1898, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!6, !1834, !6}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1886, file: !219, line: 1021, baseType: !1902, size: 64, offset: 256)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!352, !1834}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1886, file: !219, line: 1022, baseType: !1906, size: 64, offset: 320)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!6, !1834, !6, !87}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1886, file: !219, line: 1023, baseType: !1910, size: 64, offset: 384)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !1834, !728}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1886, file: !219, line: 1024, baseType: !1902, size: 64, offset: 448)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1835, file: !219, line: 1097, baseType: !1915, size: 256, offset: 1408)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1835, file: !219, line: 1089, size: 256, elements: !1916)
!1916 = !{!1917, !1926, !1932}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1915, file: !219, line: 1090, baseType: !1918, size: 256)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1919, line: 10, size: 256, elements: !1920)
!1919 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1920 = !{!1921, !1922, !1925}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1918, file: !1919, line: 11, baseType: !27, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1918, file: !1919, line: 12, baseType: !1923, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1919, line: 5, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1918, file: !1919, line: 13, baseType: !83, size: 128, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1915, file: !219, line: 1091, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1919, line: 17, size: 64, elements: !1928)
!1928 = !{!1929}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1927, file: !1919, line: 18, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1919, line: 16, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1915, file: !219, line: 1096, baseType: !1933, size: 192)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1915, file: !219, line: 1092, size: 192, elements: !1934)
!1934 = !{!1935, !1936, !1937}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1933, file: !219, line: 1093, baseType: !83, size: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1933, file: !219, line: 1094, baseType: !6, size: 32, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1933, file: !219, line: 1095, baseType: !31, size: 32, offset: 160)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1759, file: !219, line: 1843, baseType: !1939, size: 64, offset: 1280)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!169, !217, !634, !6, !185, !609, !6}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1759, file: !219, line: 1844, baseType: !1023, size: 64, offset: 1344)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1759, file: !219, line: 1845, baseType: !1944, size: 64, offset: 1408)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!6, !6}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1759, file: !219, line: 1846, baseType: !1831, size: 64, offset: 1472)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1759, file: !219, line: 1847, baseType: !1949, size: 64, offset: 1536)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!169, !1952, !217, !609, !185, !31}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1134, line: 53, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1759, file: !219, line: 1848, baseType: !1955, size: 64, offset: 1600)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!169, !217, !609, !1952, !185, !31}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1759, file: !219, line: 1849, baseType: !1959, size: 64, offset: 1664)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!6, !217, !173, !1962, !728}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1759, file: !219, line: 1850, baseType: !1964, size: 64, offset: 1728)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!173, !217, !6, !393, !393}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1759, file: !219, line: 1852, baseType: !1968, size: 64, offset: 1792)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !575, !217}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1759, file: !219, line: 1856, baseType: !1972, size: 64, offset: 1856)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!169, !217, !393, !217, !393, !185, !31}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1759, file: !219, line: 1858, baseType: !1976, size: 64, offset: 1920)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!393, !217, !393, !217, !393, !393, !31}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1759, file: !219, line: 1861, baseType: !1823, size: 64, offset: 1984)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1751, file: !1752, line: 18, baseType: !83, size: 128, offset: 640)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1751, file: !1752, line: 19, baseType: !375, size: 32, offset: 768)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1751, file: !1752, line: 20, baseType: !31, size: 32, offset: 800)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1743, file: !1744, line: 306, baseType: !494, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !1743, file: !1744, line: 307, baseType: !80, size: 64, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1743, file: !1744, line: 308, baseType: !80, size: 64, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !1743, file: !1744, line: 309, baseType: !6, size: 32, offset: 320)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1743, file: !1744, line: 310, baseType: !6, size: 32, offset: 352)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !1743, file: !1744, line: 311, baseType: !6, size: 32, offset: 384)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1743, file: !1744, line: 312, baseType: !31, size: 32, offset: 416)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1743, file: !1744, line: 313, baseType: !1121, size: 16, offset: 448)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !1743, file: !1744, line: 314, baseType: !1121, size: 16, offset: 464)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !1743, file: !1744, line: 315, baseType: !1993, size: 352, offset: 480)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !1994, line: 32, size: 352, elements: !1995)
!1994 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/lizy2001/genbc/linux")
!1995 = !{!1996, !1998, !1999, !2000, !2001, !2003, !2007, !2009}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !1993, file: !1994, line: 33, baseType: !1997, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !1994, line: 9, baseType: !31)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !1993, file: !1994, line: 34, baseType: !1997, size: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !1993, file: !1994, line: 35, baseType: !1997, size: 32, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !1993, file: !1994, line: 36, baseType: !1997, size: 32, offset: 96)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !1993, file: !1994, line: 37, baseType: !2002, size: 8, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !1994, line: 7, baseType: !289)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !1993, file: !1994, line: 38, baseType: !2004, size: 152, offset: 136)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2002, size: 152, elements: !2005)
!2005 = !{!2006}
!2006 = !DISubrange(count: 19)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !1993, file: !1994, line: 39, baseType: !2008, size: 32, offset: 288)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !1994, line: 8, baseType: !31)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !1993, file: !1994, line: 40, baseType: !2008, size: 32, offset: 320)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1743, file: !1744, line: 316, baseType: !188, size: 64, offset: 832)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !1743, file: !1744, line: 317, baseType: !2012, size: 64, offset: 896)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !1744, line: 317, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1743, file: !1744, line: 318, baseType: !1742, size: 64, offset: 960)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !1743, file: !1744, line: 323, baseType: !2016, size: 64, offset: 1024)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !1743, file: !1744, line: 324, baseType: !2018, size: 64, offset: 1088)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !1732, line: 230, size: 2432, elements: !2021)
!2021 = !{!2022, !2065, !2066, !2067, !2089, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2112, !2113, !2114, !2115, !2116}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2020, file: !1732, line: 231, baseType: !2023, size: 1024)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !1732, line: 85, size: 1024, elements: !2024)
!2024 = !{!2025, !2043, !2055, !2056, !2057, !2058, !2062, !2063, !2064}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2023, file: !1732, line: 86, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !1732, line: 58, size: 256, elements: !2028)
!2028 = !{!2029, !2034, !2035, !2036, !2037, !2038, !2039}
!2029 = !DIDerivedType(tag: DW_TAG_member, scope: !2027, file: !1732, line: 59, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2027, file: !1732, line: 59, size: 64, elements: !2031)
!2031 = !{!2032, !2033}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2030, file: !1732, line: 60, baseType: !2026, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2030, file: !1732, line: 61, baseType: !225, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2027, file: !1732, line: 63, baseType: !6, size: 32, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2027, file: !1732, line: 64, baseType: !6, size: 32, offset: 96)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !2027, file: !1732, line: 65, baseType: !6, size: 32, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2027, file: !1732, line: 66, baseType: !6, size: 32, offset: 160)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2027, file: !1732, line: 67, baseType: !6, size: 32, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2027, file: !1732, line: 69, baseType: !2040, offset: 256)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, elements: !2041)
!2041 = !{!2042}
!2042 = !DISubrange(count: -1)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2023, file: !1732, line: 87, baseType: !2044, size: 256, offset: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2045, line: 102, size: 256, elements: !2046)
!2045 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2046 = !{!2047, !2048, !2049}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2044, file: !2045, line: 103, baseType: !591, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2044, file: !2045, line: 104, baseType: !83, size: 128, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2044, file: !2045, line: 105, baseType: !2050, size: 64, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2045, line: 21, baseType: !2051)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !2054}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2023, file: !1732, line: 88, baseType: !587, size: 192, offset: 320)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2023, file: !1732, line: 89, baseType: !661, size: 32, offset: 512)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !2023, file: !1732, line: 90, baseType: !2027, size: 256, offset: 576)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2023, file: !1732, line: 91, baseType: !2059, size: 64, offset: 832)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !226, line: 54, size: 64, elements: !2060)
!2060 = !{!2061}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2059, file: !226, line: 55, baseType: !229, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !2023, file: !1732, line: 92, baseType: !661, size: 32, offset: 896)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !2023, file: !1732, line: 93, baseType: !6, size: 32, offset: 928)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2023, file: !1732, line: 94, baseType: !2026, size: 64, offset: 960)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2020, file: !1732, line: 232, baseType: !1730, size: 64, offset: 1024)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !2020, file: !1732, line: 233, baseType: !1730, size: 64, offset: 1088)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2020, file: !1732, line: 234, baseType: !2068, size: 64, offset: 1152)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2070)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !1732, line: 205, size: 320, elements: !2071)
!2071 = !{!2072, !2076, !2080, !2084, !2088}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !2070, file: !1732, line: 207, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!6, !2019}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !2070, file: !1732, line: 209, baseType: !2077, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !2019, !6}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2070, file: !1732, line: 213, baseType: !2081, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !2019}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2070, file: !1732, line: 218, baseType: !2085, size: 64, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!6, !2019, !1730}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !2070, file: !1732, line: 220, baseType: !2081, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !2020, file: !1732, line: 235, baseType: !2090, size: 64, offset: 1216)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2092)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !1732, line: 223, size: 128, elements: !2093)
!2093 = !{!2094, !2098}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2092, file: !1732, line: 224, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!6, !2019, !287, !287, !185}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2092, file: !1732, line: 225, baseType: !2081, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2020, file: !1732, line: 236, baseType: !97, offset: 1280)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !2020, file: !1732, line: 237, baseType: !6, size: 32, offset: 1280)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2020, file: !1732, line: 238, baseType: !6, size: 32, offset: 1312)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !2020, file: !1732, line: 239, baseType: !1409, size: 128, offset: 1344)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !2020, file: !1732, line: 240, baseType: !1409, size: 128, offset: 1472)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2020, file: !1732, line: 241, baseType: !188, size: 64, offset: 1600)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !2020, file: !1732, line: 242, baseType: !188, size: 64, offset: 1664)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !2020, file: !1732, line: 243, baseType: !289, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !2020, file: !1732, line: 244, baseType: !289, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2020, file: !1732, line: 245, baseType: !587, size: 192, offset: 1792)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !2020, file: !1732, line: 246, baseType: !587, size: 192, offset: 1984)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !2020, file: !1732, line: 247, baseType: !2111, size: 64, offset: 2176)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !2020, file: !1732, line: 248, baseType: !31, size: 32, offset: 2240)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !2020, file: !1732, line: 249, baseType: !31, size: 32, offset: 2272)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !2020, file: !1732, line: 250, baseType: !6, size: 32, offset: 2304)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2020, file: !1732, line: 253, baseType: !1736, size: 32, offset: 2336)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !2020, file: !1732, line: 254, baseType: !212, size: 64, offset: 2368)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !1743, file: !1744, line: 325, baseType: !2118, size: 64, offset: 1152)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !1743, file: !1744, line: 326, baseType: !212, size: 64, offset: 1216)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1743, file: !1744, line: 332, baseType: !2122, size: 64, offset: 1280)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !1744, line: 254, size: 2176, elements: !2125)
!2125 = !{!2126, !2130, !2134, !2138, !2142, !2146, !2150, !2151, !2155, !2159, !2160, !2164, !2165, !2169, !2173, !2177, !2178, !2179, !2180, !2181, !2182, !2186, !2187, !2188, !2192, !2196, !2197, !2201, !2213, !2228, !2251, !2277, !2278, !2282}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2124, file: !1744, line: 255, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!1730, !1742, !217, !6}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !2124, file: !1744, line: 257, baseType: !2131, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!6, !1742, !1730}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2124, file: !1744, line: 258, baseType: !2135, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !1742, !1730}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2124, file: !1744, line: 259, baseType: !2139, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!6, !1730, !217}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2124, file: !1744, line: 260, baseType: !2143, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !1730, !217}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2124, file: !1744, line: 261, baseType: !2147, size: 64, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !1730}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2124, file: !1744, line: 262, baseType: !2147, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2124, file: !1744, line: 263, baseType: !2152, size: 64, offset: 448)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!6, !1730, !287, !6}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !2124, file: !1744, line: 265, baseType: !2156, size: 64, offset: 512)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!6, !1730, !289}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !2124, file: !1744, line: 266, baseType: !2147, size: 64, offset: 576)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !2124, file: !1744, line: 267, baseType: !2161, size: 64, offset: 640)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!6, !1730}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !2124, file: !1744, line: 268, baseType: !2161, size: 64, offset: 704)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2124, file: !1744, line: 269, baseType: !2166, size: 64, offset: 768)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!6, !1730, !31, !188}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2124, file: !1744, line: 271, baseType: !2170, size: 64, offset: 832)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!173, !1730, !31, !188}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2124, file: !1744, line: 273, baseType: !2174, size: 64, offset: 896)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !1730, !2119}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2124, file: !1744, line: 274, baseType: !2147, size: 64, offset: 960)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !2124, file: !1744, line: 275, baseType: !2147, size: 64, offset: 1024)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2124, file: !1744, line: 276, baseType: !2147, size: 64, offset: 1088)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2124, file: !1744, line: 277, baseType: !2147, size: 64, offset: 1152)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2124, file: !1744, line: 278, baseType: !2147, size: 64, offset: 1216)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !2124, file: !1744, line: 279, baseType: !2183, size: 64, offset: 1280)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!6, !1730, !6}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2124, file: !1744, line: 280, baseType: !2147, size: 64, offset: 1344)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !2124, file: !1744, line: 281, baseType: !2147, size: 64, offset: 1408)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !2124, file: !1744, line: 282, baseType: !2189, size: 64, offset: 1472)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{null, !1730, !6}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !2124, file: !1744, line: 283, baseType: !2193, size: 64, offset: 1536)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{null, !1730, !23}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !2124, file: !1744, line: 284, baseType: !2161, size: 64, offset: 1600)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !2124, file: !1744, line: 285, baseType: !2198, size: 64, offset: 1664)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!6, !1730, !31, !31}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !2124, file: !1744, line: 287, baseType: !2202, size: 64, offset: 1728)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!6, !1730, !2205}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !2207, line: 15, size: 64, elements: !2208)
!2207 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!2208 = !{!2209, !2210, !2211, !2212}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !2206, file: !2207, line: 16, baseType: !180, size: 16)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !2206, file: !2207, line: 17, baseType: !180, size: 16, offset: 16)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !2206, file: !2207, line: 18, baseType: !180, size: 16, offset: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !2206, file: !2207, line: 19, baseType: !180, size: 16, offset: 48)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "set_termiox", scope: !2124, file: !1744, line: 288, baseType: !2214, size: 64, offset: 1792)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!6, !1730, !2217}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termiox", file: !2219, line: 10, size: 128, elements: !2220)
!2219 = !DIFile(filename: "./include/uapi/linux/termios.h", directory: "/home/lizy2001/genbc/linux")
!2220 = !{!2221, !2222, !2223, !2227}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "x_hflag", scope: !2218, file: !2219, line: 12, baseType: !767, size: 16)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "x_cflag", scope: !2218, file: !2219, line: 13, baseType: !767, size: 16, offset: 16)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "x_rflag", scope: !2218, file: !2219, line: 14, baseType: !2224, size: 80, offset: 32)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, size: 80, elements: !2225)
!2225 = !{!2226}
!2226 = !DISubrange(count: 5)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "x_sflag", scope: !2218, file: !2219, line: 15, baseType: !767, size: 16, offset: 112)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !2124, file: !1744, line: 289, baseType: !2229, size: 64, offset: 1856)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!6, !1730, !2232}
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !2234, line: 102, size: 640, elements: !2235)
!2234 = !DIFile(filename: "./include/uapi/linux/serial.h", directory: "/home/lizy2001/genbc/linux")
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cts", scope: !2233, file: !2234, line: 103, baseType: !6, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !2233, file: !2234, line: 103, baseType: !6, size: 32, offset: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !2233, file: !2234, line: 103, baseType: !6, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dcd", scope: !2233, file: !2234, line: 103, baseType: !6, size: 32, offset: 96)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !2233, file: !2234, line: 104, baseType: !6, size: 32, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !2233, file: !2234, line: 104, baseType: !6, size: 32, offset: 160)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !2233, file: !2234, line: 105, baseType: !6, size: 32, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "overrun", scope: !2233, file: !2234, line: 105, baseType: !6, size: 32, offset: 224)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !2233, file: !2234, line: 105, baseType: !6, size: 32, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2233, file: !2234, line: 105, baseType: !6, size: 32, offset: 288)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "buf_overrun", scope: !2233, file: !2234, line: 106, baseType: !6, size: 32, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2233, file: !2234, line: 107, baseType: !2248, size: 288, offset: 352)
!2248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 288, elements: !2249)
!2249 = !{!2250}
!2250 = !DISubrange(count: 9)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !2124, file: !1744, line: 291, baseType: !2252, size: 64, offset: 1920)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!6, !1730, !2255}
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !2234, line: 19, size: 576, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2256, file: !2234, line: 20, baseType: !6, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2256, file: !2234, line: 21, baseType: !6, size: 32, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2256, file: !2234, line: 22, baseType: !31, size: 32, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2256, file: !2234, line: 23, baseType: !6, size: 32, offset: 96)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2256, file: !2234, line: 24, baseType: !6, size: 32, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo_size", scope: !2256, file: !2234, line: 25, baseType: !6, size: 32, offset: 160)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "custom_divisor", scope: !2256, file: !2234, line: 26, baseType: !6, size: 32, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "baud_base", scope: !2256, file: !2234, line: 27, baseType: !6, size: 32, offset: 224)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !2256, file: !2234, line: 28, baseType: !180, size: 16, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "io_type", scope: !2256, file: !2234, line: 29, baseType: !23, size: 8, offset: 272)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_char", scope: !2256, file: !2234, line: 30, baseType: !2269, size: 8, offset: 280)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !1292)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "hub6", scope: !2256, file: !2234, line: 31, baseType: !6, size: 32, offset: 288)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !2256, file: !2234, line: 32, baseType: !180, size: 16, offset: 320)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait2", scope: !2256, file: !2234, line: 33, baseType: !180, size: 16, offset: 336)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "iomem_base", scope: !2256, file: !2234, line: 34, baseType: !2111, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "iomem_reg_shift", scope: !2256, file: !2234, line: 35, baseType: !180, size: 16, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "port_high", scope: !2256, file: !2234, line: 36, baseType: !31, size: 32, offset: 480)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "iomap_base", scope: !2256, file: !2234, line: 37, baseType: !188, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !2124, file: !1744, line: 292, baseType: !2252, size: 64, offset: 1984)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2124, file: !1744, line: 293, baseType: !2279, size: 64, offset: 2048)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{null, !1730, !575}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !2124, file: !1744, line: 299, baseType: !619, size: 64, offset: 2112)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !1743, file: !1744, line: 333, baseType: !83, size: 128, offset: 1344)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1731, file: !1732, line: 290, baseType: !2122, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1731, file: !1732, line: 291, baseType: !6, size: 32, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !1731, file: !1732, line: 294, baseType: !2287, size: 384, offset: 320)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !2288, line: 133, size: 384, elements: !2289)
!2288 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/lizy2001/genbc/linux")
!2289 = !{!2290, !2291, !2292, !2293, !2294}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2287, file: !2288, line: 134, baseType: !591, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2287, file: !2288, line: 135, baseType: !687, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !2287, file: !2288, line: 136, baseType: !31, size: 32, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2287, file: !2288, line: 137, baseType: !83, size: 128, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2287, file: !2288, line: 138, baseType: !83, size: 128, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !1731, file: !1732, line: 295, baseType: !2296, size: 64, offset: 704)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !2288, line: 215, size: 128, elements: !2298)
!2298 = !{!2299, !2344}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2297, file: !2288, line: 216, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !2288, line: 175, size: 1216, elements: !2302)
!2302 = !{!2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2314, !2318, !2322, !2323, !2324, !2328, !2329, !2333, !2334, !2338, !2342, !2343}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2301, file: !2288, line: 176, baseType: !6, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2301, file: !2288, line: 177, baseType: !138, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2301, file: !2288, line: 178, baseType: !6, size: 32, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2301, file: !2288, line: 179, baseType: !6, size: 32, offset: 160)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2301, file: !2288, line: 184, baseType: !2161, size: 64, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2301, file: !2288, line: 185, baseType: !2147, size: 64, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2301, file: !2288, line: 186, baseType: !2147, size: 64, offset: 320)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2301, file: !2288, line: 187, baseType: !2311, size: 64, offset: 384)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!169, !1730, !217, !2111, !185}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2301, file: !2288, line: 189, baseType: !2315, size: 64, offset: 448)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!169, !1730, !217, !287, !185}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2301, file: !2288, line: 191, baseType: !2319, size: 64, offset: 512)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!6, !1730, !217, !31, !188}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2301, file: !2288, line: 193, baseType: !2319, size: 64, offset: 576)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2301, file: !2288, line: 195, baseType: !2174, size: 64, offset: 640)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2301, file: !2288, line: 196, baseType: !2325, size: 64, offset: 704)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!1798, !1730, !217, !1800}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2301, file: !2288, line: 198, baseType: !2161, size: 64, offset: 768)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2301, file: !2288, line: 203, baseType: !2330, size: 64, offset: 832)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{null, !1730, !287, !138, !6}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2301, file: !2288, line: 205, baseType: !2147, size: 64, offset: 896)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !2301, file: !2288, line: 206, baseType: !2335, size: 64, offset: 960)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !1730, !31}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !2301, file: !2288, line: 207, baseType: !2339, size: 64, offset: 1024)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!6, !1730, !287, !138, !6}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2301, file: !2288, line: 210, baseType: !494, size: 64, offset: 1088)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2301, file: !2288, line: 212, baseType: !6, size: 32, offset: 1152)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2297, file: !2288, line: 217, baseType: !1730, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !1731, file: !1732, line: 297, baseType: !587, size: 192, offset: 768)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !1731, file: !1732, line: 298, baseType: !587, size: 192, offset: 960)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !1731, file: !1732, line: 299, baseType: !587, size: 192, offset: 1152)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !1731, file: !1732, line: 300, baseType: !681, size: 256, offset: 1344)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !1731, file: !1732, line: 301, baseType: !587, size: 192, offset: 1600)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_lock", scope: !1731, file: !1732, line: 302, baseType: !97, offset: 1792)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lock", scope: !1731, file: !1732, line: 303, baseType: !97, offset: 1792)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !1731, file: !1732, line: 305, baseType: !1993, size: 352, offset: 1792)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !1731, file: !1732, line: 305, baseType: !1993, size: 352, offset: 2144)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "termiox", scope: !1731, file: !1732, line: 306, baseType: !2217, size: 64, offset: 2496)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1731, file: !1732, line: 307, baseType: !2356, size: 512, offset: 2560)
!2356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !143)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !1731, file: !1732, line: 308, baseType: !1398, size: 64, offset: 3072)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !1731, file: !1732, line: 313, baseType: !1398, size: 64, offset: 3136)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1731, file: !1732, line: 314, baseType: !188, size: 64, offset: 3200)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1731, file: !1732, line: 315, baseType: !6, size: 32, offset: 3264)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !1731, file: !1732, line: 316, baseType: !2206, size: 64, offset: 3296)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !1731, file: !1732, line: 317, baseType: !188, size: 1, offset: 3360, flags: DIFlagBitField, extraData: i64 3360)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "flow_stopped", scope: !1731, file: !1732, line: 318, baseType: !188, size: 1, offset: 3361, flags: DIFlagBitField, extraData: i64 3360)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !1731, file: !1732, line: 319, baseType: !188, size: 62, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !1731, file: !1732, line: 320, baseType: !6, size: 32, offset: 3456)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_status", scope: !1731, file: !1732, line: 321, baseType: !188, size: 8, offset: 3488, flags: DIFlagBitField, extraData: i64 3488)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !1731, file: !1732, line: 322, baseType: !188, size: 1, offset: 3496, flags: DIFlagBitField, extraData: i64 3488)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "unused_ctrl", scope: !1731, file: !1732, line: 323, baseType: !188, size: 55, offset: 3520, flags: DIFlagBitField, extraData: i64 3520)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !1731, file: !1732, line: 324, baseType: !31, size: 32, offset: 3584)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !1731, file: !1732, line: 325, baseType: !6, size: 32, offset: 3616)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1731, file: !1732, line: 327, baseType: !1730, size: 64, offset: 3648)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1731, file: !1732, line: 328, baseType: !1852, size: 64, offset: 3712)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !1731, file: !1732, line: 329, baseType: !1409, size: 128, offset: 3776)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !1731, file: !1732, line: 330, baseType: !1409, size: 128, offset: 3904)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !1731, file: !1732, line: 331, baseType: !2044, size: 256, offset: 4032)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !1731, file: !1732, line: 332, baseType: !212, size: 64, offset: 4288)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1731, file: !1732, line: 333, baseType: !212, size: 64, offset: 4352)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !1731, file: !1732, line: 334, baseType: !97, offset: 4416)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !1731, file: !1732, line: 335, baseType: !83, size: 128, offset: 4416)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !1731, file: !1732, line: 339, baseType: !6, size: 32, offset: 4544)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !1731, file: !1732, line: 340, baseType: !2111, size: 64, offset: 4608)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !1731, file: !1732, line: 341, baseType: !6, size: 32, offset: 4672)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !1731, file: !1732, line: 343, baseType: !2044, size: 256, offset: 4736)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1731, file: !1732, line: 344, baseType: !2019, size: 64, offset: 4992)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1677, file: !1678, line: 175, baseType: !2386, size: 32, offset: 3200)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !254, line: 805, baseType: !2387)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 798, size: 32, elements: !2388)
!2388 = !{!2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2387, file: !254, line: 803, baseType: !253, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2387, file: !254, line: 804, baseType: !97, offset: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1677, file: !1678, line: 176, baseType: !283, size: 64, offset: 3264)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1677, file: !1678, line: 176, baseType: !283, size: 64, offset: 3328)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1677, file: !1678, line: 176, baseType: !283, size: 64, offset: 3392)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1677, file: !1678, line: 176, baseType: !283, size: 64, offset: 3456)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1677, file: !1678, line: 177, baseType: !283, size: 64, offset: 3520)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1677, file: !1678, line: 178, baseType: !283, size: 64, offset: 3584)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1677, file: !1678, line: 179, baseType: !1446, size: 128, offset: 3648)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1677, file: !1678, line: 180, baseType: !188, size: 64, offset: 3776)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1677, file: !1678, line: 180, baseType: !188, size: 64, offset: 3840)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1677, file: !1678, line: 180, baseType: !188, size: 64, offset: 3904)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1677, file: !1678, line: 180, baseType: !188, size: 64, offset: 3968)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1677, file: !1678, line: 181, baseType: !188, size: 64, offset: 4032)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1677, file: !1678, line: 181, baseType: !188, size: 64, offset: 4096)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1677, file: !1678, line: 181, baseType: !188, size: 64, offset: 4160)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1677, file: !1678, line: 181, baseType: !188, size: 64, offset: 4224)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1677, file: !1678, line: 182, baseType: !188, size: 64, offset: 4288)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1677, file: !1678, line: 182, baseType: !188, size: 64, offset: 4352)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1677, file: !1678, line: 182, baseType: !188, size: 64, offset: 4416)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1677, file: !1678, line: 182, baseType: !188, size: 64, offset: 4480)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1677, file: !1678, line: 183, baseType: !188, size: 64, offset: 4544)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1677, file: !1678, line: 183, baseType: !188, size: 64, offset: 4608)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1677, file: !1678, line: 184, baseType: !2413, offset: 4672)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2414, line: 12, elements: !111)
!2414 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1677, file: !1678, line: 192, baseType: !285, size: 64, offset: 4672)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1677, file: !1678, line: 203, baseType: !2417, size: 2048, offset: 4736)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2418, size: 2048, elements: !24)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2419, line: 43, size: 128, elements: !2420)
!2419 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2420 = !{!2421, !2422}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2418, file: !2419, line: 44, baseType: !187, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2418, file: !2419, line: 45, baseType: !187, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1677, file: !1678, line: 220, baseType: !352, size: 8, offset: 6784)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1677, file: !1678, line: 221, baseType: !1121, size: 16, offset: 6800)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1677, file: !1678, line: 222, baseType: !1121, size: 16, offset: 6816)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1677, file: !1678, line: 224, baseType: !890, size: 64, offset: 6848)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1677, file: !1678, line: 227, baseType: !587, size: 192, offset: 6912)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1677, file: !1678, line: 233, baseType: !587, size: 192, offset: 7104)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1133, file: !1134, line: 970, baseType: !2430, size: 64, offset: 9280)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1678, line: 20, size: 16576, elements: !2432)
!2432 = !{!2433, !2434, !2435, !2436}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2431, file: !1678, line: 21, baseType: !97)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2431, file: !1678, line: 22, baseType: !1146, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2431, file: !1678, line: 23, baseType: !1409, size: 128, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2431, file: !1678, line: 24, baseType: !2437, size: 16384, offset: 192)
!2437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2438, size: 16384, elements: !143)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1688, line: 49, size: 256, elements: !2439)
!2439 = !{!2440}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2438, file: !1688, line: 50, baseType: !2441, size: 256)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1688, line: 35, size: 256, elements: !2442)
!2442 = !{!2443, !2450, !2451, !2457}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2441, file: !1688, line: 37, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2445, line: 19, baseType: !2446)
!2445 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2445, line: 18, baseType: !2448)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{null, !6}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2441, file: !1688, line: 38, baseType: !188, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2441, file: !1688, line: 44, baseType: !2452, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2445, line: 22, baseType: !2453)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2445, line: 21, baseType: !2455)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2441, file: !1688, line: 46, baseType: !1692, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1133, file: !1134, line: 971, baseType: !1692, size: 64, offset: 9344)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1133, file: !1134, line: 972, baseType: !1692, size: 64, offset: 9408)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1133, file: !1134, line: 974, baseType: !1692, size: 64, offset: 9472)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1133, file: !1134, line: 975, baseType: !1687, size: 192, offset: 9536)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1133, file: !1134, line: 976, baseType: !188, size: 64, offset: 9728)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1133, file: !1134, line: 977, baseType: !185, size: 64, offset: 9792)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1133, file: !1134, line: 978, baseType: !31, size: 32, offset: 9856)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1133, file: !1134, line: 980, baseType: !234, size: 64, offset: 9920)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1133, file: !1134, line: 989, baseType: !2467, size: 128, offset: 9984)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2468, line: 35, size: 128, elements: !2469)
!2468 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2469 = !{!2470, !2471, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2467, file: !2468, line: 36, baseType: !6, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2467, file: !2468, line: 37, baseType: !661, size: 32, offset: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2467, file: !2468, line: 38, baseType: !2473, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2468, line: 23, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1133, file: !1134, line: 992, baseType: !283, size: 64, offset: 10112)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1133, file: !1134, line: 993, baseType: !283, size: 64, offset: 10176)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1133, file: !1134, line: 996, baseType: !97, offset: 10240)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1133, file: !1134, line: 999, baseType: !687, offset: 10240)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1133, file: !1134, line: 1001, baseType: !2480, size: 64, offset: 10240)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1134, line: 636, size: 64, elements: !2481)
!2481 = !{!2482}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2480, file: !1134, line: 637, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1133, file: !1134, line: 1005, baseType: !666, size: 128, offset: 10304)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1133, file: !1134, line: 1007, baseType: !1132, size: 64, offset: 10432)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1133, file: !1134, line: 1009, baseType: !2487, size: 64, offset: 10496)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1134, line: 1009, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1133, file: !1134, line: 1043, baseType: !212, size: 64, offset: 10560)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1133, file: !1134, line: 1046, baseType: !2491, size: 64, offset: 10624)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1134, line: 41, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1133, file: !1134, line: 1050, baseType: !2494, size: 64, offset: 10688)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1134, line: 42, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1133, file: !1134, line: 1054, baseType: !2497, size: 64, offset: 10752)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1134, line: 55, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1133, file: !1134, line: 1056, baseType: !2500, size: 64, offset: 10816)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1134, line: 40, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1133, file: !1134, line: 1058, baseType: !2503, size: 64, offset: 10880)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2505, line: 99, size: 704, elements: !2506)
!2505 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512, !2513, !2532, !2533}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2504, file: !2505, line: 100, baseType: !591, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2504, file: !2505, line: 101, baseType: !661, size: 32, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2504, file: !2505, line: 102, baseType: !661, size: 32, offset: 96)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2504, file: !2505, line: 105, baseType: !97, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2504, file: !2505, line: 107, baseType: !180, size: 16, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2504, file: !2505, line: 109, baseType: !652, size: 128, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2504, file: !2505, line: 110, baseType: !2514, size: 64, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2505, line: 73, size: 448, elements: !2516)
!2516 = !{!2517, !2520, !2521, !2526, !2531}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2515, file: !2505, line: 74, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2505, line: 74, flags: DIFlagFwdDecl)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2515, file: !2505, line: 75, baseType: !2503, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, scope: !2515, file: !2505, line: 83, baseType: !2522, size: 128, offset: 128)
!2522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2515, file: !2505, line: 83, size: 128, elements: !2523)
!2523 = !{!2524, !2525}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2522, file: !2505, line: 84, baseType: !83, size: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2522, file: !2505, line: 85, baseType: !849, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, scope: !2515, file: !2505, line: 87, baseType: !2527, size: 128, offset: 256)
!2527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2515, file: !2505, line: 87, size: 128, elements: !2528)
!2528 = !{!2529, !2530}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2527, file: !2505, line: 88, baseType: !503, size: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2527, file: !2505, line: 89, baseType: !231, size: 128, align: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2515, file: !2505, line: 92, baseType: !31, size: 32, offset: 384)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2504, file: !2505, line: 111, baseType: !499, size: 64, offset: 384)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2504, file: !2505, line: 113, baseType: !2044, size: 256, offset: 448)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1133, file: !1134, line: 1061, baseType: !2535, size: 64, offset: 10944)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1134, line: 43, flags: DIFlagFwdDecl)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1133, file: !1134, line: 1064, baseType: !188, size: 64, offset: 11008)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1133, file: !1134, line: 1065, baseType: !2539, size: 64, offset: 11072)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1688, line: 14, baseType: !2541)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1688, line: 12, size: 384, elements: !2542)
!2542 = !{!2543}
!2543 = !DIDerivedType(tag: DW_TAG_member, scope: !2541, file: !1688, line: 13, baseType: !2544, size: 384)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2541, file: !1688, line: 13, size: 384, elements: !2545)
!2545 = !{!2546, !2547, !2548, !2549}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2544, file: !1688, line: 13, baseType: !6, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2544, file: !1688, line: 13, baseType: !6, size: 32, offset: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2544, file: !1688, line: 13, baseType: !6, size: 32, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2544, file: !1688, line: 13, baseType: !2550, size: 256, offset: 128)
!2550 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2551, line: 32, size: 256, elements: !2552)
!2551 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2552 = !{!2553, !2558, !2571, !2577, !2586, !2606, !2611}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2550, file: !2551, line: 37, baseType: !2554, size: 64)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !2551, line: 34, size: 64, elements: !2555)
!2555 = !{!2556, !2557}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2554, file: !2551, line: 35, baseType: !1387, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2554, file: !2551, line: 36, baseType: !303, size: 32, offset: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2550, file: !2551, line: 45, baseType: !2559, size: 192)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !2551, line: 40, size: 192, elements: !2560)
!2560 = !{!2561, !2563, !2564, !2570}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2559, file: !2551, line: 41, baseType: !2562, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !171, line: 95, baseType: !6)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2559, file: !2551, line: 42, baseType: !6, size: 32, offset: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2559, file: !2551, line: 43, baseType: !2565, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2551, line: 11, baseType: !2566)
!2566 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2551, line: 8, size: 64, elements: !2567)
!2567 = !{!2568, !2569}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2566, file: !2551, line: 9, baseType: !6, size: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2566, file: !2551, line: 10, baseType: !212, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2559, file: !2551, line: 44, baseType: !6, size: 32, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2550, file: !2551, line: 52, baseType: !2572, size: 128)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !2551, line: 48, size: 128, elements: !2573)
!2573 = !{!2574, !2575, !2576}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2572, file: !2551, line: 49, baseType: !1387, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2572, file: !2551, line: 50, baseType: !303, size: 32, offset: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2572, file: !2551, line: 51, baseType: !2565, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2550, file: !2551, line: 61, baseType: !2578, size: 256)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !2551, line: 55, size: 256, elements: !2579)
!2579 = !{!2580, !2581, !2582, !2583, !2585}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2578, file: !2551, line: 56, baseType: !1387, size: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2578, file: !2551, line: 57, baseType: !303, size: 32, offset: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2578, file: !2551, line: 58, baseType: !6, size: 32, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2578, file: !2551, line: 59, baseType: !2584, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !171, line: 94, baseType: !172)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2578, file: !2551, line: 60, baseType: !2584, size: 64, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2550, file: !2551, line: 95, baseType: !2587, size: 256)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !2551, line: 64, size: 256, elements: !2588)
!2588 = !{!2589, !2590}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2587, file: !2551, line: 65, baseType: !212, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, scope: !2587, file: !2551, line: 77, baseType: !2591, size: 192, offset: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2587, file: !2551, line: 77, size: 192, elements: !2592)
!2592 = !{!2593, !2594, !2601}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2591, file: !2551, line: 82, baseType: !1121, size: 16)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2591, file: !2551, line: 88, baseType: !2595, size: 192)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2591, file: !2551, line: 84, size: 192, elements: !2596)
!2596 = !{!2597, !2599, !2600}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2595, file: !2551, line: 85, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !1251)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2595, file: !2551, line: 86, baseType: !212, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2595, file: !2551, line: 87, baseType: !212, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2591, file: !2551, line: 93, baseType: !2602, size: 96)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2591, file: !2551, line: 90, size: 96, elements: !2603)
!2603 = !{!2604, !2605}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2602, file: !2551, line: 91, baseType: !2598, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2602, file: !2551, line: 92, baseType: !29, size: 32, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2550, file: !2551, line: 101, baseType: !2607, size: 128)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !2551, line: 98, size: 128, elements: !2608)
!2608 = !{!2609, !2610}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2607, file: !2551, line: 99, baseType: !173, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2607, file: !2551, line: 100, baseType: !6, size: 32, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2550, file: !2551, line: 108, baseType: !2612, size: 128)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !2551, line: 104, size: 128, elements: !2613)
!2613 = !{!2614, !2615, !2616}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2612, file: !2551, line: 105, baseType: !212, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2612, file: !2551, line: 106, baseType: !6, size: 32, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2612, file: !2551, line: 107, baseType: !31, size: 32, offset: 96)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1133, file: !1134, line: 1067, baseType: !2413, offset: 11136)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1133, file: !1134, line: 1099, baseType: !2619, size: 64, offset: 11136)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1134, line: 56, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1133, file: !1134, line: 1103, baseType: !83, size: 128, offset: 11200)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1133, file: !1134, line: 1104, baseType: !2623, size: 64, offset: 11328)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1134, line: 46, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1133, file: !1134, line: 1105, baseType: !587, size: 192, offset: 11392)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1133, file: !1134, line: 1106, baseType: !31, size: 32, offset: 11584)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1133, file: !1134, line: 1109, baseType: !2628, size: 128, offset: 11648)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2629, size: 128, elements: !63)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1134, line: 51, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1133, file: !1134, line: 1110, baseType: !587, size: 192, offset: 11776)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1133, file: !1134, line: 1111, baseType: !83, size: 128, offset: 11968)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1133, file: !1134, line: 1173, baseType: !2634, size: 64, offset: 12096)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2636, line: 62, size: 256, align: 256, elements: !2637)
!2636 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2637 = !{!2638, !2639, !2640, !2645}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2635, file: !2636, line: 75, baseType: !29, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2635, file: !2636, line: 90, baseType: !29, size: 32, offset: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2635, file: !2636, line: 124, baseType: !2641, size: 64, offset: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2635, file: !2636, line: 109, size: 64, elements: !2642)
!2642 = !{!2643, !2644}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2641, file: !2636, line: 110, baseType: !284, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2641, file: !2636, line: 112, baseType: !284, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2635, file: !2636, line: 144, baseType: !29, size: 32, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1133, file: !1134, line: 1174, baseType: !27, size: 32, offset: 12160)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1133, file: !1134, line: 1179, baseType: !188, size: 64, offset: 12224)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1133, file: !1134, line: 1182, baseType: !2649, size: 128, offset: 12288)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1073, line: 76, size: 128, elements: !2650)
!2650 = !{!2651, !2656, !2657}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2649, file: !1073, line: 85, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2653, line: 7, size: 64, elements: !2654)
!2653 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2654 = !{!2655}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2652, file: !2653, line: 12, baseType: !1288, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2649, file: !1073, line: 88, baseType: !352, size: 8, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2649, file: !1073, line: 95, baseType: !352, size: 8, offset: 72)
!2658 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !1134, line: 1184, baseType: !2659, size: 128, offset: 12416)
!2659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !1134, line: 1184, size: 128, elements: !2660)
!2660 = !{!2661, !2662}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2659, file: !1134, line: 1185, baseType: !1146, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2659, file: !1134, line: 1186, baseType: !231, size: 128, align: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1133, file: !1134, line: 1190, baseType: !1952, size: 64, offset: 12544)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1133, file: !1134, line: 1192, baseType: !2665, size: 128, offset: 12608)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1073, line: 64, size: 128, elements: !2666)
!2666 = !{!2667, !2668, !2669}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2665, file: !1073, line: 65, baseType: !634, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2665, file: !1073, line: 67, baseType: !29, size: 32, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2665, file: !1073, line: 68, baseType: !29, size: 32, offset: 96)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1133, file: !1134, line: 1206, baseType: !6, size: 32, offset: 12736)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1133, file: !1134, line: 1207, baseType: !6, size: 32, offset: 12768)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1133, file: !1134, line: 1209, baseType: !188, size: 64, offset: 12800)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1133, file: !1134, line: 1219, baseType: !283, size: 64, offset: 12864)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1133, file: !1134, line: 1220, baseType: !283, size: 64, offset: 12928)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1133, file: !1134, line: 1317, baseType: !6, size: 32, offset: 12992)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1133, file: !1134, line: 1319, baseType: !1132, size: 64, offset: 13056)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1133, file: !1134, line: 1322, baseType: !2678, size: 64, offset: 13120)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2680, line: 56, size: 512, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687, !2688, !2690}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2679, file: !2680, line: 57, baseType: !2678, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2679, file: !2680, line: 58, baseType: !212, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2679, file: !2680, line: 59, baseType: !188, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2679, file: !2680, line: 60, baseType: !188, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2679, file: !2680, line: 61, baseType: !727, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2679, file: !2680, line: 62, baseType: !31, size: 32, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2679, file: !2680, line: 63, baseType: !2689, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !84, line: 153, baseType: !283)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2679, file: !2680, line: 64, baseType: !2691, size: 64, offset: 448)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1133, file: !1134, line: 1326, baseType: !1146, size: 32, offset: 13184)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1133, file: !1134, line: 1342, baseType: !212, size: 64, offset: 13248)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1133, file: !1134, line: 1343, baseType: !284, size: 64, offset: 13312)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1133, file: !1134, line: 1344, baseType: !283, size: 64, offset: 13376)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1133, file: !1134, line: 1345, baseType: !284, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1133, file: !1134, line: 1346, baseType: !284, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1133, file: !1134, line: 1347, baseType: !284, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1133, file: !1134, line: 1348, baseType: !231, size: 128, align: 64, offset: 13504)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1133, file: !1134, line: 1358, baseType: !2702, size: 34816, offset: 13824)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2703, line: 485, size: 34816, elements: !2704)
!2703 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2704 = !{!2705, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2734, !2735, !2736, !2737, !2738, !2739, !2742, !2743, !2744}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2702, file: !2703, line: 487, baseType: !2706, size: 192)
!2706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2707, size: 192, elements: !139)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2708, line: 16, size: 64, elements: !2709)
!2708 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2709 = !{!2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2707, file: !2708, line: 17, baseType: !766, size: 16)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2707, file: !2708, line: 18, baseType: !766, size: 16, offset: 16)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2707, file: !2708, line: 19, baseType: !766, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2707, file: !2708, line: 19, baseType: !766, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2707, file: !2708, line: 19, baseType: !766, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2707, file: !2708, line: 19, baseType: !766, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2707, file: !2708, line: 19, baseType: !766, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2707, file: !2708, line: 20, baseType: !766, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2707, file: !2708, line: 20, baseType: !766, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2707, file: !2708, line: 20, baseType: !766, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2707, file: !2708, line: 20, baseType: !766, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2707, file: !2708, line: 20, baseType: !766, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2707, file: !2708, line: 20, baseType: !766, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2702, file: !2703, line: 491, baseType: !188, size: 64, offset: 192)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2702, file: !2703, line: 495, baseType: !180, size: 16, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2702, file: !2703, line: 496, baseType: !180, size: 16, offset: 272)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2702, file: !2703, line: 497, baseType: !180, size: 16, offset: 288)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2702, file: !2703, line: 498, baseType: !180, size: 16, offset: 304)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2702, file: !2703, line: 502, baseType: !188, size: 64, offset: 320)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2702, file: !2703, line: 503, baseType: !188, size: 64, offset: 384)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2702, file: !2703, line: 514, baseType: !2731, size: 256, offset: 448)
!2731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2732, size: 256, elements: !1077)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2703, line: 483, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2702, file: !2703, line: 516, baseType: !188, size: 64, offset: 704)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2702, file: !2703, line: 518, baseType: !188, size: 64, offset: 768)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2702, file: !2703, line: 520, baseType: !188, size: 64, offset: 832)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2702, file: !2703, line: 521, baseType: !188, size: 64, offset: 896)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2702, file: !2703, line: 522, baseType: !188, size: 64, offset: 960)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2702, file: !2703, line: 528, baseType: !2740, size: 64, offset: 1024)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2703, line: 10, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2702, file: !2703, line: 535, baseType: !188, size: 64, offset: 1088)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2702, file: !2703, line: 537, baseType: !31, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2702, file: !2703, line: 540, baseType: !2745, size: 33280, offset: 1536)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2746, line: 317, size: 33280, elements: !2747)
!2746 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2747 = !{!2748, !2749, !2750}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2745, file: !2746, line: 330, baseType: !31, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2745, file: !2746, line: 337, baseType: !188, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2745, file: !2746, line: 348, baseType: !2751, size: 32768, offset: 512)
!2751 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2746, line: 304, size: 32768, elements: !2752)
!2752 = !{!2753, !2768, !2807, !2857, !2870}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2751, file: !2746, line: 305, baseType: !2754, size: 896)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2746, line: 12, size: 896, elements: !2755)
!2755 = !{!2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2767}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2754, file: !2746, line: 13, baseType: !27, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2754, file: !2746, line: 14, baseType: !27, size: 32, offset: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2754, file: !2746, line: 15, baseType: !27, size: 32, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2754, file: !2746, line: 16, baseType: !27, size: 32, offset: 96)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2754, file: !2746, line: 17, baseType: !27, size: 32, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2754, file: !2746, line: 18, baseType: !27, size: 32, offset: 160)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2754, file: !2746, line: 19, baseType: !27, size: 32, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2754, file: !2746, line: 22, baseType: !2764, size: 640, offset: 224)
!2764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 640, elements: !2765)
!2765 = !{!2766}
!2766 = !DISubrange(count: 20)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2754, file: !2746, line: 25, baseType: !27, size: 32, offset: 864)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2751, file: !2746, line: 306, baseType: !2769, size: 4096, align: 128)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2746, line: 34, size: 4096, align: 128, elements: !2770)
!2770 = !{!2771, !2772, !2773, !2774, !2775, !2790, !2791, !2792, !2796, !2798, !2802}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2769, file: !2746, line: 35, baseType: !766, size: 16)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2769, file: !2746, line: 36, baseType: !766, size: 16, offset: 16)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2769, file: !2746, line: 37, baseType: !766, size: 16, offset: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2769, file: !2746, line: 38, baseType: !766, size: 16, offset: 48)
!2775 = !DIDerivedType(tag: DW_TAG_member, scope: !2769, file: !2746, line: 39, baseType: !2776, size: 128, offset: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2769, file: !2746, line: 39, size: 128, elements: !2777)
!2777 = !{!2778, !2783}
!2778 = !DIDerivedType(tag: DW_TAG_member, scope: !2776, file: !2746, line: 40, baseType: !2779, size: 128)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2776, file: !2746, line: 40, size: 128, elements: !2780)
!2780 = !{!2781, !2782}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2779, file: !2746, line: 41, baseType: !283, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2779, file: !2746, line: 42, baseType: !283, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, scope: !2776, file: !2746, line: 44, baseType: !2784, size: 128)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2776, file: !2746, line: 44, size: 128, elements: !2785)
!2785 = !{!2786, !2787, !2788, !2789}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2784, file: !2746, line: 45, baseType: !27, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2784, file: !2746, line: 46, baseType: !27, size: 32, offset: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2784, file: !2746, line: 47, baseType: !27, size: 32, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2784, file: !2746, line: 48, baseType: !27, size: 32, offset: 96)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2769, file: !2746, line: 51, baseType: !27, size: 32, offset: 192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2769, file: !2746, line: 52, baseType: !27, size: 32, offset: 224)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2769, file: !2746, line: 55, baseType: !2793, size: 1024, offset: 256)
!2793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1024, elements: !2794)
!2794 = !{!2795}
!2795 = !DISubrange(count: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2769, file: !2746, line: 58, baseType: !2797, size: 2048, offset: 1280)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !143)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2769, file: !2746, line: 60, baseType: !2799, size: 384, offset: 3328)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 384, elements: !2800)
!2800 = !{!2801}
!2801 = !DISubrange(count: 12)
!2802 = !DIDerivedType(tag: DW_TAG_member, scope: !2769, file: !2746, line: 62, baseType: !2803, size: 384, offset: 3712)
!2803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2769, file: !2746, line: 62, size: 384, elements: !2804)
!2804 = !{!2805, !2806}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2803, file: !2746, line: 63, baseType: !2799, size: 384)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2803, file: !2746, line: 64, baseType: !2799, size: 384)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2751, file: !2746, line: 307, baseType: !2808, size: 1088)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2746, line: 79, size: 1088, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2856}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2808, file: !2746, line: 80, baseType: !27, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2808, file: !2746, line: 81, baseType: !27, size: 32, offset: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2808, file: !2746, line: 82, baseType: !27, size: 32, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2808, file: !2746, line: 83, baseType: !27, size: 32, offset: 96)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2808, file: !2746, line: 84, baseType: !27, size: 32, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2808, file: !2746, line: 85, baseType: !27, size: 32, offset: 160)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2808, file: !2746, line: 86, baseType: !27, size: 32, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2808, file: !2746, line: 88, baseType: !2764, size: 640, offset: 224)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2808, file: !2746, line: 89, baseType: !1273, size: 8, offset: 864)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2808, file: !2746, line: 90, baseType: !1273, size: 8, offset: 872)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2808, file: !2746, line: 91, baseType: !1273, size: 8, offset: 880)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2808, file: !2746, line: 92, baseType: !1273, size: 8, offset: 888)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2808, file: !2746, line: 93, baseType: !1273, size: 8, offset: 896)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2808, file: !2746, line: 94, baseType: !1273, size: 8, offset: 904)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2808, file: !2746, line: 95, baseType: !2825, size: 64, offset: 960)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2827, line: 11, size: 128, elements: !2828)
!2827 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2828 = !{!2829, !2830}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2826, file: !2827, line: 12, baseType: !173, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2826, file: !2827, line: 13, baseType: !2831, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2833, line: 56, size: 1344, elements: !2834)
!2833 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2834 = !{!2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2832, file: !2833, line: 61, baseType: !188, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2832, file: !2833, line: 62, baseType: !188, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2832, file: !2833, line: 63, baseType: !188, size: 64, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2832, file: !2833, line: 64, baseType: !188, size: 64, offset: 192)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2832, file: !2833, line: 65, baseType: !188, size: 64, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2832, file: !2833, line: 66, baseType: !188, size: 64, offset: 320)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2832, file: !2833, line: 68, baseType: !188, size: 64, offset: 384)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2832, file: !2833, line: 69, baseType: !188, size: 64, offset: 448)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2832, file: !2833, line: 70, baseType: !188, size: 64, offset: 512)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2832, file: !2833, line: 71, baseType: !188, size: 64, offset: 576)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2832, file: !2833, line: 72, baseType: !188, size: 64, offset: 640)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2832, file: !2833, line: 73, baseType: !188, size: 64, offset: 704)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2832, file: !2833, line: 74, baseType: !188, size: 64, offset: 768)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2832, file: !2833, line: 75, baseType: !188, size: 64, offset: 832)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2832, file: !2833, line: 76, baseType: !188, size: 64, offset: 896)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2832, file: !2833, line: 81, baseType: !188, size: 64, offset: 960)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2832, file: !2833, line: 83, baseType: !188, size: 64, offset: 1024)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2832, file: !2833, line: 84, baseType: !188, size: 64, offset: 1088)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2832, file: !2833, line: 85, baseType: !188, size: 64, offset: 1152)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2832, file: !2833, line: 86, baseType: !188, size: 64, offset: 1216)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2832, file: !2833, line: 87, baseType: !188, size: 64, offset: 1280)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2808, file: !2746, line: 96, baseType: !27, size: 32, offset: 1024)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2751, file: !2746, line: 308, baseType: !2858, size: 4608, align: 512)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2746, line: 289, size: 4608, align: 512, elements: !2859)
!2859 = !{!2860, !2861, !2868}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2858, file: !2746, line: 290, baseType: !2769, size: 4096, align: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2858, file: !2746, line: 291, baseType: !2862, size: 512, offset: 4096)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2746, line: 268, size: 512, elements: !2863)
!2863 = !{!2864, !2865, !2866}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2862, file: !2746, line: 269, baseType: !283, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2862, file: !2746, line: 270, baseType: !283, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2862, file: !2746, line: 271, baseType: !2867, size: 384, offset: 128)
!2867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 384, elements: !1551)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2858, file: !2746, line: 292, baseType: !2869, offset: 4608)
!2869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1273, elements: !1649)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2751, file: !2746, line: 309, baseType: !2871, size: 32768)
!2871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1273, size: 32768, elements: !2872)
!2872 = !{!2873}
!2873 = !DISubrange(count: 4096)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1129, file: !636, line: 378, baseType: !2875, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1125, file: !636, line: 384, baseType: !1430, size: 192, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !894, file: !636, line: 500, baseType: !97, offset: 6656)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !894, file: !636, line: 501, baseType: !2879, size: 64, offset: 6656)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !636, line: 387, flags: DIFlagFwdDecl)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !894, file: !636, line: 516, baseType: !1639, size: 64, offset: 6720)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !894, file: !636, line: 519, baseType: !217, size: 64, offset: 6784)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !894, file: !636, line: 521, baseType: !2884, size: 64, offset: 6848)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !636, line: 521, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !894, file: !636, line: 545, baseType: !661, size: 32, offset: 6912)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !894, file: !636, line: 548, baseType: !352, size: 8, offset: 6944)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !894, file: !636, line: 550, baseType: !2889, offset: 6952)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2890, line: 142, elements: !111)
!2890 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !894, file: !636, line: 554, baseType: !2044, size: 256, offset: 6976)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !894, file: !636, line: 557, baseType: !27, size: 32, offset: 7232)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !891, file: !636, line: 565, baseType: !2040, offset: 7296)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !887, file: !636, line: 151, baseType: !661, size: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !879, file: !636, line: 156, baseType: !97, offset: 256)
!2896 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !636, line: 159, baseType: !2897, size: 128)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !636, line: 159, size: 128, elements: !2898)
!2898 = !{!2899, !2970}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2897, file: !636, line: 161, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !2902, line: 110, size: 1152, elements: !2903)
!2902 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!2903 = !{!2904, !2914, !2935, !2936, !2937, !2944, !2945, !2957, !2958, !2959}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2901, file: !2902, line: 111, baseType: !2905, size: 384)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !2902, line: 19, size: 384, elements: !2906)
!2906 = !{!2907, !2909, !2910, !2911, !2912, !2913}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2905, file: !2902, line: 20, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2905, file: !2902, line: 21, baseType: !2908, size: 64, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2905, file: !2902, line: 22, baseType: !2908, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2905, file: !2902, line: 23, baseType: !188, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2905, file: !2902, line: 24, baseType: !188, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2905, file: !2902, line: 25, baseType: !188, size: 64, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2901, file: !2902, line: 112, baseType: !2915, size: 64, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2917, line: 105, size: 128, elements: !2918)
!2917 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2918 = !{!2919, !2920}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2916, file: !2917, line: 110, baseType: !188, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2916, file: !2917, line: 118, baseType: !2921, size: 64, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2917, line: 95, size: 448, elements: !2923)
!2923 = !{!2924, !2925, !2930, !2931, !2932, !2933, !2934}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2922, file: !2917, line: 96, baseType: !591, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2922, file: !2917, line: 97, baseType: !2926, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2917, line: 60, baseType: !2928)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{null, !2915}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2922, file: !2917, line: 98, baseType: !2926, size: 64, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2922, file: !2917, line: 99, baseType: !352, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2922, file: !2917, line: 100, baseType: !352, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2922, file: !2917, line: 101, baseType: !231, size: 128, align: 64, offset: 256)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2922, file: !2917, line: 102, baseType: !2915, size: 64, offset: 384)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2901, file: !2902, line: 113, baseType: !2916, size: 128, offset: 448)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2901, file: !2902, line: 114, baseType: !1430, size: 192, offset: 576)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2901, file: !2902, line: 115, baseType: !2938, size: 32, offset: 768)
!2938 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !2902, line: 59, baseType: !31, size: 32, elements: !2939)
!2939 = !{!2940, !2941, !2942, !2943}
!2940 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!2941 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!2942 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!2943 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2901, file: !2902, line: 116, baseType: !31, size: 32, offset: 800)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2901, file: !2902, line: 117, baseType: !2946, size: 64, offset: 832)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2948)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !2902, line: 67, size: 256, elements: !2949)
!2949 = !{!2950, !2951, !2955, !2956}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2948, file: !2902, line: 73, baseType: !747, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2948, file: !2902, line: 78, baseType: !2952, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2900}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2948, file: !2902, line: 83, baseType: !2952, size: 64, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2948, file: !2902, line: 89, baseType: !944, size: 64, offset: 192)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2901, file: !2902, line: 118, baseType: !212, size: 64, offset: 896)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2901, file: !2902, line: 119, baseType: !6, size: 32, offset: 960)
!2959 = !DIDerivedType(tag: DW_TAG_member, scope: !2901, file: !2902, line: 120, baseType: !2960, size: 128, offset: 1024)
!2960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2901, file: !2902, line: 120, size: 128, elements: !2961)
!2961 = !{!2962, !2968}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2960, file: !2902, line: 121, baseType: !2963, size: 128)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2964, line: 6, size: 128, elements: !2965)
!2964 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2965 = !{!2966, !2967}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2963, file: !2964, line: 7, baseType: !283, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2963, file: !2964, line: 8, baseType: !283, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2960, file: !2902, line: 122, baseType: !2969)
!2969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2963, elements: !1649)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2897, file: !636, line: 162, baseType: !212, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !640, file: !636, line: 176, baseType: !231, size: 128, align: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !636, line: 179, baseType: !2973, size: 32, offset: 384)
!2973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !636, line: 179, size: 32, elements: !2974)
!2974 = !{!2975, !2976, !2977, !2978}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2973, file: !636, line: 184, baseType: !661, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2973, file: !636, line: 192, baseType: !31, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2973, file: !636, line: 194, baseType: !31, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2973, file: !636, line: 195, baseType: !6, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !635, file: !636, line: 199, baseType: !661, size: 32, offset: 416)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !521, file: !219, line: 1964, baseType: !2981, size: 64, offset: 1344)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!173, !461, !2984}
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2986, line: 12, size: 256, elements: !2987)
!2986 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2987 = !{!2988, !2989, !2990, !2991, !2992}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2985, file: !2986, line: 13, baseType: !657, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2985, file: !2986, line: 16, baseType: !6, size: 32, offset: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2985, file: !2986, line: 23, baseType: !188, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2985, file: !2986, line: 30, baseType: !188, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2985, file: !2986, line: 33, baseType: !2993, size: 64, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !636, line: 27, flags: DIFlagFwdDecl)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !521, file: !219, line: 1966, baseType: !2981, size: 64, offset: 1408)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !462, file: !219, line: 1424, baseType: !2997, size: 64, offset: 448)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2999)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !3000, line: 322, size: 704, elements: !3001)
!3000 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!3001 = !{!3002, !3053, !3057, !3061, !3062, !3063, !3064, !3065, !3070, !3075, !3079}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2999, file: !3000, line: 323, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!6, !3006}
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !3000, line: 294, size: 1600, elements: !3008)
!3008 = !{!3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3038, !3039, !3040}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3007, file: !3000, line: 295, baseType: !503, size: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3007, file: !3000, line: 296, baseType: !83, size: 128, offset: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3007, file: !3000, line: 297, baseType: !83, size: 128, offset: 256)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3007, file: !3000, line: 298, baseType: !83, size: 128, offset: 384)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3007, file: !3000, line: 299, baseType: !587, size: 192, offset: 512)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3007, file: !3000, line: 300, baseType: !97, offset: 704)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3007, file: !3000, line: 301, baseType: !661, size: 32, offset: 704)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3007, file: !3000, line: 302, baseType: !461, size: 64, offset: 768)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3007, file: !3000, line: 303, baseType: !3018, size: 64, offset: 832)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !3000, line: 68, size: 64, elements: !3019)
!3019 = !{!3020, !3032}
!3020 = !DIDerivedType(tag: DW_TAG_member, scope: !3018, file: !3000, line: 69, baseType: !3021, size: 32)
!3021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3018, file: !3000, line: 69, size: 32, elements: !3022)
!3022 = !{!3023, !3024, !3025}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3021, file: !3000, line: 70, baseType: !297, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3021, file: !3000, line: 71, baseType: !305, size: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3021, file: !3000, line: 72, baseType: !3026, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3027, line: 24, baseType: !3028)
!3027 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3027, line: 22, size: 32, elements: !3029)
!3029 = !{!3030}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3028, file: !3027, line: 23, baseType: !3031, size: 32)
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3027, line: 20, baseType: !303)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3018, file: !3000, line: 74, baseType: !3033, size: 32, offset: 32)
!3033 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !3000, line: 54, baseType: !31, size: 32, elements: !3034)
!3034 = !{!3035, !3036, !3037}
!3035 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!3036 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!3037 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3007, file: !3000, line: 304, baseType: !393, size: 64, offset: 896)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3007, file: !3000, line: 305, baseType: !188, size: 64, offset: 960)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3007, file: !3000, line: 306, baseType: !3041, size: 576, offset: 1024)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !3000, line: 205, size: 576, elements: !3042)
!3042 = !{!3043, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3041, file: !3000, line: 206, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !3000, line: 66, baseType: !395)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3041, file: !3000, line: 207, baseType: !3044, size: 64, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3041, file: !3000, line: 208, baseType: !3044, size: 64, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3041, file: !3000, line: 209, baseType: !3044, size: 64, offset: 192)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3041, file: !3000, line: 210, baseType: !3044, size: 64, offset: 256)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3041, file: !3000, line: 211, baseType: !3044, size: 64, offset: 320)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3041, file: !3000, line: 212, baseType: !3044, size: 64, offset: 384)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3041, file: !3000, line: 213, baseType: !401, size: 64, offset: 448)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3041, file: !3000, line: 214, baseType: !401, size: 64, offset: 512)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2999, file: !3000, line: 324, baseType: !3054, size: 64, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!3006, !461, !6}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2999, file: !3000, line: 325, baseType: !3058, size: 64, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !3006}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2999, file: !3000, line: 326, baseType: !3003, size: 64, offset: 192)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2999, file: !3000, line: 327, baseType: !3003, size: 64, offset: 256)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2999, file: !3000, line: 328, baseType: !3003, size: 64, offset: 320)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2999, file: !3000, line: 329, baseType: !549, size: 64, offset: 384)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2999, file: !3000, line: 332, baseType: !3066, size: 64, offset: 448)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!3069, !291}
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2999, file: !3000, line: 333, baseType: !3071, size: 64, offset: 512)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!6, !291, !3074}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2999, file: !3000, line: 335, baseType: !3076, size: 64, offset: 576)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!6, !291, !3069}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2999, file: !3000, line: 337, baseType: !3080, size: 64, offset: 640)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!6, !461, !3083}
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !462, file: !219, line: 1425, baseType: !3085, size: 64, offset: 512)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3087)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !3000, line: 428, size: 704, elements: !3088)
!3088 = !{!3089, !3093, !3094, !3098, !3099, !3100, !3115, !3138, !3142, !3143, !3166}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3087, file: !3000, line: 429, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!6, !461, !6, !6, !411}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3087, file: !3000, line: 430, baseType: !549, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3087, file: !3000, line: 431, baseType: !3095, size: 64, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!6, !461, !31}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3087, file: !3000, line: 432, baseType: !3095, size: 64, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3087, file: !3000, line: 433, baseType: !549, size: 64, offset: 256)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3087, file: !3000, line: 434, baseType: !3101, size: 64, offset: 320)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!6, !461, !6, !3104}
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !3000, line: 415, size: 256, elements: !3106)
!3106 = !{!3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3105, file: !3000, line: 416, baseType: !6, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3105, file: !3000, line: 417, baseType: !31, size: 32, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3105, file: !3000, line: 418, baseType: !31, size: 32, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3105, file: !3000, line: 420, baseType: !31, size: 32, offset: 96)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3105, file: !3000, line: 421, baseType: !31, size: 32, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3105, file: !3000, line: 422, baseType: !31, size: 32, offset: 160)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3105, file: !3000, line: 423, baseType: !31, size: 32, offset: 192)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3105, file: !3000, line: 424, baseType: !31, size: 32, offset: 224)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3087, file: !3000, line: 435, baseType: !3116, size: 64, offset: 384)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!6, !461, !3018, !3119}
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !3000, line: 343, size: 960, elements: !3121)
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3120, file: !3000, line: 344, baseType: !6, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3120, file: !3000, line: 345, baseType: !283, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3120, file: !3000, line: 346, baseType: !283, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3120, file: !3000, line: 347, baseType: !283, size: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3120, file: !3000, line: 348, baseType: !283, size: 64, offset: 256)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3120, file: !3000, line: 349, baseType: !283, size: 64, offset: 320)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3120, file: !3000, line: 350, baseType: !283, size: 64, offset: 384)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3120, file: !3000, line: 351, baseType: !597, size: 64, offset: 448)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3120, file: !3000, line: 353, baseType: !597, size: 64, offset: 512)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3120, file: !3000, line: 354, baseType: !6, size: 32, offset: 576)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3120, file: !3000, line: 355, baseType: !6, size: 32, offset: 608)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3120, file: !3000, line: 356, baseType: !283, size: 64, offset: 640)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3120, file: !3000, line: 357, baseType: !283, size: 64, offset: 704)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3120, file: !3000, line: 358, baseType: !283, size: 64, offset: 768)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3120, file: !3000, line: 359, baseType: !597, size: 64, offset: 832)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3120, file: !3000, line: 360, baseType: !6, size: 32, offset: 896)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3087, file: !3000, line: 436, baseType: !3139, size: 64, offset: 448)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!6, !461, !3083, !3119}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3087, file: !3000, line: 438, baseType: !3116, size: 64, offset: 512)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3087, file: !3000, line: 439, baseType: !3144, size: 64, offset: 576)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!6, !461, !3147}
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !3000, line: 409, size: 1408, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3148, file: !3000, line: 410, baseType: !31, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3148, file: !3000, line: 411, baseType: !3152, size: 1344, offset: 64)
!3152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3153, size: 1344, elements: !139)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !3000, line: 395, size: 448, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3165}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3153, file: !3000, line: 396, baseType: !31, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3153, file: !3000, line: 397, baseType: !31, size: 32, offset: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3153, file: !3000, line: 399, baseType: !31, size: 32, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3153, file: !3000, line: 400, baseType: !31, size: 32, offset: 96)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3153, file: !3000, line: 401, baseType: !31, size: 32, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3153, file: !3000, line: 402, baseType: !31, size: 32, offset: 160)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3153, file: !3000, line: 403, baseType: !31, size: 32, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3153, file: !3000, line: 404, baseType: !285, size: 64, offset: 256)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3153, file: !3000, line: 405, baseType: !3164, size: 64, offset: 320)
!3164 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !84, line: 126, baseType: !283)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3153, file: !3000, line: 406, baseType: !3164, size: 64, offset: 384)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3087, file: !3000, line: 440, baseType: !3095, size: 64, offset: 640)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !462, file: !219, line: 1426, baseType: !3168, size: 64, offset: 576)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3170)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !219, line: 49, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !462, file: !219, line: 1427, baseType: !188, size: 64, offset: 640)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !462, file: !219, line: 1428, baseType: !188, size: 64, offset: 704)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !462, file: !219, line: 1429, baseType: !188, size: 64, offset: 768)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !462, file: !219, line: 1430, baseType: !248, size: 64, offset: 832)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !462, file: !219, line: 1431, baseType: !681, size: 256, offset: 896)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !462, file: !219, line: 1432, baseType: !6, size: 32, offset: 1152)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !462, file: !219, line: 1433, baseType: !661, size: 32, offset: 1184)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !462, file: !219, line: 1437, baseType: !3179, size: 64, offset: 1216)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3182)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !219, line: 1437, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !462, file: !219, line: 1449, baseType: !3184, size: 64, offset: 1280)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !264, line: 34, size: 64, elements: !3185)
!3185 = !{!3186}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3184, file: !264, line: 35, baseType: !267, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !462, file: !219, line: 1450, baseType: !83, size: 128, offset: 1344)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !462, file: !219, line: 1451, baseType: !3189, size: 64, offset: 1472)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !219, line: 699, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !462, file: !219, line: 1452, baseType: !2500, size: 64, offset: 1536)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !462, file: !219, line: 1453, baseType: !3193, size: 64, offset: 1600)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !219, line: 1453, flags: DIFlagFwdDecl)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !462, file: !219, line: 1454, baseType: !503, size: 128, offset: 1664)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !462, file: !219, line: 1455, baseType: !31, size: 32, offset: 1792)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !462, file: !219, line: 1456, baseType: !3198, size: 2432, offset: 1856)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !3000, line: 518, size: 2432, elements: !3199)
!3199 = !{!3200, !3201, !3202, !3204, !3236}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3198, file: !3000, line: 519, baseType: !31, size: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3198, file: !3000, line: 520, baseType: !681, size: 256, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3198, file: !3000, line: 521, baseType: !3203, size: 192, offset: 320)
!3203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 192, elements: !139)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3198, file: !3000, line: 522, baseType: !3205, size: 1728, offset: 512)
!3205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3206, size: 1728, elements: !139)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !3000, line: 222, size: 576, elements: !3207)
!3207 = !{!3208, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3206, file: !3000, line: 223, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !3000, line: 443, size: 256, elements: !3211)
!3211 = !{!3212, !3213, !3226, !3227}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3210, file: !3000, line: 444, baseType: !6, size: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3210, file: !3000, line: 445, baseType: !3214, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3216)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !3000, line: 310, size: 512, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3216, file: !3000, line: 311, baseType: !549, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3216, file: !3000, line: 312, baseType: !549, size: 64, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3216, file: !3000, line: 313, baseType: !549, size: 64, offset: 128)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3216, file: !3000, line: 314, baseType: !549, size: 64, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3216, file: !3000, line: 315, baseType: !3003, size: 64, offset: 256)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3216, file: !3000, line: 316, baseType: !3003, size: 64, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3216, file: !3000, line: 317, baseType: !3003, size: 64, offset: 384)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3216, file: !3000, line: 318, baseType: !3080, size: 64, offset: 448)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3210, file: !3000, line: 446, baseType: !494, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3210, file: !3000, line: 447, baseType: !3209, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3206, file: !3000, line: 224, baseType: !6, size: 32, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3206, file: !3000, line: 226, baseType: !83, size: 128, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3206, file: !3000, line: 227, baseType: !188, size: 64, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3206, file: !3000, line: 228, baseType: !31, size: 32, offset: 320)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3206, file: !3000, line: 229, baseType: !31, size: 32, offset: 352)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3206, file: !3000, line: 230, baseType: !3044, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3206, file: !3000, line: 231, baseType: !3044, size: 64, offset: 448)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3206, file: !3000, line: 232, baseType: !212, size: 64, offset: 512)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3198, file: !3000, line: 523, baseType: !3237, size: 192, offset: 2240)
!3237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3214, size: 192, elements: !139)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !462, file: !219, line: 1458, baseType: !3239, size: 2112, offset: 4288)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !219, line: 1410, size: 2112, elements: !3240)
!3240 = !{!3241, !3242, !3243}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3239, file: !219, line: 1411, baseType: !6, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3239, file: !219, line: 1412, baseType: !1409, size: 128, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3239, file: !219, line: 1413, baseType: !3244, size: 1920, offset: 192)
!3244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3245, size: 1920, elements: !139)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3246, line: 12, size: 640, elements: !3247)
!3246 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3247 = !{!3248, !3256, !3258, !3263, !3264}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3245, file: !3246, line: 13, baseType: !3249, size: 320)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3250, line: 17, size: 320, elements: !3251)
!3250 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3251 = !{!3252, !3253, !3254, !3255}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3249, file: !3250, line: 18, baseType: !6, size: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3249, file: !3250, line: 19, baseType: !6, size: 32, offset: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3249, file: !3250, line: 20, baseType: !1409, size: 128, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3249, file: !3250, line: 22, baseType: !231, size: 128, align: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3245, file: !3246, line: 14, baseType: !3257, size: 64, offset: 320)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3245, file: !3246, line: 15, baseType: !3259, size: 64, offset: 384)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3260, line: 16, size: 64, elements: !3261)
!3260 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3261 = !{!3262}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3259, file: !3260, line: 17, baseType: !1132, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3245, file: !3246, line: 16, baseType: !1409, size: 128, offset: 448)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3245, file: !3246, line: 17, baseType: !661, size: 32, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !462, file: !219, line: 1465, baseType: !212, size: 64, offset: 6400)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !462, file: !219, line: 1468, baseType: !27, size: 32, offset: 6464)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !462, file: !219, line: 1470, baseType: !401, size: 64, offset: 6528)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !462, file: !219, line: 1471, baseType: !401, size: 64, offset: 6592)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !462, file: !219, line: 1473, baseType: !29, size: 32, offset: 6656)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !462, file: !219, line: 1474, baseType: !3271, size: 64, offset: 6720)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !219, line: 603, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !462, file: !219, line: 1477, baseType: !3274, size: 256, offset: 6784)
!3274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !2794)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !462, file: !219, line: 1478, baseType: !3276, size: 128, offset: 7040)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3277, line: 18, baseType: !3278)
!3277 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3277, line: 16, size: 128, elements: !3279)
!3279 = !{!3280}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3278, file: !3277, line: 17, baseType: !3281, size: 128)
!3281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1274, size: 128, elements: !24)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !462, file: !219, line: 1480, baseType: !31, size: 32, offset: 7168)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !462, file: !219, line: 1481, baseType: !3284, size: 32, offset: 7200)
!3284 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !84, line: 150, baseType: !31)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !462, file: !219, line: 1487, baseType: !587, size: 192, offset: 7232)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !462, file: !219, line: 1493, baseType: !80, size: 64, offset: 7424)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !462, file: !219, line: 1495, baseType: !3288, size: 64, offset: 7488)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3290)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !246, line: 135, size: 1024, align: 512, elements: !3291)
!3291 = !{!3292, !3296, !3297, !3304, !3310, !3314, !3318, !3322, !3323, !3327, !3331, !3336, !3340}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3290, file: !246, line: 136, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!6, !248, !31}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3290, file: !246, line: 137, baseType: !3293, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3290, file: !246, line: 138, baseType: !3298, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!6, !3301, !3303}
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3290, file: !246, line: 139, baseType: !3305, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!6, !3301, !31, !80, !3308}
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3290, file: !246, line: 141, baseType: !3311, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!6, !3301}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3290, file: !246, line: 142, baseType: !3315, size: 64, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!6, !248}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3290, file: !246, line: 143, baseType: !3319, size: 64, offset: 384)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !248}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3290, file: !246, line: 144, baseType: !3319, size: 64, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3290, file: !246, line: 145, baseType: !3324, size: 64, offset: 512)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{null, !248, !291}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3290, file: !246, line: 146, baseType: !3328, size: 64, offset: 576)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!138, !248, !138, !6}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3290, file: !246, line: 147, baseType: !3332, size: 64, offset: 640)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!244, !3335}
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3290, file: !246, line: 148, baseType: !3337, size: 64, offset: 704)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!6, !411, !352}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3290, file: !246, line: 149, baseType: !3341, size: 64, offset: 768)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!248, !248, !3344}
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !462, file: !219, line: 1500, baseType: !6, size: 32, offset: 7552)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !462, file: !219, line: 1502, baseType: !3348, size: 448, offset: 7616)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2986, line: 60, size: 448, elements: !3349)
!3349 = !{!3350, !3355, !3356, !3357, !3358, !3359, !3360}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3348, file: !2986, line: 61, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!188, !3354, !2984}
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3348, file: !2986, line: 63, baseType: !3351, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3348, file: !2986, line: 66, baseType: !173, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3348, file: !2986, line: 67, baseType: !6, size: 32, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3348, file: !2986, line: 68, baseType: !31, size: 32, offset: 224)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3348, file: !2986, line: 71, baseType: !83, size: 128, offset: 256)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3348, file: !2986, line: 77, baseType: !3361, size: 64, offset: 384)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !462, file: !219, line: 1505, baseType: !591, size: 64, offset: 8064)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !462, file: !219, line: 1508, baseType: !591, size: 64, offset: 8128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !462, file: !219, line: 1511, baseType: !6, size: 32, offset: 8192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !462, file: !219, line: 1514, baseType: !823, size: 32, offset: 8224)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !462, file: !219, line: 1517, baseType: !3367, size: 64, offset: 8256)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2045, line: 18, flags: DIFlagFwdDecl)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !462, file: !219, line: 1518, baseType: !499, size: 64, offset: 8320)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !462, file: !219, line: 1525, baseType: !1639, size: 64, offset: 8384)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !462, file: !219, line: 1532, baseType: !3372, size: 64, offset: 8448)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3373, line: 52, size: 64, elements: !3374)
!3373 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3374 = !{!3375}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3372, file: !3373, line: 53, baseType: !3376, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3373, line: 40, size: 256, elements: !3378)
!3378 = !{!3379, !3380, !3385}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3377, file: !3373, line: 42, baseType: !97)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3377, file: !3373, line: 44, baseType: !3381, size: 192)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3373, line: 28, size: 192, elements: !3382)
!3382 = !{!3383, !3384}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3381, file: !3373, line: 29, baseType: !83, size: 128)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3381, file: !3373, line: 31, baseType: !173, size: 64, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3377, file: !3373, line: 49, baseType: !173, size: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !462, file: !219, line: 1533, baseType: !3372, size: 64, offset: 8512)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !462, file: !219, line: 1534, baseType: !231, size: 128, align: 64, offset: 8576)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !462, file: !219, line: 1535, baseType: !2044, size: 256, offset: 8704)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !462, file: !219, line: 1537, baseType: !587, size: 192, offset: 8960)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !462, file: !219, line: 1542, baseType: !6, size: 32, offset: 9152)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !462, file: !219, line: 1545, baseType: !97, offset: 9184)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !462, file: !219, line: 1546, baseType: !83, size: 128, offset: 9216)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !462, file: !219, line: 1548, baseType: !97, offset: 9344)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !462, file: !219, line: 1549, baseType: !83, size: 128, offset: 9344)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !292, file: !219, line: 624, baseType: !647, size: 64, offset: 256)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !292, file: !219, line: 631, baseType: !188, size: 64, offset: 320)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !219, line: 639, baseType: !3398, size: 32, offset: 384)
!3398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !219, line: 639, size: 32, elements: !3399)
!3399 = !{!3400, !3402}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3398, file: !219, line: 640, baseType: !3401, size: 32)
!3401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3398, file: !219, line: 641, baseType: !31, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !292, file: !219, line: 643, baseType: !375, size: 32, offset: 416)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !292, file: !219, line: 644, baseType: !393, size: 64, offset: 448)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !292, file: !219, line: 645, baseType: !397, size: 128, offset: 512)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !292, file: !219, line: 646, baseType: !397, size: 128, offset: 640)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !292, file: !219, line: 647, baseType: !397, size: 128, offset: 768)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !292, file: !219, line: 648, baseType: !97, offset: 896)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !292, file: !219, line: 649, baseType: !180, size: 16, offset: 896)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !292, file: !219, line: 650, baseType: !1273, size: 8, offset: 912)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !292, file: !219, line: 651, baseType: !1273, size: 8, offset: 920)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !292, file: !219, line: 652, baseType: !3164, size: 64, offset: 960)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !292, file: !219, line: 659, baseType: !188, size: 64, offset: 1024)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !292, file: !219, line: 660, baseType: !681, size: 256, offset: 1088)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !292, file: !219, line: 662, baseType: !188, size: 64, offset: 1344)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !292, file: !219, line: 663, baseType: !188, size: 64, offset: 1408)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !292, file: !219, line: 665, baseType: !503, size: 128, offset: 1472)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !292, file: !219, line: 666, baseType: !83, size: 128, offset: 1600)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !292, file: !219, line: 675, baseType: !83, size: 128, offset: 1728)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !292, file: !219, line: 676, baseType: !83, size: 128, offset: 1856)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !292, file: !219, line: 677, baseType: !83, size: 128, offset: 1984)
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !219, line: 678, baseType: !3423, size: 128, offset: 2112)
!3423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !219, line: 678, size: 128, elements: !3424)
!3424 = !{!3425, !3426}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3423, file: !219, line: 679, baseType: !499, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3423, file: !219, line: 680, baseType: !231, size: 128, align: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !292, file: !219, line: 682, baseType: !593, size: 64, offset: 2240)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !292, file: !219, line: 683, baseType: !593, size: 64, offset: 2304)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !292, file: !219, line: 684, baseType: !661, size: 32, offset: 2368)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !292, file: !219, line: 685, baseType: !661, size: 32, offset: 2400)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !292, file: !219, line: 686, baseType: !661, size: 32, offset: 2432)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !292, file: !219, line: 688, baseType: !661, size: 32, offset: 2464)
!3433 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !219, line: 690, baseType: !3434, size: 64, offset: 2496)
!3434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !219, line: 690, size: 64, elements: !3435)
!3435 = !{!3436, !3437}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3434, file: !219, line: 691, baseType: !1757, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3434, file: !219, line: 692, baseType: !528, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !292, file: !219, line: 694, baseType: !3439, size: 64, offset: 2560)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !219, line: 1100, size: 384, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3440, file: !219, line: 1101, baseType: !97)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3440, file: !219, line: 1102, baseType: !83, size: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3440, file: !219, line: 1103, baseType: !83, size: 128, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3440, file: !219, line: 1104, baseType: !83, size: 128, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !292, file: !219, line: 695, baseType: !648, size: 1216, align: 64, offset: 2624)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !292, file: !219, line: 696, baseType: !83, size: 128, offset: 3840)
!3448 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !219, line: 697, baseType: !3449, size: 64, offset: 3968)
!3449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !219, line: 697, size: 64, elements: !3450)
!3450 = !{!3451, !3452, !3453, !3454, !3455}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3449, file: !219, line: 698, baseType: !1952, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3449, file: !219, line: 699, baseType: !3189, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3449, file: !219, line: 700, baseType: !1750, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3449, file: !219, line: 701, baseType: !138, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3449, file: !219, line: 702, baseType: !31, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !292, file: !219, line: 705, baseType: !29, size: 32, offset: 4032)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !292, file: !219, line: 708, baseType: !29, size: 32, offset: 4064)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !292, file: !219, line: 709, baseType: !3271, size: 64, offset: 4096)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !292, file: !219, line: 720, baseType: !212, size: 64, offset: 4160)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !249, file: !246, line: 98, baseType: !3461, size: 256, offset: 448)
!3461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 256, elements: !2794)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !249, file: !246, line: 101, baseType: !3463, size: 32, offset: 704)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3464, line: 25, size: 32, elements: !3465)
!3464 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3465 = !{!3466}
!3466 = !DIDerivedType(tag: DW_TAG_member, scope: !3463, file: !3464, line: 26, baseType: !3467, size: 32)
!3467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3463, file: !3464, line: 26, size: 32, elements: !3468)
!3468 = !{!3469}
!3469 = !DIDerivedType(tag: DW_TAG_member, scope: !3467, file: !3464, line: 30, baseType: !3470, size: 32)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3467, file: !3464, line: 30, size: 32, elements: !3471)
!3471 = !{!3472, !3473}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3470, file: !3464, line: 31, baseType: !97)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3470, file: !3464, line: 32, baseType: !6, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !249, file: !246, line: 102, baseType: !3288, size: 64, offset: 768)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !249, file: !246, line: 103, baseType: !461, size: 64, offset: 832)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !249, file: !246, line: 104, baseType: !188, size: 64, offset: 896)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !249, file: !246, line: 105, baseType: !212, size: 64, offset: 960)
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !246, line: 107, baseType: !3479, size: 128, offset: 1024)
!3479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !246, line: 107, size: 128, elements: !3480)
!3480 = !{!3481, !3482}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3479, file: !246, line: 108, baseType: !83, size: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3479, file: !246, line: 109, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !249, file: !246, line: 111, baseType: !83, size: 128, offset: 1152)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !249, file: !246, line: 112, baseType: !83, size: 128, offset: 1280)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !249, file: !246, line: 120, baseType: !3487, size: 128, offset: 1408)
!3487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !246, line: 116, size: 128, elements: !3488)
!3488 = !{!3489, !3490, !3491}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3487, file: !246, line: 117, baseType: !503, size: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3487, file: !246, line: 118, baseType: !263, size: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3487, file: !246, line: 119, baseType: !231, size: 128, align: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !218, file: !219, line: 922, baseType: !291, size: 64, offset: 256)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !218, file: !219, line: 923, baseType: !1757, size: 64, offset: 320)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !218, file: !219, line: 929, baseType: !97, offset: 384)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !218, file: !219, line: 930, baseType: !3496, size: 32, offset: 384)
!3496 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !219, line: 296, baseType: !31, size: 32, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503}
!3498 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!3499 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!3500 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!3501 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!3502 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!3503 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !218, file: !219, line: 931, baseType: !591, size: 64, offset: 448)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !218, file: !219, line: 932, baseType: !31, size: 32, offset: 512)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !218, file: !219, line: 933, baseType: !3284, size: 32, offset: 544)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !218, file: !219, line: 934, baseType: !587, size: 192, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !218, file: !219, line: 935, baseType: !393, size: 64, offset: 768)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !218, file: !219, line: 936, baseType: !3510, size: 192, offset: 832)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !219, line: 885, size: 192, elements: !3511)
!3511 = !{!3512, !3513, !3514, !3522, !3523, !3524}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3510, file: !219, line: 886, baseType: !1856)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3510, file: !219, line: 887, baseType: !1398, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3510, file: !219, line: 888, baseType: !3515, size: 32, offset: 64)
!3515 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1400, line: 9, baseType: !31, size: 32, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521}
!3517 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!3518 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!3519 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!3520 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!3521 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3510, file: !219, line: 889, baseType: !297, size: 32, offset: 96)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3510, file: !219, line: 889, baseType: !297, size: 32, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3510, file: !219, line: 890, baseType: !6, size: 32, offset: 160)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !218, file: !219, line: 937, baseType: !1475, size: 64, offset: 1024)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !218, file: !219, line: 938, baseType: !3527, size: 256, offset: 1088)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !219, line: 896, size: 256, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3527, file: !219, line: 897, baseType: !188, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3527, file: !219, line: 898, baseType: !31, size: 32, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3527, file: !219, line: 899, baseType: !31, size: 32, offset: 96)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3527, file: !219, line: 902, baseType: !31, size: 32, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3527, file: !219, line: 903, baseType: !31, size: 32, offset: 160)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3527, file: !219, line: 904, baseType: !393, size: 64, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !218, file: !219, line: 940, baseType: !283, size: 64, offset: 1344)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !218, file: !219, line: 945, baseType: !212, size: 64, offset: 1408)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !218, file: !219, line: 949, baseType: !83, size: 128, offset: 1472)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !218, file: !219, line: 950, baseType: !83, size: 128, offset: 1600)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !218, file: !219, line: 952, baseType: !647, size: 64, offset: 1728)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !218, file: !219, line: 953, baseType: !823, size: 32, offset: 1792)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !218, file: !219, line: 954, baseType: !823, size: 32, offset: 1824)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !207, file: !163, line: 174, baseType: !214, size: 64, offset: 320)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !207, file: !163, line: 176, baseType: !3544, size: 64, offset: 384)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!6, !217, !90, !206, !897}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !195, file: !163, line: 90, baseType: !190, size: 64, offset: 192)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !195, file: !163, line: 91, baseType: !3549, size: 64, offset: 256)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !153, file: !77, line: 143, baseType: !3551, size: 64, offset: 256)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!3554, !90}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3556)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3557, line: 39, size: 384, elements: !3558)
!3557 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!3558 = !{!3559, !3565, !3569, !3573, !3579, !3583}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3556, file: !3557, line: 40, baseType: !3560, size: 32)
!3560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3557, line: 26, baseType: !31, size: 32, elements: !3561)
!3561 = !{!3562, !3563, !3564}
!3562 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!3563 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!3564 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3556, file: !3557, line: 41, baseType: !3566, size: 64, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!352}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3556, file: !3557, line: 42, baseType: !3570, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!212}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3556, file: !3557, line: 43, baseType: !3574, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!2691, !3577}
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3557, line: 19, flags: DIFlagFwdDecl)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3556, file: !3557, line: 44, baseType: !3580, size: 64, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!2691}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3556, file: !3557, line: 45, baseType: !330, size: 64, offset: 320)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !153, file: !77, line: 144, baseType: !3585, size: 64, offset: 320)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!2691, !90}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !153, file: !77, line: 145, baseType: !3589, size: 64, offset: 384)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !90, !3592, !3593}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !76, file: !77, line: 70, baseType: !3595, size: 64, offset: 384)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3597, line: 123, size: 1024, elements: !3598)
!3597 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3715, !3716, !3717, !3718, !3719}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3596, file: !3597, line: 124, baseType: !661, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3596, file: !3597, line: 125, baseType: !661, size: 32, offset: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3596, file: !3597, line: 135, baseType: !3595, size: 64, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3596, file: !3597, line: 136, baseType: !80, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3596, file: !3597, line: 138, baseType: !674, size: 192, align: 64, offset: 192)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3596, file: !3597, line: 140, baseType: !2691, size: 64, offset: 384)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3596, file: !3597, line: 141, baseType: !31, size: 32, offset: 448)
!3606 = !DIDerivedType(tag: DW_TAG_member, scope: !3596, file: !3597, line: 142, baseType: !3607, size: 256, offset: 512)
!3607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3596, file: !3597, line: 142, size: 256, elements: !3608)
!3608 = !{!3609, !3655, !3659}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3607, file: !3597, line: 143, baseType: !3610, size: 192)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3597, line: 91, size: 192, elements: !3611)
!3611 = !{!3612, !3613, !3614}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3610, file: !3597, line: 92, baseType: !188, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3610, file: !3597, line: 94, baseType: !670, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3610, file: !3597, line: 100, baseType: !3615, size: 64, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3597, line: 180, size: 704, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3627, !3628, !3629, !3653, !3654}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3616, file: !3597, line: 182, baseType: !3595, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3616, file: !3597, line: 183, baseType: !31, size: 32, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3616, file: !3597, line: 186, baseType: !3621, size: 192, offset: 128)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3622, line: 19, size: 192, elements: !3623)
!3622 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3623 = !{!3624, !3625, !3626}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3621, file: !3622, line: 20, baseType: !652, size: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3621, file: !3622, line: 21, baseType: !31, size: 32, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3621, file: !3622, line: 22, baseType: !31, size: 32, offset: 160)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3616, file: !3597, line: 187, baseType: !27, size: 32, offset: 320)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3616, file: !3597, line: 188, baseType: !27, size: 32, offset: 352)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3616, file: !3597, line: 189, baseType: !3630, size: 64, offset: 384)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3597, line: 168, size: 320, elements: !3632)
!3632 = !{!3633, !3637, !3641, !3645, !3649}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3631, file: !3597, line: 169, baseType: !3634, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!6, !575, !3615}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3631, file: !3597, line: 171, baseType: !3638, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!6, !3595, !80, !179}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3631, file: !3597, line: 173, baseType: !3642, size: 64, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!6, !3595}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3631, file: !3597, line: 174, baseType: !3646, size: 64, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!6, !3595, !3595, !80}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3631, file: !3597, line: 176, baseType: !3650, size: 64, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!6, !575, !3595, !3615}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3616, file: !3597, line: 192, baseType: !83, size: 128, offset: 448)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3616, file: !3597, line: 194, baseType: !1409, size: 128, offset: 576)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3607, file: !3597, line: 144, baseType: !3656, size: 64)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3597, line: 103, size: 64, elements: !3657)
!3657 = !{!3658}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3656, file: !3597, line: 104, baseType: !3595, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3607, file: !3597, line: 145, baseType: !3660, size: 256)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3597, line: 107, size: 256, elements: !3661)
!3661 = !{!3662, !3710, !3713, !3714}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3660, file: !3597, line: 108, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3665)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3597, line: 217, size: 768, elements: !3666)
!3666 = !{!3667, !3687, !3691, !3692, !3693, !3694, !3695, !3699, !3700, !3701, !3702, !3706}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3665, file: !3597, line: 222, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!6, !3671}
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3597, line: 197, size: 1088, elements: !3673)
!3673 = !{!3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3672, file: !3597, line: 199, baseType: !3595, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3672, file: !3597, line: 200, baseType: !217, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3672, file: !3597, line: 201, baseType: !575, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3672, file: !3597, line: 202, baseType: !212, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3672, file: !3597, line: 205, baseType: !587, size: 192, offset: 256)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3672, file: !3597, line: 206, baseType: !587, size: 192, offset: 448)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3672, file: !3597, line: 207, baseType: !6, size: 32, offset: 640)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3672, file: !3597, line: 208, baseType: !83, size: 128, offset: 704)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3672, file: !3597, line: 209, baseType: !138, size: 64, offset: 832)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3672, file: !3597, line: 211, baseType: !185, size: 64, offset: 896)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3672, file: !3597, line: 212, baseType: !352, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3672, file: !3597, line: 213, baseType: !352, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3672, file: !3597, line: 214, baseType: !925, size: 64, offset: 1024)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3665, file: !3597, line: 223, baseType: !3688, size: 64, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{null, !3671}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3665, file: !3597, line: 236, baseType: !619, size: 64, offset: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3665, file: !3597, line: 238, baseType: !606, size: 64, offset: 192)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3665, file: !3597, line: 239, baseType: !615, size: 64, offset: 256)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3665, file: !3597, line: 240, baseType: !611, size: 64, offset: 320)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3665, file: !3597, line: 242, baseType: !3696, size: 64, offset: 384)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!169, !3671, !138, !185, !393}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3665, file: !3597, line: 252, baseType: !185, size: 64, offset: 448)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3665, file: !3597, line: 259, baseType: !352, size: 8, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3665, file: !3597, line: 260, baseType: !3696, size: 64, offset: 576)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3665, file: !3597, line: 263, baseType: !3703, size: 64, offset: 640)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!1798, !3671, !1800}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3665, file: !3597, line: 266, baseType: !3707, size: 64, offset: 704)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!6, !3671, !897}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3660, file: !3597, line: 109, baseType: !3711, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3597, line: 31, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3660, file: !3597, line: 110, baseType: !393, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3660, file: !3597, line: 111, baseType: !3595, size: 64, offset: 192)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3596, file: !3597, line: 148, baseType: !212, size: 64, offset: 768)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3596, file: !3597, line: 154, baseType: !283, size: 64, offset: 832)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3596, file: !3597, line: 156, baseType: !180, size: 16, offset: 896)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3596, file: !3597, line: 157, baseType: !179, size: 16, offset: 912)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3596, file: !3597, line: 158, baseType: !3720, size: 64, offset: 960)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3597, line: 32, flags: DIFlagFwdDecl)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !76, file: !77, line: 71, baseType: !1736, size: 32, offset: 448)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !76, file: !77, line: 75, baseType: !31, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !76, file: !77, line: 76, baseType: !31, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !76, file: !77, line: 77, baseType: !31, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !76, file: !77, line: 78, baseType: !31, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !76, file: !77, line: 79, baseType: !31, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !72, file: !73, line: 463, baseType: !71, size: 64, offset: 512)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !72, file: !73, line: 465, baseType: !3730, size: 64, offset: 576)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !72, file: !73, line: 467, baseType: !80, size: 64, offset: 640)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !73, line: 468, baseType: !3734, size: 64, offset: 704)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3736)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3737)
!3737 = !{!3738, !3739, !3740, !3744, !3749, !3753}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3736, file: !73, line: 88, baseType: !80, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3736, file: !73, line: 89, baseType: !192, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3736, file: !73, line: 90, baseType: !3741, size: 64, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!6, !71, !133}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3736, file: !73, line: 91, baseType: !3745, size: 64, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!138, !71, !3748, !3592, !3593}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3736, file: !73, line: 93, baseType: !3750, size: 64, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{null, !71}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3736, file: !73, line: 95, baseType: !3754, size: 64, offset: 320)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3756)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !3757, line: 278, size: 1472, elements: !3758)
!3757 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!3758 = !{!3759, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3756, file: !3757, line: 279, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!6, !71}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3756, file: !3757, line: 280, baseType: !3750, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3756, file: !3757, line: 281, baseType: !3760, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3756, file: !3757, line: 282, baseType: !3760, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3756, file: !3757, line: 283, baseType: !3760, size: 64, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3756, file: !3757, line: 284, baseType: !3760, size: 64, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3756, file: !3757, line: 285, baseType: !3760, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3756, file: !3757, line: 286, baseType: !3760, size: 64, offset: 448)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3756, file: !3757, line: 287, baseType: !3760, size: 64, offset: 512)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3756, file: !3757, line: 288, baseType: !3760, size: 64, offset: 576)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3756, file: !3757, line: 289, baseType: !3760, size: 64, offset: 640)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3756, file: !3757, line: 290, baseType: !3760, size: 64, offset: 704)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3756, file: !3757, line: 291, baseType: !3760, size: 64, offset: 768)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3756, file: !3757, line: 292, baseType: !3760, size: 64, offset: 832)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3756, file: !3757, line: 293, baseType: !3760, size: 64, offset: 896)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3756, file: !3757, line: 294, baseType: !3760, size: 64, offset: 960)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3756, file: !3757, line: 295, baseType: !3760, size: 64, offset: 1024)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3756, file: !3757, line: 296, baseType: !3760, size: 64, offset: 1088)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3756, file: !3757, line: 297, baseType: !3760, size: 64, offset: 1152)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3756, file: !3757, line: 298, baseType: !3760, size: 64, offset: 1216)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3756, file: !3757, line: 299, baseType: !3760, size: 64, offset: 1280)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3756, file: !3757, line: 300, baseType: !3760, size: 64, offset: 1344)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3756, file: !3757, line: 301, baseType: !3760, size: 64, offset: 1408)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !72, file: !73, line: 470, baseType: !3786, size: 64, offset: 768)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3788, line: 82, size: 1408, elements: !3789)
!3788 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3789 = !{!3790, !3791, !3792, !3793, !3794, !3795, !3796, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3875, !3878, !3879}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3787, file: !3788, line: 83, baseType: !80, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3787, file: !3788, line: 84, baseType: !80, size: 64, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3787, file: !3788, line: 85, baseType: !71, size: 64, offset: 128)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3787, file: !3788, line: 86, baseType: !192, size: 64, offset: 192)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3787, file: !3788, line: 87, baseType: !192, size: 64, offset: 256)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3787, file: !3788, line: 88, baseType: !192, size: 64, offset: 320)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3787, file: !3788, line: 90, baseType: !3797, size: 64, offset: 384)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!6, !71, !3800}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !3802, line: 95, size: 1152, elements: !3803)
!3802 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809, !3815, !3828, !3839, !3840, !3841, !3842, !3843, !3851, !3852, !3853, !3854, !3855, !3856}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3801, file: !3802, line: 96, baseType: !80, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3801, file: !3802, line: 97, baseType: !3786, size: 64, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3801, file: !3802, line: 99, baseType: !494, size: 64, offset: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3801, file: !3802, line: 100, baseType: !80, size: 64, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3801, file: !3802, line: 102, baseType: !352, size: 8, offset: 256)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3801, file: !3802, line: 103, baseType: !3810, size: 32, offset: 288)
!3810 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !3802, line: 44, baseType: !31, size: 32, elements: !3811)
!3811 = !{!3812, !3813, !3814}
!3812 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!3813 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!3814 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3801, file: !3802, line: 105, baseType: !3816, size: 64, offset: 320)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3818)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3819, line: 262, size: 1600, elements: !3820)
!3819 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3820 = !{!3821, !3822, !3823, !3827}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3818, file: !3819, line: 263, baseType: !3274, size: 256)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3818, file: !3819, line: 264, baseType: !3274, size: 256, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3818, file: !3819, line: 265, baseType: !3824, size: 1024, offset: 512)
!3824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 1024, elements: !3825)
!3825 = !{!3826}
!3826 = !DISubrange(count: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3818, file: !3819, line: 266, baseType: !2691, size: 64, offset: 1536)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3801, file: !3802, line: 106, baseType: !3829, size: 64, offset: 384)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3831)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3819, line: 210, size: 256, elements: !3832)
!3832 = !{!3833, !3835, !3837, !3838}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3831, file: !3819, line: 211, baseType: !3834, size: 72)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1274, size: 72, elements: !2249)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3831, file: !3819, line: 212, baseType: !3836, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3819, line: 14, baseType: !188)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3831, file: !3819, line: 213, baseType: !29, size: 32, offset: 192)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3831, file: !3819, line: 214, baseType: !29, size: 32, offset: 224)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3801, file: !3802, line: 108, baseType: !3760, size: 64, offset: 448)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3801, file: !3802, line: 109, baseType: !3750, size: 64, offset: 512)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3801, file: !3802, line: 110, baseType: !3760, size: 64, offset: 576)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3801, file: !3802, line: 111, baseType: !3750, size: 64, offset: 640)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3801, file: !3802, line: 112, baseType: !3844, size: 64, offset: 704)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!6, !71, !3847}
!3847 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !3757, line: 52, baseType: !3848)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !3757, line: 50, size: 32, elements: !3849)
!3849 = !{!3850}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3848, file: !3757, line: 51, baseType: !6, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3801, file: !3802, line: 113, baseType: !3760, size: 64, offset: 768)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3801, file: !3802, line: 114, baseType: !192, size: 64, offset: 832)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3801, file: !3802, line: 115, baseType: !192, size: 64, offset: 896)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3801, file: !3802, line: 117, baseType: !3754, size: 64, offset: 960)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3801, file: !3802, line: 118, baseType: !3750, size: 64, offset: 1024)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3801, file: !3802, line: 120, baseType: !3857, size: 64, offset: 1088)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !3802, line: 120, flags: DIFlagFwdDecl)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3787, file: !3788, line: 91, baseType: !3741, size: 64, offset: 448)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3787, file: !3788, line: 92, baseType: !3760, size: 64, offset: 512)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3787, file: !3788, line: 93, baseType: !3750, size: 64, offset: 576)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3787, file: !3788, line: 94, baseType: !3760, size: 64, offset: 640)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3787, file: !3788, line: 95, baseType: !3750, size: 64, offset: 704)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3787, file: !3788, line: 97, baseType: !3760, size: 64, offset: 768)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3787, file: !3788, line: 98, baseType: !3760, size: 64, offset: 832)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3787, file: !3788, line: 100, baseType: !3844, size: 64, offset: 896)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3787, file: !3788, line: 101, baseType: !3760, size: 64, offset: 960)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3787, file: !3788, line: 103, baseType: !3760, size: 64, offset: 1024)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3787, file: !3788, line: 105, baseType: !3760, size: 64, offset: 1088)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3787, file: !3788, line: 107, baseType: !3754, size: 64, offset: 1152)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3787, file: !3788, line: 109, baseType: !3872, size: 64, offset: 1216)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3874)
!3874 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3788, line: 109, flags: DIFlagFwdDecl)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3787, file: !3788, line: 111, baseType: !3876, size: 64, offset: 1280)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3788, line: 111, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3787, file: !3788, line: 112, baseType: !509, offset: 1344)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3787, file: !3788, line: 114, baseType: !352, size: 8, offset: 1344)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !72, file: !73, line: 471, baseType: !3800, size: 64, offset: 832)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !72, file: !73, line: 473, baseType: !212, size: 64, offset: 896)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !72, file: !73, line: 475, baseType: !212, size: 64, offset: 960)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !72, file: !73, line: 480, baseType: !587, size: 192, offset: 1024)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !72, file: !73, line: 484, baseType: !3885, size: 576, offset: 1216)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3886)
!3886 = !{!3887, !3888, !3889, !3890, !3891, !3892}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3885, file: !73, line: 362, baseType: !83, size: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3885, file: !73, line: 363, baseType: !83, size: 128, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3885, file: !73, line: 364, baseType: !83, size: 128, offset: 256)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3885, file: !73, line: 365, baseType: !83, size: 128, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3885, file: !73, line: 366, baseType: !352, size: 8, offset: 512)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3885, file: !73, line: 367, baseType: !3893, size: 32, offset: 544)
!3893 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !73, line: 343, baseType: !31, size: 32, elements: !3894)
!3894 = !{!3895, !3896, !3897, !3898}
!3895 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!3896 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!3897 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!3898 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !72, file: !73, line: 485, baseType: !3900, size: 2304, offset: 1792)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !3757, line: 565, size: 2304, elements: !3901)
!3901 = !{!3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3987, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4010, !4014}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3900, file: !3757, line: 566, baseType: !3847, size: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3900, file: !3757, line: 567, baseType: !31, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3900, file: !3757, line: 568, baseType: !31, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3900, file: !3757, line: 569, baseType: !352, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3900, file: !3757, line: 570, baseType: !352, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3900, file: !3757, line: 571, baseType: !352, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3900, file: !3757, line: 572, baseType: !352, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3900, file: !3757, line: 573, baseType: !352, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3900, file: !3757, line: 574, baseType: !352, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3900, file: !3757, line: 575, baseType: !352, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3900, file: !3757, line: 576, baseType: !352, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3900, file: !3757, line: 577, baseType: !27, size: 32, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3900, file: !3757, line: 578, baseType: !97, offset: 96)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3900, file: !3757, line: 580, baseType: !83, size: 128, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3900, file: !3757, line: 581, baseType: !1430, size: 192, offset: 256)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3900, file: !3757, line: 582, baseType: !3918, size: 64, offset: 448)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3920, line: 43, size: 1472, elements: !3921)
!3920 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3921 = !{!3922, !3923, !3924, !3925, !3926, !3929, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3919, file: !3920, line: 44, baseType: !80, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3919, file: !3920, line: 45, baseType: !6, size: 32, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3919, file: !3920, line: 46, baseType: !83, size: 128, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3919, file: !3920, line: 47, baseType: !97, offset: 256)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3919, file: !3920, line: 48, baseType: !3927, size: 64, offset: 256)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !3757, line: 533, flags: DIFlagFwdDecl)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3919, file: !3920, line: 49, baseType: !3930, size: 320, offset: 320)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3931, line: 11, size: 320, elements: !3932)
!3931 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3932 = !{!3933, !3934, !3935, !3940}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3930, file: !3931, line: 16, baseType: !503, size: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3930, file: !3931, line: 17, baseType: !188, size: 64, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3930, file: !3931, line: 18, baseType: !3936, size: 64, offset: 192)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{null, !3939}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3930, file: !3931, line: 19, baseType: !27, size: 32, offset: 256)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3919, file: !3920, line: 50, baseType: !188, size: 64, offset: 640)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3919, file: !3920, line: 51, baseType: !1217, size: 64, offset: 704)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3919, file: !3920, line: 52, baseType: !1217, size: 64, offset: 768)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3919, file: !3920, line: 53, baseType: !1217, size: 64, offset: 832)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3919, file: !3920, line: 54, baseType: !1217, size: 64, offset: 896)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3919, file: !3920, line: 55, baseType: !1217, size: 64, offset: 960)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3919, file: !3920, line: 56, baseType: !188, size: 64, offset: 1024)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3919, file: !3920, line: 57, baseType: !188, size: 64, offset: 1088)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3919, file: !3920, line: 58, baseType: !188, size: 64, offset: 1152)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3919, file: !3920, line: 59, baseType: !188, size: 64, offset: 1216)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3919, file: !3920, line: 60, baseType: !188, size: 64, offset: 1280)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3919, file: !3920, line: 61, baseType: !71, size: 64, offset: 1344)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3919, file: !3920, line: 62, baseType: !352, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3919, file: !3920, line: 63, baseType: !352, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3900, file: !3757, line: 583, baseType: !352, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3900, file: !3757, line: 584, baseType: !352, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3900, file: !3757, line: 585, baseType: !352, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3900, file: !3757, line: 586, baseType: !31, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3900, file: !3757, line: 587, baseType: !31, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3900, file: !3757, line: 592, baseType: !1208, size: 512, offset: 576)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3900, file: !3757, line: 593, baseType: !283, size: 64, offset: 1088)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3900, file: !3757, line: 594, baseType: !2044, size: 256, offset: 1152)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3900, file: !3757, line: 595, baseType: !1409, size: 128, offset: 1408)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3900, file: !3757, line: 596, baseType: !3927, size: 64, offset: 1536)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3900, file: !3757, line: 597, baseType: !661, size: 32, offset: 1600)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3900, file: !3757, line: 598, baseType: !661, size: 32, offset: 1632)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3900, file: !3757, line: 599, baseType: !31, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3900, file: !3757, line: 600, baseType: !31, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3900, file: !3757, line: 601, baseType: !31, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3900, file: !3757, line: 602, baseType: !31, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3900, file: !3757, line: 603, baseType: !31, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3900, file: !3757, line: 604, baseType: !352, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3900, file: !3757, line: 605, baseType: !31, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3900, file: !3757, line: 606, baseType: !31, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3900, file: !3757, line: 607, baseType: !31, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3900, file: !3757, line: 608, baseType: !31, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3900, file: !3757, line: 609, baseType: !31, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3900, file: !3757, line: 610, baseType: !31, size: 32, offset: 1696)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3900, file: !3757, line: 611, baseType: !3980, size: 32, offset: 1728)
!3980 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !3757, line: 524, baseType: !31, size: 32, elements: !3981)
!3981 = !{!3982, !3983, !3984, !3985, !3986}
!3982 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!3983 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!3984 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!3985 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!3986 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3900, file: !3757, line: 612, baseType: !3988, size: 32, offset: 1760)
!3988 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !3757, line: 502, baseType: !31, size: 32, elements: !3989)
!3989 = !{!3990, !3991, !3992, !3993}
!3990 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!3991 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!3992 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!3993 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3900, file: !3757, line: 613, baseType: !6, size: 32, offset: 1792)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3900, file: !3757, line: 614, baseType: !6, size: 32, offset: 1824)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3900, file: !3757, line: 615, baseType: !283, size: 64, offset: 1856)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3900, file: !3757, line: 616, baseType: !283, size: 64, offset: 1920)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3900, file: !3757, line: 617, baseType: !283, size: 64, offset: 1984)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3900, file: !3757, line: 618, baseType: !283, size: 64, offset: 2048)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3900, file: !3757, line: 620, baseType: !4001, size: 64, offset: 2112)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !3757, line: 536, size: 256, elements: !4003)
!4003 = !{!4004, !4005, !4006, !4007}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4002, file: !3757, line: 537, baseType: !97)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4002, file: !3757, line: 538, baseType: !31, size: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4002, file: !3757, line: 540, baseType: !83, size: 128, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4002, file: !3757, line: 543, baseType: !4008, size: 64, offset: 192)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !3757, line: 534, flags: DIFlagFwdDecl)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3900, file: !3757, line: 621, baseType: !4011, size: 64, offset: 2176)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !71, !1371}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3900, file: !3757, line: 622, baseType: !4015, size: 64, offset: 2240)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !3757, line: 622, flags: DIFlagFwdDecl)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !72, file: !73, line: 486, baseType: !4018, size: 64, offset: 4096)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !3757, line: 642, size: 1792, elements: !4020)
!4020 = !{!4021, !4022, !4023, !4027, !4028, !4029}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4019, file: !3757, line: 643, baseType: !3756, size: 1472)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4019, file: !3757, line: 644, baseType: !3760, size: 64, offset: 1472)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4019, file: !3757, line: 645, baseType: !4024, size: 64, offset: 1536)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{null, !71, !352}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4019, file: !3757, line: 646, baseType: !3760, size: 64, offset: 1600)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4019, file: !3757, line: 647, baseType: !3750, size: 64, offset: 1664)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4019, file: !3757, line: 648, baseType: !3750, size: 64, offset: 1728)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !72, file: !73, line: 493, baseType: !4031, size: 64, offset: 4160)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !72, file: !73, line: 499, baseType: !83, size: 128, offset: 4224)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !72, file: !73, line: 502, baseType: !4035, size: 64, offset: 4352)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4037)
!4037 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !72, file: !73, line: 504, baseType: !4039, size: 64, offset: 4416)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !72, file: !73, line: 505, baseType: !283, size: 64, offset: 4480)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !72, file: !73, line: 510, baseType: !283, size: 64, offset: 4544)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !72, file: !73, line: 511, baseType: !4043, size: 64, offset: 4608)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4045)
!4045 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !72, file: !73, line: 513, baseType: !4047, size: 64, offset: 4672)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !4049)
!4049 = !{!4050, !4051}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4048, file: !73, line: 293, baseType: !31, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4048, file: !73, line: 294, baseType: !188, size: 64, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !72, file: !73, line: 515, baseType: !83, size: 128, offset: 4736)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !72, file: !73, line: 526, baseType: !4054, offset: 4864)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4055, line: 5, elements: !111)
!4055 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !72, file: !73, line: 528, baseType: !4057, size: 64, offset: 4864)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4059, line: 14, flags: DIFlagFwdDecl)
!4059 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !72, file: !73, line: 529, baseType: !4061, size: 64, offset: 4928)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4063, line: 17, size: 192, elements: !4064)
!4063 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4064 = !{!4065, !4066, !4149}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4062, file: !4063, line: 18, baseType: !4061, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4062, file: !4063, line: 19, baseType: !4067, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4069)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4063, line: 110, size: 1152, elements: !4070)
!4070 = !{!4071, !4075, !4079, !4085, !4091, !4095, !4099, !4104, !4108, !4109, !4113, !4117, !4121, !4132, !4133, !4134, !4135, !4145}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4069, file: !4063, line: 111, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!4061, !4061}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4069, file: !4063, line: 112, baseType: !4076, size: 64, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !4061}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4069, file: !4063, line: 113, baseType: !4080, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!352, !4083}
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4062)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4069, file: !4063, line: 114, baseType: !4086, size: 64, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!2691, !4083, !4089}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4069, file: !4063, line: 116, baseType: !4092, size: 64, offset: 256)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!352, !4083, !80}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4069, file: !4063, line: 118, baseType: !4096, size: 64, offset: 320)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!6, !4083, !80, !31, !212, !185}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4069, file: !4063, line: 123, baseType: !4100, size: 64, offset: 384)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!6, !4083, !80, !4103, !185}
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4069, file: !4063, line: 126, baseType: !4105, size: 64, offset: 448)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!80, !4083}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4069, file: !4063, line: 127, baseType: !4105, size: 64, offset: 512)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4069, file: !4063, line: 128, baseType: !4110, size: 64, offset: 576)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!4061, !4083}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4069, file: !4063, line: 130, baseType: !4114, size: 64, offset: 640)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!4061, !4083, !4061}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4069, file: !4063, line: 133, baseType: !4118, size: 64, offset: 704)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!4061, !4083, !80}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4069, file: !4063, line: 135, baseType: !4122, size: 64, offset: 768)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!6, !4083, !80, !80, !31, !31, !4125}
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4063, line: 43, size: 640, elements: !4127)
!4127 = !{!4128, !4129, !4130}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4126, file: !4063, line: 44, baseType: !4061, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4126, file: !4063, line: 45, baseType: !31, size: 32, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4126, file: !4063, line: 46, baseType: !4131, size: 512, offset: 128)
!4131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 512, elements: !1251)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4069, file: !4063, line: 140, baseType: !4114, size: 64, offset: 832)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4069, file: !4063, line: 143, baseType: !4110, size: 64, offset: 896)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4069, file: !4063, line: 145, baseType: !4072, size: 64, offset: 960)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4069, file: !4063, line: 146, baseType: !4136, size: 64, offset: 1024)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!6, !4083, !4139}
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4063, line: 29, size: 128, elements: !4141)
!4141 = !{!4142, !4143, !4144}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4140, file: !4063, line: 30, baseType: !31, size: 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4140, file: !4063, line: 31, baseType: !31, size: 32, offset: 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4140, file: !4063, line: 32, baseType: !4083, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4069, file: !4063, line: 148, baseType: !4146, size: 64, offset: 1088)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!6, !4083, !71}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4062, file: !4063, line: 20, baseType: !71, size: 64, offset: 128)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !72, file: !73, line: 534, baseType: !375, size: 32, offset: 4992)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !72, file: !73, line: 535, baseType: !27, size: 32, offset: 5024)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !72, file: !73, line: 537, baseType: !97, offset: 5056)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !72, file: !73, line: 538, baseType: !83, size: 128, offset: 5056)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !72, file: !73, line: 540, baseType: !4155, size: 64, offset: 5184)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4157, line: 54, size: 960, elements: !4158)
!4157 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4158 = !{!4159, !4160, !4161, !4162, !4163, !4164, !4165, !4169, !4173, !4174, !4175, !4176, !4180, !4184, !4185}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4156, file: !4157, line: 55, baseType: !80, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4156, file: !4157, line: 56, baseType: !494, size: 64, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4156, file: !4157, line: 58, baseType: !192, size: 64, offset: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4156, file: !4157, line: 59, baseType: !192, size: 64, offset: 192)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4156, file: !4157, line: 60, baseType: !90, size: 64, offset: 256)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4156, file: !4157, line: 62, baseType: !3741, size: 64, offset: 320)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4156, file: !4157, line: 63, baseType: !4166, size: 64, offset: 384)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!138, !71, !3748}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4156, file: !4157, line: 65, baseType: !4170, size: 64, offset: 448)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !4155}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4156, file: !4157, line: 66, baseType: !3750, size: 64, offset: 512)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4156, file: !4157, line: 68, baseType: !3760, size: 64, offset: 576)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4156, file: !4157, line: 70, baseType: !3554, size: 64, offset: 640)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4156, file: !4157, line: 71, baseType: !4177, size: 64, offset: 704)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!2691, !71}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4156, file: !4157, line: 73, baseType: !4181, size: 64, offset: 768)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !71, !3592, !3593}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4156, file: !4157, line: 75, baseType: !3754, size: 64, offset: 832)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4156, file: !4157, line: 77, baseType: !3876, size: 64, offset: 896)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !72, file: !73, line: 541, baseType: !192, size: 64, offset: 5248)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !72, file: !73, line: 543, baseType: !3750, size: 64, offset: 5312)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !72, file: !73, line: 544, baseType: !4189, size: 64, offset: 5376)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !72, file: !73, line: 545, baseType: !4192, size: 64, offset: 5440)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !72, file: !73, line: 547, baseType: !352, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !72, file: !73, line: 548, baseType: !352, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !72, file: !73, line: 549, baseType: !352, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !72, file: !73, line: 550, baseType: !352, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !68, file: !18, line: 426, baseType: !71, size: 64, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !68, file: !18, line: 427, baseType: !6, size: 32, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !68, file: !18, line: 428, baseType: !80, size: 64, offset: 192)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !68, file: !18, line: 429, baseType: !1273, size: 8, offset: 256)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !68, file: !18, line: 433, baseType: !1273, size: 8, offset: 264)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !68, file: !18, line: 434, baseType: !31, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !68, file: !18, line: 435, baseType: !31, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !68, file: !18, line: 436, baseType: !31, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !68, file: !18, line: 441, baseType: !31, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !68, file: !18, line: 442, baseType: !31, size: 32, offset: 288)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !68, file: !18, line: 444, baseType: !6, size: 32, offset: 320)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !68, file: !18, line: 446, baseType: !587, size: 192, offset: 384)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !68, file: !18, line: 448, baseType: !4211, size: 128, offset: 576)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !18, line: 417, size: 128, elements: !4212)
!4212 = !{!4213}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !4211, file: !18, line: 418, baseType: !4214, size: 128)
!4214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !63)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !68, file: !18, line: 449, baseType: !16, size: 64, offset: 704)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !68, file: !18, line: 450, baseType: !67, size: 64, offset: 768)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !68, file: !18, line: 452, baseType: !6, size: 32, offset: 832)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !68, file: !18, line: 459, baseType: !6, size: 32, offset: 864)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !68, file: !18, line: 460, baseType: !6, size: 32, offset: 896)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !68, file: !18, line: 462, baseType: !31, size: 32, offset: 928)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !17, file: !18, line: 647, baseType: !4222, size: 640, offset: 640)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !18, line: 67, size: 640, elements: !4223)
!4223 = !{!4224, !4236, !4244, !4252, !4253, !4254, !4257, !4258, !4259, !4260}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4222, file: !18, line: 68, baseType: !4225, size: 72)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !34, line: 407, size: 72, elements: !4226)
!4226 = !{!4227, !4228, !4229, !4230, !4231, !4233, !4234, !4235}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4225, file: !34, line: 408, baseType: !1274, size: 8)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4225, file: !34, line: 409, baseType: !1274, size: 8, offset: 8)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !4225, file: !34, line: 411, baseType: !1274, size: 8, offset: 16)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4225, file: !34, line: 412, baseType: !1274, size: 8, offset: 24)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !4225, file: !34, line: 413, baseType: !4232, size: 16, offset: 32)
!4232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1799, line: 29, baseType: !767)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !4225, file: !34, line: 414, baseType: !1274, size: 8, offset: 48)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !4225, file: !34, line: 418, baseType: !1274, size: 8, offset: 56)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !4225, file: !34, line: 419, baseType: !1274, size: 8, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !4222, file: !18, line: 69, baseType: !4237, size: 48, offset: 72)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !34, line: 689, size: 48, elements: !4238)
!4238 = !{!4239, !4240, !4241, !4242, !4243}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4237, file: !34, line: 690, baseType: !1274, size: 8)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4237, file: !34, line: 691, baseType: !1274, size: 8, offset: 8)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !4237, file: !34, line: 693, baseType: !1274, size: 8, offset: 16)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4237, file: !34, line: 694, baseType: !1274, size: 8, offset: 24)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !4237, file: !34, line: 695, baseType: !4232, size: 16, offset: 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !4222, file: !18, line: 70, baseType: !4245, size: 64, offset: 120)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !34, line: 677, size: 64, elements: !4246)
!4246 = !{!4247, !4248, !4249, !4250}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4245, file: !34, line: 678, baseType: !1274, size: 8)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4245, file: !34, line: 679, baseType: !1274, size: 8, offset: 8)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !4245, file: !34, line: 680, baseType: !4232, size: 16, offset: 16)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !4245, file: !34, line: 681, baseType: !4251, size: 32, offset: 32)
!4251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1799, line: 31, baseType: !29)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4222, file: !18, line: 71, baseType: !83, size: 128, offset: 192)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4222, file: !18, line: 72, baseType: !212, size: 64, offset: 320)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !4222, file: !18, line: 73, baseType: !4255, size: 64, offset: 384)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !18, line: 48, flags: DIFlagFwdDecl)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4222, file: !18, line: 75, baseType: !2111, size: 64, offset: 448)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4222, file: !18, line: 76, baseType: !6, size: 32, offset: 512)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4222, file: !18, line: 77, baseType: !6, size: 32, offset: 544)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4222, file: !18, line: 78, baseType: !6, size: 32, offset: 576)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !17, file: !18, line: 649, baseType: !72, size: 5568, offset: 1280)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !17, file: !18, line: 651, baseType: !4263, size: 144, offset: 6848)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !34, line: 289, size: 144, elements: !4264)
!4264 = !{!4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4263, file: !34, line: 290, baseType: !1274, size: 8)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4263, file: !34, line: 291, baseType: !1274, size: 8, offset: 8)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !4263, file: !34, line: 293, baseType: !4232, size: 16, offset: 16)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4263, file: !34, line: 294, baseType: !1274, size: 8, offset: 32)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4263, file: !34, line: 295, baseType: !1274, size: 8, offset: 40)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4263, file: !34, line: 296, baseType: !1274, size: 8, offset: 48)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !4263, file: !34, line: 297, baseType: !1274, size: 8, offset: 56)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4263, file: !34, line: 298, baseType: !4232, size: 16, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4263, file: !34, line: 299, baseType: !4232, size: 16, offset: 80)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !4263, file: !34, line: 300, baseType: !4232, size: 16, offset: 96)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !4263, file: !34, line: 301, baseType: !1274, size: 8, offset: 112)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !4263, file: !34, line: 302, baseType: !1274, size: 8, offset: 120)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !4263, file: !34, line: 303, baseType: !1274, size: 8, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !4263, file: !34, line: 304, baseType: !1274, size: 8, offset: 136)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !17, file: !18, line: 652, baseType: !4280, size: 64, offset: 7040)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !18, line: 396, size: 384, elements: !4282)
!4282 = !{!4283, !4291, !4299, !4311, !4324, !4333}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4281, file: !18, line: 397, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !34, line: 844, size: 40, elements: !4286)
!4286 = !{!4287, !4288, !4289, !4290}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4285, file: !34, line: 845, baseType: !1274, size: 8)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4285, file: !34, line: 846, baseType: !1274, size: 8, offset: 8)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4285, file: !34, line: 848, baseType: !4232, size: 16, offset: 16)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !4285, file: !34, line: 849, baseType: !1274, size: 8, offset: 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !4281, file: !18, line: 400, baseType: !4292, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !34, line: 895, size: 56, elements: !4294)
!4294 = !{!4295, !4296, !4297, !4298}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4293, file: !34, line: 896, baseType: !1274, size: 8)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4293, file: !34, line: 897, baseType: !1274, size: 8, offset: 8)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4293, file: !34, line: 898, baseType: !1274, size: 8, offset: 16)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4293, file: !34, line: 899, baseType: !4251, size: 32, offset: 24)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !4281, file: !18, line: 401, baseType: !4300, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !34, line: 917, size: 80, elements: !4302)
!4302 = !{!4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4301, file: !34, line: 918, baseType: !1274, size: 8)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4301, file: !34, line: 919, baseType: !1274, size: 8, offset: 8)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4301, file: !34, line: 920, baseType: !1274, size: 8, offset: 16)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4301, file: !34, line: 921, baseType: !1274, size: 8, offset: 24)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !4301, file: !34, line: 923, baseType: !4232, size: 16, offset: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !4301, file: !34, line: 928, baseType: !1274, size: 8, offset: 48)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !4301, file: !34, line: 929, baseType: !1274, size: 8, offset: 56)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !4301, file: !34, line: 930, baseType: !4232, size: 16, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !4281, file: !18, line: 402, baseType: !4312, size: 64, offset: 192)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !34, line: 955, size: 128, elements: !4314)
!4314 = !{!4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4313, file: !34, line: 956, baseType: !1274, size: 8)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4313, file: !34, line: 957, baseType: !1274, size: 8, offset: 8)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4313, file: !34, line: 958, baseType: !1274, size: 8, offset: 16)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4313, file: !34, line: 959, baseType: !1274, size: 8, offset: 24)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4313, file: !34, line: 960, baseType: !4251, size: 32, offset: 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !4313, file: !34, line: 963, baseType: !4232, size: 16, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !4313, file: !34, line: 967, baseType: !4232, size: 16, offset: 80)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !4313, file: !34, line: 968, baseType: !4323, size: 32, offset: 96)
!4323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4251, size: 32, elements: !1292)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !4281, file: !18, line: 403, baseType: !4325, size: 64, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !34, line: 940, size: 160, elements: !4327)
!4327 = !{!4328, !4329, !4330, !4331, !4332}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4326, file: !34, line: 941, baseType: !1274, size: 8)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4326, file: !34, line: 942, baseType: !1274, size: 8, offset: 8)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4326, file: !34, line: 943, baseType: !1274, size: 8, offset: 16)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4326, file: !34, line: 944, baseType: !1274, size: 8, offset: 24)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !4326, file: !34, line: 945, baseType: !3281, size: 128, offset: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !4281, file: !18, line: 404, baseType: !4334, size: 64, offset: 320)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !34, line: 1080, size: 24, elements: !4336)
!4336 = !{!4337, !4338, !4339}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4335, file: !34, line: 1081, baseType: !1274, size: 8)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4335, file: !34, line: 1082, baseType: !1274, size: 8, offset: 8)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4335, file: !34, line: 1083, baseType: !1274, size: 8, offset: 16)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !17, file: !18, line: 653, baseType: !4341, size: 64, offset: 7104)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !18, line: 374, size: 5440, elements: !4343)
!4343 = !{!4344, !4355, !4356, !4369, !4417, !4426, !4427}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4342, file: !18, line: 375, baseType: !4345, size: 72)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !34, line: 349, size: 72, elements: !4346)
!4346 = !{!4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4345, file: !34, line: 350, baseType: !1274, size: 8)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4345, file: !34, line: 351, baseType: !1274, size: 8, offset: 8)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4345, file: !34, line: 353, baseType: !4232, size: 16, offset: 16)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !4345, file: !34, line: 354, baseType: !1274, size: 8, offset: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !4345, file: !34, line: 355, baseType: !1274, size: 8, offset: 40)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !4345, file: !34, line: 356, baseType: !1274, size: 8, offset: 48)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4345, file: !34, line: 357, baseType: !1274, size: 8, offset: 56)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !4345, file: !34, line: 358, baseType: !1274, size: 8, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4342, file: !18, line: 377, baseType: !138, size: 64, offset: 128)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4342, file: !18, line: 381, baseType: !4357, size: 1024, offset: 192)
!4357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4358, size: 1024, elements: !24)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !34, line: 783, size: 64, elements: !4360)
!4360 = !{!4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4359, file: !34, line: 784, baseType: !1274, size: 8)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4359, file: !34, line: 785, baseType: !1274, size: 8, offset: 8)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4359, file: !34, line: 787, baseType: !1274, size: 8, offset: 16)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4359, file: !34, line: 788, baseType: !1274, size: 8, offset: 24)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4359, file: !34, line: 789, baseType: !1274, size: 8, offset: 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4359, file: !34, line: 790, baseType: !1274, size: 8, offset: 40)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4359, file: !34, line: 791, baseType: !1274, size: 8, offset: 48)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4359, file: !34, line: 792, baseType: !1274, size: 8, offset: 56)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4342, file: !18, line: 385, baseType: !4370, size: 2048, offset: 1216)
!4370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4371, size: 2048, elements: !2794)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !18, line: 232, size: 6272, elements: !4373)
!4373 = !{!4374, !4395, !4396, !4397, !4398, !4399, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4372, file: !18, line: 235, baseType: !4375, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !18, line: 82, size: 320, elements: !4377)
!4377 = !{!4378, !4390, !4391, !4392, !4394}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4376, file: !18, line: 83, baseType: !4379, size: 72)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !34, line: 389, size: 72, elements: !4380)
!4380 = !{!4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4379, file: !34, line: 390, baseType: !1274, size: 8)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4379, file: !34, line: 391, baseType: !1274, size: 8, offset: 8)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4379, file: !34, line: 393, baseType: !1274, size: 8, offset: 16)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4379, file: !34, line: 394, baseType: !1274, size: 8, offset: 24)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4379, file: !34, line: 395, baseType: !1274, size: 8, offset: 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4379, file: !34, line: 396, baseType: !1274, size: 8, offset: 40)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4379, file: !34, line: 397, baseType: !1274, size: 8, offset: 48)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4379, file: !34, line: 398, baseType: !1274, size: 8, offset: 56)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4379, file: !34, line: 399, baseType: !1274, size: 8, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4376, file: !18, line: 85, baseType: !6, size: 32, offset: 96)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4376, file: !18, line: 86, baseType: !2111, size: 64, offset: 128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4376, file: !18, line: 91, baseType: !4393, size: 64, offset: 192)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4376, file: !18, line: 93, baseType: !138, size: 64, offset: 256)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4372, file: !18, line: 237, baseType: !4375, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4372, file: !18, line: 239, baseType: !31, size: 32, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4372, file: !18, line: 243, baseType: !4358, size: 64, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4372, file: !18, line: 245, baseType: !6, size: 32, offset: 256)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4372, file: !18, line: 247, baseType: !4400, size: 32, offset: 288)
!4400 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !18, line: 96, baseType: !31, size: 32, elements: !4401)
!4401 = !{!4402, !4403, !4404, !4405}
!4402 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!4403 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!4404 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!4405 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4372, file: !18, line: 248, baseType: !31, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4372, file: !18, line: 249, baseType: !31, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4372, file: !18, line: 250, baseType: !31, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4372, file: !18, line: 251, baseType: !31, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4372, file: !18, line: 252, baseType: !31, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4372, file: !18, line: 253, baseType: !31, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4372, file: !18, line: 254, baseType: !31, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4372, file: !18, line: 255, baseType: !31, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4372, file: !18, line: 257, baseType: !72, size: 5568, offset: 384)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4372, file: !18, line: 258, baseType: !71, size: 64, offset: 5952)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4372, file: !18, line: 259, baseType: !2044, size: 256, offset: 6016)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !4342, file: !18, line: 389, baseType: !4418, size: 2048, offset: 3264)
!4418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4419, size: 2048, elements: !2794)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !18, line: 322, size: 64, elements: !4421)
!4421 = !{!4422, !4423, !4424}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4420, file: !18, line: 323, baseType: !31, size: 32)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4420, file: !18, line: 324, baseType: !1736, size: 32, offset: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4420, file: !18, line: 328, baseType: !4425, offset: 64)
!4425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4376, elements: !2041)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4342, file: !18, line: 391, baseType: !2111, size: 64, offset: 5312)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4342, file: !18, line: 392, baseType: !6, size: 32, offset: 5376)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !17, file: !18, line: 655, baseType: !4341, size: 64, offset: 7168)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !17, file: !18, line: 656, baseType: !4430, size: 1024, offset: 7232)
!4430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4393, size: 1024, elements: !24)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !17, file: !18, line: 657, baseType: !4430, size: 1024, offset: 8256)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !17, file: !18, line: 659, baseType: !4433, size: 64, offset: 9280)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !17, file: !18, line: 661, baseType: !180, size: 16, offset: 9344)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !17, file: !18, line: 662, baseType: !1273, size: 8, offset: 9360)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !17, file: !18, line: 663, baseType: !1273, size: 8, offset: 9368)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !17, file: !18, line: 664, baseType: !1273, size: 8, offset: 9376)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !17, file: !18, line: 666, baseType: !31, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !17, file: !18, line: 667, baseType: !31, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !17, file: !18, line: 668, baseType: !31, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !17, file: !18, line: 669, baseType: !31, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !17, file: !18, line: 670, baseType: !31, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !17, file: !18, line: 671, baseType: !31, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !17, file: !18, line: 672, baseType: !31, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !17, file: !18, line: 673, baseType: !31, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !17, file: !18, line: 674, baseType: !31, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !17, file: !18, line: 675, baseType: !31, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !17, file: !18, line: 676, baseType: !31, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !17, file: !18, line: 677, baseType: !31, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !17, file: !18, line: 678, baseType: !31, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !17, file: !18, line: 679, baseType: !6, size: 32, offset: 9408)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !17, file: !18, line: 682, baseType: !138, size: 64, offset: 9472)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !17, file: !18, line: 683, baseType: !138, size: 64, offset: 9536)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !17, file: !18, line: 684, baseType: !138, size: 64, offset: 9600)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !17, file: !18, line: 686, baseType: !83, size: 128, offset: 9664)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !17, file: !18, line: 688, baseType: !6, size: 32, offset: 9792)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !17, file: !18, line: 690, baseType: !27, size: 32, offset: 9824)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !17, file: !18, line: 691, baseType: !661, size: 32, offset: 9856)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !17, file: !18, line: 693, baseType: !188, size: 64, offset: 9920)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !17, file: !18, line: 696, baseType: !188, size: 64, offset: 9984)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !17, file: !18, line: 698, baseType: !31, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !17, file: !18, line: 699, baseType: !31, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !17, file: !18, line: 700, baseType: !31, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !17, file: !18, line: 702, baseType: !4465, size: 64, offset: 10112)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !18, line: 28, flags: DIFlagFwdDecl)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !17, file: !18, line: 703, baseType: !6, size: 32, offset: 10176)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !17, file: !18, line: 704, baseType: !4469, size: 32, offset: 10208)
!4469 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !18, line: 476, baseType: !31, size: 32, elements: !4470)
!4470 = !{!4471, !4472, !4473}
!4471 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!4472 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!4473 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !17, file: !18, line: 705, baseType: !4475, size: 64, offset: 10240)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !18, line: 502, size: 64, elements: !4476)
!4476 = !{!4477, !4478}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4475, file: !18, line: 506, baseType: !31, size: 32)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4475, file: !18, line: 512, baseType: !6, size: 32, offset: 32)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !17, file: !18, line: 706, baseType: !4480, size: 128, offset: 10304)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !18, line: 522, size: 128, elements: !4481)
!4481 = !{!4482, !4483, !4484, !4485}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4480, file: !18, line: 529, baseType: !31, size: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4480, file: !18, line: 535, baseType: !31, size: 32, offset: 32)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4480, file: !18, line: 545, baseType: !31, size: 32, offset: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4480, file: !18, line: 551, baseType: !6, size: 32, offset: 96)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !17, file: !18, line: 707, baseType: !4480, size: 128, offset: 10432)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !17, file: !18, line: 708, baseType: !31, size: 32, offset: 10560)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !17, file: !18, line: 710, baseType: !766, size: 16, offset: 10592)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !17, file: !18, line: 711, baseType: !31, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !9, line: 148, baseType: !4491, size: 64, offset: 64)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_serial_driver", file: !9, line: 237, size: 4160, elements: !4493)
!4493 = !{!4494, !4495, !4513, !4514, !4515, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4571, !4575, !4592, !4596, !4597, !4601, !4602, !4606, !4607, !4608, !4612, !4616, !4620, !4621, !4622, !4623, !4624, !4628, !4629, !4630, !4634, !4638, !4639, !4640, !4641, !4642, !4646, !4647, !4651, !4652, !4653, !4715, !4716, !4717, !4718, !4719}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4492, file: !9, line: 238, baseType: !80, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4492, file: !9, line: 239, baseType: !4496, size: 64, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4498)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3819, line: 121, size: 256, elements: !4499)
!4499 = !{!4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4498, file: !3819, line: 123, baseType: !767, size: 16)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4498, file: !3819, line: 126, baseType: !767, size: 16, offset: 16)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4498, file: !3819, line: 127, baseType: !767, size: 16, offset: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4498, file: !3819, line: 128, baseType: !767, size: 16, offset: 48)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4498, file: !3819, line: 129, baseType: !767, size: 16, offset: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4498, file: !3819, line: 132, baseType: !1274, size: 8, offset: 80)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4498, file: !3819, line: 133, baseType: !1274, size: 8, offset: 88)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4498, file: !3819, line: 134, baseType: !1274, size: 8, offset: 96)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4498, file: !3819, line: 137, baseType: !1274, size: 8, offset: 104)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4498, file: !3819, line: 138, baseType: !1274, size: 8, offset: 112)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4498, file: !3819, line: 139, baseType: !1274, size: 8, offset: 120)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4498, file: !3819, line: 142, baseType: !1274, size: 8, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4498, file: !3819, line: 145, baseType: !3836, size: 64, align: 64, offset: 192)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "driver_list", scope: !4492, file: !9, line: 241, baseType: !83, size: 128, offset: 128)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4492, file: !9, line: 242, baseType: !3801, size: 1152, offset: 256)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "usb_driver", scope: !4492, file: !9, line: 243, baseType: !4516, size: 64, offset: 1408)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !18, line: 1184, size: 2112, elements: !4518)
!4518 = !{!4519, !4520, !4524, !4528, !4532, !4536, !4540, !4541, !4542, !4543, !4544, !4545, !4550, !4555, !4556, !4557, !4558}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4517, file: !18, line: 1185, baseType: !80, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4517, file: !18, line: 1187, baseType: !4521, size: 64, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!6, !4371, !4496}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4517, file: !18, line: 1190, baseType: !4525, size: 64, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{null, !4371}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4517, file: !18, line: 1192, baseType: !4529, size: 64, offset: 192)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!6, !4371, !31, !212}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4517, file: !18, line: 1195, baseType: !4533, size: 64, offset: 256)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!6, !4371, !3847}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4517, file: !18, line: 1196, baseType: !4537, size: 64, offset: 320)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!6, !4371}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4517, file: !18, line: 1197, baseType: !4537, size: 64, offset: 384)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4517, file: !18, line: 1199, baseType: !4537, size: 64, offset: 448)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4517, file: !18, line: 1200, baseType: !4537, size: 64, offset: 512)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4517, file: !18, line: 1202, baseType: !4496, size: 64, offset: 576)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4517, file: !18, line: 1203, baseType: !192, size: 64, offset: 640)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4517, file: !18, line: 1205, baseType: !4546, size: 128, offset: 704)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !18, line: 1091, size: 128, elements: !4547)
!4547 = !{!4548, !4549}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4546, file: !18, line: 1092, baseType: !97)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4546, file: !18, line: 1093, baseType: !83, size: 128)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4517, file: !18, line: 1206, baseType: !4551, size: 1216, offset: 832)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !18, line: 1113, size: 1216, elements: !4552)
!4552 = !{!4553, !4554}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4551, file: !18, line: 1114, baseType: !3801, size: 1152)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4551, file: !18, line: 1115, baseType: !6, size: 32, offset: 1152)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4517, file: !18, line: 1207, baseType: !31, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4517, file: !18, line: 1208, baseType: !31, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4517, file: !18, line: 1209, baseType: !31, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4517, file: !18, line: 1210, baseType: !31, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4492, file: !9, line: 244, baseType: !4546, size: 128, offset: 1472)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "num_ports", scope: !4492, file: !9, line: 246, baseType: !289, size: 8, offset: 1600)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "num_bulk_in", scope: !4492, file: !9, line: 248, baseType: !289, size: 8, offset: 1608)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "num_bulk_out", scope: !4492, file: !9, line: 249, baseType: !289, size: 8, offset: 1616)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "num_interrupt_in", scope: !4492, file: !9, line: 250, baseType: !289, size: 8, offset: 1624)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "num_interrupt_out", scope: !4492, file: !9, line: 251, baseType: !289, size: 8, offset: 1632)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_in_size", scope: !4492, file: !9, line: 253, baseType: !185, size: 64, offset: 1664)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_out_size", scope: !4492, file: !9, line: 254, baseType: !185, size: 64, offset: 1728)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4492, file: !9, line: 256, baseType: !4568, size: 64, offset: 1792)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!6, !12, !4496}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4492, file: !9, line: 257, baseType: !4572, size: 64, offset: 1856)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!6, !12}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "calc_num_ports", scope: !4492, file: !9, line: 258, baseType: !4576, size: 64, offset: 1920)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!6, !12, !4579}
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_serial_endpoints", file: !9, line: 178, size: 4160, elements: !4581)
!4581 = !{!4582, !4583, !4584, !4585, !4586, !4589, !4590, !4591}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "num_bulk_in", scope: !4580, file: !9, line: 179, baseType: !289, size: 8)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "num_bulk_out", scope: !4580, file: !9, line: 180, baseType: !289, size: 8, offset: 8)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "num_interrupt_in", scope: !4580, file: !9, line: 181, baseType: !289, size: 8, offset: 16)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "num_interrupt_out", scope: !4580, file: !9, line: 182, baseType: !289, size: 8, offset: 24)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_in", scope: !4580, file: !9, line: 183, baseType: !4587, size: 1024, offset: 64)
!4587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4588, size: 1024, elements: !24)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_out", scope: !4580, file: !9, line: 184, baseType: !4587, size: 1024, offset: 1088)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_in", scope: !4580, file: !9, line: 185, baseType: !4587, size: 1024, offset: 2112)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_out", scope: !4580, file: !9, line: 186, baseType: !4587, size: 1024, offset: 3136)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4492, file: !9, line: 261, baseType: !4593, size: 64, offset: 1984)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{null, !12}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4492, file: !9, line: 262, baseType: !4593, size: 64, offset: 2048)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "port_probe", scope: !4492, file: !9, line: 264, baseType: !4598, size: 64, offset: 2112)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!6, !7}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "port_remove", scope: !4492, file: !9, line: 265, baseType: !4598, size: 64, offset: 2176)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4492, file: !9, line: 267, baseType: !4603, size: 64, offset: 2240)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!6, !12, !3847}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4492, file: !9, line: 268, baseType: !4572, size: 64, offset: 2304)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4492, file: !9, line: 269, baseType: !4572, size: 64, offset: 2368)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4492, file: !9, line: 273, baseType: !4609, size: 64, offset: 2432)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!6, !1730, !7}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4492, file: !9, line: 274, baseType: !4613, size: 64, offset: 2496)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{null, !7}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4492, file: !9, line: 275, baseType: !4617, size: 64, offset: 2560)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!6, !1730, !7, !287, !6}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !4492, file: !9, line: 278, baseType: !2161, size: 64, offset: 2624)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4492, file: !9, line: 279, baseType: !2166, size: 64, offset: 2688)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !4492, file: !9, line: 281, baseType: !2252, size: 64, offset: 2752)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !4492, file: !9, line: 282, baseType: !2252, size: 64, offset: 2816)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4492, file: !9, line: 283, baseType: !4625, size: 64, offset: 2880)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{null, !1730, !7, !2119}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !4492, file: !9, line: 285, baseType: !2189, size: 64, offset: 2944)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !4492, file: !9, line: 286, baseType: !2161, size: 64, offset: 3008)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !4492, file: !9, line: 287, baseType: !4631, size: 64, offset: 3072)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{null, !1730, !173}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "tx_empty", scope: !4492, file: !9, line: 288, baseType: !4635, size: 64, offset: 3136)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!352, !7}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4492, file: !9, line: 289, baseType: !2147, size: 64, offset: 3200)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !4492, file: !9, line: 290, baseType: !2147, size: 64, offset: 3264)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !4492, file: !9, line: 291, baseType: !2161, size: 64, offset: 3328)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !4492, file: !9, line: 292, baseType: !2198, size: 64, offset: 3392)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmiwait", scope: !4492, file: !9, line: 294, baseType: !4643, size: 64, offset: 3456)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!6, !1730, !188}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !4492, file: !9, line: 295, baseType: !2229, size: 64, offset: 3520)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !4492, file: !9, line: 299, baseType: !4648, size: 64, offset: 3584)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{null, !7, !6}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !4492, file: !9, line: 300, baseType: !4598, size: 64, offset: 3648)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !4492, file: !9, line: 303, baseType: !2147, size: 64, offset: 3712)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "read_int_callback", scope: !4492, file: !9, line: 305, baseType: !4654, size: 64, offset: 3776)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{null, !4657}
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !18, line: 1561, size: 1472, elements: !4659)
!4659 = !{!4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4707}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4658, file: !18, line: 1563, baseType: !1736, size: 32)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4658, file: !18, line: 1564, baseType: !6, size: 32, offset: 32)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4658, file: !18, line: 1565, baseType: !212, size: 64, offset: 64)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4658, file: !18, line: 1566, baseType: !661, size: 32, offset: 128)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4658, file: !18, line: 1567, baseType: !661, size: 32, offset: 160)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4658, file: !18, line: 1570, baseType: !83, size: 128, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4658, file: !18, line: 1572, baseType: !83, size: 128, offset: 320)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4658, file: !18, line: 1573, baseType: !4668, size: 64, offset: 448)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !18, line: 1360, size: 320, elements: !4670)
!4670 = !{!4671, !4672, !4673, !4674, !4675}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4669, file: !18, line: 1361, baseType: !83, size: 128)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4669, file: !18, line: 1362, baseType: !1409, size: 128, offset: 128)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4669, file: !18, line: 1363, baseType: !97, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4669, file: !18, line: 1364, baseType: !661, size: 32, offset: 256)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4669, file: !18, line: 1365, baseType: !31, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4658, file: !18, line: 1574, baseType: !16, size: 64, offset: 512)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4658, file: !18, line: 1575, baseType: !4393, size: 64, offset: 576)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4658, file: !18, line: 1576, baseType: !31, size: 32, offset: 640)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4658, file: !18, line: 1577, baseType: !31, size: 32, offset: 672)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4658, file: !18, line: 1578, baseType: !6, size: 32, offset: 704)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4658, file: !18, line: 1579, baseType: !31, size: 32, offset: 736)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4658, file: !18, line: 1580, baseType: !212, size: 64, offset: 768)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4658, file: !18, line: 1581, baseType: !834, size: 64, offset: 832)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4658, file: !18, line: 1582, baseType: !4685, size: 64, offset: 896)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4687, line: 11, size: 256, elements: !4688)
!4687 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4688 = !{!4689, !4690, !4691, !4692, !4693}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4686, file: !4687, line: 12, baseType: !188, size: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4686, file: !4687, line: 13, baseType: !31, size: 32, offset: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4686, file: !4687, line: 14, baseType: !31, size: 32, offset: 96)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4686, file: !4687, line: 15, baseType: !834, size: 64, offset: 128)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4686, file: !4687, line: 17, baseType: !31, size: 32, offset: 192)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4658, file: !18, line: 1583, baseType: !6, size: 32, offset: 960)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4658, file: !18, line: 1584, baseType: !6, size: 32, offset: 992)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4658, file: !18, line: 1585, baseType: !27, size: 32, offset: 1024)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4658, file: !18, line: 1586, baseType: !27, size: 32, offset: 1056)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4658, file: !18, line: 1587, baseType: !2111, size: 64, offset: 1088)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4658, file: !18, line: 1588, baseType: !834, size: 64, offset: 1152)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4658, file: !18, line: 1589, baseType: !6, size: 32, offset: 1216)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4658, file: !18, line: 1590, baseType: !6, size: 32, offset: 1248)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4658, file: !18, line: 1591, baseType: !6, size: 32, offset: 1280)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4658, file: !18, line: 1593, baseType: !6, size: 32, offset: 1312)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4658, file: !18, line: 1594, baseType: !212, size: 64, offset: 1344)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4658, file: !18, line: 1595, baseType: !4706, size: 64, offset: 1408)
!4706 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !18, line: 1376, baseType: !4654)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4658, file: !18, line: 1596, baseType: !4708, offset: 1472)
!4708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4709, elements: !2041)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !18, line: 1351, size: 128, elements: !4710)
!4710 = !{!4711, !4712, !4713, !4714}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4709, file: !18, line: 1352, baseType: !31, size: 32)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4709, file: !18, line: 1353, baseType: !31, size: 32, offset: 32)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4709, file: !18, line: 1354, baseType: !31, size: 32, offset: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4709, file: !18, line: 1355, baseType: !6, size: 32, offset: 96)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "write_int_callback", scope: !4492, file: !9, line: 306, baseType: !4654, size: 64, offset: 3840)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "read_bulk_callback", scope: !4492, file: !9, line: 307, baseType: !4654, size: 64, offset: 3904)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "write_bulk_callback", scope: !4492, file: !9, line: 308, baseType: !4654, size: 64, offset: 3968)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "process_read_urb", scope: !4492, file: !9, line: 310, baseType: !4654, size: 64, offset: 4032)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_write_buffer", scope: !4492, file: !9, line: 312, baseType: !4720, size: 64, offset: 4096)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!6, !7, !212, !185}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !13, file: !9, line: 149, baseType: !4371, size: 64, offset: 128)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !13, file: !9, line: 150, baseType: !289, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "suspending", scope: !13, file: !9, line: 151, baseType: !289, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !13, file: !9, line: 152, baseType: !289, size: 1, offset: 194, flags: DIFlagBitField, extraData: i64 192)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "minors_reserved", scope: !13, file: !9, line: 153, baseType: !289, size: 1, offset: 195, flags: DIFlagBitField, extraData: i64 192)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "num_ports", scope: !13, file: !9, line: 154, baseType: !289, size: 8, offset: 200)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "num_port_pointers", scope: !13, file: !9, line: 155, baseType: !289, size: 8, offset: 208)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "num_interrupt_in", scope: !13, file: !9, line: 156, baseType: !289, size: 8, offset: 216)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "num_interrupt_out", scope: !13, file: !9, line: 157, baseType: !289, size: 8, offset: 224)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "num_bulk_in", scope: !13, file: !9, line: 158, baseType: !289, size: 8, offset: 232)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "num_bulk_out", scope: !13, file: !9, line: 159, baseType: !289, size: 8, offset: 240)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !13, file: !9, line: 160, baseType: !4735, size: 1024, offset: 256)
!4735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !24)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !13, file: !9, line: 161, baseType: !1736, size: 32, offset: 1280)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "disc_mutex", scope: !13, file: !9, line: 162, baseType: !587, size: 192, offset: 1344)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !13, file: !9, line: 163, baseType: !212, size: 64, offset: 1536)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !8, file: !9, line: 74, baseType: !2020, size: 2432, offset: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !8, file: !9, line: 75, baseType: !97, offset: 2496)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !8, file: !9, line: 76, baseType: !27, size: 32, offset: 2496)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "port_number", scope: !8, file: !9, line: 77, baseType: !1273, size: 8, offset: 2528)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_in_buffer", scope: !8, file: !9, line: 79, baseType: !2111, size: 64, offset: 2560)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_in_urb", scope: !8, file: !9, line: 80, baseType: !4657, size: 64, offset: 2624)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_in_endpointAddress", scope: !8, file: !9, line: 81, baseType: !1274, size: 8, offset: 2688)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_out_buffer", scope: !8, file: !9, line: 83, baseType: !2111, size: 64, offset: 2752)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_out_size", scope: !8, file: !9, line: 84, baseType: !6, size: 32, offset: 2816)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_out_urb", scope: !8, file: !9, line: 85, baseType: !4657, size: 64, offset: 2880)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_out_endpointAddress", scope: !8, file: !9, line: 86, baseType: !1274, size: 8, offset: 2944)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_in_buffer", scope: !8, file: !9, line: 88, baseType: !2111, size: 64, offset: 3008)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_in_size", scope: !8, file: !9, line: 89, baseType: !6, size: 32, offset: 3072)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "read_urb", scope: !8, file: !9, line: 90, baseType: !4657, size: 64, offset: 3136)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_in_endpointAddress", scope: !8, file: !9, line: 91, baseType: !1274, size: 8, offset: 3200)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_in_buffers", scope: !8, file: !9, line: 93, baseType: !4755, size: 128, offset: 3264)
!4755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2111, size: 128, elements: !63)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "read_urbs", scope: !8, file: !9, line: 94, baseType: !4757, size: 128, offset: 3392)
!4757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4657, size: 128, elements: !63)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "read_urbs_free", scope: !8, file: !9, line: 95, baseType: !188, size: 64, offset: 3520)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_out_buffer", scope: !8, file: !9, line: 97, baseType: !2111, size: 64, offset: 3584)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_out_size", scope: !8, file: !9, line: 98, baseType: !6, size: 32, offset: 3648)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "write_urb", scope: !8, file: !9, line: 99, baseType: !4657, size: 64, offset: 3712)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "write_fifo", scope: !8, file: !9, line: 100, baseType: !4763, size: 192, offset: 3776)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kfifo", file: !4764, line: 83, size: 192, elements: !4765)
!4764 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/lizy2001/genbc/linux")
!4765 = !{!4766, !4784}
!4766 = !DIDerivedType(tag: DW_TAG_member, scope: !4763, file: !4764, line: 83, baseType: !4767, size: 192)
!4767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4763, file: !4764, line: 83, size: 192, elements: !4768)
!4768 = !{!4769, !4777, !4778, !4779, !4782, !4783}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !4767, file: !4764, line: 83, baseType: !4770, size: 192)
!4770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !4764, line: 44, size: 192, elements: !4771)
!4771 = !{!4772, !4773, !4774, !4775, !4776}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4770, file: !4764, line: 45, baseType: !31, size: 32)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4770, file: !4764, line: 46, baseType: !31, size: 32, offset: 32)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4770, file: !4764, line: 47, baseType: !31, size: 32, offset: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !4770, file: !4764, line: 48, baseType: !31, size: 32, offset: 96)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4770, file: !4764, line: 49, baseType: !212, size: 64, offset: 128)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4767, file: !4764, line: 83, baseType: !2111, size: 64)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !4767, file: !4764, line: 83, baseType: !287, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !4767, file: !4764, line: 83, baseType: !4780, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, elements: !1649)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4767, file: !4764, line: 83, baseType: !212, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !4767, file: !4764, line: 83, baseType: !2691, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4763, file: !4764, line: 83, baseType: !4785, offset: 192)
!4785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, elements: !1649)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_out_buffers", scope: !8, file: !9, line: 102, baseType: !4755, size: 128, offset: 3968)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "write_urbs", scope: !8, file: !9, line: 103, baseType: !4757, size: 128, offset: 4096)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "write_urbs_free", scope: !8, file: !9, line: 104, baseType: !188, size: 64, offset: 4224)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_out_endpointAddress", scope: !8, file: !9, line: 105, baseType: !1274, size: 8, offset: 4288)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "icount", scope: !8, file: !9, line: 107, baseType: !4791, size: 352, offset: 4320)
!4791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "async_icount", file: !4792, line: 20, size: 352, elements: !4793)
!4792 = !DIFile(filename: "./include/linux/serial.h", directory: "/home/lizy2001/genbc/linux")
!4793 = !{!4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "cts", scope: !4791, file: !4792, line: 21, baseType: !29, size: 32)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !4791, file: !4792, line: 21, baseType: !29, size: 32, offset: 32)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !4791, file: !4792, line: 21, baseType: !29, size: 32, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "dcd", scope: !4791, file: !4792, line: 21, baseType: !29, size: 32, offset: 96)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !4791, file: !4792, line: 21, baseType: !29, size: 32, offset: 128)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !4791, file: !4792, line: 21, baseType: !29, size: 32, offset: 160)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4791, file: !4792, line: 22, baseType: !29, size: 32, offset: 192)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !4791, file: !4792, line: 22, baseType: !29, size: 32, offset: 224)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "overrun", scope: !4791, file: !4792, line: 22, baseType: !29, size: 32, offset: 256)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !4791, file: !4792, line: 22, baseType: !29, size: 32, offset: 288)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "buf_overrun", scope: !4791, file: !4792, line: 23, baseType: !29, size: 32, offset: 320)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "tx_bytes", scope: !8, file: !9, line: 108, baseType: !6, size: 32, offset: 4672)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !8, file: !9, line: 110, baseType: !188, size: 64, offset: 4736)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !8, file: !9, line: 111, baseType: !1409, size: 128, offset: 4800)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !8, file: !9, line: 112, baseType: !2044, size: 256, offset: 4928)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "sysrq", scope: !8, file: !9, line: 113, baseType: !188, size: 64, offset: 5184)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !8, file: !9, line: 114, baseType: !72, size: 5568, offset: 5248)
!4811 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4812, retainedTypes: !4818, globals: !4824, splitDebugInlining: false, nameTableKind: None)
!4812 = !{!782, !987, !1224, !1348, !2938, !3033, !3496, !3515, !3560, !3810, !3893, !3980, !3988, !33, !46, !4400, !4469, !4813}
!4813 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4814, line: 10, baseType: !31, size: 32, elements: !4815)
!4814 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!4815 = !{!4816, !4817}
!4816 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!4817 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!4818 = !{!657, !6, !188, !173, !212, !4819, !4821, !4822, !4823, !1132, !138, !2111}
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!4824 = !{!0, !4825, !4828}
!4825 = !DIGlobalVariableExpression(var: !4826, expr: !DIExpression())
!4826 = distinct !DIGlobalVariable(name: "__print_once", scope: !4827, file: !3, line: 460, type: !352, isLocal: true, isDefinition: true)
!4827 = distinct !DISubprogram(name: "usb_serial_generic_write_bulk_callback", scope: !3, file: !3, line: 434, type: !4655, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!4828 = !DIGlobalVariableExpression(var: !4829, expr: !DIExpression())
!4829 = distinct !DIGlobalVariable(name: "__print_once", scope: !4827, file: !3, line: 464, type: !352, isLocal: true, isDefinition: true)
!4830 = !{!"rsp"}
!4831 = !{i32 7, !"Dwarf Version", i32 4}
!4832 = !{i32 2, !"Debug Info Version", i32 3}
!4833 = !{i32 1, !"wchar_size", i32 2}
!4834 = !{i32 1, !"Code Model", i32 2}
!4835 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4836 = distinct !DISubprogram(name: "usb_serial_generic_register", scope: !3, file: !3, line: 83, type: !4837, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!6}
!4839 = !DILocalVariable(name: "retval", scope: !4836, file: !3, line: 85, type: !6)
!4840 = !DILocation(line: 85, column: 6, scope: !4836)
!4841 = !DILocation(line: 96, column: 9, scope: !4836)
!4842 = !DILocation(line: 96, column: 2, scope: !4836)
!4843 = distinct !DISubprogram(name: "usb_serial_generic_deregister", scope: !3, file: !3, line: 99, type: !2455, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!4844 = !DILocation(line: 104, column: 1, scope: !4843)
!4845 = distinct !DISubprogram(name: "usb_serial_generic_open", scope: !3, file: !3, line: 106, type: !4610, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!4846 = !DILocalVariable(name: "tty", arg: 1, scope: !4845, file: !3, line: 106, type: !1730)
!4847 = !DILocation(line: 106, column: 48, scope: !4845)
!4848 = !DILocalVariable(name: "port", arg: 2, scope: !4845, file: !3, line: 106, type: !7)
!4849 = !DILocation(line: 106, column: 77, scope: !4845)
!4850 = !DILocalVariable(name: "result", scope: !4845, file: !3, line: 108, type: !6)
!4851 = !DILocation(line: 108, column: 6, scope: !4845)
!4852 = !DILocation(line: 110, column: 35, scope: !4845)
!4853 = !DILocation(line: 110, column: 41, scope: !4845)
!4854 = !DILocation(line: 110, column: 2, scope: !4845)
!4855 = !DILocation(line: 112, column: 6, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 112, column: 6)
!4857 = !DILocation(line: 112, column: 12, scope: !4856)
!4858 = !DILocation(line: 112, column: 6, scope: !4845)
!4859 = !DILocation(line: 113, column: 48, scope: !4856)
!4860 = !DILocation(line: 113, column: 12, scope: !4856)
!4861 = !DILocation(line: 113, column: 10, scope: !4856)
!4862 = !DILocation(line: 113, column: 3, scope: !4856)
!4863 = !DILocation(line: 115, column: 9, scope: !4845)
!4864 = !DILocation(line: 115, column: 2, scope: !4845)
!4865 = distinct !DISubprogram(name: "clear_bit", scope: !4866, file: !4866, line: 39, type: !4867, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!4866 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4867 = !DISubroutineType(types: !4868)
!4868 = !{null, !173, !4869}
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !188)
!4871 = !DILocalVariable(name: "nr", arg: 1, scope: !4872, file: !4873, line: 72, type: !173)
!4872 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4873, file: !4873, line: 72, type: !4867, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!4873 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4874 = !DILocation(line: 72, column: 21, scope: !4872, inlinedAt: !4875)
!4875 = distinct !DILocation(line: 42, column: 2, scope: !4865)
!4876 = !DILocalVariable(name: "addr", arg: 2, scope: !4872, file: !4873, line: 72, type: !4869)
!4877 = !DILocation(line: 72, column: 49, scope: !4872, inlinedAt: !4875)
!4878 = !DILocalVariable(name: "v", arg: 1, scope: !4879, file: !4880, line: 84, type: !4883)
!4879 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4880, file: !4880, line: 84, type: !4881, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!4880 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4881 = !DISubroutineType(types: !4882)
!4882 = !{null, !4883, !185}
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4885)
!4885 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4886 = !DILocation(line: 84, column: 74, scope: !4879, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 41, column: 2, scope: !4865)
!4888 = !DILocalVariable(name: "size", arg: 2, scope: !4879, file: !4880, line: 84, type: !185)
!4889 = !DILocation(line: 84, column: 84, scope: !4879, inlinedAt: !4887)
!4890 = !DILocalVariable(name: "nr", arg: 1, scope: !4865, file: !4866, line: 39, type: !173)
!4891 = !DILocation(line: 39, column: 35, scope: !4865)
!4892 = !DILocalVariable(name: "addr", arg: 2, scope: !4865, file: !4866, line: 39, type: !4869)
!4893 = !DILocation(line: 39, column: 63, scope: !4865)
!4894 = !DILocation(line: 41, column: 26, scope: !4865)
!4895 = !DILocation(line: 41, column: 33, scope: !4865)
!4896 = !DILocation(line: 41, column: 31, scope: !4865)
!4897 = !DILocation(line: 86, column: 20, scope: !4879, inlinedAt: !4887)
!4898 = !DILocation(line: 86, column: 23, scope: !4879, inlinedAt: !4887)
!4899 = !DILocation(line: 86, column: 2, scope: !4879, inlinedAt: !4887)
!4900 = !DILocation(line: 87, column: 2, scope: !4879, inlinedAt: !4887)
!4901 = !DILocation(line: 42, column: 17, scope: !4865)
!4902 = !DILocation(line: 42, column: 21, scope: !4865)
!4903 = !DILocation(line: 74, column: 27, scope: !4904, inlinedAt: !4875)
!4904 = distinct !DILexicalBlock(scope: !4872, file: !4873, line: 74, column: 6)
!4905 = !DILocation(line: 74, column: 6, scope: !4904, inlinedAt: !4875)
!4906 = !DILocation(line: 74, column: 6, scope: !4872, inlinedAt: !4875)
!4907 = !DILocation(line: 76, column: 6, scope: !4908, inlinedAt: !4875)
!4908 = distinct !DILexicalBlock(scope: !4904, file: !4873, line: 74, column: 32)
!4909 = !DILocation(line: 77, column: 13, scope: !4908, inlinedAt: !4875)
!4910 = !DILocation(line: 77, column: 12, scope: !4908, inlinedAt: !4875)
!4911 = !DILocation(line: 75, column: 3, scope: !4908, inlinedAt: !4875)
!4912 = !{i32 -2147195575}
!4913 = !DILocation(line: 78, column: 2, scope: !4908, inlinedAt: !4875)
!4914 = !DILocation(line: 80, column: 8, scope: !4915, inlinedAt: !4875)
!4915 = distinct !DILexicalBlock(scope: !4904, file: !4873, line: 78, column: 9)
!4916 = !DILocation(line: 80, column: 32, scope: !4915, inlinedAt: !4875)
!4917 = !DILocation(line: 79, column: 3, scope: !4915, inlinedAt: !4875)
!4918 = !{i32 -2147195443}
!4919 = !DILocation(line: 43, column: 1, scope: !4865)
!4920 = distinct !DISubprogram(name: "usb_serial_generic_submit_read_urbs", scope: !3, file: !3, line: 324, type: !4, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!4921 = !DILocalVariable(name: "port", arg: 1, scope: !4920, file: !3, line: 324, type: !7)
!4922 = !DILocation(line: 324, column: 65, scope: !4920)
!4923 = !DILocalVariable(name: "mem_flags", arg: 2, scope: !4920, file: !3, line: 325, type: !657)
!4924 = !DILocation(line: 325, column: 12, scope: !4920)
!4925 = !DILocalVariable(name: "res", scope: !4920, file: !3, line: 327, type: !6)
!4926 = !DILocation(line: 327, column: 6, scope: !4920)
!4927 = !DILocalVariable(name: "i", scope: !4920, file: !3, line: 328, type: !6)
!4928 = !DILocation(line: 328, column: 6, scope: !4920)
!4929 = !DILocation(line: 330, column: 9, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 330, column: 2)
!4931 = !DILocation(line: 330, column: 7, scope: !4930)
!4932 = !DILocation(line: 330, column: 14, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 330, column: 2)
!4934 = !DILocation(line: 330, column: 16, scope: !4933)
!4935 = !DILocation(line: 330, column: 2, scope: !4930)
!4936 = !DILocation(line: 331, column: 44, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 330, column: 52)
!4938 = !DILocation(line: 331, column: 50, scope: !4937)
!4939 = !DILocation(line: 331, column: 53, scope: !4937)
!4940 = !DILocation(line: 331, column: 9, scope: !4937)
!4941 = !DILocation(line: 331, column: 7, scope: !4937)
!4942 = !DILocation(line: 332, column: 7, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 332, column: 7)
!4944 = !DILocation(line: 332, column: 7, scope: !4937)
!4945 = !DILocation(line: 333, column: 4, scope: !4943)
!4946 = !DILocation(line: 334, column: 2, scope: !4937)
!4947 = !DILocation(line: 330, column: 47, scope: !4933)
!4948 = !DILocation(line: 330, column: 2, scope: !4933)
!4949 = distinct !{!4949, !4935, !4950}
!4950 = !DILocation(line: 334, column: 2, scope: !4930)
!4951 = !DILocation(line: 336, column: 2, scope: !4920)
!4952 = !DILabel(scope: !4920, name: "err", file: !3, line: 337)
!4953 = !DILocation(line: 337, column: 1, scope: !4920)
!4954 = !DILocation(line: 338, column: 2, scope: !4920)
!4955 = !DILocation(line: 338, column: 9, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 338, column: 2)
!4957 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 338, column: 2)
!4958 = !DILocation(line: 338, column: 11, scope: !4956)
!4959 = !DILocation(line: 338, column: 2, scope: !4957)
!4960 = !DILocation(line: 339, column: 16, scope: !4956)
!4961 = !DILocation(line: 339, column: 22, scope: !4956)
!4962 = !DILocation(line: 339, column: 32, scope: !4956)
!4963 = !DILocation(line: 339, column: 3, scope: !4956)
!4964 = !DILocation(line: 338, column: 17, scope: !4956)
!4965 = !DILocation(line: 338, column: 2, scope: !4956)
!4966 = distinct !{!4966, !4959, !4967}
!4967 = !DILocation(line: 339, column: 34, scope: !4957)
!4968 = !DILocation(line: 341, column: 9, scope: !4920)
!4969 = !DILocation(line: 341, column: 2, scope: !4920)
!4970 = !DILocation(line: 342, column: 1, scope: !4920)
!4971 = distinct !DISubprogram(name: "usb_serial_generic_close", scope: !3, file: !3, line: 119, type: !4614, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!4972 = !DILocalVariable(name: "lock", arg: 1, scope: !4973, file: !4974, line: 407, type: !981)
!4973 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4974, file: !4974, line: 407, type: !4975, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!4974 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4975 = !DISubroutineType(types: !4976)
!4976 = !{null, !981, !188}
!4977 = !DILocation(line: 407, column: 64, scope: !4973, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 130, column: 3, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 124, column: 27)
!4980 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 124, column: 6)
!4981 = !DILocalVariable(name: "flags", arg: 2, scope: !4973, file: !4974, line: 407, type: !188)
!4982 = !DILocation(line: 407, column: 84, scope: !4973, inlinedAt: !4978)
!4983 = !DILocalVariable(name: "lock", arg: 1, scope: !4984, file: !4974, line: 327, type: !981)
!4984 = distinct !DISubprogram(name: "spinlock_check", scope: !4974, file: !4974, line: 327, type: !4985, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!4987, !981}
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!4988 = !DILocation(line: 327, column: 67, scope: !4984, inlinedAt: !4989)
!4989 = distinct !DILocation(line: 128, column: 3, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 128, column: 3)
!4991 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 128, column: 3)
!4992 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 128, column: 3)
!4993 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 128, column: 3)
!4994 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 128, column: 3)
!4995 = !DILocalVariable(name: "port", arg: 1, scope: !4971, file: !3, line: 119, type: !7)
!4996 = !DILocation(line: 119, column: 55, scope: !4971)
!4997 = !DILocalVariable(name: "flags", scope: !4971, file: !3, line: 121, type: !188)
!4998 = !DILocation(line: 121, column: 16, scope: !4971)
!4999 = !DILocalVariable(name: "i", scope: !4971, file: !3, line: 122, type: !6)
!5000 = !DILocation(line: 122, column: 6, scope: !4971)
!5001 = !DILocation(line: 124, column: 6, scope: !4980)
!5002 = !DILocation(line: 124, column: 12, scope: !4980)
!5003 = !DILocation(line: 124, column: 6, scope: !4971)
!5004 = !DILocation(line: 125, column: 10, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 125, column: 3)
!5006 = !DILocation(line: 125, column: 8, scope: !5005)
!5007 = !DILocation(line: 125, column: 15, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 125, column: 3)
!5009 = !DILocation(line: 125, column: 17, scope: !5008)
!5010 = !DILocation(line: 125, column: 3, scope: !5005)
!5011 = !DILocation(line: 126, column: 17, scope: !5008)
!5012 = !DILocation(line: 126, column: 23, scope: !5008)
!5013 = !DILocation(line: 126, column: 34, scope: !5008)
!5014 = !DILocation(line: 126, column: 4, scope: !5008)
!5015 = !DILocation(line: 125, column: 49, scope: !5008)
!5016 = !DILocation(line: 125, column: 3, scope: !5008)
!5017 = distinct !{!5017, !5010, !5018}
!5018 = !DILocation(line: 126, column: 36, scope: !5005)
!5019 = !DILocation(line: 128, column: 3, scope: !4979)
!5020 = !DILocation(line: 128, column: 3, scope: !4994)
!5021 = !DILocalVariable(name: "__dummy", scope: !5022, file: !3, line: 128, type: !188)
!5022 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 128, column: 3)
!5023 = !DILocation(line: 128, column: 3, scope: !5022)
!5024 = !DILocalVariable(name: "__dummy2", scope: !5022, file: !3, line: 128, type: !188)
!5025 = !DILocation(line: 128, column: 3, scope: !4993)
!5026 = !DILocation(line: 128, column: 3, scope: !4992)
!5027 = !DILocation(line: 128, column: 3, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 128, column: 3)
!5029 = !DILocalVariable(name: "__dummy", scope: !5030, file: !3, line: 128, type: !188)
!5030 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 128, column: 3)
!5031 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 128, column: 3)
!5032 = !DILocation(line: 128, column: 3, scope: !5030)
!5033 = !DILocalVariable(name: "__dummy2", scope: !5030, file: !3, line: 128, type: !188)
!5034 = !DILocation(line: 128, column: 3, scope: !5031)
!5035 = !DILocation(line: 128, column: 3, scope: !4991)
!5036 = !{i32 -2141737371}
!5037 = !DILocation(line: 128, column: 3, scope: !4990)
!5038 = !DILocation(line: 329, column: 10, scope: !4984, inlinedAt: !4989)
!5039 = !DILocation(line: 329, column: 16, scope: !4984, inlinedAt: !4989)
!5040 = !DILocalVariable(name: "__tmp", scope: !5041, file: !3, line: 129, type: !5042)
!5041 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 129, column: 3)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!5043 = !DILocation(line: 129, column: 3, scope: !5041)
!5044 = !DILocation(line: 130, column: 27, scope: !4979)
!5045 = !DILocation(line: 130, column: 33, scope: !4979)
!5046 = !DILocation(line: 130, column: 39, scope: !4979)
!5047 = !DILocalVariable(name: "__dummy", scope: !5048, file: !4974, line: 409, type: !188)
!5048 = distinct !DILexicalBlock(scope: !5049, file: !4974, line: 409, column: 2)
!5049 = distinct !DILexicalBlock(scope: !4973, file: !4974, line: 409, column: 2)
!5050 = !DILocation(line: 409, column: 2, scope: !5048, inlinedAt: !4978)
!5051 = !DILocalVariable(name: "__dummy2", scope: !5048, file: !4974, line: 409, type: !188)
!5052 = !DILocalVariable(name: "__dummy", scope: !5053, file: !4974, line: 409, type: !188)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !4974, line: 409, column: 2)
!5054 = distinct !DILexicalBlock(scope: !5055, file: !4974, line: 409, column: 2)
!5055 = distinct !DILexicalBlock(scope: !5056, file: !4974, line: 409, column: 2)
!5056 = distinct !DILexicalBlock(scope: !5049, file: !4974, line: 409, column: 2)
!5057 = !DILocation(line: 409, column: 2, scope: !5053, inlinedAt: !4978)
!5058 = !DILocalVariable(name: "__dummy2", scope: !5053, file: !4974, line: 409, type: !188)
!5059 = !DILocation(line: 409, column: 2, scope: !5054, inlinedAt: !4978)
!5060 = !DILocation(line: 409, column: 2, scope: !5061, inlinedAt: !4978)
!5061 = distinct !DILexicalBlock(scope: !5056, file: !4974, line: 409, column: 2)
!5062 = !{i32 -2145233950}
!5063 = !DILocation(line: 409, column: 2, scope: !5064, inlinedAt: !4978)
!5064 = distinct !DILexicalBlock(scope: !5061, file: !4974, line: 409, column: 2)
!5065 = !DILocation(line: 131, column: 2, scope: !4979)
!5066 = !DILocation(line: 132, column: 6, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 132, column: 6)
!5068 = !DILocation(line: 132, column: 12, scope: !5067)
!5069 = !DILocation(line: 132, column: 6, scope: !4971)
!5070 = !DILocation(line: 133, column: 10, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 133, column: 3)
!5072 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 132, column: 26)
!5073 = !DILocation(line: 133, column: 8, scope: !5071)
!5074 = !DILocation(line: 133, column: 15, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 133, column: 3)
!5076 = !DILocation(line: 133, column: 17, scope: !5075)
!5077 = !DILocation(line: 133, column: 3, scope: !5071)
!5078 = !DILocation(line: 134, column: 17, scope: !5075)
!5079 = !DILocation(line: 134, column: 23, scope: !5075)
!5080 = !DILocation(line: 134, column: 33, scope: !5075)
!5081 = !DILocation(line: 134, column: 4, scope: !5075)
!5082 = !DILocation(line: 133, column: 48, scope: !5075)
!5083 = !DILocation(line: 133, column: 3, scope: !5075)
!5084 = distinct !{!5084, !5077, !5085}
!5085 = !DILocation(line: 134, column: 35, scope: !5071)
!5086 = !DILocation(line: 135, column: 2, scope: !5072)
!5087 = !DILocation(line: 136, column: 1, scope: !4971)
!5088 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5089, file: !5089, line: 666, type: !5090, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5089 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!188}
!5092 = !DILocalVariable(name: "f", scope: !5088, file: !5089, line: 668, type: !188)
!5093 = !DILocation(line: 668, column: 16, scope: !5088)
!5094 = !DILocation(line: 670, column: 6, scope: !5088)
!5095 = !DILocation(line: 670, column: 4, scope: !5088)
!5096 = !DILocation(line: 671, column: 2, scope: !5088)
!5097 = !DILocation(line: 672, column: 9, scope: !5088)
!5098 = !DILocation(line: 672, column: 2, scope: !5088)
!5099 = distinct !DISubprogram(name: "usb_serial_generic_prepare_write_buffer", scope: !3, file: !3, line: 139, type: !4721, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5100 = !DILocation(line: 407, column: 64, scope: !4973, inlinedAt: !5101)
!5101 = distinct !DILocation(line: 142, column: 9, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 142, column: 9)
!5103 = !DILocation(line: 407, column: 84, scope: !4973, inlinedAt: !5101)
!5104 = !DILocation(line: 327, column: 67, scope: !4984, inlinedAt: !5105)
!5105 = distinct !DILocation(line: 142, column: 9, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 142, column: 9)
!5107 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 142, column: 9)
!5108 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 142, column: 9)
!5109 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 142, column: 9)
!5110 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 142, column: 9)
!5111 = !DILocalVariable(name: "port", arg: 1, scope: !5099, file: !3, line: 139, type: !7)
!5112 = !DILocation(line: 139, column: 69, scope: !5099)
!5113 = !DILocalVariable(name: "dest", arg: 2, scope: !5099, file: !3, line: 140, type: !212)
!5114 = !DILocation(line: 140, column: 13, scope: !5099)
!5115 = !DILocalVariable(name: "size", arg: 3, scope: !5099, file: !3, line: 140, type: !185)
!5116 = !DILocation(line: 140, column: 26, scope: !5099)
!5117 = !DILocalVariable(name: "__flags", scope: !5102, file: !3, line: 142, type: !188)
!5118 = !DILocation(line: 142, column: 9, scope: !5102)
!5119 = !DILocalVariable(name: "__ret", scope: !5102, file: !3, line: 142, type: !31)
!5120 = !DILocation(line: 142, column: 9, scope: !5110)
!5121 = !DILocalVariable(name: "__dummy", scope: !5122, file: !3, line: 142, type: !188)
!5122 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 142, column: 9)
!5123 = !DILocation(line: 142, column: 9, scope: !5122)
!5124 = !DILocalVariable(name: "__dummy2", scope: !5122, file: !3, line: 142, type: !188)
!5125 = !DILocation(line: 142, column: 9, scope: !5109)
!5126 = !DILocation(line: 142, column: 9, scope: !5108)
!5127 = !DILocation(line: 142, column: 9, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 142, column: 9)
!5129 = !DILocalVariable(name: "__dummy", scope: !5130, file: !3, line: 142, type: !188)
!5130 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 142, column: 9)
!5131 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 142, column: 9)
!5132 = !DILocation(line: 142, column: 9, scope: !5130)
!5133 = !DILocalVariable(name: "__dummy2", scope: !5130, file: !3, line: 142, type: !188)
!5134 = !DILocation(line: 142, column: 9, scope: !5131)
!5135 = !DILocation(line: 142, column: 9, scope: !5107)
!5136 = !{i32 -2141735320}
!5137 = !DILocation(line: 142, column: 9, scope: !5106)
!5138 = !DILocation(line: 329, column: 10, scope: !4984, inlinedAt: !5105)
!5139 = !DILocation(line: 329, column: 16, scope: !4984, inlinedAt: !5105)
!5140 = !DILocalVariable(name: "__tmp", scope: !5141, file: !3, line: 142, type: !5042)
!5141 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 142, column: 9)
!5142 = !DILocation(line: 142, column: 9, scope: !5141)
!5143 = !DILocalVariable(name: "__buf", scope: !5141, file: !3, line: 142, type: !212)
!5144 = !DILocalVariable(name: "__n", scope: !5141, file: !3, line: 142, type: !188)
!5145 = !DILocalVariable(name: "__recsize", scope: !5141, file: !3, line: 142, type: !5146)
!5146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!5147 = !DILocalVariable(name: "__kfifo", scope: !5141, file: !3, line: 142, type: !5148)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!5149 = !DILocation(line: 409, column: 2, scope: !5048, inlinedAt: !5101)
!5150 = !DILocation(line: 409, column: 2, scope: !5053, inlinedAt: !5101)
!5151 = !DILocation(line: 409, column: 2, scope: !5054, inlinedAt: !5101)
!5152 = !DILocation(line: 409, column: 2, scope: !5061, inlinedAt: !5101)
!5153 = !DILocation(line: 409, column: 2, scope: !5064, inlinedAt: !5101)
!5154 = !DILocation(line: 142, column: 9, scope: !5099)
!5155 = !DILocation(line: 142, column: 2, scope: !5099)
!5156 = distinct !DISubprogram(name: "__kfifo_uint_must_check_helper", scope: !4764, file: !4764, line: 163, type: !5157, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!31, !31}
!5159 = !DILocalVariable(name: "val", arg: 1, scope: !5156, file: !4764, line: 163, type: !31)
!5160 = !DILocation(line: 163, column: 45, scope: !5156)
!5161 = !DILocation(line: 165, column: 9, scope: !5156)
!5162 = !DILocation(line: 165, column: 2, scope: !5156)
!5163 = !DILocation(line: 407, column: 64, scope: !4973, inlinedAt: !5164)
!5164 = distinct !DILocation(line: 193, column: 3, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 187, column: 14)
!5166 = distinct !DILexicalBlock(scope: !2, file: !3, line: 187, column: 6)
!5167 = !DILocation(line: 407, column: 84, scope: !4973, inlinedAt: !5164)
!5168 = !DILocation(line: 327, column: 67, scope: !4984, inlinedAt: !5169)
!5169 = distinct !DILocation(line: 191, column: 3, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 191, column: 3)
!5171 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 191, column: 3)
!5172 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 191, column: 3)
!5173 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 191, column: 3)
!5174 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 191, column: 3)
!5175 = !DILocation(line: 407, column: 64, scope: !4973, inlinedAt: !5176)
!5176 = distinct !DILocation(line: 183, column: 2, scope: !2)
!5177 = !DILocation(line: 407, column: 84, scope: !4973, inlinedAt: !5176)
!5178 = !DILocation(line: 327, column: 67, scope: !4984, inlinedAt: !5179)
!5179 = distinct !DILocation(line: 181, column: 2, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 181, column: 2)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 181, column: 2)
!5182 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 181, column: 2)
!5183 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 181, column: 2)
!5184 = distinct !DILexicalBlock(scope: !2, file: !3, line: 181, column: 2)
!5185 = !DILocation(line: 407, column: 64, scope: !4973, inlinedAt: !5186)
!5186 = distinct !DILocation(line: 173, column: 2, scope: !2)
!5187 = !DILocation(line: 407, column: 84, scope: !4973, inlinedAt: !5186)
!5188 = !DILocation(line: 407, column: 64, scope: !4973, inlinedAt: !5189)
!5189 = distinct !DILocation(line: 168, column: 3, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 166, column: 63)
!5191 = distinct !DILexicalBlock(scope: !2, file: !3, line: 166, column: 6)
!5192 = !DILocation(line: 407, column: 84, scope: !4973, inlinedAt: !5189)
!5193 = !DILocation(line: 327, column: 67, scope: !4984, inlinedAt: !5194)
!5194 = distinct !DILocation(line: 165, column: 2, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 165, column: 2)
!5196 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 165, column: 2)
!5197 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 165, column: 2)
!5198 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 165, column: 2)
!5199 = distinct !DILexicalBlock(scope: !2, file: !3, line: 165, column: 2)
!5200 = !DILocalVariable(name: "port", arg: 1, scope: !2, file: !3, line: 154, type: !7)
!5201 = !DILocation(line: 154, column: 60, scope: !2)
!5202 = !DILocalVariable(name: "mem_flags", arg: 2, scope: !2, file: !3, line: 155, type: !657)
!5203 = !DILocation(line: 155, column: 14, scope: !2)
!5204 = !DILocalVariable(name: "urb", scope: !2, file: !3, line: 157, type: !4657)
!5205 = !DILocation(line: 157, column: 14, scope: !2)
!5206 = !DILocalVariable(name: "count", scope: !2, file: !3, line: 158, type: !6)
!5207 = !DILocation(line: 158, column: 6, scope: !2)
!5208 = !DILocalVariable(name: "result", scope: !2, file: !3, line: 158, type: !6)
!5209 = !DILocation(line: 158, column: 13, scope: !2)
!5210 = !DILocalVariable(name: "flags", scope: !2, file: !3, line: 159, type: !188)
!5211 = !DILocation(line: 159, column: 16, scope: !2)
!5212 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 160, type: !6)
!5213 = !DILocation(line: 160, column: 6, scope: !2)
!5214 = !DILocation(line: 162, column: 52, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !2, file: !3, line: 162, column: 6)
!5216 = !DILocation(line: 162, column: 58, scope: !5215)
!5217 = !DILocation(line: 162, column: 6, scope: !5215)
!5218 = !DILocation(line: 162, column: 6, scope: !2)
!5219 = !DILocation(line: 163, column: 3, scope: !5215)
!5220 = !DILocation(line: 162, column: 63, scope: !5215)
!5221 = !DILabel(scope: !2, name: "retry", file: !3, line: 164)
!5222 = !DILocation(line: 164, column: 1, scope: !2)
!5223 = !DILocation(line: 165, column: 2, scope: !2)
!5224 = !DILocation(line: 165, column: 2, scope: !5199)
!5225 = !DILocalVariable(name: "__dummy", scope: !5226, file: !3, line: 165, type: !188)
!5226 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 165, column: 2)
!5227 = !DILocation(line: 165, column: 2, scope: !5226)
!5228 = !DILocalVariable(name: "__dummy2", scope: !5226, file: !3, line: 165, type: !188)
!5229 = !DILocation(line: 165, column: 2, scope: !5198)
!5230 = !DILocation(line: 165, column: 2, scope: !5197)
!5231 = !DILocation(line: 165, column: 2, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 165, column: 2)
!5233 = !DILocalVariable(name: "__dummy", scope: !5234, file: !3, line: 165, type: !188)
!5234 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 165, column: 2)
!5235 = distinct !DILexicalBlock(scope: !5232, file: !3, line: 165, column: 2)
!5236 = !DILocation(line: 165, column: 2, scope: !5234)
!5237 = !DILocalVariable(name: "__dummy2", scope: !5234, file: !3, line: 165, type: !188)
!5238 = !DILocation(line: 165, column: 2, scope: !5235)
!5239 = !DILocation(line: 165, column: 2, scope: !5196)
!5240 = !{i32 -2141733901}
!5241 = !DILocation(line: 165, column: 2, scope: !5195)
!5242 = !DILocation(line: 329, column: 10, scope: !4984, inlinedAt: !5194)
!5243 = !DILocation(line: 329, column: 16, scope: !4984, inlinedAt: !5194)
!5244 = !DILocation(line: 166, column: 7, scope: !5191)
!5245 = !DILocation(line: 166, column: 13, scope: !5191)
!5246 = !DILocation(line: 166, column: 29, scope: !5191)
!5247 = !DILocalVariable(name: "__tmpl", scope: !5248, file: !3, line: 166, type: !5042)
!5248 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 166, column: 33)
!5249 = !DILocation(line: 166, column: 33, scope: !5248)
!5250 = !DILocation(line: 166, column: 33, scope: !5191)
!5251 = !DILocation(line: 166, column: 6, scope: !2)
!5252 = !DILocation(line: 167, column: 44, scope: !5190)
!5253 = !DILocation(line: 167, column: 50, scope: !5190)
!5254 = !DILocation(line: 167, column: 3, scope: !5190)
!5255 = !DILocation(line: 168, column: 27, scope: !5190)
!5256 = !DILocation(line: 168, column: 33, scope: !5190)
!5257 = !DILocation(line: 168, column: 39, scope: !5190)
!5258 = !DILocation(line: 409, column: 2, scope: !5048, inlinedAt: !5189)
!5259 = !DILocation(line: 409, column: 2, scope: !5053, inlinedAt: !5189)
!5260 = !DILocation(line: 409, column: 2, scope: !5054, inlinedAt: !5189)
!5261 = !DILocation(line: 409, column: 2, scope: !5061, inlinedAt: !5189)
!5262 = !DILocation(line: 409, column: 2, scope: !5064, inlinedAt: !5189)
!5263 = !DILocation(line: 169, column: 3, scope: !5190)
!5264 = !DILocation(line: 171, column: 27, scope: !2)
!5265 = !DILocation(line: 171, column: 33, scope: !2)
!5266 = !DILocation(line: 171, column: 11, scope: !2)
!5267 = !DILocation(line: 171, column: 6, scope: !2)
!5268 = !DILocation(line: 171, column: 4, scope: !2)
!5269 = !DILocation(line: 173, column: 26, scope: !2)
!5270 = !DILocation(line: 173, column: 32, scope: !2)
!5271 = !DILocation(line: 173, column: 38, scope: !2)
!5272 = !DILocation(line: 409, column: 2, scope: !5048, inlinedAt: !5186)
!5273 = !DILocation(line: 409, column: 2, scope: !5053, inlinedAt: !5186)
!5274 = !DILocation(line: 409, column: 2, scope: !5054, inlinedAt: !5186)
!5275 = !DILocation(line: 409, column: 2, scope: !5061, inlinedAt: !5186)
!5276 = !DILocation(line: 409, column: 2, scope: !5064, inlinedAt: !5186)
!5277 = !DILocation(line: 175, column: 8, scope: !2)
!5278 = !DILocation(line: 175, column: 14, scope: !2)
!5279 = !DILocation(line: 175, column: 25, scope: !2)
!5280 = !DILocation(line: 175, column: 6, scope: !2)
!5281 = !DILocation(line: 176, column: 10, scope: !2)
!5282 = !DILocation(line: 176, column: 16, scope: !2)
!5283 = !DILocation(line: 176, column: 24, scope: !2)
!5284 = !DILocation(line: 176, column: 30, scope: !2)
!5285 = !DILocation(line: 176, column: 51, scope: !2)
!5286 = !DILocation(line: 177, column: 7, scope: !2)
!5287 = !DILocation(line: 177, column: 12, scope: !2)
!5288 = !DILocation(line: 178, column: 7, scope: !2)
!5289 = !DILocation(line: 178, column: 13, scope: !2)
!5290 = !DILocation(line: 176, column: 8, scope: !2)
!5291 = !DILocation(line: 179, column: 32, scope: !2)
!5292 = !DILocation(line: 179, column: 2, scope: !2)
!5293 = !DILocation(line: 179, column: 7, scope: !2)
!5294 = !DILocation(line: 179, column: 30, scope: !2)
!5295 = !DILocation(line: 180, column: 25, scope: !2)
!5296 = !DILocation(line: 180, column: 31, scope: !2)
!5297 = !DILocation(line: 180, column: 46, scope: !2)
!5298 = !DILocation(line: 180, column: 53, scope: !2)
!5299 = !DILocation(line: 180, column: 58, scope: !2)
!5300 = !DILocation(line: 180, column: 2, scope: !2)
!5301 = !DILocation(line: 181, column: 2, scope: !2)
!5302 = !DILocation(line: 181, column: 2, scope: !5184)
!5303 = !DILocalVariable(name: "__dummy", scope: !5304, file: !3, line: 181, type: !188)
!5304 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 181, column: 2)
!5305 = !DILocation(line: 181, column: 2, scope: !5304)
!5306 = !DILocalVariable(name: "__dummy2", scope: !5304, file: !3, line: 181, type: !188)
!5307 = !DILocation(line: 181, column: 2, scope: !5183)
!5308 = !DILocation(line: 181, column: 2, scope: !5182)
!5309 = !DILocation(line: 181, column: 2, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 181, column: 2)
!5311 = !DILocalVariable(name: "__dummy", scope: !5312, file: !3, line: 181, type: !188)
!5312 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 181, column: 2)
!5313 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 181, column: 2)
!5314 = !DILocation(line: 181, column: 2, scope: !5312)
!5315 = !DILocalVariable(name: "__dummy2", scope: !5312, file: !3, line: 181, type: !188)
!5316 = !DILocation(line: 181, column: 2, scope: !5313)
!5317 = !DILocation(line: 181, column: 2, scope: !5181)
!5318 = !{i32 -2141732332}
!5319 = !DILocation(line: 181, column: 2, scope: !5180)
!5320 = !DILocation(line: 329, column: 10, scope: !4984, inlinedAt: !5179)
!5321 = !DILocation(line: 329, column: 16, scope: !4984, inlinedAt: !5179)
!5322 = !DILocation(line: 182, column: 20, scope: !2)
!5323 = !DILocation(line: 182, column: 2, scope: !2)
!5324 = !DILocation(line: 182, column: 8, scope: !2)
!5325 = !DILocation(line: 182, column: 17, scope: !2)
!5326 = !DILocation(line: 183, column: 26, scope: !2)
!5327 = !DILocation(line: 183, column: 32, scope: !2)
!5328 = !DILocation(line: 183, column: 38, scope: !2)
!5329 = !DILocation(line: 409, column: 2, scope: !5048, inlinedAt: !5176)
!5330 = !DILocation(line: 409, column: 2, scope: !5053, inlinedAt: !5176)
!5331 = !DILocation(line: 409, column: 2, scope: !5054, inlinedAt: !5176)
!5332 = !DILocation(line: 409, column: 2, scope: !5061, inlinedAt: !5176)
!5333 = !DILocation(line: 409, column: 2, scope: !5064, inlinedAt: !5176)
!5334 = !DILocation(line: 185, column: 12, scope: !2)
!5335 = !DILocation(line: 185, column: 16, scope: !2)
!5336 = !DILocation(line: 185, column: 22, scope: !2)
!5337 = !DILocation(line: 185, column: 2, scope: !2)
!5338 = !DILocation(line: 186, column: 26, scope: !2)
!5339 = !DILocation(line: 186, column: 31, scope: !2)
!5340 = !DILocation(line: 186, column: 11, scope: !2)
!5341 = !DILocation(line: 186, column: 9, scope: !2)
!5342 = !DILocation(line: 187, column: 6, scope: !5166)
!5343 = !DILocation(line: 187, column: 6, scope: !2)
!5344 = !DILocation(line: 188, column: 3, scope: !5165)
!5345 = !DILocalVariable(name: "__port", scope: !5346, file: !3, line: 188, type: !7)
!5346 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 188, column: 3)
!5347 = !DILocation(line: 188, column: 3, scope: !5346)
!5348 = !DILocation(line: 188, column: 3, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 188, column: 3)
!5350 = !DILocation(line: 188, column: 3, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 188, column: 3)
!5352 = !DILocation(line: 190, column: 11, scope: !5165)
!5353 = !DILocation(line: 190, column: 15, scope: !5165)
!5354 = !DILocation(line: 190, column: 21, scope: !5165)
!5355 = !DILocation(line: 190, column: 3, scope: !5165)
!5356 = !DILocation(line: 191, column: 3, scope: !5165)
!5357 = !DILocation(line: 191, column: 3, scope: !5174)
!5358 = !DILocalVariable(name: "__dummy", scope: !5359, file: !3, line: 191, type: !188)
!5359 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 191, column: 3)
!5360 = !DILocation(line: 191, column: 3, scope: !5359)
!5361 = !DILocalVariable(name: "__dummy2", scope: !5359, file: !3, line: 191, type: !188)
!5362 = !DILocation(line: 191, column: 3, scope: !5173)
!5363 = !DILocation(line: 191, column: 3, scope: !5172)
!5364 = !DILocation(line: 191, column: 3, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 191, column: 3)
!5366 = !DILocalVariable(name: "__dummy", scope: !5367, file: !3, line: 191, type: !188)
!5367 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 191, column: 3)
!5368 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 191, column: 3)
!5369 = !DILocation(line: 191, column: 3, scope: !5367)
!5370 = !DILocalVariable(name: "__dummy2", scope: !5367, file: !3, line: 191, type: !188)
!5371 = !DILocation(line: 191, column: 3, scope: !5368)
!5372 = !DILocation(line: 191, column: 3, scope: !5171)
!5373 = !{i32 -2141730851}
!5374 = !DILocation(line: 191, column: 3, scope: !5170)
!5375 = !DILocation(line: 329, column: 10, scope: !4984, inlinedAt: !5169)
!5376 = !DILocation(line: 329, column: 16, scope: !4984, inlinedAt: !5169)
!5377 = !DILocation(line: 192, column: 21, scope: !5165)
!5378 = !DILocation(line: 192, column: 3, scope: !5165)
!5379 = !DILocation(line: 192, column: 9, scope: !5165)
!5380 = !DILocation(line: 192, column: 18, scope: !5165)
!5381 = !DILocation(line: 193, column: 27, scope: !5165)
!5382 = !DILocation(line: 193, column: 33, scope: !5165)
!5383 = !DILocation(line: 193, column: 39, scope: !5165)
!5384 = !DILocation(line: 409, column: 2, scope: !5048, inlinedAt: !5164)
!5385 = !DILocation(line: 409, column: 2, scope: !5053, inlinedAt: !5164)
!5386 = !DILocation(line: 409, column: 2, scope: !5054, inlinedAt: !5164)
!5387 = !DILocation(line: 409, column: 2, scope: !5061, inlinedAt: !5164)
!5388 = !DILocation(line: 409, column: 2, scope: !5064, inlinedAt: !5164)
!5389 = !DILocation(line: 195, column: 44, scope: !5165)
!5390 = !DILocation(line: 195, column: 50, scope: !5165)
!5391 = !DILocation(line: 195, column: 3, scope: !5165)
!5392 = !DILocation(line: 196, column: 10, scope: !5165)
!5393 = !DILocation(line: 196, column: 3, scope: !5165)
!5394 = !DILocation(line: 199, column: 2, scope: !2)
!5395 = !DILocation(line: 200, column: 1, scope: !2)
!5396 = distinct !DISubprogram(name: "test_and_set_bit_lock", scope: !5397, file: !5397, line: 53, type: !5398, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5397 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-lock.h", directory: "/home/lizy2001/genbc/linux")
!5398 = !DISubroutineType(types: !5399)
!5399 = !{!352, !173, !4869}
!5400 = !DILocalVariable(name: "nr", arg: 1, scope: !5401, file: !4873, line: 136, type: !173)
!5401 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !4873, file: !4873, line: 136, type: !5398, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5402 = !DILocation(line: 136, column: 28, scope: !5401, inlinedAt: !5403)
!5403 = distinct !DILocation(line: 144, column: 9, scope: !5404, inlinedAt: !5405)
!5404 = distinct !DISubprogram(name: "arch_test_and_set_bit_lock", scope: !4873, file: !4873, line: 142, type: !5398, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5405 = distinct !DILocation(line: 56, column: 9, scope: !5396)
!5406 = !DILocalVariable(name: "addr", arg: 2, scope: !5401, file: !4873, line: 136, type: !4869)
!5407 = !DILocation(line: 136, column: 56, scope: !5401, inlinedAt: !5403)
!5408 = !DILocalVariable(name: "c", scope: !5409, file: !4873, line: 138, type: !352)
!5409 = distinct !DILexicalBlock(scope: !5401, file: !4873, line: 138, column: 9)
!5410 = !DILocation(line: 138, column: 9, scope: !5409, inlinedAt: !5403)
!5411 = !DILocalVariable(name: "nr", arg: 1, scope: !5404, file: !4873, line: 142, type: !173)
!5412 = !DILocation(line: 142, column: 33, scope: !5404, inlinedAt: !5405)
!5413 = !DILocalVariable(name: "addr", arg: 2, scope: !5404, file: !4873, line: 142, type: !4869)
!5414 = !DILocation(line: 142, column: 61, scope: !5404, inlinedAt: !5405)
!5415 = !DILocalVariable(name: "v", arg: 1, scope: !5416, file: !4880, line: 99, type: !4883)
!5416 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4880, file: !4880, line: 99, type: !4881, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5417 = !DILocation(line: 99, column: 79, scope: !5416, inlinedAt: !5418)
!5418 = distinct !DILocation(line: 55, column: 2, scope: !5396)
!5419 = !DILocalVariable(name: "size", arg: 2, scope: !5416, file: !4880, line: 99, type: !185)
!5420 = !DILocation(line: 99, column: 89, scope: !5416, inlinedAt: !5418)
!5421 = !DILocalVariable(name: "nr", arg: 1, scope: !5396, file: !5397, line: 53, type: !173)
!5422 = !DILocation(line: 53, column: 47, scope: !5396)
!5423 = !DILocalVariable(name: "addr", arg: 2, scope: !5396, file: !5397, line: 53, type: !4869)
!5424 = !DILocation(line: 53, column: 75, scope: !5396)
!5425 = !DILocation(line: 55, column: 31, scope: !5396)
!5426 = !DILocation(line: 55, column: 38, scope: !5396)
!5427 = !DILocation(line: 55, column: 36, scope: !5396)
!5428 = !DILocation(line: 101, column: 20, scope: !5416, inlinedAt: !5418)
!5429 = !DILocation(line: 101, column: 23, scope: !5416, inlinedAt: !5418)
!5430 = !DILocation(line: 101, column: 2, scope: !5416, inlinedAt: !5418)
!5431 = !DILocation(line: 102, column: 2, scope: !5416, inlinedAt: !5418)
!5432 = !DILocation(line: 56, column: 36, scope: !5396)
!5433 = !DILocation(line: 56, column: 40, scope: !5396)
!5434 = !DILocation(line: 144, column: 31, scope: !5404, inlinedAt: !5405)
!5435 = !DILocation(line: 144, column: 35, scope: !5404, inlinedAt: !5405)
!5436 = !{i32 -2147192043, i32 -2147191947}
!5437 = !DILocation(line: 56, column: 2, scope: !5396)
!5438 = distinct !DISubprogram(name: "clear_bit_unlock", scope: !5397, file: !5397, line: 23, type: !4867, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5439 = !DILocation(line: 72, column: 21, scope: !4872, inlinedAt: !5440)
!5440 = distinct !DILocation(line: 88, column: 2, scope: !5441, inlinedAt: !5442)
!5441 = distinct !DISubprogram(name: "arch_clear_bit_unlock", scope: !4873, file: !4873, line: 85, type: !4867, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5442 = distinct !DILocation(line: 26, column: 2, scope: !5438)
!5443 = !DILocation(line: 72, column: 49, scope: !4872, inlinedAt: !5440)
!5444 = !DILocalVariable(name: "nr", arg: 1, scope: !5441, file: !4873, line: 85, type: !173)
!5445 = !DILocation(line: 85, column: 28, scope: !5441, inlinedAt: !5442)
!5446 = !DILocalVariable(name: "addr", arg: 2, scope: !5441, file: !4873, line: 85, type: !4869)
!5447 = !DILocation(line: 85, column: 56, scope: !5441, inlinedAt: !5442)
!5448 = !DILocation(line: 84, column: 74, scope: !4879, inlinedAt: !5449)
!5449 = distinct !DILocation(line: 25, column: 2, scope: !5438)
!5450 = !DILocation(line: 84, column: 84, scope: !4879, inlinedAt: !5449)
!5451 = !DILocalVariable(name: "nr", arg: 1, scope: !5438, file: !5397, line: 23, type: !173)
!5452 = !DILocation(line: 23, column: 42, scope: !5438)
!5453 = !DILocalVariable(name: "addr", arg: 2, scope: !5438, file: !5397, line: 23, type: !4869)
!5454 = !DILocation(line: 23, column: 70, scope: !5438)
!5455 = !DILocation(line: 25, column: 26, scope: !5438)
!5456 = !DILocation(line: 25, column: 33, scope: !5438)
!5457 = !DILocation(line: 25, column: 31, scope: !5438)
!5458 = !DILocation(line: 86, column: 20, scope: !4879, inlinedAt: !5449)
!5459 = !DILocation(line: 86, column: 23, scope: !4879, inlinedAt: !5449)
!5460 = !DILocation(line: 86, column: 2, scope: !4879, inlinedAt: !5449)
!5461 = !DILocation(line: 87, column: 2, scope: !4879, inlinedAt: !5449)
!5462 = !DILocation(line: 26, column: 24, scope: !5438)
!5463 = !DILocation(line: 26, column: 28, scope: !5438)
!5464 = !DILocation(line: 87, column: 2, scope: !5441, inlinedAt: !5442)
!5465 = !{i32 -2147195018}
!5466 = !DILocation(line: 88, column: 17, scope: !5441, inlinedAt: !5442)
!5467 = !DILocation(line: 88, column: 21, scope: !5441, inlinedAt: !5442)
!5468 = !DILocation(line: 74, column: 27, scope: !4904, inlinedAt: !5440)
!5469 = !DILocation(line: 74, column: 6, scope: !4904, inlinedAt: !5440)
!5470 = !DILocation(line: 74, column: 6, scope: !4872, inlinedAt: !5440)
!5471 = !DILocation(line: 76, column: 6, scope: !4908, inlinedAt: !5440)
!5472 = !DILocation(line: 77, column: 13, scope: !4908, inlinedAt: !5440)
!5473 = !DILocation(line: 77, column: 12, scope: !4908, inlinedAt: !5440)
!5474 = !DILocation(line: 75, column: 3, scope: !4908, inlinedAt: !5440)
!5475 = !DILocation(line: 78, column: 2, scope: !4908, inlinedAt: !5440)
!5476 = !DILocation(line: 80, column: 8, scope: !4915, inlinedAt: !5440)
!5477 = !DILocation(line: 80, column: 32, scope: !4915, inlinedAt: !5440)
!5478 = !DILocation(line: 79, column: 3, scope: !4915, inlinedAt: !5440)
!5479 = !DILocation(line: 27, column: 1, scope: !5438)
!5480 = distinct !DISubprogram(name: "usb_serial_debug_data", scope: !9, file: !9, line: 385, type: !5481, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{null, !71, !80, !6, !287}
!5483 = !DILocalVariable(name: "dev", arg: 1, scope: !5480, file: !9, line: 385, type: !71)
!5484 = !DILocation(line: 385, column: 57, scope: !5480)
!5485 = !DILocalVariable(name: "function", arg: 2, scope: !5480, file: !9, line: 386, type: !80)
!5486 = !DILocation(line: 386, column: 19, scope: !5480)
!5487 = !DILocalVariable(name: "size", arg: 3, scope: !5480, file: !9, line: 386, type: !6)
!5488 = !DILocation(line: 386, column: 33, scope: !5480)
!5489 = !DILocalVariable(name: "data", arg: 4, scope: !5480, file: !9, line: 387, type: !287)
!5490 = !DILocation(line: 387, column: 28, scope: !5480)
!5491 = !DILocation(line: 391, column: 1, scope: !5480)
!5492 = distinct !DISubprogram(name: "set_bit", scope: !4866, file: !4866, line: 26, type: !4867, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5493 = !DILocalVariable(name: "nr", arg: 1, scope: !5494, file: !4873, line: 52, type: !173)
!5494 = distinct !DISubprogram(name: "arch_set_bit", scope: !4873, file: !4873, line: 52, type: !4867, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5495 = !DILocation(line: 52, column: 19, scope: !5494, inlinedAt: !5496)
!5496 = distinct !DILocation(line: 29, column: 2, scope: !5492)
!5497 = !DILocalVariable(name: "addr", arg: 2, scope: !5494, file: !4873, line: 52, type: !4869)
!5498 = !DILocation(line: 52, column: 47, scope: !5494, inlinedAt: !5496)
!5499 = !DILocation(line: 84, column: 74, scope: !4879, inlinedAt: !5500)
!5500 = distinct !DILocation(line: 28, column: 2, scope: !5492)
!5501 = !DILocation(line: 84, column: 84, scope: !4879, inlinedAt: !5500)
!5502 = !DILocalVariable(name: "nr", arg: 1, scope: !5492, file: !4866, line: 26, type: !173)
!5503 = !DILocation(line: 26, column: 33, scope: !5492)
!5504 = !DILocalVariable(name: "addr", arg: 2, scope: !5492, file: !4866, line: 26, type: !4869)
!5505 = !DILocation(line: 26, column: 61, scope: !5492)
!5506 = !DILocation(line: 28, column: 26, scope: !5492)
!5507 = !DILocation(line: 28, column: 33, scope: !5492)
!5508 = !DILocation(line: 28, column: 31, scope: !5492)
!5509 = !DILocation(line: 86, column: 20, scope: !4879, inlinedAt: !5500)
!5510 = !DILocation(line: 86, column: 23, scope: !4879, inlinedAt: !5500)
!5511 = !DILocation(line: 86, column: 2, scope: !4879, inlinedAt: !5500)
!5512 = !DILocation(line: 87, column: 2, scope: !4879, inlinedAt: !5500)
!5513 = !DILocation(line: 29, column: 15, scope: !5492)
!5514 = !DILocation(line: 29, column: 19, scope: !5492)
!5515 = !DILocation(line: 54, column: 27, scope: !5516, inlinedAt: !5496)
!5516 = distinct !DILexicalBlock(scope: !5494, file: !4873, line: 54, column: 6)
!5517 = !DILocation(line: 54, column: 6, scope: !5516, inlinedAt: !5496)
!5518 = !DILocation(line: 54, column: 6, scope: !5494, inlinedAt: !5496)
!5519 = !DILocation(line: 56, column: 6, scope: !5520, inlinedAt: !5496)
!5520 = distinct !DILexicalBlock(scope: !5516, file: !4873, line: 54, column: 32)
!5521 = !DILocation(line: 57, column: 12, scope: !5520, inlinedAt: !5496)
!5522 = !DILocation(line: 55, column: 3, scope: !5520, inlinedAt: !5496)
!5523 = !{i32 -2147196529}
!5524 = !DILocation(line: 59, column: 2, scope: !5520, inlinedAt: !5496)
!5525 = !DILocation(line: 61, column: 8, scope: !5526, inlinedAt: !5496)
!5526 = distinct !DILexicalBlock(scope: !5516, file: !4873, line: 59, column: 9)
!5527 = !DILocation(line: 61, column: 32, scope: !5526, inlinedAt: !5496)
!5528 = !DILocation(line: 60, column: 3, scope: !5526, inlinedAt: !5496)
!5529 = !{i32 -2147196397}
!5530 = !DILocation(line: 30, column: 1, scope: !5492)
!5531 = distinct !DISubprogram(name: "usb_serial_generic_write", scope: !3, file: !3, line: 213, type: !4618, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5532 = !DILocation(line: 407, column: 64, scope: !4973, inlinedAt: !5533)
!5533 = distinct !DILocation(line: 224, column: 10, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 224, column: 10)
!5535 = !DILocation(line: 407, column: 84, scope: !4973, inlinedAt: !5533)
!5536 = !DILocation(line: 327, column: 67, scope: !4984, inlinedAt: !5537)
!5537 = distinct !DILocation(line: 224, column: 10, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 224, column: 10)
!5539 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 224, column: 10)
!5540 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 224, column: 10)
!5541 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 224, column: 10)
!5542 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 224, column: 10)
!5543 = !DILocalVariable(name: "tty", arg: 1, scope: !5531, file: !3, line: 213, type: !1730)
!5544 = !DILocation(line: 213, column: 49, scope: !5531)
!5545 = !DILocalVariable(name: "port", arg: 2, scope: !5531, file: !3, line: 214, type: !7)
!5546 = !DILocation(line: 214, column: 26, scope: !5531)
!5547 = !DILocalVariable(name: "buf", arg: 3, scope: !5531, file: !3, line: 214, type: !287)
!5548 = !DILocation(line: 214, column: 53, scope: !5531)
!5549 = !DILocalVariable(name: "count", arg: 4, scope: !5531, file: !3, line: 214, type: !6)
!5550 = !DILocation(line: 214, column: 62, scope: !5531)
!5551 = !DILocalVariable(name: "result", scope: !5531, file: !3, line: 216, type: !6)
!5552 = !DILocation(line: 216, column: 6, scope: !5531)
!5553 = !DILocation(line: 218, column: 7, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 218, column: 6)
!5555 = !DILocation(line: 218, column: 13, scope: !5554)
!5556 = !DILocation(line: 218, column: 6, scope: !5531)
!5557 = !DILocation(line: 219, column: 3, scope: !5554)
!5558 = !DILocation(line: 221, column: 7, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 221, column: 6)
!5560 = !DILocation(line: 221, column: 6, scope: !5531)
!5561 = !DILocation(line: 222, column: 3, scope: !5559)
!5562 = !DILocalVariable(name: "__flags", scope: !5534, file: !3, line: 224, type: !188)
!5563 = !DILocation(line: 224, column: 10, scope: !5534)
!5564 = !DILocalVariable(name: "__ret", scope: !5534, file: !3, line: 224, type: !31)
!5565 = !DILocation(line: 224, column: 10, scope: !5542)
!5566 = !DILocalVariable(name: "__dummy", scope: !5567, file: !3, line: 224, type: !188)
!5567 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 224, column: 10)
!5568 = !DILocation(line: 224, column: 10, scope: !5567)
!5569 = !DILocalVariable(name: "__dummy2", scope: !5567, file: !3, line: 224, type: !188)
!5570 = !DILocation(line: 224, column: 10, scope: !5541)
!5571 = !DILocation(line: 224, column: 10, scope: !5540)
!5572 = !DILocation(line: 224, column: 10, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 224, column: 10)
!5574 = !DILocalVariable(name: "__dummy", scope: !5575, file: !3, line: 224, type: !188)
!5575 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 224, column: 10)
!5576 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 224, column: 10)
!5577 = !DILocation(line: 224, column: 10, scope: !5575)
!5578 = !DILocalVariable(name: "__dummy2", scope: !5575, file: !3, line: 224, type: !188)
!5579 = !DILocation(line: 224, column: 10, scope: !5576)
!5580 = !DILocation(line: 224, column: 10, scope: !5539)
!5581 = !{i32 -2141729365}
!5582 = !DILocation(line: 224, column: 10, scope: !5538)
!5583 = !DILocation(line: 329, column: 10, scope: !4984, inlinedAt: !5537)
!5584 = !DILocation(line: 329, column: 16, scope: !4984, inlinedAt: !5537)
!5585 = !DILocalVariable(name: "__tmp", scope: !5586, file: !3, line: 224, type: !5042)
!5586 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 224, column: 10)
!5587 = !DILocation(line: 224, column: 10, scope: !5586)
!5588 = !DILocalVariable(name: "__buf", scope: !5586, file: !3, line: 224, type: !2691)
!5589 = !DILocalVariable(name: "__n", scope: !5586, file: !3, line: 224, type: !188)
!5590 = !DILocalVariable(name: "__recsize", scope: !5586, file: !3, line: 224, type: !5146)
!5591 = !DILocalVariable(name: "__kfifo", scope: !5586, file: !3, line: 224, type: !5148)
!5592 = !DILocation(line: 409, column: 2, scope: !5048, inlinedAt: !5533)
!5593 = !DILocation(line: 409, column: 2, scope: !5053, inlinedAt: !5533)
!5594 = !DILocation(line: 409, column: 2, scope: !5054, inlinedAt: !5533)
!5595 = !DILocation(line: 409, column: 2, scope: !5061, inlinedAt: !5533)
!5596 = !DILocation(line: 409, column: 2, scope: !5064, inlinedAt: !5533)
!5597 = !DILocation(line: 224, column: 8, scope: !5531)
!5598 = !DILocation(line: 225, column: 42, scope: !5531)
!5599 = !DILocation(line: 225, column: 11, scope: !5531)
!5600 = !DILocation(line: 225, column: 9, scope: !5531)
!5601 = !DILocation(line: 226, column: 6, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 226, column: 6)
!5603 = !DILocation(line: 226, column: 6, scope: !5531)
!5604 = !DILocation(line: 227, column: 10, scope: !5602)
!5605 = !DILocation(line: 227, column: 3, scope: !5602)
!5606 = !DILocation(line: 229, column: 9, scope: !5531)
!5607 = !DILocation(line: 229, column: 2, scope: !5531)
!5608 = !DILocation(line: 230, column: 1, scope: !5531)
!5609 = distinct !DISubprogram(name: "usb_serial_generic_write_room", scope: !3, file: !3, line: 233, type: !2162, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5610 = !DILocation(line: 407, column: 64, scope: !4973, inlinedAt: !5611)
!5611 = distinct !DILocation(line: 244, column: 2, scope: !5609)
!5612 = !DILocation(line: 407, column: 84, scope: !4973, inlinedAt: !5611)
!5613 = !DILocation(line: 327, column: 67, scope: !4984, inlinedAt: !5614)
!5614 = distinct !DILocation(line: 242, column: 2, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 242, column: 2)
!5616 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 242, column: 2)
!5617 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 242, column: 2)
!5618 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 242, column: 2)
!5619 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 242, column: 2)
!5620 = !DILocalVariable(name: "tty", arg: 1, scope: !5609, file: !3, line: 233, type: !1730)
!5621 = !DILocation(line: 233, column: 54, scope: !5609)
!5622 = !DILocalVariable(name: "port", scope: !5609, file: !3, line: 235, type: !7)
!5623 = !DILocation(line: 235, column: 26, scope: !5609)
!5624 = !DILocation(line: 235, column: 33, scope: !5609)
!5625 = !DILocation(line: 235, column: 38, scope: !5609)
!5626 = !DILocalVariable(name: "flags", scope: !5609, file: !3, line: 236, type: !188)
!5627 = !DILocation(line: 236, column: 16, scope: !5609)
!5628 = !DILocalVariable(name: "room", scope: !5609, file: !3, line: 237, type: !6)
!5629 = !DILocation(line: 237, column: 6, scope: !5609)
!5630 = !DILocation(line: 239, column: 7, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 239, column: 6)
!5632 = !DILocation(line: 239, column: 13, scope: !5631)
!5633 = !DILocation(line: 239, column: 6, scope: !5609)
!5634 = !DILocation(line: 240, column: 3, scope: !5631)
!5635 = !DILocation(line: 242, column: 2, scope: !5609)
!5636 = !DILocation(line: 242, column: 2, scope: !5619)
!5637 = !DILocalVariable(name: "__dummy", scope: !5638, file: !3, line: 242, type: !188)
!5638 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 242, column: 2)
!5639 = !DILocation(line: 242, column: 2, scope: !5638)
!5640 = !DILocalVariable(name: "__dummy2", scope: !5638, file: !3, line: 242, type: !188)
!5641 = !DILocation(line: 242, column: 2, scope: !5618)
!5642 = !DILocation(line: 242, column: 2, scope: !5617)
!5643 = !DILocation(line: 242, column: 2, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 242, column: 2)
!5645 = !DILocalVariable(name: "__dummy", scope: !5646, file: !3, line: 242, type: !188)
!5646 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 242, column: 2)
!5647 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 242, column: 2)
!5648 = !DILocation(line: 242, column: 2, scope: !5646)
!5649 = !DILocalVariable(name: "__dummy2", scope: !5646, file: !3, line: 242, type: !188)
!5650 = !DILocation(line: 242, column: 2, scope: !5647)
!5651 = !DILocation(line: 242, column: 2, scope: !5616)
!5652 = !{i32 -2141727701}
!5653 = !DILocation(line: 242, column: 2, scope: !5615)
!5654 = !DILocation(line: 329, column: 10, scope: !4984, inlinedAt: !5614)
!5655 = !DILocation(line: 329, column: 16, scope: !4984, inlinedAt: !5614)
!5656 = !DILocalVariable(name: "__tmpq", scope: !5657, file: !3, line: 243, type: !5042)
!5657 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 243, column: 9)
!5658 = !DILocation(line: 243, column: 9, scope: !5657)
!5659 = !DILocalVariable(name: "__recsize", scope: !5657, file: !3, line: 243, type: !5146)
!5660 = !DILocalVariable(name: "__avail", scope: !5657, file: !3, line: 243, type: !31)
!5661 = !DILocalVariable(name: "__tmpl", scope: !5662, file: !3, line: 243, type: !5042)
!5662 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 243, column: 9)
!5663 = !DILocation(line: 243, column: 9, scope: !5662)
!5664 = !DILocation(line: 243, column: 9, scope: !5609)
!5665 = !DILocation(line: 243, column: 7, scope: !5609)
!5666 = !DILocation(line: 244, column: 26, scope: !5609)
!5667 = !DILocation(line: 244, column: 32, scope: !5609)
!5668 = !DILocation(line: 244, column: 38, scope: !5609)
!5669 = !DILocation(line: 409, column: 2, scope: !5048, inlinedAt: !5611)
!5670 = !DILocation(line: 409, column: 2, scope: !5053, inlinedAt: !5611)
!5671 = !DILocation(line: 409, column: 2, scope: !5054, inlinedAt: !5611)
!5672 = !DILocation(line: 409, column: 2, scope: !5061, inlinedAt: !5611)
!5673 = !DILocation(line: 409, column: 2, scope: !5064, inlinedAt: !5611)
!5674 = !DILocation(line: 247, column: 9, scope: !5609)
!5675 = !DILocation(line: 247, column: 2, scope: !5609)
!5676 = !DILocation(line: 248, column: 1, scope: !5609)
!5677 = distinct !DISubprogram(name: "usb_serial_generic_chars_in_buffer", scope: !3, file: !3, line: 250, type: !2162, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5678 = !DILocation(line: 407, column: 64, scope: !4973, inlinedAt: !5679)
!5679 = distinct !DILocation(line: 261, column: 2, scope: !5677)
!5680 = !DILocation(line: 407, column: 84, scope: !4973, inlinedAt: !5679)
!5681 = !DILocation(line: 327, column: 67, scope: !4984, inlinedAt: !5682)
!5682 = distinct !DILocation(line: 259, column: 2, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 259, column: 2)
!5684 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 259, column: 2)
!5685 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 259, column: 2)
!5686 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 259, column: 2)
!5687 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 259, column: 2)
!5688 = !DILocalVariable(name: "tty", arg: 1, scope: !5677, file: !3, line: 250, type: !1730)
!5689 = !DILocation(line: 250, column: 59, scope: !5677)
!5690 = !DILocalVariable(name: "port", scope: !5677, file: !3, line: 252, type: !7)
!5691 = !DILocation(line: 252, column: 26, scope: !5677)
!5692 = !DILocation(line: 252, column: 33, scope: !5677)
!5693 = !DILocation(line: 252, column: 38, scope: !5677)
!5694 = !DILocalVariable(name: "flags", scope: !5677, file: !3, line: 253, type: !188)
!5695 = !DILocation(line: 253, column: 16, scope: !5677)
!5696 = !DILocalVariable(name: "chars", scope: !5677, file: !3, line: 254, type: !6)
!5697 = !DILocation(line: 254, column: 6, scope: !5677)
!5698 = !DILocation(line: 256, column: 7, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 256, column: 6)
!5700 = !DILocation(line: 256, column: 13, scope: !5699)
!5701 = !DILocation(line: 256, column: 6, scope: !5677)
!5702 = !DILocation(line: 257, column: 3, scope: !5699)
!5703 = !DILocation(line: 259, column: 2, scope: !5677)
!5704 = !DILocation(line: 259, column: 2, scope: !5687)
!5705 = !DILocalVariable(name: "__dummy", scope: !5706, file: !3, line: 259, type: !188)
!5706 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 259, column: 2)
!5707 = !DILocation(line: 259, column: 2, scope: !5706)
!5708 = !DILocalVariable(name: "__dummy2", scope: !5706, file: !3, line: 259, type: !188)
!5709 = !DILocation(line: 259, column: 2, scope: !5686)
!5710 = !DILocation(line: 259, column: 2, scope: !5685)
!5711 = !DILocation(line: 259, column: 2, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 259, column: 2)
!5713 = !DILocalVariable(name: "__dummy", scope: !5714, file: !3, line: 259, type: !188)
!5714 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 259, column: 2)
!5715 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 259, column: 2)
!5716 = !DILocation(line: 259, column: 2, scope: !5714)
!5717 = !DILocalVariable(name: "__dummy2", scope: !5714, file: !3, line: 259, type: !188)
!5718 = !DILocation(line: 259, column: 2, scope: !5715)
!5719 = !DILocation(line: 259, column: 2, scope: !5684)
!5720 = !{i32 -2141726005}
!5721 = !DILocation(line: 259, column: 2, scope: !5683)
!5722 = !DILocation(line: 329, column: 10, scope: !4984, inlinedAt: !5682)
!5723 = !DILocation(line: 329, column: 16, scope: !4984, inlinedAt: !5682)
!5724 = !DILocalVariable(name: "__tmpl", scope: !5725, file: !3, line: 260, type: !5042)
!5725 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 260, column: 10)
!5726 = !DILocation(line: 260, column: 10, scope: !5725)
!5727 = !DILocation(line: 260, column: 41, scope: !5677)
!5728 = !DILocation(line: 260, column: 47, scope: !5677)
!5729 = !DILocation(line: 260, column: 39, scope: !5677)
!5730 = !DILocation(line: 260, column: 8, scope: !5677)
!5731 = !DILocation(line: 261, column: 26, scope: !5677)
!5732 = !DILocation(line: 261, column: 32, scope: !5677)
!5733 = !DILocation(line: 261, column: 38, scope: !5677)
!5734 = !DILocation(line: 409, column: 2, scope: !5048, inlinedAt: !5679)
!5735 = !DILocation(line: 409, column: 2, scope: !5053, inlinedAt: !5679)
!5736 = !DILocation(line: 409, column: 2, scope: !5054, inlinedAt: !5679)
!5737 = !DILocation(line: 409, column: 2, scope: !5061, inlinedAt: !5679)
!5738 = !DILocation(line: 409, column: 2, scope: !5064, inlinedAt: !5679)
!5739 = !DILocation(line: 264, column: 9, scope: !5677)
!5740 = !DILocation(line: 264, column: 2, scope: !5677)
!5741 = !DILocation(line: 265, column: 1, scope: !5677)
!5742 = distinct !DISubprogram(name: "usb_serial_generic_wait_until_sent", scope: !3, file: !3, line: 268, type: !4632, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5743 = !DILocalVariable(name: "pscr_ret__", scope: !5744, file: !5745, line: 15, type: !1132)
!5744 = distinct !DILexicalBlock(scope: !5746, file: !5745, line: 15, column: 9)
!5745 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!5746 = distinct !DISubprogram(name: "get_current", scope: !5745, file: !5745, line: 13, type: !5747, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5747 = !DISubroutineType(types: !5748)
!5748 = !{!1132}
!5749 = !DILocation(line: 15, column: 9, scope: !5744, inlinedAt: !5750)
!5750 = distinct !DILocation(line: 292, column: 22, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 292, column: 7)
!5752 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 290, column: 46)
!5753 = !DILocalVariable(name: "__vpp_verify", scope: !5754, file: !5745, line: 15, type: !2691)
!5754 = distinct !DILexicalBlock(scope: !5744, file: !5745, line: 15, column: 9)
!5755 = !DILocation(line: 15, column: 9, scope: !5754, inlinedAt: !5750)
!5756 = !DILocalVariable(name: "pfo_val__", scope: !5757, file: !5745, line: 15, type: !283)
!5757 = distinct !DILexicalBlock(scope: !5744, file: !5745, line: 15, column: 9)
!5758 = !DILocation(line: 15, column: 9, scope: !5757, inlinedAt: !5750)
!5759 = !DILocalVariable(name: "tty", arg: 1, scope: !5742, file: !3, line: 268, type: !1730)
!5760 = !DILocation(line: 268, column: 60, scope: !5742)
!5761 = !DILocalVariable(name: "timeout", arg: 2, scope: !5742, file: !3, line: 268, type: !173)
!5762 = !DILocation(line: 268, column: 70, scope: !5742)
!5763 = !DILocalVariable(name: "port", scope: !5742, file: !3, line: 270, type: !7)
!5764 = !DILocation(line: 270, column: 26, scope: !5742)
!5765 = !DILocation(line: 270, column: 33, scope: !5742)
!5766 = !DILocation(line: 270, column: 38, scope: !5742)
!5767 = !DILocalVariable(name: "bps", scope: !5742, file: !3, line: 271, type: !31)
!5768 = !DILocation(line: 271, column: 15, scope: !5742)
!5769 = !DILocalVariable(name: "period", scope: !5742, file: !3, line: 272, type: !188)
!5770 = !DILocation(line: 272, column: 16, scope: !5742)
!5771 = !DILocalVariable(name: "expire", scope: !5742, file: !3, line: 273, type: !188)
!5772 = !DILocation(line: 273, column: 16, scope: !5742)
!5773 = !DILocation(line: 275, column: 26, scope: !5742)
!5774 = !DILocation(line: 275, column: 8, scope: !5742)
!5775 = !DILocation(line: 275, column: 6, scope: !5742)
!5776 = !DILocation(line: 276, column: 7, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 276, column: 6)
!5778 = !DILocation(line: 276, column: 6, scope: !5742)
!5779 = !DILocation(line: 277, column: 7, scope: !5777)
!5780 = !DILocation(line: 277, column: 3, scope: !5777)
!5781 = !DILocalVariable(name: "__UNIQUE_ID___x238", scope: !5782, file: !3, line: 282, type: !188)
!5782 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 282, column: 11)
!5783 = !DILocation(line: 282, column: 11, scope: !5782)
!5784 = !DILocalVariable(name: "__UNIQUE_ID___y239", scope: !5782, file: !3, line: 282, type: !188)
!5785 = !DILocation(line: 282, column: 9, scope: !5742)
!5786 = !DILocation(line: 283, column: 6, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 283, column: 6)
!5788 = !DILocation(line: 283, column: 6, scope: !5742)
!5789 = !DILocalVariable(name: "__UNIQUE_ID___x240", scope: !5790, file: !3, line: 284, type: !188)
!5790 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 284, column: 12)
!5791 = !DILocation(line: 284, column: 12, scope: !5790)
!5792 = !DILocalVariable(name: "__UNIQUE_ID___y241", scope: !5790, file: !3, line: 284, type: !188)
!5793 = !DILocation(line: 284, column: 10, scope: !5787)
!5794 = !DILocation(line: 284, column: 3, scope: !5787)
!5795 = !DILocation(line: 289, column: 11, scope: !5742)
!5796 = !DILocation(line: 289, column: 21, scope: !5742)
!5797 = !DILocation(line: 289, column: 19, scope: !5742)
!5798 = !DILocation(line: 289, column: 9, scope: !5742)
!5799 = !DILocation(line: 290, column: 2, scope: !5742)
!5800 = !DILocation(line: 290, column: 10, scope: !5742)
!5801 = !DILocation(line: 290, column: 16, scope: !5742)
!5802 = !DILocation(line: 290, column: 24, scope: !5742)
!5803 = !DILocation(line: 290, column: 30, scope: !5742)
!5804 = !DILocation(line: 290, column: 39, scope: !5742)
!5805 = !DILocation(line: 290, column: 9, scope: !5742)
!5806 = !DILocation(line: 291, column: 34, scope: !5752)
!5807 = !DILocation(line: 291, column: 3, scope: !5752)
!5808 = !{i32 -2145800344}
!5809 = !DILocation(line: 292, column: 7, scope: !5751)
!5810 = !DILocation(line: 292, column: 7, scope: !5752)
!5811 = !DILocation(line: 293, column: 4, scope: !5751)
!5812 = !DILocation(line: 294, column: 7, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 294, column: 7)
!5814 = !DILocation(line: 294, column: 15, scope: !5813)
!5815 = !DILocation(line: 294, column: 18, scope: !5813)
!5816 = !DILocation(line: 294, column: 7, scope: !5752)
!5817 = !DILocation(line: 295, column: 4, scope: !5813)
!5818 = distinct !{!5818, !5799, !5819}
!5819 = !DILocation(line: 296, column: 2, scope: !5742)
!5820 = !DILocation(line: 297, column: 1, scope: !5742)
!5821 = distinct !DISubprogram(name: "tty_get_baud_rate", scope: !1732, file: !1732, line: 538, type: !5822, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5822 = !DISubroutineType(types: !5823)
!5823 = !{!2008, !1730}
!5824 = !DILocalVariable(name: "tty", arg: 1, scope: !5821, file: !1732, line: 538, type: !1730)
!5825 = !DILocation(line: 538, column: 60, scope: !5821)
!5826 = !DILocation(line: 540, column: 32, scope: !5821)
!5827 = !DILocation(line: 540, column: 37, scope: !5821)
!5828 = !DILocation(line: 540, column: 9, scope: !5821)
!5829 = !DILocation(line: 540, column: 2, scope: !5821)
!5830 = distinct !DISubprogram(name: "signal_pending", scope: !1678, file: !1678, line: 356, type: !5831, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5831 = !DISubroutineType(types: !5832)
!5832 = !{!6, !1132}
!5833 = !DILocalVariable(name: "p", arg: 1, scope: !5830, file: !1678, line: 356, type: !1132)
!5834 = !DILocation(line: 356, column: 54, scope: !5830)
!5835 = !DILocation(line: 358, column: 9, scope: !5830)
!5836 = !DILocation(line: 358, column: 2, scope: !5830)
!5837 = distinct !DISubprogram(name: "usb_serial_generic_submit_read_urb", scope: !3, file: !3, line: 300, type: !5838, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5838 = !DISubroutineType(types: !5839)
!5839 = !{!6, !7, !6, !657}
!5840 = !DILocalVariable(name: "port", arg: 1, scope: !5837, file: !3, line: 300, type: !7)
!5841 = !DILocation(line: 300, column: 71, scope: !5837)
!5842 = !DILocalVariable(name: "index", arg: 2, scope: !5837, file: !3, line: 301, type: !6)
!5843 = !DILocation(line: 301, column: 11, scope: !5837)
!5844 = !DILocalVariable(name: "mem_flags", arg: 3, scope: !5837, file: !3, line: 301, type: !657)
!5845 = !DILocation(line: 301, column: 24, scope: !5837)
!5846 = !DILocalVariable(name: "res", scope: !5837, file: !3, line: 303, type: !6)
!5847 = !DILocation(line: 303, column: 6, scope: !5837)
!5848 = !DILocation(line: 305, column: 26, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 305, column: 6)
!5850 = !DILocation(line: 305, column: 34, scope: !5849)
!5851 = !DILocation(line: 305, column: 40, scope: !5849)
!5852 = !DILocation(line: 305, column: 7, scope: !5849)
!5853 = !DILocation(line: 305, column: 6, scope: !5837)
!5854 = !DILocation(line: 306, column: 3, scope: !5849)
!5855 = !DILocation(line: 310, column: 23, scope: !5837)
!5856 = !DILocation(line: 310, column: 29, scope: !5837)
!5857 = !DILocation(line: 310, column: 39, scope: !5837)
!5858 = !DILocation(line: 310, column: 47, scope: !5837)
!5859 = !DILocation(line: 310, column: 8, scope: !5837)
!5860 = !DILocation(line: 310, column: 6, scope: !5837)
!5861 = !DILocation(line: 311, column: 6, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 311, column: 6)
!5863 = !DILocation(line: 311, column: 6, scope: !5837)
!5864 = !DILocation(line: 312, column: 7, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 312, column: 7)
!5866 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 311, column: 11)
!5867 = !DILocation(line: 312, column: 11, scope: !5865)
!5868 = !DILocation(line: 312, column: 21, scope: !5865)
!5869 = !DILocation(line: 312, column: 24, scope: !5865)
!5870 = !DILocation(line: 312, column: 28, scope: !5865)
!5871 = !DILocation(line: 312, column: 7, scope: !5866)
!5872 = !DILocation(line: 313, column: 4, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 312, column: 40)
!5874 = !DILocation(line: 316, column: 3, scope: !5873)
!5875 = !DILocation(line: 317, column: 11, scope: !5866)
!5876 = !DILocation(line: 317, column: 19, scope: !5866)
!5877 = !DILocation(line: 317, column: 25, scope: !5866)
!5878 = !DILocation(line: 317, column: 3, scope: !5866)
!5879 = !DILocation(line: 318, column: 10, scope: !5866)
!5880 = !DILocation(line: 318, column: 3, scope: !5866)
!5881 = !DILocation(line: 321, column: 2, scope: !5837)
!5882 = !DILocation(line: 322, column: 1, scope: !5837)
!5883 = distinct !DISubprogram(name: "usb_serial_generic_process_read_urb", scope: !3, file: !3, line: 345, type: !4655, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5884 = !DILocalVariable(name: "urb", arg: 1, scope: !5883, file: !3, line: 345, type: !4657)
!5885 = !DILocation(line: 345, column: 54, scope: !5883)
!5886 = !DILocalVariable(name: "port", scope: !5883, file: !3, line: 347, type: !7)
!5887 = !DILocation(line: 347, column: 26, scope: !5883)
!5888 = !DILocation(line: 347, column: 33, scope: !5883)
!5889 = !DILocation(line: 347, column: 38, scope: !5883)
!5890 = !DILocalVariable(name: "ch", scope: !5883, file: !3, line: 348, type: !138)
!5891 = !DILocation(line: 348, column: 8, scope: !5883)
!5892 = !DILocation(line: 348, column: 13, scope: !5883)
!5893 = !DILocation(line: 348, column: 18, scope: !5883)
!5894 = !DILocalVariable(name: "i", scope: !5883, file: !3, line: 349, type: !6)
!5895 = !DILocation(line: 349, column: 6, scope: !5883)
!5896 = !DILocation(line: 351, column: 7, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 351, column: 6)
!5898 = !DILocation(line: 351, column: 12, scope: !5897)
!5899 = !DILocation(line: 351, column: 6, scope: !5883)
!5900 = !DILocation(line: 352, column: 3, scope: !5897)
!5901 = !DILocation(line: 358, column: 6, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 358, column: 6)
!5903 = !DILocation(line: 358, column: 12, scope: !5902)
!5904 = !DILocation(line: 358, column: 6, scope: !5883)
!5905 = !DILocation(line: 359, column: 10, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 359, column: 3)
!5907 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 358, column: 19)
!5908 = !DILocation(line: 359, column: 8, scope: !5906)
!5909 = !DILocation(line: 359, column: 15, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 359, column: 3)
!5911 = !DILocation(line: 359, column: 19, scope: !5910)
!5912 = !DILocation(line: 359, column: 24, scope: !5910)
!5913 = !DILocation(line: 359, column: 17, scope: !5910)
!5914 = !DILocation(line: 359, column: 3, scope: !5906)
!5915 = !DILocation(line: 360, column: 38, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 360, column: 8)
!5917 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 359, column: 50)
!5918 = !DILocation(line: 360, column: 45, scope: !5916)
!5919 = !DILocation(line: 360, column: 44, scope: !5916)
!5920 = !DILocation(line: 360, column: 9, scope: !5916)
!5921 = !DILocation(line: 360, column: 8, scope: !5917)
!5922 = !DILocation(line: 361, column: 27, scope: !5916)
!5923 = !DILocation(line: 361, column: 33, scope: !5916)
!5924 = !DILocation(line: 361, column: 40, scope: !5916)
!5925 = !DILocation(line: 361, column: 39, scope: !5916)
!5926 = !DILocation(line: 361, column: 5, scope: !5916)
!5927 = !DILocation(line: 362, column: 3, scope: !5917)
!5928 = !DILocation(line: 359, column: 40, scope: !5910)
!5929 = !DILocation(line: 359, column: 46, scope: !5910)
!5930 = !DILocation(line: 359, column: 3, scope: !5910)
!5931 = distinct !{!5931, !5914, !5932}
!5932 = !DILocation(line: 362, column: 3, scope: !5906)
!5933 = !DILocation(line: 363, column: 2, scope: !5907)
!5934 = !DILocation(line: 364, column: 27, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 363, column: 9)
!5936 = !DILocation(line: 364, column: 33, scope: !5935)
!5937 = !DILocation(line: 364, column: 39, scope: !5935)
!5938 = !DILocation(line: 364, column: 43, scope: !5935)
!5939 = !DILocation(line: 364, column: 48, scope: !5935)
!5940 = !DILocation(line: 364, column: 3, scope: !5935)
!5941 = !DILocation(line: 366, column: 24, scope: !5883)
!5942 = !DILocation(line: 366, column: 30, scope: !5883)
!5943 = !DILocation(line: 366, column: 2, scope: !5883)
!5944 = !DILocation(line: 367, column: 1, scope: !5883)
!5945 = distinct !DISubprogram(name: "usb_serial_handle_sysrq_char", scope: !9, file: !9, line: 365, type: !5946, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5946 = !DISubroutineType(types: !5947)
!5947 = !{!6, !7, !31}
!5948 = !DILocalVariable(name: "port", arg: 1, scope: !5945, file: !9, line: 365, type: !7)
!5949 = !DILocation(line: 365, column: 72, scope: !5945)
!5950 = !DILocalVariable(name: "ch", arg: 2, scope: !5945, file: !9, line: 365, type: !31)
!5951 = !DILocation(line: 365, column: 91, scope: !5945)
!5952 = !DILocation(line: 367, column: 2, scope: !5945)
!5953 = distinct !DISubprogram(name: "tty_insert_flip_char", scope: !5954, file: !5954, line: 18, type: !5955, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!5954 = !DIFile(filename: "./include/linux/tty_flip.h", directory: "/home/lizy2001/genbc/linux")
!5955 = !DISubroutineType(types: !5956)
!5956 = !{!6, !2019, !289, !23}
!5957 = !DILocalVariable(name: "port", arg: 1, scope: !5953, file: !5954, line: 18, type: !2019)
!5958 = !DILocation(line: 18, column: 57, scope: !5953)
!5959 = !DILocalVariable(name: "ch", arg: 2, scope: !5953, file: !5954, line: 19, type: !289)
!5960 = !DILocation(line: 19, column: 20, scope: !5953)
!5961 = !DILocalVariable(name: "flag", arg: 3, scope: !5953, file: !5954, line: 19, type: !23)
!5962 = !DILocation(line: 19, column: 29, scope: !5953)
!5963 = !DILocalVariable(name: "tb", scope: !5953, file: !5954, line: 21, type: !2026)
!5964 = !DILocation(line: 21, column: 21, scope: !5953)
!5965 = !DILocation(line: 21, column: 26, scope: !5953)
!5966 = !DILocation(line: 21, column: 32, scope: !5953)
!5967 = !DILocation(line: 21, column: 36, scope: !5953)
!5968 = !DILocalVariable(name: "change", scope: !5953, file: !5954, line: 22, type: !6)
!5969 = !DILocation(line: 22, column: 6, scope: !5953)
!5970 = !DILocation(line: 24, column: 12, scope: !5953)
!5971 = !DILocation(line: 24, column: 16, scope: !5953)
!5972 = !DILocation(line: 24, column: 22, scope: !5953)
!5973 = !DILocation(line: 24, column: 37, scope: !5953)
!5974 = !DILocation(line: 24, column: 41, scope: !5953)
!5975 = !DILocation(line: 24, column: 46, scope: !5953)
!5976 = !DILocation(line: 0, scope: !5953)
!5977 = !DILocation(line: 24, column: 9, scope: !5953)
!5978 = !DILocation(line: 25, column: 7, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5953, file: !5954, line: 25, column: 6)
!5980 = !DILocation(line: 25, column: 14, scope: !5979)
!5981 = !DILocation(line: 25, column: 17, scope: !5979)
!5982 = !DILocation(line: 25, column: 21, scope: !5979)
!5983 = !DILocation(line: 25, column: 28, scope: !5979)
!5984 = !DILocation(line: 25, column: 32, scope: !5979)
!5985 = !DILocation(line: 25, column: 26, scope: !5979)
!5986 = !DILocation(line: 25, column: 6, scope: !5953)
!5987 = !DILocation(line: 26, column: 8, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5989, file: !5954, line: 26, column: 7)
!5989 = distinct !DILexicalBlock(scope: !5979, file: !5954, line: 25, column: 38)
!5990 = !DILocation(line: 26, column: 12, scope: !5988)
!5991 = !DILocation(line: 26, column: 7, scope: !5988)
!5992 = !DILocation(line: 26, column: 18, scope: !5988)
!5993 = !DILocation(line: 26, column: 7, scope: !5989)
!5994 = !DILocation(line: 27, column: 34, scope: !5988)
!5995 = !DILocation(line: 27, column: 18, scope: !5988)
!5996 = !DILocation(line: 27, column: 22, scope: !5988)
!5997 = !DILocation(line: 27, column: 26, scope: !5988)
!5998 = !DILocation(line: 27, column: 5, scope: !5988)
!5999 = !DILocation(line: 27, column: 32, scope: !5988)
!6000 = !DILocation(line: 27, column: 4, scope: !5988)
!6001 = !DILocation(line: 28, column: 35, scope: !5989)
!6002 = !DILocation(line: 28, column: 17, scope: !5989)
!6003 = !DILocation(line: 28, column: 21, scope: !5989)
!6004 = !DILocation(line: 28, column: 25, scope: !5989)
!6005 = !DILocation(line: 28, column: 29, scope: !5989)
!6006 = !DILocation(line: 28, column: 4, scope: !5989)
!6007 = !DILocation(line: 28, column: 33, scope: !5989)
!6008 = !DILocation(line: 29, column: 3, scope: !5989)
!6009 = !DILocation(line: 31, column: 32, scope: !5953)
!6010 = !DILocation(line: 31, column: 38, scope: !5953)
!6011 = !DILocation(line: 31, column: 42, scope: !5953)
!6012 = !DILocation(line: 31, column: 9, scope: !5953)
!6013 = !DILocation(line: 31, column: 2, scope: !5953)
!6014 = !DILocation(line: 32, column: 1, scope: !5953)
!6015 = distinct !DISubprogram(name: "tty_insert_flip_string", scope: !5954, file: !5954, line: 34, type: !6016, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{!6, !2019, !287, !185}
!6018 = !DILocalVariable(name: "port", arg: 1, scope: !6015, file: !5954, line: 34, type: !2019)
!6019 = !DILocation(line: 34, column: 59, scope: !6015)
!6020 = !DILocalVariable(name: "chars", arg: 2, scope: !6015, file: !5954, line: 35, type: !287)
!6021 = !DILocation(line: 35, column: 24, scope: !6015)
!6022 = !DILocalVariable(name: "size", arg: 3, scope: !6015, file: !5954, line: 35, type: !185)
!6023 = !DILocation(line: 35, column: 38, scope: !6015)
!6024 = !DILocation(line: 37, column: 43, scope: !6015)
!6025 = !DILocation(line: 37, column: 49, scope: !6015)
!6026 = !DILocation(line: 37, column: 68, scope: !6015)
!6027 = !DILocation(line: 37, column: 9, scope: !6015)
!6028 = !DILocation(line: 37, column: 2, scope: !6015)
!6029 = distinct !DISubprogram(name: "usb_serial_generic_read_bulk_callback", scope: !3, file: !3, line: 370, type: !4655, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6030 = !DILocalVariable(name: "urb", arg: 1, scope: !6029, file: !3, line: 370, type: !4657)
!6031 = !DILocation(line: 370, column: 56, scope: !6029)
!6032 = !DILocalVariable(name: "port", scope: !6029, file: !3, line: 372, type: !7)
!6033 = !DILocation(line: 372, column: 26, scope: !6029)
!6034 = !DILocation(line: 372, column: 33, scope: !6029)
!6035 = !DILocation(line: 372, column: 38, scope: !6029)
!6036 = !DILocalVariable(name: "data", scope: !6029, file: !3, line: 373, type: !2111)
!6037 = !DILocation(line: 373, column: 17, scope: !6029)
!6038 = !DILocation(line: 373, column: 24, scope: !6029)
!6039 = !DILocation(line: 373, column: 29, scope: !6029)
!6040 = !DILocalVariable(name: "stopped", scope: !6029, file: !3, line: 374, type: !352)
!6041 = !DILocation(line: 374, column: 7, scope: !6029)
!6042 = !DILocalVariable(name: "status", scope: !6029, file: !3, line: 375, type: !6)
!6043 = !DILocation(line: 375, column: 6, scope: !6029)
!6044 = !DILocation(line: 375, column: 15, scope: !6029)
!6045 = !DILocation(line: 375, column: 20, scope: !6029)
!6046 = !DILocalVariable(name: "i", scope: !6029, file: !3, line: 376, type: !6)
!6047 = !DILocation(line: 376, column: 6, scope: !6029)
!6048 = !DILocation(line: 378, column: 9, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 378, column: 2)
!6050 = !DILocation(line: 378, column: 7, scope: !6049)
!6051 = !DILocation(line: 378, column: 14, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6049, file: !3, line: 378, column: 2)
!6053 = !DILocation(line: 378, column: 16, scope: !6052)
!6054 = !DILocation(line: 378, column: 2, scope: !6049)
!6055 = !DILocation(line: 379, column: 7, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6057, file: !3, line: 379, column: 7)
!6057 = distinct !DILexicalBlock(scope: !6052, file: !3, line: 378, column: 52)
!6058 = !DILocation(line: 379, column: 14, scope: !6056)
!6059 = !DILocation(line: 379, column: 20, scope: !6056)
!6060 = !DILocation(line: 379, column: 30, scope: !6056)
!6061 = !DILocation(line: 379, column: 11, scope: !6056)
!6062 = !DILocation(line: 379, column: 7, scope: !6057)
!6063 = !DILocation(line: 380, column: 4, scope: !6056)
!6064 = !DILocation(line: 381, column: 2, scope: !6057)
!6065 = !DILocation(line: 378, column: 47, scope: !6052)
!6066 = !DILocation(line: 378, column: 2, scope: !6052)
!6067 = distinct !{!6067, !6054, !6068}
!6068 = !DILocation(line: 381, column: 2, scope: !6049)
!6069 = !DILocation(line: 385, column: 10, scope: !6029)
!6070 = !DILocation(line: 385, column: 2, scope: !6029)
!6071 = !DILocation(line: 387, column: 26, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 385, column: 18)
!6073 = !DILocation(line: 387, column: 32, scope: !6072)
!6074 = !DILocation(line: 387, column: 47, scope: !6072)
!6075 = !DILocation(line: 387, column: 52, scope: !6072)
!6076 = !DILocation(line: 388, column: 8, scope: !6072)
!6077 = !DILocation(line: 387, column: 3, scope: !6072)
!6078 = !DILocation(line: 389, column: 3, scope: !6072)
!6079 = !DILocation(line: 389, column: 9, scope: !6072)
!6080 = !DILocation(line: 389, column: 17, scope: !6072)
!6081 = !DILocation(line: 389, column: 23, scope: !6072)
!6082 = !DILocation(line: 389, column: 40, scope: !6072)
!6083 = !DILocation(line: 390, column: 3, scope: !6072)
!6084 = !DILocation(line: 396, column: 11, scope: !6072)
!6085 = !DILocation(line: 397, column: 3, scope: !6072)
!6086 = !DILocation(line: 399, column: 3, scope: !6072)
!6087 = !DILocation(line: 401, column: 11, scope: !6072)
!6088 = !DILocation(line: 402, column: 3, scope: !6072)
!6089 = !DILocation(line: 406, column: 3, scope: !6072)
!6090 = !DILocation(line: 415, column: 2, scope: !6029)
!6091 = !{i32 -2141718569}
!6092 = !DILocation(line: 416, column: 10, scope: !6029)
!6093 = !DILocation(line: 416, column: 14, scope: !6029)
!6094 = !DILocation(line: 416, column: 20, scope: !6029)
!6095 = !DILocation(line: 416, column: 2, scope: !6029)
!6096 = !DILocation(line: 422, column: 2, scope: !6029)
!6097 = !{i32 -2141718521}
!6098 = !DILocation(line: 424, column: 6, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 424, column: 6)
!6100 = !DILocation(line: 424, column: 6, scope: !6029)
!6101 = !DILocation(line: 425, column: 3, scope: !6099)
!6102 = !DILocation(line: 427, column: 38, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 427, column: 6)
!6104 = !DILocation(line: 427, column: 44, scope: !6103)
!6105 = !DILocation(line: 427, column: 6, scope: !6103)
!6106 = !DILocation(line: 427, column: 6, scope: !6029)
!6107 = !DILocation(line: 428, column: 3, scope: !6103)
!6108 = !DILocation(line: 430, column: 37, scope: !6029)
!6109 = !DILocation(line: 430, column: 43, scope: !6029)
!6110 = !DILocation(line: 430, column: 2, scope: !6029)
!6111 = !DILocation(line: 431, column: 1, scope: !6029)
!6112 = distinct !DISubprogram(name: "test_bit", scope: !6113, file: !6113, line: 132, type: !6114, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6113 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!6114 = !DISubroutineType(types: !6115)
!6115 = !{!352, !173, !6116}
!6116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6117, size: 64)
!6117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4870)
!6118 = !DILocalVariable(name: "nr", arg: 1, scope: !6119, file: !4873, line: 210, type: !173)
!6119 = distinct !DISubprogram(name: "variable_test_bit", scope: !4873, file: !4873, line: 210, type: !6114, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6120 = !DILocation(line: 210, column: 52, scope: !6119, inlinedAt: !6121)
!6121 = distinct !DILocation(line: 135, column: 9, scope: !6112)
!6122 = !DILocalVariable(name: "addr", arg: 2, scope: !6119, file: !4873, line: 210, type: !6116)
!6123 = !DILocation(line: 210, column: 86, scope: !6119, inlinedAt: !6121)
!6124 = !DILocalVariable(name: "oldbit", scope: !6119, file: !4873, line: 212, type: !352)
!6125 = !DILocation(line: 212, column: 7, scope: !6119, inlinedAt: !6121)
!6126 = !DILocalVariable(name: "nr", arg: 1, scope: !6127, file: !4873, line: 204, type: !173)
!6127 = distinct !DISubprogram(name: "constant_test_bit", scope: !4873, file: !4873, line: 204, type: !6114, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6128 = !DILocation(line: 204, column: 52, scope: !6127, inlinedAt: !6129)
!6129 = distinct !DILocation(line: 135, column: 9, scope: !6112)
!6130 = !DILocalVariable(name: "addr", arg: 2, scope: !6127, file: !4873, line: 204, type: !6116)
!6131 = !DILocation(line: 204, column: 86, scope: !6127, inlinedAt: !6129)
!6132 = !DILocalVariable(name: "v", arg: 1, scope: !6133, file: !4880, line: 69, type: !4883)
!6133 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4880, file: !4880, line: 69, type: !4881, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6134 = !DILocation(line: 69, column: 73, scope: !6133, inlinedAt: !6135)
!6135 = distinct !DILocation(line: 134, column: 2, scope: !6112)
!6136 = !DILocalVariable(name: "size", arg: 2, scope: !6133, file: !4880, line: 69, type: !185)
!6137 = !DILocation(line: 69, column: 83, scope: !6133, inlinedAt: !6135)
!6138 = !DILocalVariable(name: "nr", arg: 1, scope: !6112, file: !6113, line: 132, type: !173)
!6139 = !DILocation(line: 132, column: 34, scope: !6112)
!6140 = !DILocalVariable(name: "addr", arg: 2, scope: !6112, file: !6113, line: 132, type: !6116)
!6141 = !DILocation(line: 132, column: 68, scope: !6112)
!6142 = !DILocation(line: 134, column: 25, scope: !6112)
!6143 = !DILocation(line: 134, column: 32, scope: !6112)
!6144 = !DILocation(line: 134, column: 30, scope: !6112)
!6145 = !DILocation(line: 71, column: 19, scope: !6133, inlinedAt: !6135)
!6146 = !DILocation(line: 71, column: 22, scope: !6133, inlinedAt: !6135)
!6147 = !DILocation(line: 71, column: 2, scope: !6133, inlinedAt: !6135)
!6148 = !DILocation(line: 72, column: 2, scope: !6133, inlinedAt: !6135)
!6149 = !DILocation(line: 135, column: 9, scope: !6112)
!6150 = !DILocation(line: 206, column: 19, scope: !6127, inlinedAt: !6129)
!6151 = !DILocation(line: 206, column: 22, scope: !6127, inlinedAt: !6129)
!6152 = !DILocation(line: 206, column: 15, scope: !6127, inlinedAt: !6129)
!6153 = !DILocation(line: 207, column: 4, scope: !6127, inlinedAt: !6129)
!6154 = !DILocation(line: 207, column: 9, scope: !6127, inlinedAt: !6129)
!6155 = !DILocation(line: 207, column: 12, scope: !6127, inlinedAt: !6129)
!6156 = !DILocation(line: 206, column: 44, scope: !6127, inlinedAt: !6129)
!6157 = !DILocation(line: 207, column: 37, scope: !6127, inlinedAt: !6129)
!6158 = !DILocation(line: 217, column: 33, scope: !6119, inlinedAt: !6121)
!6159 = !DILocation(line: 217, column: 46, scope: !6119, inlinedAt: !6121)
!6160 = !DILocation(line: 214, column: 2, scope: !6119, inlinedAt: !6121)
!6161 = !{i32 -2147187281, i32 -2147187221}
!6162 = !DILocation(line: 219, column: 9, scope: !6119, inlinedAt: !6121)
!6163 = !DILocation(line: 135, column: 2, scope: !6112)
!6164 = !DILocation(line: 407, column: 64, scope: !4973, inlinedAt: !6165)
!6165 = distinct !DILocation(line: 448, column: 2, scope: !4827)
!6166 = !DILocation(line: 407, column: 84, scope: !4973, inlinedAt: !6165)
!6167 = !DILocation(line: 327, column: 67, scope: !4984, inlinedAt: !6168)
!6168 = distinct !DILocation(line: 445, column: 2, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 445, column: 2)
!6170 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 445, column: 2)
!6171 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 445, column: 2)
!6172 = distinct !DILexicalBlock(scope: !6173, file: !3, line: 445, column: 2)
!6173 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 445, column: 2)
!6174 = !DILocalVariable(name: "urb", arg: 1, scope: !4827, file: !3, line: 434, type: !4657)
!6175 = !DILocation(line: 434, column: 57, scope: !4827)
!6176 = !DILocalVariable(name: "flags", scope: !4827, file: !3, line: 436, type: !188)
!6177 = !DILocation(line: 436, column: 16, scope: !4827)
!6178 = !DILocalVariable(name: "port", scope: !4827, file: !3, line: 437, type: !7)
!6179 = !DILocation(line: 437, column: 26, scope: !4827)
!6180 = !DILocation(line: 437, column: 33, scope: !4827)
!6181 = !DILocation(line: 437, column: 38, scope: !4827)
!6182 = !DILocalVariable(name: "status", scope: !4827, file: !3, line: 438, type: !6)
!6183 = !DILocation(line: 438, column: 6, scope: !4827)
!6184 = !DILocation(line: 438, column: 15, scope: !4827)
!6185 = !DILocation(line: 438, column: 20, scope: !4827)
!6186 = !DILocalVariable(name: "i", scope: !4827, file: !3, line: 439, type: !6)
!6187 = !DILocation(line: 439, column: 6, scope: !4827)
!6188 = !DILocation(line: 441, column: 9, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 441, column: 2)
!6190 = !DILocation(line: 441, column: 7, scope: !6189)
!6191 = !DILocation(line: 441, column: 14, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6189, file: !3, line: 441, column: 2)
!6193 = !DILocation(line: 441, column: 16, scope: !6192)
!6194 = !DILocation(line: 441, column: 2, scope: !6189)
!6195 = !DILocation(line: 442, column: 7, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6197, file: !3, line: 442, column: 7)
!6197 = distinct !DILexicalBlock(scope: !6192, file: !3, line: 441, column: 53)
!6198 = !DILocation(line: 442, column: 13, scope: !6196)
!6199 = !DILocation(line: 442, column: 24, scope: !6196)
!6200 = !DILocation(line: 442, column: 30, scope: !6196)
!6201 = !DILocation(line: 442, column: 27, scope: !6196)
!6202 = !DILocation(line: 442, column: 7, scope: !6197)
!6203 = !DILocation(line: 443, column: 4, scope: !6196)
!6204 = !DILocation(line: 444, column: 2, scope: !6197)
!6205 = !DILocation(line: 441, column: 48, scope: !6192)
!6206 = !DILocation(line: 441, column: 2, scope: !6192)
!6207 = distinct !{!6207, !6194, !6208}
!6208 = !DILocation(line: 444, column: 2, scope: !6189)
!6209 = !DILocation(line: 445, column: 2, scope: !4827)
!6210 = !DILocation(line: 445, column: 2, scope: !6173)
!6211 = !DILocalVariable(name: "__dummy", scope: !6212, file: !3, line: 445, type: !188)
!6212 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 445, column: 2)
!6213 = !DILocation(line: 445, column: 2, scope: !6212)
!6214 = !DILocalVariable(name: "__dummy2", scope: !6212, file: !3, line: 445, type: !188)
!6215 = !DILocation(line: 445, column: 2, scope: !6172)
!6216 = !DILocation(line: 445, column: 2, scope: !6171)
!6217 = !DILocation(line: 445, column: 2, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 445, column: 2)
!6219 = !DILocalVariable(name: "__dummy", scope: !6220, file: !3, line: 445, type: !188)
!6220 = distinct !DILexicalBlock(scope: !6221, file: !3, line: 445, column: 2)
!6221 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 445, column: 2)
!6222 = !DILocation(line: 445, column: 2, scope: !6220)
!6223 = !DILocalVariable(name: "__dummy2", scope: !6220, file: !3, line: 445, type: !188)
!6224 = !DILocation(line: 445, column: 2, scope: !6221)
!6225 = !DILocation(line: 445, column: 2, scope: !6170)
!6226 = !{i32 -2141716887}
!6227 = !DILocation(line: 445, column: 2, scope: !6169)
!6228 = !DILocation(line: 329, column: 10, scope: !4984, inlinedAt: !6168)
!6229 = !DILocation(line: 329, column: 16, scope: !4984, inlinedAt: !6168)
!6230 = !DILocation(line: 446, column: 20, scope: !4827)
!6231 = !DILocation(line: 446, column: 25, scope: !4827)
!6232 = !DILocation(line: 446, column: 2, scope: !4827)
!6233 = !DILocation(line: 446, column: 8, scope: !4827)
!6234 = !DILocation(line: 446, column: 17, scope: !4827)
!6235 = !DILocation(line: 447, column: 10, scope: !4827)
!6236 = !DILocation(line: 447, column: 14, scope: !4827)
!6237 = !DILocation(line: 447, column: 20, scope: !4827)
!6238 = !DILocation(line: 447, column: 2, scope: !4827)
!6239 = !DILocation(line: 448, column: 26, scope: !4827)
!6240 = !DILocation(line: 448, column: 32, scope: !4827)
!6241 = !DILocation(line: 448, column: 38, scope: !4827)
!6242 = !DILocation(line: 409, column: 2, scope: !5048, inlinedAt: !6165)
!6243 = !DILocation(line: 409, column: 2, scope: !5053, inlinedAt: !6165)
!6244 = !DILocation(line: 409, column: 2, scope: !5054, inlinedAt: !6165)
!6245 = !DILocation(line: 409, column: 2, scope: !5061, inlinedAt: !6165)
!6246 = !DILocation(line: 409, column: 2, scope: !5064, inlinedAt: !6165)
!6247 = !DILocation(line: 450, column: 10, scope: !4827)
!6248 = !DILocation(line: 450, column: 2, scope: !4827)
!6249 = !DILocation(line: 452, column: 3, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 450, column: 18)
!6251 = !DILocation(line: 458, column: 3, scope: !6250)
!6252 = !DILocation(line: 460, column: 3, scope: !6250)
!6253 = !DILocalVariable(name: "__port", scope: !6254, file: !3, line: 460, type: !7)
!6254 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 460, column: 3)
!6255 = !DILocation(line: 460, column: 3, scope: !6254)
!6256 = !DILocation(line: 460, column: 3, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6254, file: !3, line: 460, column: 3)
!6258 = !DILocation(line: 460, column: 3, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6257, file: !3, line: 460, column: 3)
!6260 = !DILocation(line: 462, column: 3, scope: !6250)
!6261 = !DILocation(line: 464, column: 3, scope: !6250)
!6262 = !DILocalVariable(name: "__port", scope: !6263, file: !3, line: 464, type: !7)
!6263 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 464, column: 3)
!6264 = !DILocation(line: 464, column: 3, scope: !6263)
!6265 = !DILocation(line: 464, column: 3, scope: !6266)
!6266 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 464, column: 3)
!6267 = !DILocation(line: 464, column: 3, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6266, file: !3, line: 464, column: 3)
!6269 = !DILocation(line: 466, column: 3, scope: !6250)
!6270 = !DILocation(line: 469, column: 33, scope: !4827)
!6271 = !DILocation(line: 469, column: 2, scope: !4827)
!6272 = !DILocation(line: 470, column: 26, scope: !4827)
!6273 = !DILocation(line: 470, column: 2, scope: !4827)
!6274 = !DILocation(line: 471, column: 1, scope: !4827)
!6275 = distinct !DISubprogram(name: "usb_serial_generic_throttle", scope: !3, file: !3, line: 474, type: !2148, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6276 = !DILocalVariable(name: "tty", arg: 1, scope: !6275, file: !3, line: 474, type: !1730)
!6277 = !DILocation(line: 474, column: 53, scope: !6275)
!6278 = !DILocalVariable(name: "port", scope: !6275, file: !3, line: 476, type: !7)
!6279 = !DILocation(line: 476, column: 26, scope: !6275)
!6280 = !DILocation(line: 476, column: 33, scope: !6275)
!6281 = !DILocation(line: 476, column: 38, scope: !6275)
!6282 = !DILocation(line: 478, column: 33, scope: !6275)
!6283 = !DILocation(line: 478, column: 39, scope: !6275)
!6284 = !DILocation(line: 478, column: 2, scope: !6275)
!6285 = !DILocation(line: 479, column: 1, scope: !6275)
!6286 = distinct !DISubprogram(name: "usb_serial_generic_unthrottle", scope: !3, file: !3, line: 482, type: !2148, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6287 = !DILocalVariable(name: "tty", arg: 1, scope: !6286, file: !3, line: 482, type: !1730)
!6288 = !DILocation(line: 482, column: 55, scope: !6286)
!6289 = !DILocalVariable(name: "port", scope: !6286, file: !3, line: 484, type: !7)
!6290 = !DILocation(line: 484, column: 26, scope: !6286)
!6291 = !DILocation(line: 484, column: 33, scope: !6286)
!6292 = !DILocation(line: 484, column: 38, scope: !6286)
!6293 = !DILocation(line: 486, column: 35, scope: !6286)
!6294 = !DILocation(line: 486, column: 41, scope: !6286)
!6295 = !DILocation(line: 486, column: 2, scope: !6286)
!6296 = !DILocation(line: 492, column: 2, scope: !6286)
!6297 = !{i32 -2141715186}
!6298 = !DILocation(line: 494, column: 38, scope: !6286)
!6299 = !DILocation(line: 494, column: 2, scope: !6286)
!6300 = !DILocation(line: 495, column: 1, scope: !6286)
!6301 = distinct !DISubprogram(name: "usb_serial_generic_tiocmiwait", scope: !3, file: !3, line: 527, type: !4644, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6302 = !DILocation(line: 407, column: 64, scope: !4973, inlinedAt: !6303)
!6303 = distinct !DILocation(line: 536, column: 2, scope: !6301)
!6304 = !DILocation(line: 407, column: 84, scope: !4973, inlinedAt: !6303)
!6305 = !DILocation(line: 327, column: 67, scope: !4984, inlinedAt: !6306)
!6306 = distinct !DILocation(line: 534, column: 2, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6308, file: !3, line: 534, column: 2)
!6308 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 534, column: 2)
!6309 = distinct !DILexicalBlock(scope: !6310, file: !3, line: 534, column: 2)
!6310 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 534, column: 2)
!6311 = distinct !DILexicalBlock(scope: !6301, file: !3, line: 534, column: 2)
!6312 = !DILocalVariable(name: "tty", arg: 1, scope: !6301, file: !3, line: 527, type: !1730)
!6313 = !DILocation(line: 527, column: 54, scope: !6301)
!6314 = !DILocalVariable(name: "arg", arg: 2, scope: !6301, file: !3, line: 527, type: !188)
!6315 = !DILocation(line: 527, column: 73, scope: !6301)
!6316 = !DILocalVariable(name: "port", scope: !6301, file: !3, line: 529, type: !7)
!6317 = !DILocation(line: 529, column: 26, scope: !6301)
!6318 = !DILocation(line: 529, column: 33, scope: !6301)
!6319 = !DILocation(line: 529, column: 38, scope: !6301)
!6320 = !DILocalVariable(name: "cnow", scope: !6301, file: !3, line: 530, type: !4791)
!6321 = !DILocation(line: 530, column: 22, scope: !6301)
!6322 = !DILocalVariable(name: "flags", scope: !6301, file: !3, line: 531, type: !188)
!6323 = !DILocation(line: 531, column: 16, scope: !6301)
!6324 = !DILocalVariable(name: "ret", scope: !6301, file: !3, line: 532, type: !6)
!6325 = !DILocation(line: 532, column: 6, scope: !6301)
!6326 = !DILocation(line: 534, column: 2, scope: !6301)
!6327 = !DILocation(line: 534, column: 2, scope: !6311)
!6328 = !DILocalVariable(name: "__dummy", scope: !6329, file: !3, line: 534, type: !188)
!6329 = distinct !DILexicalBlock(scope: !6310, file: !3, line: 534, column: 2)
!6330 = !DILocation(line: 534, column: 2, scope: !6329)
!6331 = !DILocalVariable(name: "__dummy2", scope: !6329, file: !3, line: 534, type: !188)
!6332 = !DILocation(line: 534, column: 2, scope: !6310)
!6333 = !DILocation(line: 534, column: 2, scope: !6309)
!6334 = !DILocation(line: 534, column: 2, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 534, column: 2)
!6336 = !DILocalVariable(name: "__dummy", scope: !6337, file: !3, line: 534, type: !188)
!6337 = distinct !DILexicalBlock(scope: !6338, file: !3, line: 534, column: 2)
!6338 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 534, column: 2)
!6339 = !DILocation(line: 534, column: 2, scope: !6337)
!6340 = !DILocalVariable(name: "__dummy2", scope: !6337, file: !3, line: 534, type: !188)
!6341 = !DILocation(line: 534, column: 2, scope: !6338)
!6342 = !DILocation(line: 534, column: 2, scope: !6308)
!6343 = !{i32 -2141712924}
!6344 = !DILocation(line: 534, column: 2, scope: !6307)
!6345 = !DILocation(line: 329, column: 10, scope: !4984, inlinedAt: !6306)
!6346 = !DILocation(line: 329, column: 16, scope: !4984, inlinedAt: !6306)
!6347 = !DILocation(line: 535, column: 9, scope: !6301)
!6348 = !DILocation(line: 535, column: 15, scope: !6301)
!6349 = !DILocation(line: 536, column: 26, scope: !6301)
!6350 = !DILocation(line: 536, column: 32, scope: !6301)
!6351 = !DILocation(line: 536, column: 38, scope: !6301)
!6352 = !DILocation(line: 409, column: 2, scope: !5048, inlinedAt: !6303)
!6353 = !DILocation(line: 409, column: 2, scope: !5053, inlinedAt: !6303)
!6354 = !DILocation(line: 409, column: 2, scope: !5054, inlinedAt: !6303)
!6355 = !DILocation(line: 409, column: 2, scope: !5061, inlinedAt: !6303)
!6356 = !DILocation(line: 409, column: 2, scope: !5064, inlinedAt: !6303)
!6357 = !DILocalVariable(name: "__ret", scope: !6358, file: !3, line: 538, type: !6)
!6358 = distinct !DILexicalBlock(scope: !6301, file: !3, line: 538, column: 8)
!6359 = !DILocation(line: 538, column: 8, scope: !6358)
!6360 = !DILocation(line: 538, column: 8, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 538, column: 8)
!6362 = !DILocation(line: 538, column: 8, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6361, file: !3, line: 538, column: 8)
!6364 = !DILocation(line: 538, column: 8, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 538, column: 8)
!6366 = !DILocalVariable(name: "__wq_entry", scope: !6367, file: !3, line: 538, type: !6368)
!6367 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 538, column: 8)
!6368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1410, line: 29, size: 320, elements: !6369)
!6369 = !{!6370, !6371, !6372, !6378}
!6370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6368, file: !1410, line: 30, baseType: !31, size: 32)
!6371 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !6368, file: !1410, line: 31, baseType: !212, size: 64, offset: 64)
!6372 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6368, file: !1410, line: 32, baseType: !6373, size: 64, offset: 128)
!6373 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1410, line: 16, baseType: !6374)
!6374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6375, size: 64)
!6375 = !DISubroutineType(types: !6376)
!6376 = !{!6, !6377, !31, !6, !212}
!6377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6368, size: 64)
!6378 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6368, file: !1410, line: 33, baseType: !83, size: 128, offset: 192)
!6379 = !DILocation(line: 538, column: 8, scope: !6367)
!6380 = !DILocalVariable(name: "__ret", scope: !6367, file: !3, line: 538, type: !173)
!6381 = !DILocalVariable(name: "__int", scope: !6382, file: !3, line: 538, type: !173)
!6382 = distinct !DILexicalBlock(scope: !6383, file: !3, line: 538, column: 8)
!6383 = distinct !DILexicalBlock(scope: !6384, file: !3, line: 538, column: 8)
!6384 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 538, column: 8)
!6385 = !DILocation(line: 538, column: 8, scope: !6382)
!6386 = !DILocation(line: 538, column: 8, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6382, file: !3, line: 538, column: 8)
!6388 = !DILocation(line: 538, column: 8, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6382, file: !3, line: 538, column: 8)
!6390 = !DILocation(line: 538, column: 8, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 538, column: 8)
!6392 = !DILocation(line: 538, column: 8, scope: !6383)
!6393 = distinct !{!6393, !6394, !6394}
!6394 = !DILocation(line: 538, column: 8, scope: !6384)
!6395 = !DILabel(scope: !6367, name: "__out", file: !3, line: 538)
!6396 = !DILocation(line: 538, column: 6, scope: !6301)
!6397 = !DILocation(line: 540, column: 7, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6301, file: !3, line: 540, column: 6)
!6399 = !DILocation(line: 540, column: 11, scope: !6398)
!6400 = !DILocation(line: 540, column: 37, scope: !6398)
!6401 = !DILocation(line: 540, column: 43, scope: !6398)
!6402 = !DILocation(line: 540, column: 15, scope: !6398)
!6403 = !DILocation(line: 540, column: 6, scope: !6301)
!6404 = !DILocation(line: 541, column: 7, scope: !6398)
!6405 = !DILocation(line: 541, column: 3, scope: !6398)
!6406 = !DILocation(line: 543, column: 9, scope: !6301)
!6407 = !DILocation(line: 543, column: 2, scope: !6301)
!6408 = distinct !DISubprogram(name: "usb_serial_generic_msr_changed", scope: !3, file: !3, line: 498, type: !6409, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6409 = !DISubroutineType(types: !6410)
!6410 = !{!352, !1730, !188, !6411}
!6411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!6412 = !DILocation(line: 407, column: 64, scope: !4973, inlinedAt: !6413)
!6413 = distinct !DILocation(line: 515, column: 2, scope: !6408)
!6414 = !DILocation(line: 407, column: 84, scope: !4973, inlinedAt: !6413)
!6415 = !DILocation(line: 327, column: 67, scope: !4984, inlinedAt: !6416)
!6416 = distinct !DILocation(line: 513, column: 2, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 513, column: 2)
!6418 = distinct !DILexicalBlock(scope: !6419, file: !3, line: 513, column: 2)
!6419 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 513, column: 2)
!6420 = distinct !DILexicalBlock(scope: !6421, file: !3, line: 513, column: 2)
!6421 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 513, column: 2)
!6422 = !DILocalVariable(name: "tty", arg: 1, scope: !6408, file: !3, line: 498, type: !1730)
!6423 = !DILocation(line: 498, column: 63, scope: !6408)
!6424 = !DILocalVariable(name: "arg", arg: 2, scope: !6408, file: !3, line: 499, type: !188)
!6425 = !DILocation(line: 499, column: 19, scope: !6408)
!6426 = !DILocalVariable(name: "cprev", arg: 3, scope: !6408, file: !3, line: 499, type: !6411)
!6427 = !DILocation(line: 499, column: 45, scope: !6408)
!6428 = !DILocalVariable(name: "port", scope: !6408, file: !3, line: 501, type: !7)
!6429 = !DILocation(line: 501, column: 26, scope: !6408)
!6430 = !DILocation(line: 501, column: 33, scope: !6408)
!6431 = !DILocation(line: 501, column: 38, scope: !6408)
!6432 = !DILocalVariable(name: "cnow", scope: !6408, file: !3, line: 502, type: !4791)
!6433 = !DILocation(line: 502, column: 22, scope: !6408)
!6434 = !DILocalVariable(name: "flags", scope: !6408, file: !3, line: 503, type: !188)
!6435 = !DILocation(line: 503, column: 16, scope: !6408)
!6436 = !DILocalVariable(name: "ret", scope: !6408, file: !3, line: 504, type: !352)
!6437 = !DILocation(line: 504, column: 7, scope: !6408)
!6438 = !DILocation(line: 510, column: 29, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 510, column: 6)
!6440 = !DILocation(line: 510, column: 35, scope: !6439)
!6441 = !DILocation(line: 510, column: 7, scope: !6439)
!6442 = !DILocation(line: 510, column: 6, scope: !6408)
!6443 = !DILocation(line: 511, column: 3, scope: !6439)
!6444 = !DILocation(line: 513, column: 2, scope: !6408)
!6445 = !DILocation(line: 513, column: 2, scope: !6421)
!6446 = !DILocalVariable(name: "__dummy", scope: !6447, file: !3, line: 513, type: !188)
!6447 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 513, column: 2)
!6448 = !DILocation(line: 513, column: 2, scope: !6447)
!6449 = !DILocalVariable(name: "__dummy2", scope: !6447, file: !3, line: 513, type: !188)
!6450 = !DILocation(line: 513, column: 2, scope: !6420)
!6451 = !DILocation(line: 513, column: 2, scope: !6419)
!6452 = !DILocation(line: 513, column: 2, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6419, file: !3, line: 513, column: 2)
!6454 = !DILocalVariable(name: "__dummy", scope: !6455, file: !3, line: 513, type: !188)
!6455 = distinct !DILexicalBlock(scope: !6456, file: !3, line: 513, column: 2)
!6456 = distinct !DILexicalBlock(scope: !6453, file: !3, line: 513, column: 2)
!6457 = !DILocation(line: 513, column: 2, scope: !6455)
!6458 = !DILocalVariable(name: "__dummy2", scope: !6455, file: !3, line: 513, type: !188)
!6459 = !DILocation(line: 513, column: 2, scope: !6456)
!6460 = !DILocation(line: 513, column: 2, scope: !6418)
!6461 = !{i32 -2141713977}
!6462 = !DILocation(line: 513, column: 2, scope: !6417)
!6463 = !DILocation(line: 329, column: 10, scope: !4984, inlinedAt: !6416)
!6464 = !DILocation(line: 329, column: 16, scope: !4984, inlinedAt: !6416)
!6465 = !DILocation(line: 514, column: 9, scope: !6408)
!6466 = !DILocation(line: 514, column: 15, scope: !6408)
!6467 = !DILocation(line: 515, column: 26, scope: !6408)
!6468 = !DILocation(line: 515, column: 32, scope: !6408)
!6469 = !DILocation(line: 515, column: 38, scope: !6408)
!6470 = !DILocation(line: 409, column: 2, scope: !5048, inlinedAt: !6413)
!6471 = !DILocation(line: 409, column: 2, scope: !5053, inlinedAt: !6413)
!6472 = !DILocation(line: 409, column: 2, scope: !5054, inlinedAt: !6413)
!6473 = !DILocation(line: 409, column: 2, scope: !5061, inlinedAt: !6413)
!6474 = !DILocation(line: 409, column: 2, scope: !5064, inlinedAt: !6413)
!6475 = !DILocation(line: 517, column: 10, scope: !6408)
!6476 = !DILocation(line: 517, column: 14, scope: !6408)
!6477 = !DILocation(line: 517, column: 27, scope: !6408)
!6478 = !DILocation(line: 517, column: 36, scope: !6408)
!6479 = !DILocation(line: 517, column: 43, scope: !6408)
!6480 = !DILocation(line: 517, column: 50, scope: !6408)
!6481 = !DILocation(line: 517, column: 40, scope: !6408)
!6482 = !DILocation(line: 517, column: 56, scope: !6408)
!6483 = !DILocation(line: 518, column: 5, scope: !6408)
!6484 = !DILocation(line: 518, column: 9, scope: !6408)
!6485 = !DILocation(line: 518, column: 22, scope: !6408)
!6486 = !DILocation(line: 518, column: 31, scope: !6408)
!6487 = !DILocation(line: 518, column: 38, scope: !6408)
!6488 = !DILocation(line: 518, column: 45, scope: !6408)
!6489 = !DILocation(line: 518, column: 35, scope: !6408)
!6490 = !DILocation(line: 518, column: 51, scope: !6408)
!6491 = !DILocation(line: 519, column: 5, scope: !6408)
!6492 = !DILocation(line: 519, column: 9, scope: !6408)
!6493 = !DILocation(line: 519, column: 22, scope: !6408)
!6494 = !DILocation(line: 519, column: 31, scope: !6408)
!6495 = !DILocation(line: 519, column: 38, scope: !6408)
!6496 = !DILocation(line: 519, column: 45, scope: !6408)
!6497 = !DILocation(line: 519, column: 35, scope: !6408)
!6498 = !DILocation(line: 519, column: 51, scope: !6408)
!6499 = !DILocation(line: 520, column: 5, scope: !6408)
!6500 = !DILocation(line: 520, column: 9, scope: !6408)
!6501 = !DILocation(line: 520, column: 22, scope: !6408)
!6502 = !DILocation(line: 520, column: 31, scope: !6408)
!6503 = !DILocation(line: 520, column: 38, scope: !6408)
!6504 = !DILocation(line: 520, column: 45, scope: !6408)
!6505 = !DILocation(line: 520, column: 35, scope: !6408)
!6506 = !DILocation(line: 0, scope: !6408)
!6507 = !DILocation(line: 517, column: 6, scope: !6408)
!6508 = !DILocation(line: 522, column: 3, scope: !6408)
!6509 = !DILocation(line: 522, column: 11, scope: !6408)
!6510 = !DILocation(line: 524, column: 9, scope: !6408)
!6511 = !DILocation(line: 524, column: 2, scope: !6408)
!6512 = !DILocation(line: 525, column: 1, scope: !6408)
!6513 = distinct !DISubprogram(name: "tty_port_initialized", scope: !1732, file: !1732, line: 664, type: !6514, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6514 = !DISubroutineType(types: !6515)
!6515 = !{!352, !2019}
!6516 = !DILocalVariable(name: "port", arg: 1, scope: !6513, file: !1732, line: 664, type: !2019)
!6517 = !DILocation(line: 664, column: 58, scope: !6513)
!6518 = !DILocation(line: 666, column: 41, scope: !6513)
!6519 = !DILocation(line: 666, column: 47, scope: !6513)
!6520 = !DILocation(line: 666, column: 9, scope: !6513)
!6521 = !DILocation(line: 666, column: 2, scope: !6513)
!6522 = distinct !DISubprogram(name: "usb_serial_generic_get_icount", scope: !3, file: !3, line: 547, type: !2230, scopeLine: 549, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6523 = !DILocation(line: 407, column: 64, scope: !4973, inlinedAt: !6524)
!6524 = distinct !DILocation(line: 556, column: 2, scope: !6522)
!6525 = !DILocation(line: 407, column: 84, scope: !4973, inlinedAt: !6524)
!6526 = !DILocation(line: 327, column: 67, scope: !4984, inlinedAt: !6527)
!6527 = distinct !DILocation(line: 554, column: 2, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 554, column: 2)
!6529 = distinct !DILexicalBlock(scope: !6530, file: !3, line: 554, column: 2)
!6530 = distinct !DILexicalBlock(scope: !6531, file: !3, line: 554, column: 2)
!6531 = distinct !DILexicalBlock(scope: !6532, file: !3, line: 554, column: 2)
!6532 = distinct !DILexicalBlock(scope: !6522, file: !3, line: 554, column: 2)
!6533 = !DILocalVariable(name: "tty", arg: 1, scope: !6522, file: !3, line: 547, type: !1730)
!6534 = !DILocation(line: 547, column: 54, scope: !6522)
!6535 = !DILocalVariable(name: "icount", arg: 2, scope: !6522, file: !3, line: 548, type: !2232)
!6536 = !DILocation(line: 548, column: 37, scope: !6522)
!6537 = !DILocalVariable(name: "port", scope: !6522, file: !3, line: 550, type: !7)
!6538 = !DILocation(line: 550, column: 26, scope: !6522)
!6539 = !DILocation(line: 550, column: 33, scope: !6522)
!6540 = !DILocation(line: 550, column: 38, scope: !6522)
!6541 = !DILocalVariable(name: "cnow", scope: !6522, file: !3, line: 551, type: !4791)
!6542 = !DILocation(line: 551, column: 22, scope: !6522)
!6543 = !DILocalVariable(name: "flags", scope: !6522, file: !3, line: 552, type: !188)
!6544 = !DILocation(line: 552, column: 16, scope: !6522)
!6545 = !DILocation(line: 554, column: 2, scope: !6522)
!6546 = !DILocation(line: 554, column: 2, scope: !6532)
!6547 = !DILocalVariable(name: "__dummy", scope: !6548, file: !3, line: 554, type: !188)
!6548 = distinct !DILexicalBlock(scope: !6531, file: !3, line: 554, column: 2)
!6549 = !DILocation(line: 554, column: 2, scope: !6548)
!6550 = !DILocalVariable(name: "__dummy2", scope: !6548, file: !3, line: 554, type: !188)
!6551 = !DILocation(line: 554, column: 2, scope: !6531)
!6552 = !DILocation(line: 554, column: 2, scope: !6530)
!6553 = !DILocation(line: 554, column: 2, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6530, file: !3, line: 554, column: 2)
!6555 = !DILocalVariable(name: "__dummy", scope: !6556, file: !3, line: 554, type: !188)
!6556 = distinct !DILexicalBlock(scope: !6557, file: !3, line: 554, column: 2)
!6557 = distinct !DILexicalBlock(scope: !6554, file: !3, line: 554, column: 2)
!6558 = !DILocation(line: 554, column: 2, scope: !6556)
!6559 = !DILocalVariable(name: "__dummy2", scope: !6556, file: !3, line: 554, type: !188)
!6560 = !DILocation(line: 554, column: 2, scope: !6557)
!6561 = !DILocation(line: 554, column: 2, scope: !6529)
!6562 = !{i32 -2141710362}
!6563 = !DILocation(line: 554, column: 2, scope: !6528)
!6564 = !DILocation(line: 329, column: 10, scope: !4984, inlinedAt: !6527)
!6565 = !DILocation(line: 329, column: 16, scope: !4984, inlinedAt: !6527)
!6566 = !DILocation(line: 555, column: 9, scope: !6522)
!6567 = !DILocation(line: 555, column: 15, scope: !6522)
!6568 = !DILocation(line: 556, column: 26, scope: !6522)
!6569 = !DILocation(line: 556, column: 32, scope: !6522)
!6570 = !DILocation(line: 556, column: 38, scope: !6522)
!6571 = !DILocation(line: 409, column: 2, scope: !5048, inlinedAt: !6524)
!6572 = !DILocation(line: 409, column: 2, scope: !5053, inlinedAt: !6524)
!6573 = !DILocation(line: 409, column: 2, scope: !5054, inlinedAt: !6524)
!6574 = !DILocation(line: 409, column: 2, scope: !5061, inlinedAt: !6524)
!6575 = !DILocation(line: 409, column: 2, scope: !5064, inlinedAt: !6524)
!6576 = !DILocation(line: 558, column: 21, scope: !6522)
!6577 = !DILocation(line: 558, column: 2, scope: !6522)
!6578 = !DILocation(line: 558, column: 10, scope: !6522)
!6579 = !DILocation(line: 558, column: 14, scope: !6522)
!6580 = !DILocation(line: 559, column: 21, scope: !6522)
!6581 = !DILocation(line: 559, column: 2, scope: !6522)
!6582 = !DILocation(line: 559, column: 10, scope: !6522)
!6583 = !DILocation(line: 559, column: 14, scope: !6522)
!6584 = !DILocation(line: 560, column: 21, scope: !6522)
!6585 = !DILocation(line: 560, column: 2, scope: !6522)
!6586 = !DILocation(line: 560, column: 10, scope: !6522)
!6587 = !DILocation(line: 560, column: 14, scope: !6522)
!6588 = !DILocation(line: 561, column: 21, scope: !6522)
!6589 = !DILocation(line: 561, column: 2, scope: !6522)
!6590 = !DILocation(line: 561, column: 10, scope: !6522)
!6591 = !DILocation(line: 561, column: 14, scope: !6522)
!6592 = !DILocation(line: 562, column: 20, scope: !6522)
!6593 = !DILocation(line: 562, column: 2, scope: !6522)
!6594 = !DILocation(line: 562, column: 10, scope: !6522)
!6595 = !DILocation(line: 562, column: 13, scope: !6522)
!6596 = !DILocation(line: 563, column: 20, scope: !6522)
!6597 = !DILocation(line: 563, column: 2, scope: !6522)
!6598 = !DILocation(line: 563, column: 10, scope: !6522)
!6599 = !DILocation(line: 563, column: 13, scope: !6522)
!6600 = !DILocation(line: 564, column: 23, scope: !6522)
!6601 = !DILocation(line: 564, column: 2, scope: !6522)
!6602 = !DILocation(line: 564, column: 10, scope: !6522)
!6603 = !DILocation(line: 564, column: 16, scope: !6522)
!6604 = !DILocation(line: 565, column: 24, scope: !6522)
!6605 = !DILocation(line: 565, column: 2, scope: !6522)
!6606 = !DILocation(line: 565, column: 10, scope: !6522)
!6607 = !DILocation(line: 565, column: 17, scope: !6522)
!6608 = !DILocation(line: 566, column: 25, scope: !6522)
!6609 = !DILocation(line: 566, column: 2, scope: !6522)
!6610 = !DILocation(line: 566, column: 10, scope: !6522)
!6611 = !DILocation(line: 566, column: 18, scope: !6522)
!6612 = !DILocation(line: 567, column: 21, scope: !6522)
!6613 = !DILocation(line: 567, column: 2, scope: !6522)
!6614 = !DILocation(line: 567, column: 10, scope: !6522)
!6615 = !DILocation(line: 567, column: 14, scope: !6522)
!6616 = !DILocation(line: 568, column: 29, scope: !6522)
!6617 = !DILocation(line: 568, column: 2, scope: !6522)
!6618 = !DILocation(line: 568, column: 10, scope: !6522)
!6619 = !DILocation(line: 568, column: 22, scope: !6522)
!6620 = !DILocation(line: 570, column: 2, scope: !6522)
!6621 = distinct !DISubprogram(name: "usb_serial_handle_dcd_change", scope: !3, file: !3, line: 610, type: !6622, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6622 = !DISubroutineType(types: !6623)
!6623 = !{null, !7, !1730, !31}
!6624 = !DILocalVariable(name: "port", arg: 1, scope: !6621, file: !3, line: 610, type: !7)
!6625 = !DILocation(line: 610, column: 59, scope: !6621)
!6626 = !DILocalVariable(name: "tty", arg: 2, scope: !6621, file: !3, line: 611, type: !1730)
!6627 = !DILocation(line: 611, column: 24, scope: !6621)
!6628 = !DILocalVariable(name: "status", arg: 3, scope: !6621, file: !3, line: 611, type: !31)
!6629 = !DILocation(line: 611, column: 42, scope: !6621)
!6630 = !DILocation(line: 615, column: 6, scope: !6631)
!6631 = distinct !DILexicalBlock(scope: !6621, file: !3, line: 615, column: 6)
!6632 = !DILocation(line: 615, column: 6, scope: !6621)
!6633 = !DILocalVariable(name: "ld", scope: !6634, file: !3, line: 616, type: !2296)
!6634 = distinct !DILexicalBlock(scope: !6631, file: !3, line: 615, column: 11)
!6635 = !DILocation(line: 616, column: 21, scope: !6634)
!6636 = !DILocation(line: 616, column: 40, scope: !6634)
!6637 = !DILocation(line: 616, column: 26, scope: !6634)
!6638 = !DILocation(line: 618, column: 7, scope: !6639)
!6639 = distinct !DILexicalBlock(scope: !6634, file: !3, line: 618, column: 7)
!6640 = !DILocation(line: 618, column: 7, scope: !6634)
!6641 = !DILocation(line: 619, column: 8, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6643, file: !3, line: 619, column: 8)
!6643 = distinct !DILexicalBlock(scope: !6639, file: !3, line: 618, column: 11)
!6644 = !DILocation(line: 619, column: 12, scope: !6642)
!6645 = !DILocation(line: 619, column: 17, scope: !6642)
!6646 = !DILocation(line: 619, column: 8, scope: !6643)
!6647 = !DILocation(line: 620, column: 5, scope: !6642)
!6648 = !DILocation(line: 620, column: 9, scope: !6642)
!6649 = !DILocation(line: 620, column: 14, scope: !6642)
!6650 = !DILocation(line: 620, column: 25, scope: !6642)
!6651 = !DILocation(line: 620, column: 30, scope: !6642)
!6652 = !DILocation(line: 621, column: 20, scope: !6643)
!6653 = !DILocation(line: 621, column: 4, scope: !6643)
!6654 = !DILocation(line: 622, column: 3, scope: !6643)
!6655 = !DILocation(line: 623, column: 2, scope: !6634)
!6656 = !DILocation(line: 625, column: 6, scope: !6657)
!6657 = distinct !DILexicalBlock(scope: !6621, file: !3, line: 625, column: 6)
!6658 = !DILocation(line: 625, column: 6, scope: !6621)
!6659 = !DILocation(line: 626, column: 3, scope: !6657)
!6660 = !DILocation(line: 627, column: 11, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 627, column: 11)
!6662 = !DILocation(line: 627, column: 15, scope: !6661)
!6663 = !DILocation(line: 627, column: 19, scope: !6661)
!6664 = !DILocation(line: 627, column: 11, scope: !6657)
!6665 = !DILocation(line: 628, column: 14, scope: !6661)
!6666 = !DILocation(line: 628, column: 3, scope: !6661)
!6667 = !DILocation(line: 629, column: 1, scope: !6621)
!6668 = distinct !DISubprogram(name: "usb_serial_generic_resume", scope: !3, file: !3, line: 632, type: !4573, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6669 = !DILocalVariable(name: "serial", arg: 1, scope: !6668, file: !3, line: 632, type: !12)
!6670 = !DILocation(line: 632, column: 50, scope: !6668)
!6671 = !DILocalVariable(name: "port", scope: !6668, file: !3, line: 634, type: !7)
!6672 = !DILocation(line: 634, column: 26, scope: !6668)
!6673 = !DILocalVariable(name: "i", scope: !6668, file: !3, line: 635, type: !6)
!6674 = !DILocation(line: 635, column: 6, scope: !6668)
!6675 = !DILocalVariable(name: "c", scope: !6668, file: !3, line: 635, type: !6)
!6676 = !DILocation(line: 635, column: 9, scope: !6668)
!6677 = !DILocalVariable(name: "r", scope: !6668, file: !3, line: 635, type: !6)
!6678 = !DILocation(line: 635, column: 16, scope: !6668)
!6679 = !DILocation(line: 637, column: 9, scope: !6680)
!6680 = distinct !DILexicalBlock(scope: !6668, file: !3, line: 637, column: 2)
!6681 = !DILocation(line: 637, column: 7, scope: !6680)
!6682 = !DILocation(line: 637, column: 14, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6680, file: !3, line: 637, column: 2)
!6684 = !DILocation(line: 637, column: 18, scope: !6683)
!6685 = !DILocation(line: 637, column: 26, scope: !6683)
!6686 = !DILocation(line: 637, column: 16, scope: !6683)
!6687 = !DILocation(line: 637, column: 2, scope: !6680)
!6688 = !DILocation(line: 638, column: 10, scope: !6689)
!6689 = distinct !DILexicalBlock(scope: !6683, file: !3, line: 637, column: 42)
!6690 = !DILocation(line: 638, column: 18, scope: !6689)
!6691 = !DILocation(line: 638, column: 23, scope: !6689)
!6692 = !DILocation(line: 638, column: 8, scope: !6689)
!6693 = !DILocation(line: 639, column: 30, scope: !6694)
!6694 = distinct !DILexicalBlock(scope: !6689, file: !3, line: 639, column: 7)
!6695 = !DILocation(line: 639, column: 36, scope: !6694)
!6696 = !DILocation(line: 639, column: 8, scope: !6694)
!6697 = !DILocation(line: 639, column: 7, scope: !6689)
!6698 = !DILocation(line: 640, column: 4, scope: !6694)
!6699 = !DILocation(line: 642, column: 7, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6689, file: !3, line: 642, column: 7)
!6701 = !DILocation(line: 642, column: 13, scope: !6700)
!6702 = !DILocation(line: 642, column: 7, scope: !6689)
!6703 = !DILocation(line: 643, column: 44, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6700, file: !3, line: 642, column: 27)
!6705 = !DILocation(line: 643, column: 8, scope: !6704)
!6706 = !DILocation(line: 643, column: 6, scope: !6704)
!6707 = !DILocation(line: 645, column: 8, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6704, file: !3, line: 645, column: 8)
!6709 = !DILocation(line: 645, column: 10, scope: !6708)
!6710 = !DILocation(line: 645, column: 8, scope: !6704)
!6711 = !DILocation(line: 646, column: 6, scope: !6708)
!6712 = !DILocation(line: 646, column: 5, scope: !6708)
!6713 = !DILocation(line: 647, column: 3, scope: !6704)
!6714 = !DILocation(line: 649, column: 7, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6689, file: !3, line: 649, column: 7)
!6716 = !DILocation(line: 649, column: 13, scope: !6715)
!6717 = !DILocation(line: 649, column: 7, scope: !6689)
!6718 = !DILocation(line: 650, column: 39, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 649, column: 28)
!6720 = !DILocation(line: 650, column: 8, scope: !6719)
!6721 = !DILocation(line: 650, column: 6, scope: !6719)
!6722 = !DILocation(line: 651, column: 8, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6719, file: !3, line: 651, column: 8)
!6724 = !DILocation(line: 651, column: 10, scope: !6723)
!6725 = !DILocation(line: 651, column: 8, scope: !6719)
!6726 = !DILocation(line: 652, column: 6, scope: !6723)
!6727 = !DILocation(line: 652, column: 5, scope: !6723)
!6728 = !DILocation(line: 653, column: 3, scope: !6719)
!6729 = !DILocation(line: 654, column: 2, scope: !6689)
!6730 = !DILocation(line: 637, column: 38, scope: !6683)
!6731 = !DILocation(line: 637, column: 2, scope: !6683)
!6732 = distinct !{!6732, !6687, !6733}
!6733 = !DILocation(line: 654, column: 2, scope: !6680)
!6734 = !DILocation(line: 656, column: 9, scope: !6668)
!6735 = !DILocation(line: 656, column: 2, scope: !6668)
!6736 = distinct !DISubprogram(name: "kasan_check_write", scope: !6737, file: !6737, line: 38, type: !6738, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6737 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6738 = !DISubroutineType(types: !6739)
!6739 = !{!352, !4883, !31}
!6740 = !DILocalVariable(name: "p", arg: 1, scope: !6736, file: !6737, line: 38, type: !4883)
!6741 = !DILocation(line: 38, column: 59, scope: !6736)
!6742 = !DILocalVariable(name: "size", arg: 2, scope: !6736, file: !6737, line: 38, type: !31)
!6743 = !DILocation(line: 38, column: 75, scope: !6736)
!6744 = !DILocation(line: 40, column: 2, scope: !6736)
!6745 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6746, file: !6746, line: 178, type: !6747, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6746 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6747 = !DISubroutineType(types: !6748)
!6748 = !{null, !4883, !185, !6}
!6749 = !DILocalVariable(name: "ptr", arg: 1, scope: !6745, file: !6746, line: 178, type: !4883)
!6750 = !DILocation(line: 178, column: 60, scope: !6745)
!6751 = !DILocalVariable(name: "size", arg: 2, scope: !6745, file: !6746, line: 178, type: !185)
!6752 = !DILocation(line: 178, column: 72, scope: !6745)
!6753 = !DILocalVariable(name: "type", arg: 3, scope: !6745, file: !6746, line: 179, type: !6)
!6754 = !DILocation(line: 179, column: 15, scope: !6745)
!6755 = !DILocation(line: 179, column: 23, scope: !6745)
!6756 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5089, file: !5089, line: 646, type: !5090, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6757 = !DILocalVariable(name: "__ret", scope: !6758, file: !5089, line: 648, type: !188)
!6758 = distinct !DILexicalBlock(scope: !6756, file: !5089, line: 648, column: 9)
!6759 = !DILocation(line: 648, column: 9, scope: !6758)
!6760 = !DILocalVariable(name: "__edi", scope: !6758, file: !5089, line: 648, type: !188)
!6761 = !DILocalVariable(name: "__esi", scope: !6758, file: !5089, line: 648, type: !188)
!6762 = !DILocalVariable(name: "__edx", scope: !6758, file: !5089, line: 648, type: !188)
!6763 = !DILocalVariable(name: "__ecx", scope: !6758, file: !5089, line: 648, type: !188)
!6764 = !DILocalVariable(name: "__eax", scope: !6758, file: !5089, line: 648, type: !188)
!6765 = !DILocation(line: 648, column: 9, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !6767, file: !5089, line: 648, column: 9)
!6767 = distinct !DILexicalBlock(scope: !6758, file: !5089, line: 648, column: 9)
!6768 = !{i32 -2145905165, i32 -2145902850, i32 -2145902616, i32 -2145902565, i32 -2145902537, i32 -2145902512, i32 -2145902828, i32 -2145902815, i32 -2145902377, i32 -2145902258, i32 -2145902723, i32 -2145902696, i32 -2145902668, i32 -2145902638}
!6769 = !DILocalVariable(name: "__mask", scope: !6770, file: !5089, line: 648, type: !188)
!6770 = distinct !DILexicalBlock(scope: !6766, file: !5089, line: 648, column: 9)
!6771 = !DILocation(line: 648, column: 9, scope: !6770)
!6772 = !DILocation(line: 648, column: 9, scope: !6767)
!6773 = !DILocation(line: 648, column: 2, scope: !6756)
!6774 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5089, file: !5089, line: 656, type: !2455, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6775 = !DILocalVariable(name: "__edi", scope: !6776, file: !5089, line: 658, type: !188)
!6776 = distinct !DILexicalBlock(scope: !6774, file: !5089, line: 658, column: 2)
!6777 = !DILocation(line: 658, column: 2, scope: !6776)
!6778 = !DILocalVariable(name: "__esi", scope: !6776, file: !5089, line: 658, type: !188)
!6779 = !DILocalVariable(name: "__edx", scope: !6776, file: !5089, line: 658, type: !188)
!6780 = !DILocalVariable(name: "__ecx", scope: !6776, file: !5089, line: 658, type: !188)
!6781 = !DILocalVariable(name: "__eax", scope: !6776, file: !5089, line: 658, type: !188)
!6782 = !{i32 -2145898071, i32 -2145897339, i32 -2145897105, i32 -2145897054, i32 -2145897026, i32 -2145897001, i32 -2145897317, i32 -2145897304, i32 -2145896866, i32 -2145896747, i32 -2145897212, i32 -2145897185, i32 -2145897157, i32 -2145897127}
!6783 = !DILocation(line: 659, column: 1, scope: !6774)
!6784 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5089, file: !5089, line: 651, type: !6785, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6785 = !DISubroutineType(types: !6786)
!6786 = !{null, !188}
!6787 = !DILocalVariable(name: "f", arg: 1, scope: !6784, file: !5089, line: 651, type: !188)
!6788 = !DILocation(line: 651, column: 65, scope: !6784)
!6789 = !DILocalVariable(name: "__edi", scope: !6790, file: !5089, line: 653, type: !188)
!6790 = distinct !DILexicalBlock(scope: !6784, file: !5089, line: 653, column: 2)
!6791 = !DILocation(line: 653, column: 2, scope: !6790)
!6792 = !DILocalVariable(name: "__esi", scope: !6790, file: !5089, line: 653, type: !188)
!6793 = !DILocalVariable(name: "__edx", scope: !6790, file: !5089, line: 653, type: !188)
!6794 = !DILocalVariable(name: "__ecx", scope: !6790, file: !5089, line: 653, type: !188)
!6795 = !DILocalVariable(name: "__eax", scope: !6790, file: !5089, line: 653, type: !188)
!6796 = !{i32 -2145900698, i32 -2145899948, i32 -2145899714, i32 -2145899663, i32 -2145899635, i32 -2145899610, i32 -2145899926, i32 -2145899913, i32 -2145899475, i32 -2145899356, i32 -2145899821, i32 -2145899794, i32 -2145899766, i32 -2145899736}
!6797 = !DILocation(line: 654, column: 1, scope: !6784)
!6798 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !1134, file: !1134, line: 1828, type: !6799, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6799 = !DISubroutineType(types: !6800)
!6800 = !{!6, !1132, !6}
!6801 = !DILocalVariable(name: "tsk", arg: 1, scope: !6798, file: !1134, line: 1828, type: !1132)
!6802 = !DILocation(line: 1828, column: 60, scope: !6798)
!6803 = !DILocalVariable(name: "flag", arg: 2, scope: !6798, file: !1134, line: 1828, type: !6)
!6804 = !DILocation(line: 1828, column: 69, scope: !6798)
!6805 = !DILocation(line: 1830, column: 46, scope: !6798)
!6806 = !DILocation(line: 1830, column: 29, scope: !6798)
!6807 = !DILocation(line: 1830, column: 52, scope: !6798)
!6808 = !DILocation(line: 1830, column: 9, scope: !6798)
!6809 = !DILocation(line: 1830, column: 2, scope: !6798)
!6810 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !6811, file: !6811, line: 82, type: !6812, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6811 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!6812 = !DISubroutineType(types: !6813)
!6813 = !{!6, !6814, !6}
!6814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!6815 = !DILocalVariable(name: "ti", arg: 1, scope: !6810, file: !6811, line: 82, type: !6814)
!6816 = !DILocation(line: 82, column: 59, scope: !6810)
!6817 = !DILocalVariable(name: "flag", arg: 2, scope: !6810, file: !6811, line: 82, type: !6)
!6818 = !DILocation(line: 82, column: 67, scope: !6810)
!6819 = !DILocation(line: 84, column: 18, scope: !6810)
!6820 = !DILocation(line: 84, column: 42, scope: !6810)
!6821 = !DILocation(line: 84, column: 46, scope: !6810)
!6822 = !DILocation(line: 84, column: 9, scope: !6810)
!6823 = !DILocation(line: 84, column: 2, scope: !6810)
!6824 = distinct !DISubprogram(name: "task_thread_info", scope: !1134, file: !1134, line: 1729, type: !6825, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6825 = !DISubroutineType(types: !6826)
!6826 = !{!6814, !1132}
!6827 = !DILocalVariable(name: "task", arg: 1, scope: !6824, file: !1134, line: 1729, type: !1132)
!6828 = !DILocation(line: 1729, column: 72, scope: !6824)
!6829 = !DILocation(line: 1731, column: 10, scope: !6824)
!6830 = !DILocation(line: 1731, column: 16, scope: !6824)
!6831 = !DILocation(line: 1731, column: 2, scope: !6824)
!6832 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !4866, file: !4866, line: 81, type: !5398, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6833 = !DILocalVariable(name: "nr", arg: 1, scope: !6834, file: !4873, line: 160, type: !173)
!6834 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !4873, file: !4873, line: 160, type: !5398, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6835 = !DILocation(line: 160, column: 30, scope: !6834, inlinedAt: !6836)
!6836 = distinct !DILocation(line: 84, column: 9, scope: !6832)
!6837 = !DILocalVariable(name: "addr", arg: 2, scope: !6834, file: !4873, line: 160, type: !4869)
!6838 = !DILocation(line: 160, column: 58, scope: !6834, inlinedAt: !6836)
!6839 = !DILocalVariable(name: "c", scope: !6840, file: !4873, line: 162, type: !352)
!6840 = distinct !DILexicalBlock(scope: !6834, file: !4873, line: 162, column: 9)
!6841 = !DILocation(line: 162, column: 9, scope: !6840, inlinedAt: !6836)
!6842 = !DILocation(line: 99, column: 79, scope: !5416, inlinedAt: !6843)
!6843 = distinct !DILocation(line: 83, column: 2, scope: !6832)
!6844 = !DILocation(line: 99, column: 89, scope: !5416, inlinedAt: !6843)
!6845 = !DILocalVariable(name: "nr", arg: 1, scope: !6832, file: !4866, line: 81, type: !173)
!6846 = !DILocation(line: 81, column: 44, scope: !6832)
!6847 = !DILocalVariable(name: "addr", arg: 2, scope: !6832, file: !4866, line: 81, type: !4869)
!6848 = !DILocation(line: 81, column: 72, scope: !6832)
!6849 = !DILocation(line: 83, column: 31, scope: !6832)
!6850 = !DILocation(line: 83, column: 38, scope: !6832)
!6851 = !DILocation(line: 83, column: 36, scope: !6832)
!6852 = !DILocation(line: 101, column: 20, scope: !5416, inlinedAt: !6843)
!6853 = !DILocation(line: 101, column: 23, scope: !5416, inlinedAt: !6843)
!6854 = !DILocation(line: 101, column: 2, scope: !5416, inlinedAt: !6843)
!6855 = !DILocation(line: 102, column: 2, scope: !5416, inlinedAt: !6843)
!6856 = !DILocation(line: 84, column: 33, scope: !6832)
!6857 = !DILocation(line: 84, column: 37, scope: !6832)
!6858 = !{i32 -2147190131, i32 -2147190035}
!6859 = !DILocation(line: 84, column: 2, scope: !6832)
!6860 = distinct !DISubprogram(name: "flag_buf_ptr", scope: !1732, file: !1732, line: 80, type: !6861, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6861 = !DISubroutineType(types: !6862)
!6862 = !{!138, !2026, !6}
!6863 = !DILocalVariable(name: "b", arg: 1, scope: !6860, file: !1732, line: 80, type: !2026)
!6864 = !DILocation(line: 80, column: 53, scope: !6860)
!6865 = !DILocalVariable(name: "ofs", arg: 2, scope: !6860, file: !1732, line: 80, type: !6)
!6866 = !DILocation(line: 80, column: 60, scope: !6860)
!6867 = !DILocation(line: 82, column: 30, scope: !6860)
!6868 = !DILocation(line: 82, column: 33, scope: !6860)
!6869 = !DILocation(line: 82, column: 17, scope: !6860)
!6870 = !DILocation(line: 82, column: 40, scope: !6860)
!6871 = !DILocation(line: 82, column: 43, scope: !6860)
!6872 = !DILocation(line: 82, column: 38, scope: !6860)
!6873 = !DILocation(line: 82, column: 2, scope: !6860)
!6874 = distinct !DISubprogram(name: "char_buf_ptr", scope: !1732, file: !1732, line: 75, type: !6875, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6875 = !DISubroutineType(types: !6876)
!6876 = !{!2111, !2026, !6}
!6877 = !DILocalVariable(name: "b", arg: 1, scope: !6874, file: !1732, line: 75, type: !2026)
!6878 = !DILocation(line: 75, column: 62, scope: !6874)
!6879 = !DILocalVariable(name: "ofs", arg: 2, scope: !6874, file: !1732, line: 75, type: !6)
!6880 = !DILocation(line: 75, column: 69, scope: !6874)
!6881 = !DILocation(line: 77, column: 27, scope: !6874)
!6882 = !DILocation(line: 77, column: 30, scope: !6874)
!6883 = !DILocation(line: 77, column: 10, scope: !6874)
!6884 = !DILocation(line: 77, column: 38, scope: !6874)
!6885 = !DILocation(line: 77, column: 36, scope: !6874)
!6886 = !DILocation(line: 77, column: 2, scope: !6874)
!6887 = distinct !DISubprogram(name: "kasan_check_read", scope: !6737, file: !6737, line: 34, type: !6738, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4811, retainedNodes: !111)
!6888 = !DILocalVariable(name: "p", arg: 1, scope: !6887, file: !6737, line: 34, type: !4883)
!6889 = !DILocation(line: 34, column: 58, scope: !6887)
!6890 = !DILocalVariable(name: "size", arg: 2, scope: !6887, file: !6737, line: 34, type: !31)
!6891 = !DILocation(line: 34, column: 74, scope: !6887)
!6892 = !DILocation(line: 36, column: 2, scope: !6887)
