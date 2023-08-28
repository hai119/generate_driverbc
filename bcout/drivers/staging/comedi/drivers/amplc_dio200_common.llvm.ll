; ModuleID = '../bcout/drivers/staging/comedi/drivers/amplc_dio200_common.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/amplc_dio200_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_amplc_dio200_common_init6:\09\09\09"
module asm ".long\09amplc_dio200_common_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
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
%struct.comedi_device = type { i32, %struct.comedi_driver*, %struct.comedi_8254*, i8*, %struct.device*, i32, i32, %struct.device*, i8*, i8*, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, %struct.comedi_subdevice*, i8*, i64, i64, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, %struct.fasync_struct*, i32 (%struct.comedi_device*)*, void (%struct.comedi_device*)*, i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, i32, i32*)* }
%struct.comedi_driver = type { %struct.comedi_driver*, i8*, %struct.module*, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)*, void (%struct.comedi_device*)*, i32 (%struct.comedi_device*, i64)*, i32, i8**, i32 }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.comedi_8254 = type { i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i8], i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* }
%struct.comedi_insn = type { i32, i32, i32*, i32, i32, [3 x i32] }
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
%struct.kref = type { %struct.refcount_struct }
%struct.comedi_subdevice = type { %struct.comedi_device*, i32, i32, i32, i32, i32, i8*, %struct.comedi_async*, i8*, i8*, i32, %struct.spinlock, i32, i32, i32*, %struct.comedi_lrange*, %struct.comedi_lrange**, i32*, {}*, {}*, {}*, {}*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)*, i32, i32, %struct.device*, i32, i32* }
%struct.comedi_async = type { i8*, i32, %struct.comedi_buf_map*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* }
%struct.comedi_buf_map = type { %struct.device*, %struct.comedi_buf_page*, i32, i32, %struct.kref }
%struct.comedi_buf_page = type { i8*, i64 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i16*, i32 }
%struct.dio200_board = type { i8*, i8, i16, [8 x i8], [8 x i8], i8 }
%struct.dio200_subdev_8255 = type { i32 }
%struct.dio200_subdev_intr = type { %struct.spinlock, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [30 x i8] c"warning! irq %u unavailable!\0A\00", align 1
@__UNIQUE_ID___addressable_amplc_dio200_common_init230 = internal global i8* bitcast (i32 ()* @amplc_dio200_common_init to i8*), section ".discard.addressable", align 8, !dbg !0
@__exitcall_amplc_dio200_common_exit = internal global void ()* @amplc_dio200_common_exit, section ".exitcall.exit", align 8, !dbg !147
@__UNIQUE_ID_author231 = internal constant [57 x i8] c"amplc_dio200_common.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !154
@__UNIQUE_ID_description232 = internal constant [84 x i8] c"amplc_dio200_common.description=Comedi helper for amplc_dio200 and amplc_dio200_pci\00", section ".modinfo", align 1, !dbg !161
@__UNIQUE_ID_file233 = internal constant [76 x i8] c"amplc_dio200_common.file=drivers/staging/comedi/drivers/amplc_dio200_common\00", section ".modinfo", align 1, !dbg !166
@__UNIQUE_ID_license234 = internal constant [32 x i8] c"amplc_dio200_common.license=GPL\00", section ".modinfo", align 1, !dbg !171
@clock_period = internal constant <{ [12 x i32], [20 x i32] }> <{ [12 x i32] [i32 0, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50], [20 x i32] zeroinitializer }>, align 16, !dbg !176
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@ts_clock_period = internal constant [3 x i32] [i32 1, i32 1000, i32 1000000], align 4, !dbg !180
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_amplc_dio200_common_init230 to i8*), i8* bitcast (void ()* @amplc_dio200_common_exit to i8*), i8* bitcast (void ()** @__exitcall_amplc_dio200_common_exit to i8*), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_author231, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__UNIQUE_ID_description232, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__UNIQUE_ID_file233, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_license234, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @amplc_dio200_set_enhance(%struct.comedi_device* %dev, i8 zeroext %val) #0 !dbg !192 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %val.addr = alloca i8, align 1
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4007, metadata !DIExpression()), !dbg !4008
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !4009, metadata !DIExpression()), !dbg !4010
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4011
  %1 = load i8, i8* %val.addr, align 1, !dbg !4012
  call void @dio200_write8(%struct.comedi_device* %0, i32 32, i8 zeroext %1) #8, !dbg !4013
  ret void, !dbg !4014
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dio200_write8(%struct.comedi_device* %dev, i32 %offset, i8 zeroext %val) #0 !dbg !4015 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %offset.addr = alloca i32, align 4
  %val.addr = alloca i8, align 1
  %board = alloca %struct.dio200_board*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4018, metadata !DIExpression()), !dbg !4019
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !4020, metadata !DIExpression()), !dbg !4021
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !4022, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.declare(metadata %struct.dio200_board** %board, metadata !4024, metadata !DIExpression()), !dbg !4039
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4040
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !4041
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !4041
  %2 = bitcast i8* %1 to %struct.dio200_board*, !dbg !4040
  store %struct.dio200_board* %2, %struct.dio200_board** %board, align 8, !dbg !4039
  %3 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !4042
  %is_pcie = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %3, i32 0, i32 5, !dbg !4044
  %bf.load = load i8, i8* %is_pcie, align 4, !dbg !4044
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !4044
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4044
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4044
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4042
  br i1 %tobool, label %if.then, label %if.end, !dbg !4045

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %offset.addr, align 4, !dbg !4046
  %shl = shl i32 %4, 3, !dbg !4046
  store i32 %shl, i32* %offset.addr, align 4, !dbg !4046
  br label %if.end, !dbg !4047

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4048
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !4050
  %6 = load i8*, i8** %mmio, align 8, !dbg !4050
  %tobool1 = icmp ne i8* %6, null, !dbg !4048
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !4051

if.then2:                                         ; preds = %if.end
  %7 = load i8, i8* %val.addr, align 1, !dbg !4052
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4053
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 17, !dbg !4054
  %9 = load i8*, i8** %mmio3, align 8, !dbg !4054
  %10 = load i32, i32* %offset.addr, align 4, !dbg !4055
  %idx.ext = zext i32 %10 to i64, !dbg !4056
  %add.ptr = getelementptr i8, i8* %9, i64 %idx.ext, !dbg !4056
  call void @writeb(i8 zeroext %7, i8* %add.ptr) #8, !dbg !4057
  br label %if.end5, !dbg !4057

if.else:                                          ; preds = %if.end
  %11 = load i8, i8* %val.addr, align 1, !dbg !4058
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4059
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 18, !dbg !4060
  %13 = load i64, i64* %iobase, align 8, !dbg !4060
  %14 = load i32, i32* %offset.addr, align 4, !dbg !4061
  %conv = zext i32 %14 to i64, !dbg !4061
  %add = add i64 %13, %conv, !dbg !4062
  %conv4 = trunc i64 %add to i32, !dbg !4059
  call void @outb(i8 zeroext %11, i32 %conv4) #8, !dbg !4063
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  ret void, !dbg !4064
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @amplc_dio200_common_attach(%struct.comedi_device* %dev, i32 %irq, i64 %req_irq_flags) #0 !dbg !4065 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %irq.addr = alloca i32, align 4
  %req_irq_flags.addr = alloca i64, align 8
  %board = alloca %struct.dio200_board*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4068, metadata !DIExpression()), !dbg !4069
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4070, metadata !DIExpression()), !dbg !4071
  store i64 %req_irq_flags, i64* %req_irq_flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %req_irq_flags.addr, metadata !4072, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.declare(metadata %struct.dio200_board** %board, metadata !4074, metadata !DIExpression()), !dbg !4075
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4076
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !4077
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !4077
  %2 = bitcast i8* %1 to %struct.dio200_board*, !dbg !4076
  store %struct.dio200_board* %2, %struct.dio200_board** %board, align 8, !dbg !4075
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4078, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.declare(metadata i32* %n, metadata !4080, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4082, metadata !DIExpression()), !dbg !4083
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4084
  %4 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !4085
  %n_subdevs = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %4, i32 0, i32 2, !dbg !4086
  %5 = load i16, i16* %n_subdevs, align 2, !dbg !4086
  %conv = zext i16 %5 to i32, !dbg !4085
  %call = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %3, i32 %conv) #8, !dbg !4087
  store i32 %call, i32* %ret, align 4, !dbg !4088
  %6 = load i32, i32* %ret, align 4, !dbg !4089
  %tobool = icmp ne i32 %6, 0, !dbg !4089
  br i1 %tobool, label %if.then, label %if.end, !dbg !4091

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4, !dbg !4092
  store i32 %7, i32* %retval, align 4, !dbg !4093
  br label %return, !dbg !4093

if.end:                                           ; preds = %entry
  store i32 0, i32* %n, align 4, !dbg !4094
  br label %for.cond, !dbg !4096

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %n, align 4, !dbg !4097
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4099
  %n_subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 15, !dbg !4100
  %10 = load i32, i32* %n_subdevices, align 4, !dbg !4100
  %cmp = icmp ult i32 %8, %10, !dbg !4101
  br i1 %cmp, label %for.body, label %for.end, !dbg !4102

for.body:                                         ; preds = %for.cond
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4103
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 16, !dbg !4105
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4105
  %13 = load i32, i32* %n, align 4, !dbg !4106
  %idxprom = zext i32 %13 to i64, !dbg !4103
  %arrayidx = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i64 %idxprom, !dbg !4103
  store %struct.comedi_subdevice* %arrayidx, %struct.comedi_subdevice** %s, align 8, !dbg !4107
  %14 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !4108
  %sdtype = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %14, i32 0, i32 3, !dbg !4109
  %15 = load i32, i32* %n, align 4, !dbg !4110
  %idxprom2 = zext i32 %15 to i64, !dbg !4108
  %arrayidx3 = getelementptr [8 x i8], [8 x i8]* %sdtype, i64 0, i64 %idxprom2, !dbg !4108
  %16 = load i8, i8* %arrayidx3, align 1, !dbg !4108
  %conv4 = zext i8 %16 to i32, !dbg !4108
  switch i32 %conv4, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb13
    i32 1, label %sw.bb23
    i32 4, label %sw.bb38
  ], !dbg !4111

sw.bb:                                            ; preds = %for.body
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4112
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4114
  %19 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !4115
  %sdinfo = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %19, i32 0, i32 4, !dbg !4116
  %20 = load i32, i32* %n, align 4, !dbg !4117
  %idxprom5 = zext i32 %20 to i64, !dbg !4115
  %arrayidx6 = getelementptr [8 x i8], [8 x i8]* %sdinfo, i64 0, i64 %idxprom5, !dbg !4115
  %21 = load i8, i8* %arrayidx6, align 1, !dbg !4115
  %conv7 = zext i8 %21 to i32, !dbg !4115
  %call8 = call i32 @dio200_subdev_8254_init(%struct.comedi_device* %17, %struct.comedi_subdevice* %18, i32 %conv7) #8, !dbg !4118
  store i32 %call8, i32* %ret, align 4, !dbg !4119
  %22 = load i32, i32* %ret, align 4, !dbg !4120
  %cmp9 = icmp slt i32 %22, 0, !dbg !4122
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4123

if.then11:                                        ; preds = %sw.bb
  %23 = load i32, i32* %ret, align 4, !dbg !4124
  store i32 %23, i32* %retval, align 4, !dbg !4125
  br label %return, !dbg !4125

if.end12:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !4126

sw.bb13:                                          ; preds = %for.body
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4127
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4128
  %26 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !4129
  %sdinfo14 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %26, i32 0, i32 4, !dbg !4130
  %27 = load i32, i32* %n, align 4, !dbg !4131
  %idxprom15 = zext i32 %27 to i64, !dbg !4129
  %arrayidx16 = getelementptr [8 x i8], [8 x i8]* %sdinfo14, i64 0, i64 %idxprom15, !dbg !4129
  %28 = load i8, i8* %arrayidx16, align 1, !dbg !4129
  %conv17 = zext i8 %28 to i32, !dbg !4129
  %call18 = call i32 @dio200_subdev_8255_init(%struct.comedi_device* %24, %struct.comedi_subdevice* %25, i32 %conv17) #8, !dbg !4132
  store i32 %call18, i32* %ret, align 4, !dbg !4133
  %29 = load i32, i32* %ret, align 4, !dbg !4134
  %cmp19 = icmp slt i32 %29, 0, !dbg !4136
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !4137

if.then21:                                        ; preds = %sw.bb13
  %30 = load i32, i32* %ret, align 4, !dbg !4138
  store i32 %30, i32* %retval, align 4, !dbg !4139
  br label %return, !dbg !4139

if.end22:                                         ; preds = %sw.bb13
  br label %sw.epilog, !dbg !4140

sw.bb23:                                          ; preds = %for.body
  %31 = load i32, i32* %irq.addr, align 4, !dbg !4141
  %tobool24 = icmp ne i32 %31, 0, !dbg !4141
  br i1 %tobool24, label %land.lhs.true, label %if.else, !dbg !4143

land.lhs.true:                                    ; preds = %sw.bb23
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4144
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 21, !dbg !4145
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4145
  %tobool25 = icmp ne %struct.comedi_subdevice* %33, null, !dbg !4144
  br i1 %tobool25, label %if.else, label %if.then26, !dbg !4146

if.then26:                                        ; preds = %land.lhs.true
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4147
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4149
  %36 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !4150
  %sdinfo27 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %36, i32 0, i32 4, !dbg !4151
  %37 = load i32, i32* %n, align 4, !dbg !4152
  %idxprom28 = zext i32 %37 to i64, !dbg !4150
  %arrayidx29 = getelementptr [8 x i8], [8 x i8]* %sdinfo27, i64 0, i64 %idxprom28, !dbg !4150
  %38 = load i8, i8* %arrayidx29, align 1, !dbg !4150
  %conv30 = zext i8 %38 to i32, !dbg !4150
  %call31 = call i32 @dio200_subdev_intr_init(%struct.comedi_device* %34, %struct.comedi_subdevice* %35, i32 30, i32 %conv30) #8, !dbg !4153
  store i32 %call31, i32* %ret, align 4, !dbg !4154
  %39 = load i32, i32* %ret, align 4, !dbg !4155
  %cmp32 = icmp slt i32 %39, 0, !dbg !4157
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !4158

if.then34:                                        ; preds = %if.then26
  %40 = load i32, i32* %ret, align 4, !dbg !4159
  store i32 %40, i32* %retval, align 4, !dbg !4160
  br label %return, !dbg !4160

if.end35:                                         ; preds = %if.then26
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4161
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4162
  %read_subdev36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 21, !dbg !4163
  store %struct.comedi_subdevice* %41, %struct.comedi_subdevice** %read_subdev36, align 8, !dbg !4164
  br label %if.end37, !dbg !4165

if.else:                                          ; preds = %land.lhs.true, %sw.bb23
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4166
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i32 0, i32 2, !dbg !4168
  store i32 0, i32* %type, align 4, !dbg !4169
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.end35
  br label %sw.epilog, !dbg !4170

sw.bb38:                                          ; preds = %for.body
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4171
  %type39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 2, !dbg !4172
  store i32 7, i32* %type39, align 4, !dbg !4173
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4174
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 4, !dbg !4175
  store i32 268500992, i32* %subdev_flags, align 4, !dbg !4176
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4177
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 3, !dbg !4178
  store i32 1, i32* %n_chan, align 8, !dbg !4179
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4180
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 13, !dbg !4181
  store i32 -1, i32* %maxdata, align 8, !dbg !4182
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4183
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 18, !dbg !4184
  %insn_read40 = bitcast {}** %insn_read to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4184
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dio200_subdev_timer_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read40, align 8, !dbg !4185
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4186
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 21, !dbg !4187
  %insn_config41 = bitcast {}** %insn_config to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4187
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dio200_subdev_timer_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config41, align 8, !dbg !4188
  br label %sw.epilog, !dbg !4189

sw.default:                                       ; preds = %for.body
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4190
  %type42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 2, !dbg !4191
  store i32 0, i32* %type42, align 4, !dbg !4192
  br label %sw.epilog, !dbg !4193

sw.epilog:                                        ; preds = %sw.default, %sw.bb38, %if.end37, %if.end22, %if.end12
  br label %for.inc, !dbg !4194

for.inc:                                          ; preds = %sw.epilog
  %51 = load i32, i32* %n, align 4, !dbg !4195
  %inc = add i32 %51, 1, !dbg !4195
  store i32 %inc, i32* %n, align 4, !dbg !4195
  br label %for.cond, !dbg !4196, !llvm.loop !4197

for.end:                                          ; preds = %for.cond
  %52 = load i32, i32* %irq.addr, align 4, !dbg !4199
  %tobool43 = icmp ne i32 %52, 0, !dbg !4199
  br i1 %tobool43, label %land.lhs.true44, label %if.end55, !dbg !4201

land.lhs.true44:                                  ; preds = %for.end
  %53 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4202
  %read_subdev45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 21, !dbg !4203
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev45, align 8, !dbg !4203
  %tobool46 = icmp ne %struct.comedi_subdevice* %54, null, !dbg !4202
  br i1 %tobool46, label %if.then47, label %if.end55, !dbg !4204

if.then47:                                        ; preds = %land.lhs.true44
  %55 = load i32, i32* %irq.addr, align 4, !dbg !4205
  %56 = load i64, i64* %req_irq_flags.addr, align 8, !dbg !4208
  %57 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4209
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 8, !dbg !4210
  %58 = load i8*, i8** %board_name, align 8, !dbg !4210
  %59 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4211
  %60 = bitcast %struct.comedi_device* %59 to i8*, !dbg !4211
  %call48 = call i32 @request_irq(i32 %55, i32 (i32, i8*)* @dio200_interrupt, i64 %56, i8* %58, i8* %60) #8, !dbg !4212
  %cmp49 = icmp sge i32 %call48, 0, !dbg !4213
  br i1 %cmp49, label %if.then51, label %if.else53, !dbg !4214

if.then51:                                        ; preds = %if.then47
  %61 = load i32, i32* %irq.addr, align 4, !dbg !4215
  %62 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4217
  %irq52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 20, !dbg !4218
  store i32 %61, i32* %irq52, align 8, !dbg !4219
  br label %if.end54, !dbg !4220

if.else53:                                        ; preds = %if.then47
  %63 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4221
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 4, !dbg !4221
  %64 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4221
  %65 = load i32, i32* %irq.addr, align 4, !dbg !4221
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %65) #9, !dbg !4221
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.then51
  br label %if.end55, !dbg !4223

if.end55:                                         ; preds = %if.end54, %land.lhs.true44, %for.end
  store i32 0, i32* %retval, align 4, !dbg !4224
  br label %return, !dbg !4224

return:                                           ; preds = %if.end55, %if.then34, %if.then21, %if.then11, %if.then
  %66 = load i32, i32* %retval, align 4, !dbg !4225
  ret i32 %66, !dbg !4225
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_8254_init(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %offset) #0 !dbg !4226 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %offset.addr = alloca i32, align 4
  %board = alloca %struct.dio200_board*, align 8
  %i8254 = alloca %struct.comedi_8254*, align 8
  %regshift = alloca i32, align 4
  %chan = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4227, metadata !DIExpression()), !dbg !4228
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4229, metadata !DIExpression()), !dbg !4230
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !4231, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.declare(metadata %struct.dio200_board** %board, metadata !4233, metadata !DIExpression()), !dbg !4234
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4235
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !4236
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !4236
  %2 = bitcast i8* %1 to %struct.dio200_board*, !dbg !4235
  store %struct.dio200_board* %2, %struct.dio200_board** %board, align 8, !dbg !4234
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254, metadata !4237, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.declare(metadata i32* %regshift, metadata !4239, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4241, metadata !DIExpression()), !dbg !4242
  %3 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !4243
  %is_pcie = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %3, i32 0, i32 5, !dbg !4245
  %bf.load = load i8, i8* %is_pcie, align 4, !dbg !4245
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !4245
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4245
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4245
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4243
  br i1 %tobool, label %if.then, label %if.else, !dbg !4246

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %offset.addr, align 4, !dbg !4247
  %shl = shl i32 %4, 3, !dbg !4247
  store i32 %shl, i32* %offset.addr, align 4, !dbg !4247
  store i32 3, i32* %regshift, align 4, !dbg !4249
  br label %if.end, !dbg !4250

if.else:                                          ; preds = %entry
  store i32 0, i32* %regshift, align 4, !dbg !4251
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4253
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !4255
  %6 = load i8*, i8** %mmio, align 8, !dbg !4255
  %tobool1 = icmp ne i8* %6, null, !dbg !4253
  br i1 %tobool1, label %if.then2, label %if.else4, !dbg !4256

if.then2:                                         ; preds = %if.end
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4257
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !4259
  %8 = load i8*, i8** %mmio3, align 8, !dbg !4259
  %9 = load i32, i32* %offset.addr, align 4, !dbg !4260
  %idx.ext = zext i32 %9 to i64, !dbg !4261
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !4261
  %10 = load i32, i32* %regshift, align 4, !dbg !4262
  %call = call %struct.comedi_8254* @comedi_8254_mm_init(i8* %add.ptr, i32 0, i32 1, i32 %10) #8, !dbg !4263
  store %struct.comedi_8254* %call, %struct.comedi_8254** %i8254, align 8, !dbg !4264
  br label %if.end6, !dbg !4265

if.else4:                                         ; preds = %if.end
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4266
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 18, !dbg !4268
  %12 = load i64, i64* %iobase, align 8, !dbg !4268
  %13 = load i32, i32* %offset.addr, align 4, !dbg !4269
  %conv = zext i32 %13 to i64, !dbg !4269
  %add = add i64 %12, %conv, !dbg !4270
  %14 = load i32, i32* %regshift, align 4, !dbg !4271
  %call5 = call %struct.comedi_8254* @comedi_8254_init(i64 %add, i32 0, i32 1, i32 %14) #8, !dbg !4272
  store %struct.comedi_8254* %call5, %struct.comedi_8254** %i8254, align 8, !dbg !4273
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %if.then2
  %15 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4274
  %tobool7 = icmp ne %struct.comedi_8254* %15, null, !dbg !4274
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4276

if.then8:                                         ; preds = %if.end6
  store i32 -12, i32* %retval, align 4, !dbg !4277
  br label %return, !dbg !4277

if.end9:                                          ; preds = %if.end6
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4278
  %17 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4279
  call void @comedi_8254_subdevice_init(%struct.comedi_subdevice* %16, %struct.comedi_8254* %17) #8, !dbg !4280
  %18 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4281
  %insn_config = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %18, i32 0, i32 14, !dbg !4282
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dio200_subdev_8254_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4283
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4284
  call void @comedi_set_spriv_auto_free(%struct.comedi_subdevice* %19) #8, !dbg !4285
  %20 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !4286
  %has_clk_gat_sce = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %20, i32 0, i32 5, !dbg !4288
  %bf.load10 = load i8, i8* %has_clk_gat_sce, align 4, !dbg !4288
  %bf.lshr11 = lshr i8 %bf.load10, 1, !dbg !4288
  %bf.clear12 = and i8 %bf.lshr11, 1, !dbg !4288
  %bf.cast13 = zext i8 %bf.clear12 to i32, !dbg !4288
  %tobool14 = icmp ne i32 %bf.cast13, 0, !dbg !4286
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !4289

if.then15:                                        ; preds = %if.end9
  store i32 0, i32* %chan, align 4, !dbg !4290
  br label %for.cond, !dbg !4293

for.cond:                                         ; preds = %for.inc, %if.then15
  %21 = load i32, i32* %chan, align 4, !dbg !4294
  %cmp = icmp slt i32 %21, 3, !dbg !4296
  br i1 %cmp, label %for.body, label %for.end, !dbg !4297

for.body:                                         ; preds = %for.cond
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4298
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4300
  %24 = load i32, i32* %chan, align 4, !dbg !4301
  call void @dio200_subdev_8254_set_gate_src(%struct.comedi_device* %22, %struct.comedi_subdevice* %23, i32 %24, i32 0) #8, !dbg !4302
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4303
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4304
  %27 = load i32, i32* %chan, align 4, !dbg !4305
  call void @dio200_subdev_8254_set_clock_src(%struct.comedi_device* %25, %struct.comedi_subdevice* %26, i32 %27, i32 0) #8, !dbg !4306
  br label %for.inc, !dbg !4307

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %chan, align 4, !dbg !4308
  %inc = add i32 %28, 1, !dbg !4308
  store i32 %inc, i32* %chan, align 4, !dbg !4308
  br label %for.cond, !dbg !4309, !llvm.loop !4310

for.end:                                          ; preds = %for.cond
  br label %if.end17, !dbg !4312

if.end17:                                         ; preds = %for.end, %if.end9
  store i32 0, i32* %retval, align 4, !dbg !4313
  br label %return, !dbg !4313

return:                                           ; preds = %if.end17, %if.then8
  %29 = load i32, i32* %retval, align 4, !dbg !4314
  ret i32 %29, !dbg !4314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_8255_init(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %offset) #0 !dbg !4315 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %offset.addr = alloca i32, align 4
  %subpriv = alloca %struct.dio200_subdev_8255*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4316, metadata !DIExpression()), !dbg !4317
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !4320, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.declare(metadata %struct.dio200_subdev_8255** %subpriv, metadata !4322, metadata !DIExpression()), !dbg !4327
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4328
  %call = call i8* @comedi_alloc_spriv(%struct.comedi_subdevice* %0, i64 4) #8, !dbg !4329
  %1 = bitcast i8* %call to %struct.dio200_subdev_8255*, !dbg !4329
  store %struct.dio200_subdev_8255* %1, %struct.dio200_subdev_8255** %subpriv, align 8, !dbg !4330
  %2 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %subpriv, align 8, !dbg !4331
  %tobool = icmp ne %struct.dio200_subdev_8255* %2, null, !dbg !4331
  br i1 %tobool, label %if.end, label %if.then, !dbg !4333

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4334
  br label %return, !dbg !4334

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %offset.addr, align 4, !dbg !4335
  %4 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %subpriv, align 8, !dbg !4336
  %ofs = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %4, i32 0, i32 0, !dbg !4337
  store i32 %3, i32* %ofs, align 4, !dbg !4338
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4339
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 2, !dbg !4340
  store i32 5, i32* %type, align 4, !dbg !4341
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4342
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 4, !dbg !4343
  store i32 196608, i32* %subdev_flags, align 4, !dbg !4344
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4345
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 3, !dbg !4346
  store i32 24, i32* %n_chan, align 8, !dbg !4347
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4348
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 15, !dbg !4349
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table, align 8, !dbg !4350
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4351
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 13, !dbg !4352
  store i32 1, i32* %maxdata, align 8, !dbg !4353
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4354
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 20, !dbg !4355
  %insn_bits1 = bitcast {}** %insn_bits to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4355
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dio200_subdev_8255_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits1, align 8, !dbg !4356
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4357
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 21, !dbg !4358
  %insn_config2 = bitcast {}** %insn_config to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4358
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dio200_subdev_8255_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config2, align 8, !dbg !4359
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4360
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4361
  call void @dio200_subdev_8255_set_dir(%struct.comedi_device* %12, %struct.comedi_subdevice* %13) #8, !dbg !4362
  store i32 0, i32* %retval, align 4, !dbg !4363
  br label %return, !dbg !4363

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !4364
  ret i32 %14, !dbg !4364
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_intr_init(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %offset, i32 %valid_isns) #0 !dbg !4365 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4368, metadata !DIExpression()), !dbg !4374
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %offset.addr = alloca i32, align 4
  %valid_isns.addr = alloca i32, align 4
  %board = alloca %struct.dio200_board*, align 8
  %subpriv = alloca %struct.dio200_subdev_intr*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4377, metadata !DIExpression()), !dbg !4378
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4379, metadata !DIExpression()), !dbg !4380
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !4381, metadata !DIExpression()), !dbg !4382
  store i32 %valid_isns, i32* %valid_isns.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %valid_isns.addr, metadata !4383, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.declare(metadata %struct.dio200_board** %board, metadata !4385, metadata !DIExpression()), !dbg !4386
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4387
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !4388
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !4388
  %2 = bitcast i8* %1 to %struct.dio200_board*, !dbg !4387
  store %struct.dio200_board* %2, %struct.dio200_board** %board, align 8, !dbg !4386
  call void @llvm.dbg.declare(metadata %struct.dio200_subdev_intr** %subpriv, metadata !4389, metadata !DIExpression()), !dbg !4398
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4399
  %call = call i8* @comedi_alloc_spriv(%struct.comedi_subdevice* %3, i64 16) #8, !dbg !4400
  %4 = bitcast i8* %call to %struct.dio200_subdev_intr*, !dbg !4400
  store %struct.dio200_subdev_intr* %4, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !4401
  %5 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !4402
  %tobool = icmp ne %struct.dio200_subdev_intr* %5, null, !dbg !4402
  br i1 %tobool, label %if.end, label %if.then, !dbg !4404

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4405
  br label %return, !dbg !4405

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %offset.addr, align 4, !dbg !4406
  %7 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !4407
  %ofs = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %7, i32 0, i32 1, !dbg !4408
  store i32 %6, i32* %ofs, align 4, !dbg !4409
  %8 = load i32, i32* %valid_isns.addr, align 4, !dbg !4410
  %9 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !4411
  %valid_isns1 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %9, i32 0, i32 2, !dbg !4412
  store i32 %8, i32* %valid_isns1, align 4, !dbg !4413
  br label %do.body, !dbg !4414

do.body:                                          ; preds = %if.end
  %10 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !4415
  %spinlock = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %10, i32 0, i32 0, !dbg !4415
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4416
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !4417
  %rlock.i = bitcast %union.anon.3* %12 to %struct.raw_spinlock*, !dbg !4417
  %13 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !4415
  %spinlock3 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %13, i32 0, i32 0, !dbg !4415
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4415
  %rlock = bitcast %union.anon.3* %14 to %struct.raw_spinlock*, !dbg !4415
  %15 = bitcast %struct.spinlock* %spinlock3 to i8*, !dbg !4415
  %16 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4415
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 1 %16, i64 0, i1 false), !dbg !4415
  br label %do.end, !dbg !4415

do.end:                                           ; preds = %do.body
  %17 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !4418
  %has_int_sce = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %17, i32 0, i32 5, !dbg !4420
  %bf.load = load i8, i8* %has_int_sce, align 4, !dbg !4420
  %bf.clear = and i8 %bf.load, 1, !dbg !4420
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4420
  %tobool4 = icmp ne i32 %bf.cast, 0, !dbg !4418
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !4421

if.then5:                                         ; preds = %do.end
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4422
  %19 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !4423
  %ofs6 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %19, i32 0, i32 1, !dbg !4424
  %20 = load i32, i32* %ofs6, align 4, !dbg !4424
  call void @dio200_write8(%struct.comedi_device* %18, i32 %20, i8 zeroext 0) #8, !dbg !4425
  br label %if.end7, !dbg !4425

if.end7:                                          ; preds = %if.then5, %do.end
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4426
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 2, !dbg !4427
  store i32 3, i32* %type, align 4, !dbg !4428
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4429
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 4, !dbg !4430
  store i32 536969216, i32* %subdev_flags, align 4, !dbg !4431
  %23 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !4432
  %has_int_sce8 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %23, i32 0, i32 5, !dbg !4434
  %bf.load9 = load i8, i8* %has_int_sce8, align 4, !dbg !4434
  %bf.clear10 = and i8 %bf.load9, 1, !dbg !4434
  %bf.cast11 = zext i8 %bf.clear10 to i32, !dbg !4434
  %tobool12 = icmp ne i32 %bf.cast11, 0, !dbg !4432
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !4435

if.then13:                                        ; preds = %if.end7
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4436
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 3, !dbg !4438
  store i32 6, i32* %n_chan, align 8, !dbg !4439
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4440
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 5, !dbg !4441
  store i32 6, i32* %len_chanlist, align 8, !dbg !4442
  br label %if.end16, !dbg !4443

if.else:                                          ; preds = %if.end7
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4444
  %n_chan14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 3, !dbg !4446
  store i32 1, i32* %n_chan14, align 8, !dbg !4447
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4448
  %len_chanlist15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 5, !dbg !4449
  store i32 1, i32* %len_chanlist15, align 8, !dbg !4450
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4451
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 15, !dbg !4452
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table, align 8, !dbg !4453
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4454
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 13, !dbg !4455
  store i32 1, i32* %maxdata, align 8, !dbg !4456
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4457
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 20, !dbg !4458
  %insn_bits17 = bitcast {}** %insn_bits to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4458
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dio200_subdev_intr_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits17, align 8, !dbg !4459
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4460
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 23, !dbg !4461
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @dio200_subdev_intr_cmdtest, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4462
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4463
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 22, !dbg !4464
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dio200_subdev_intr_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4465
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4466
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 25, !dbg !4467
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dio200_subdev_intr_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4468
  store i32 0, i32* %retval, align 4, !dbg !4469
  br label %return, !dbg !4469

return:                                           ; preds = %if.end16, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !4470
  ret i32 %34, !dbg !4470
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_timer_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #0 !dbg !4471 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4472, metadata !DIExpression()), !dbg !4473
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4474, metadata !DIExpression()), !dbg !4475
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4476, metadata !DIExpression()), !dbg !4477
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4478, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.declare(metadata i32* %n, metadata !4480, metadata !DIExpression()), !dbg !4481
  store i32 0, i32* %n, align 4, !dbg !4482
  br label %for.cond, !dbg !4484

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n, align 4, !dbg !4485
  %1 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4487
  %n1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %1, i32 0, i32 1, !dbg !4488
  %2 = load i32, i32* %n1, align 4, !dbg !4488
  %cmp = icmp ult i32 %0, %2, !dbg !4489
  br i1 %cmp, label %for.body, label %for.end, !dbg !4490

for.body:                                         ; preds = %for.cond
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4491
  %call = call i32 @dio200_read32(%struct.comedi_device* %3, i32 1538) #8, !dbg !4492
  %4 = load i32*, i32** %data.addr, align 8, !dbg !4493
  %5 = load i32, i32* %n, align 4, !dbg !4494
  %idxprom = zext i32 %5 to i64, !dbg !4493
  %arrayidx = getelementptr i32, i32* %4, i64 %idxprom, !dbg !4493
  store i32 %call, i32* %arrayidx, align 4, !dbg !4495
  br label %for.inc, !dbg !4493

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %n, align 4, !dbg !4496
  %inc = add i32 %6, 1, !dbg !4496
  store i32 %inc, i32* %n, align 4, !dbg !4496
  br label %for.cond, !dbg !4497, !llvm.loop !4498

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %n, align 4, !dbg !4500
  ret i32 %7, !dbg !4501
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_timer_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #0 !dbg !4502 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4503, metadata !DIExpression()), !dbg !4504
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4505, metadata !DIExpression()), !dbg !4506
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4507, metadata !DIExpression()), !dbg !4508
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4509, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4511, metadata !DIExpression()), !dbg !4512
  store i32 0, i32* %ret, align 4, !dbg !4512
  %0 = load i32*, i32** %data.addr, align 8, !dbg !4513
  %arrayidx = getelementptr i32, i32* %0, i64 0, !dbg !4513
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4513
  switch i32 %1, label %sw.default [
    i32 34, label %sw.bb
    i32 2003, label %sw.bb1
    i32 2004, label %sw.bb3
  ], !dbg !4514

sw.bb:                                            ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4515
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4517
  call void @dio200_subdev_timer_reset(%struct.comedi_device* %2, %struct.comedi_subdevice* %3) #8, !dbg !4518
  br label %sw.epilog, !dbg !4519

sw.bb1:                                           ; preds = %entry
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4520
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4521
  %6 = load i32*, i32** %data.addr, align 8, !dbg !4522
  %arrayidx2 = getelementptr i32, i32* %6, i64 1, !dbg !4522
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !4522
  %call = call i32 @dio200_subdev_timer_set_clock_src(%struct.comedi_device* %4, %struct.comedi_subdevice* %5, i32 %7) #8, !dbg !4523
  store i32 %call, i32* %ret, align 4, !dbg !4524
  %8 = load i32, i32* %ret, align 4, !dbg !4525
  %cmp = icmp slt i32 %8, 0, !dbg !4527
  br i1 %cmp, label %if.then, label %if.end, !dbg !4528

if.then:                                          ; preds = %sw.bb1
  store i32 -22, i32* %ret, align 4, !dbg !4529
  br label %if.end, !dbg !4530

if.end:                                           ; preds = %if.then, %sw.bb1
  br label %sw.epilog, !dbg !4531

sw.bb3:                                           ; preds = %entry
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4532
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4533
  %11 = load i32*, i32** %data.addr, align 8, !dbg !4534
  %arrayidx4 = getelementptr i32, i32* %11, i64 1, !dbg !4534
  %12 = load i32*, i32** %data.addr, align 8, !dbg !4535
  %arrayidx5 = getelementptr i32, i32* %12, i64 2, !dbg !4535
  call void @dio200_subdev_timer_get_clock_src(%struct.comedi_device* %9, %struct.comedi_subdevice* %10, i32* %arrayidx4, i32* %arrayidx5) #8, !dbg !4536
  br label %sw.epilog, !dbg !4537

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %ret, align 4, !dbg !4538
  br label %sw.epilog, !dbg !4539

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %if.end, %sw.bb
  %13 = load i32, i32* %ret, align 4, !dbg !4540
  %cmp6 = icmp slt i32 %13, 0, !dbg !4541
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !4540

cond.true:                                        ; preds = %sw.epilog
  %14 = load i32, i32* %ret, align 4, !dbg !4542
  br label %cond.end, !dbg !4540

cond.false:                                       ; preds = %sw.epilog
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4543
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1, !dbg !4544
  %16 = load i32, i32* %n, align 4, !dbg !4544
  br label %cond.end, !dbg !4540

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %16, %cond.false ], !dbg !4540
  ret i32 %cond, !dbg !4545
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #0 !dbg !4546 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4557, metadata !DIExpression()), !dbg !4558
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4559, metadata !DIExpression()), !dbg !4560
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4561, metadata !DIExpression()), !dbg !4562
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4563, metadata !DIExpression()), !dbg !4564
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4565
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4566
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4567
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4568
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4569
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #8, !dbg !4570
  ret i32 %call, !dbg !4571
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_interrupt(i32 %irq, i8* %d) #0 !dbg !4572 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %handled = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4573, metadata !DIExpression()), !dbg !4574
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !4575, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !4577, metadata !DIExpression()), !dbg !4578
  %0 = load i8*, i8** %d.addr, align 8, !dbg !4579
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !4579
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !4578
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4580, metadata !DIExpression()), !dbg !4581
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4582
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 21, !dbg !4583
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4583
  store %struct.comedi_subdevice* %3, %struct.comedi_subdevice** %s, align 8, !dbg !4581
  call void @llvm.dbg.declare(metadata i32* %handled, metadata !4584, metadata !DIExpression()), !dbg !4585
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4586
  %attached = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 10, !dbg !4588
  %bf.load = load i8, i8* %attached, align 8, !dbg !4588
  %bf.clear = and i8 %bf.load, 1, !dbg !4588
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4588
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4586
  br i1 %tobool, label %if.end, label %if.then, !dbg !4589

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4590
  br label %return, !dbg !4590

if.end:                                           ; preds = %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4591
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4592
  %call = call i32 @dio200_handle_read_intr(%struct.comedi_device* %5, %struct.comedi_subdevice* %6) #8, !dbg !4593
  store i32 %call, i32* %handled, align 4, !dbg !4594
  %7 = load i32, i32* %handled, align 4, !dbg !4595
  %tobool1 = icmp ne i32 %7, 0, !dbg !4595
  %8 = zext i1 %tobool1 to i64, !dbg !4595
  %cond = select i1 %tobool1, i32 1, i32 0, !dbg !4595
  store i32 %cond, i32* %retval, align 4, !dbg !4596
  br label %return, !dbg !4596

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4597
  ret i32 %9, !dbg !4597
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @amplc_dio200_common_init() #4 section ".init.text" !dbg !4598 {
entry:
  ret i32 0, !dbg !4601
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @amplc_dio200_common_exit() #4 section ".exit.text" !dbg !4602 {
entry:
  ret void, !dbg !4603
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #0 !dbg !4604 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !4610, metadata !DIExpression()), !dbg !4611
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4612, metadata !DIExpression()), !dbg !4611
  %0 = load i8, i8* %val.addr, align 1, !dbg !4611
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4611
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #7, !dbg !4611, !srcloc !4613
  ret void, !dbg !4611
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #0 !dbg !4614 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4619, metadata !DIExpression()), !dbg !4618
  %0 = load i8, i8* %value.addr, align 1, !dbg !4618
  %1 = load i32, i32* %port.addr, align 4, !dbg !4618
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #7, !dbg !4618, !srcloc !4620
  ret void, !dbg !4618
}

; Function Attrs: noredzone
declare dso_local %struct.comedi_8254* @comedi_8254_mm_init(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.comedi_8254* @comedi_8254_init(i64, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @comedi_8254_subdevice_init(%struct.comedi_subdevice*, %struct.comedi_8254*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_8254_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #0 !dbg !4621 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %board = alloca %struct.dio200_board*, align 8
  %i8254 = alloca %struct.comedi_8254*, align 8
  %chan = alloca i32, align 4
  %max_src = alloca i32, align 4
  %src = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4626, metadata !DIExpression()), !dbg !4627
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4628, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.declare(metadata %struct.dio200_board** %board, metadata !4630, metadata !DIExpression()), !dbg !4631
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4632
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !4633
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !4633
  %2 = bitcast i8* %1 to %struct.dio200_board*, !dbg !4632
  store %struct.dio200_board* %2, %struct.dio200_board** %board, align 8, !dbg !4631
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254, metadata !4634, metadata !DIExpression()), !dbg !4635
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4636
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 6, !dbg !4637
  %4 = load i8*, i8** %private, align 8, !dbg !4637
  %5 = bitcast i8* %4 to %struct.comedi_8254*, !dbg !4636
  store %struct.comedi_8254* %5, %struct.comedi_8254** %i8254, align 8, !dbg !4635
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4638, metadata !DIExpression()), !dbg !4639
  %6 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4640
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %6, i32 0, i32 4, !dbg !4640
  %7 = load i32, i32* %chanspec, align 4, !dbg !4640
  %and = and i32 %7, 65535, !dbg !4640
  store i32 %and, i32* %chan, align 4, !dbg !4639
  call void @llvm.dbg.declare(metadata i32* %max_src, metadata !4641, metadata !DIExpression()), !dbg !4642
  %8 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !4643
  %is_pcie = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %8, i32 0, i32 5, !dbg !4644
  %bf.load = load i8, i8* %is_pcie, align 4, !dbg !4644
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !4644
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4644
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4644
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4643
  %9 = zext i1 %tobool to i64, !dbg !4643
  %cond = select i1 %tobool, i32 31, i32 7, !dbg !4643
  store i32 %cond, i32* %max_src, align 4, !dbg !4642
  call void @llvm.dbg.declare(metadata i32* %src, metadata !4645, metadata !DIExpression()), !dbg !4646
  %10 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !4647
  %has_clk_gat_sce = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %10, i32 0, i32 5, !dbg !4649
  %bf.load1 = load i8, i8* %has_clk_gat_sce, align 4, !dbg !4649
  %bf.lshr2 = lshr i8 %bf.load1, 1, !dbg !4649
  %bf.clear3 = and i8 %bf.lshr2, 1, !dbg !4649
  %bf.cast4 = zext i8 %bf.clear3 to i32, !dbg !4649
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !4647
  br i1 %tobool5, label %if.end, label %if.then, !dbg !4650

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4651
  br label %return, !dbg !4651

if.end:                                           ; preds = %entry
  %11 = load i32*, i32** %data.addr, align 8, !dbg !4652
  %arrayidx = getelementptr i32, i32* %11, i64 0, !dbg !4652
  %12 = load i32, i32* %arrayidx, align 4, !dbg !4652
  switch i32 %12, label %sw.default [
    i32 2001, label %sw.bb
    i32 2002, label %sw.bb10
    i32 2003, label %sw.bb15
    i32 2004, label %sw.bb22
  ], !dbg !4653

sw.bb:                                            ; preds = %if.end
  %13 = load i32*, i32** %data.addr, align 8, !dbg !4654
  %arrayidx6 = getelementptr i32, i32* %13, i64 2, !dbg !4654
  %14 = load i32, i32* %arrayidx6, align 4, !dbg !4654
  store i32 %14, i32* %src, align 4, !dbg !4656
  %15 = load i32, i32* %src, align 4, !dbg !4657
  %16 = load i32, i32* %max_src, align 4, !dbg !4659
  %cmp = icmp ugt i32 %15, %16, !dbg !4660
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !4661

if.then7:                                         ; preds = %sw.bb
  store i32 -22, i32* %retval, align 4, !dbg !4662
  br label %return, !dbg !4662

if.end8:                                          ; preds = %sw.bb
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4663
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4664
  %19 = load i32, i32* %chan, align 4, !dbg !4665
  %20 = load i32, i32* %src, align 4, !dbg !4666
  call void @dio200_subdev_8254_set_gate_src(%struct.comedi_device* %17, %struct.comedi_subdevice* %18, i32 %19, i32 %20) #8, !dbg !4667
  %21 = load i32, i32* %src, align 4, !dbg !4668
  %22 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4669
  %gate_src = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %22, i32 0, i32 12, !dbg !4670
  %23 = load i32, i32* %chan, align 4, !dbg !4671
  %idxprom = zext i32 %23 to i64, !dbg !4669
  %arrayidx9 = getelementptr [3 x i32], [3 x i32]* %gate_src, i64 0, i64 %idxprom, !dbg !4669
  store i32 %21, i32* %arrayidx9, align 4, !dbg !4672
  br label %sw.epilog, !dbg !4673

sw.bb10:                                          ; preds = %if.end
  %24 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4674
  %gate_src11 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %24, i32 0, i32 12, !dbg !4675
  %25 = load i32, i32* %chan, align 4, !dbg !4676
  %idxprom12 = zext i32 %25 to i64, !dbg !4674
  %arrayidx13 = getelementptr [3 x i32], [3 x i32]* %gate_src11, i64 0, i64 %idxprom12, !dbg !4674
  %26 = load i32, i32* %arrayidx13, align 4, !dbg !4674
  %27 = load i32*, i32** %data.addr, align 8, !dbg !4677
  %arrayidx14 = getelementptr i32, i32* %27, i64 2, !dbg !4677
  store i32 %26, i32* %arrayidx14, align 4, !dbg !4678
  br label %sw.epilog, !dbg !4679

sw.bb15:                                          ; preds = %if.end
  %28 = load i32*, i32** %data.addr, align 8, !dbg !4680
  %arrayidx16 = getelementptr i32, i32* %28, i64 1, !dbg !4680
  %29 = load i32, i32* %arrayidx16, align 4, !dbg !4680
  store i32 %29, i32* %src, align 4, !dbg !4681
  %30 = load i32, i32* %src, align 4, !dbg !4682
  %31 = load i32, i32* %max_src, align 4, !dbg !4684
  %cmp17 = icmp ugt i32 %30, %31, !dbg !4685
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !4686

if.then18:                                        ; preds = %sw.bb15
  store i32 -22, i32* %retval, align 4, !dbg !4687
  br label %return, !dbg !4687

if.end19:                                         ; preds = %sw.bb15
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4688
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4689
  %34 = load i32, i32* %chan, align 4, !dbg !4690
  %35 = load i32, i32* %src, align 4, !dbg !4691
  call void @dio200_subdev_8254_set_clock_src(%struct.comedi_device* %32, %struct.comedi_subdevice* %33, i32 %34, i32 %35) #8, !dbg !4692
  %36 = load i32, i32* %src, align 4, !dbg !4693
  %37 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4694
  %clock_src = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %37, i32 0, i32 11, !dbg !4695
  %38 = load i32, i32* %chan, align 4, !dbg !4696
  %idxprom20 = zext i32 %38 to i64, !dbg !4694
  %arrayidx21 = getelementptr [3 x i32], [3 x i32]* %clock_src, i64 0, i64 %idxprom20, !dbg !4694
  store i32 %36, i32* %arrayidx21, align 4, !dbg !4697
  br label %sw.epilog, !dbg !4698

sw.bb22:                                          ; preds = %if.end
  %39 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4699
  %clock_src23 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %39, i32 0, i32 11, !dbg !4700
  %40 = load i32, i32* %chan, align 4, !dbg !4701
  %idxprom24 = zext i32 %40 to i64, !dbg !4699
  %arrayidx25 = getelementptr [3 x i32], [3 x i32]* %clock_src23, i64 0, i64 %idxprom24, !dbg !4699
  %41 = load i32, i32* %arrayidx25, align 4, !dbg !4699
  %42 = load i32*, i32** %data.addr, align 8, !dbg !4702
  %arrayidx26 = getelementptr i32, i32* %42, i64 1, !dbg !4702
  store i32 %41, i32* %arrayidx26, align 4, !dbg !4703
  %43 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4704
  %clock_src27 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %43, i32 0, i32 11, !dbg !4705
  %44 = load i32, i32* %chan, align 4, !dbg !4706
  %idxprom28 = zext i32 %44 to i64, !dbg !4704
  %arrayidx29 = getelementptr [3 x i32], [3 x i32]* %clock_src27, i64 0, i64 %idxprom28, !dbg !4704
  %45 = load i32, i32* %arrayidx29, align 4, !dbg !4704
  %idxprom30 = zext i32 %45 to i64, !dbg !4707
  %arrayidx31 = getelementptr [32 x i32], [32 x i32]* bitcast (<{ [12 x i32], [20 x i32] }>* @clock_period to [32 x i32]*), i64 0, i64 %idxprom30, !dbg !4707
  %46 = load i32, i32* %arrayidx31, align 4, !dbg !4707
  %47 = load i32*, i32** %data.addr, align 8, !dbg !4708
  %arrayidx32 = getelementptr i32, i32* %47, i64 2, !dbg !4708
  store i32 %46, i32* %arrayidx32, align 4, !dbg !4709
  br label %sw.epilog, !dbg !4710

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4711
  br label %return, !dbg !4711

sw.epilog:                                        ; preds = %sw.bb22, %if.end19, %sw.bb10, %if.end8
  %48 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4712
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %48, i32 0, i32 1, !dbg !4713
  %49 = load i32, i32* %n, align 4, !dbg !4713
  store i32 %49, i32* %retval, align 4, !dbg !4714
  br label %return, !dbg !4714

return:                                           ; preds = %sw.epilog, %sw.default, %if.then18, %if.then7, %if.then
  %50 = load i32, i32* %retval, align 4, !dbg !4715
  ret i32 %50, !dbg !4715
}

; Function Attrs: noredzone
declare dso_local void @comedi_set_spriv_auto_free(%struct.comedi_subdevice*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dio200_subdev_8254_set_gate_src(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %chan, i32 %src) #0 !dbg !4716 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %chan.addr = alloca i32, align 4
  %src.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4719, metadata !DIExpression()), !dbg !4720
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4721, metadata !DIExpression()), !dbg !4722
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !4723, metadata !DIExpression()), !dbg !4724
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !4725, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !4727, metadata !DIExpression()), !dbg !4728
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4729
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4730
  %call = call i32 @dio200_subdev_8254_offset(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #8, !dbg !4731
  store i32 %call, i32* %offset, align 4, !dbg !4728
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4732
  %3 = load i32, i32* %offset, align 4, !dbg !4733
  %shr = lshr i32 %3, 3, !dbg !4733
  %add = add i32 27, %shr, !dbg !4733
  %4 = load i32, i32* %offset, align 4, !dbg !4734
  %shr1 = lshr i32 %4, 2, !dbg !4735
  %and = and i32 %shr1, 1, !dbg !4736
  %5 = load i32, i32* %chan.addr, align 4, !dbg !4737
  %6 = load i32, i32* %src.addr, align 4, !dbg !4738
  %call2 = call zeroext i8 @clk_gat_sce(i32 %and, i32 %5, i32 %6) #8, !dbg !4739
  call void @dio200_write8(%struct.comedi_device* %2, i32 %add, i8 zeroext %call2) #8, !dbg !4740
  ret void, !dbg !4741
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dio200_subdev_8254_set_clock_src(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %chan, i32 %src) #0 !dbg !4742 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %chan.addr = alloca i32, align 4
  %src.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4743, metadata !DIExpression()), !dbg !4744
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4745, metadata !DIExpression()), !dbg !4746
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !4747, metadata !DIExpression()), !dbg !4748
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !4749, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !4751, metadata !DIExpression()), !dbg !4752
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4753
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4754
  %call = call i32 @dio200_subdev_8254_offset(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #8, !dbg !4755
  store i32 %call, i32* %offset, align 4, !dbg !4752
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4756
  %3 = load i32, i32* %offset, align 4, !dbg !4757
  %shr = lshr i32 %3, 3, !dbg !4757
  %add = add i32 24, %shr, !dbg !4757
  %4 = load i32, i32* %offset, align 4, !dbg !4758
  %shr1 = lshr i32 %4, 2, !dbg !4759
  %and = and i32 %shr1, 1, !dbg !4760
  %5 = load i32, i32* %chan.addr, align 4, !dbg !4761
  %6 = load i32, i32* %src.addr, align 4, !dbg !4762
  %call2 = call zeroext i8 @clk_gat_sce(i32 %and, i32 %5, i32 %6) #8, !dbg !4763
  call void @dio200_write8(%struct.comedi_device* %2, i32 %add, i8 zeroext %call2) #8, !dbg !4764
  ret void, !dbg !4765
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_8254_offset(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #0 !dbg !4766 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %board = alloca %struct.dio200_board*, align 8
  %i8254 = alloca %struct.comedi_8254*, align 8
  %offset = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4769, metadata !DIExpression()), !dbg !4770
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4771, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.declare(metadata %struct.dio200_board** %board, metadata !4773, metadata !DIExpression()), !dbg !4774
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4775
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !4776
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !4776
  %2 = bitcast i8* %1 to %struct.dio200_board*, !dbg !4775
  store %struct.dio200_board* %2, %struct.dio200_board** %board, align 8, !dbg !4774
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254, metadata !4777, metadata !DIExpression()), !dbg !4778
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4779
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 6, !dbg !4780
  %4 = load i8*, i8** %private, align 8, !dbg !4780
  %5 = bitcast i8* %4 to %struct.comedi_8254*, !dbg !4779
  store %struct.comedi_8254* %5, %struct.comedi_8254** %i8254, align 8, !dbg !4778
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !4781, metadata !DIExpression()), !dbg !4782
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4783
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 17, !dbg !4785
  %7 = load i8*, i8** %mmio, align 8, !dbg !4785
  %tobool = icmp ne i8* %7, null, !dbg !4783
  br i1 %tobool, label %if.then, label %if.else, !dbg !4786

if.then:                                          ; preds = %entry
  %8 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4787
  %mmio1 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %8, i32 0, i32 1, !dbg !4788
  %9 = load i8*, i8** %mmio1, align 8, !dbg !4788
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4789
  %mmio2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 17, !dbg !4790
  %11 = load i8*, i8** %mmio2, align 8, !dbg !4790
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64, !dbg !4791
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64, !dbg !4791
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4791
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !4787
  store i32 %conv, i32* %offset, align 4, !dbg !4792
  br label %if.end, !dbg !4793

if.else:                                          ; preds = %entry
  %12 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4794
  %iobase = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %12, i32 0, i32 0, !dbg !4795
  %13 = load i64, i64* %iobase, align 8, !dbg !4795
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4796
  %iobase3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 18, !dbg !4797
  %15 = load i64, i64* %iobase3, align 8, !dbg !4797
  %sub = sub i64 %13, %15, !dbg !4798
  %conv4 = trunc i64 %sub to i32, !dbg !4794
  store i32 %conv4, i32* %offset, align 4, !dbg !4799
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !4800
  %is_pcie = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %16, i32 0, i32 5, !dbg !4802
  %bf.load = load i8, i8* %is_pcie, align 4, !dbg !4802
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !4802
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4802
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4802
  %tobool5 = icmp ne i32 %bf.cast, 0, !dbg !4800
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4803

if.then6:                                         ; preds = %if.end
  %17 = load i32, i32* %offset, align 4, !dbg !4804
  %shr = lshr i32 %17, 3, !dbg !4804
  store i32 %shr, i32* %offset, align 4, !dbg !4804
  br label %if.end7, !dbg !4805

if.end7:                                          ; preds = %if.then6, %if.end
  %18 = load i32, i32* %offset, align 4, !dbg !4806
  ret i32 %18, !dbg !4807
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @clk_gat_sce(i32 %which, i32 %chan, i32 %source) #0 !dbg !4808 {
entry:
  %which.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  %source.addr = alloca i32, align 4
  store i32 %which, i32* %which.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %which.addr, metadata !4811, metadata !DIExpression()), !dbg !4812
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !4813, metadata !DIExpression()), !dbg !4814
  store i32 %source, i32* %source.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %source.addr, metadata !4815, metadata !DIExpression()), !dbg !4816
  %0 = load i32, i32* %which.addr, align 4, !dbg !4817
  %shl = shl i32 %0, 5, !dbg !4818
  %1 = load i32, i32* %chan.addr, align 4, !dbg !4819
  %shl1 = shl i32 %1, 3, !dbg !4820
  %or = or i32 %shl, %shl1, !dbg !4821
  %2 = load i32, i32* %source.addr, align 4, !dbg !4822
  %and = and i32 %2, 24, !dbg !4823
  %shl2 = shl i32 %and, 3, !dbg !4824
  %or3 = or i32 %or, %shl2, !dbg !4825
  %3 = load i32, i32* %source.addr, align 4, !dbg !4826
  %and4 = and i32 %3, 7, !dbg !4827
  %or5 = or i32 %or3, %and4, !dbg !4828
  %conv = trunc i32 %or5 to i8, !dbg !4829
  ret i8 %conv, !dbg !4830
}

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_spriv(%struct.comedi_subdevice*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_8255_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #0 !dbg !4831 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %subpriv = alloca %struct.dio200_subdev_8255*, align 8
  %mask = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4832, metadata !DIExpression()), !dbg !4833
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4838, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.declare(metadata %struct.dio200_subdev_8255** %subpriv, metadata !4840, metadata !DIExpression()), !dbg !4841
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4842
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !4843
  %1 = load i8*, i8** %private, align 8, !dbg !4843
  %2 = bitcast i8* %1 to %struct.dio200_subdev_8255*, !dbg !4842
  store %struct.dio200_subdev_8255* %2, %struct.dio200_subdev_8255** %subpriv, align 8, !dbg !4841
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !4844, metadata !DIExpression()), !dbg !4845
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4846, metadata !DIExpression()), !dbg !4847
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4848
  %4 = load i32*, i32** %data.addr, align 8, !dbg !4849
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %3, i32* %4) #8, !dbg !4850
  store i32 %call, i32* %mask, align 4, !dbg !4851
  %5 = load i32, i32* %mask, align 4, !dbg !4852
  %tobool = icmp ne i32 %5, 0, !dbg !4852
  br i1 %tobool, label %if.then, label %if.end23, !dbg !4854

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %mask, align 4, !dbg !4855
  %and = and i32 %6, 255, !dbg !4858
  %tobool1 = icmp ne i32 %and, 0, !dbg !4858
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !4859

if.then2:                                         ; preds = %if.then
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4860
  %8 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %subpriv, align 8, !dbg !4862
  %ofs = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %8, i32 0, i32 0, !dbg !4863
  %9 = load i32, i32* %ofs, align 4, !dbg !4863
  %add = add i32 %9, 0, !dbg !4864
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4865
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 29, !dbg !4866
  %11 = load i32, i32* %state, align 4, !dbg !4866
  %and3 = and i32 %11, 255, !dbg !4867
  %conv = trunc i32 %and3 to i8, !dbg !4865
  call void @dio200_write8(%struct.comedi_device* %7, i32 %add, i8 zeroext %conv) #8, !dbg !4868
  br label %if.end, !dbg !4869

if.end:                                           ; preds = %if.then2, %if.then
  %12 = load i32, i32* %mask, align 4, !dbg !4870
  %and4 = and i32 %12, 65280, !dbg !4872
  %tobool5 = icmp ne i32 %and4, 0, !dbg !4872
  br i1 %tobool5, label %if.then6, label %if.end12, !dbg !4873

if.then6:                                         ; preds = %if.end
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4874
  %14 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %subpriv, align 8, !dbg !4876
  %ofs7 = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %14, i32 0, i32 0, !dbg !4877
  %15 = load i32, i32* %ofs7, align 4, !dbg !4877
  %add8 = add i32 %15, 1, !dbg !4878
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4879
  %state9 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 29, !dbg !4880
  %17 = load i32, i32* %state9, align 4, !dbg !4880
  %shr = lshr i32 %17, 8, !dbg !4881
  %and10 = and i32 %shr, 255, !dbg !4882
  %conv11 = trunc i32 %and10 to i8, !dbg !4883
  call void @dio200_write8(%struct.comedi_device* %13, i32 %add8, i8 zeroext %conv11) #8, !dbg !4884
  br label %if.end12, !dbg !4885

if.end12:                                         ; preds = %if.then6, %if.end
  %18 = load i32, i32* %mask, align 4, !dbg !4886
  %and13 = and i32 %18, 16711680, !dbg !4888
  %tobool14 = icmp ne i32 %and13, 0, !dbg !4888
  br i1 %tobool14, label %if.then15, label %if.end22, !dbg !4889

if.then15:                                        ; preds = %if.end12
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4890
  %20 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %subpriv, align 8, !dbg !4892
  %ofs16 = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %20, i32 0, i32 0, !dbg !4893
  %21 = load i32, i32* %ofs16, align 4, !dbg !4893
  %add17 = add i32 %21, 2, !dbg !4894
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4895
  %state18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 29, !dbg !4896
  %23 = load i32, i32* %state18, align 4, !dbg !4896
  %shr19 = lshr i32 %23, 16, !dbg !4897
  %and20 = and i32 %shr19, 255, !dbg !4898
  %conv21 = trunc i32 %and20 to i8, !dbg !4899
  call void @dio200_write8(%struct.comedi_device* %19, i32 %add17, i8 zeroext %conv21) #8, !dbg !4900
  br label %if.end22, !dbg !4901

if.end22:                                         ; preds = %if.then15, %if.end12
  br label %if.end23, !dbg !4902

if.end23:                                         ; preds = %if.end22, %entry
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4903
  %25 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %subpriv, align 8, !dbg !4904
  %ofs24 = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %25, i32 0, i32 0, !dbg !4905
  %26 = load i32, i32* %ofs24, align 4, !dbg !4905
  %add25 = add i32 %26, 0, !dbg !4906
  %call26 = call zeroext i8 @dio200_read8(%struct.comedi_device* %24, i32 %add25) #8, !dbg !4907
  %conv27 = zext i8 %call26 to i32, !dbg !4907
  store i32 %conv27, i32* %val, align 4, !dbg !4908
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4909
  %28 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %subpriv, align 8, !dbg !4910
  %ofs28 = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %28, i32 0, i32 0, !dbg !4911
  %29 = load i32, i32* %ofs28, align 4, !dbg !4911
  %add29 = add i32 %29, 1, !dbg !4912
  %call30 = call zeroext i8 @dio200_read8(%struct.comedi_device* %27, i32 %add29) #8, !dbg !4913
  %conv31 = zext i8 %call30 to i32, !dbg !4913
  %shl = shl i32 %conv31, 8, !dbg !4914
  %30 = load i32, i32* %val, align 4, !dbg !4915
  %or = or i32 %30, %shl, !dbg !4915
  store i32 %or, i32* %val, align 4, !dbg !4915
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4916
  %32 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %subpriv, align 8, !dbg !4917
  %ofs32 = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %32, i32 0, i32 0, !dbg !4918
  %33 = load i32, i32* %ofs32, align 4, !dbg !4918
  %add33 = add i32 %33, 2, !dbg !4919
  %call34 = call zeroext i8 @dio200_read8(%struct.comedi_device* %31, i32 %add33) #8, !dbg !4920
  %conv35 = zext i8 %call34 to i32, !dbg !4920
  %shl36 = shl i32 %conv35, 16, !dbg !4921
  %34 = load i32, i32* %val, align 4, !dbg !4922
  %or37 = or i32 %34, %shl36, !dbg !4922
  store i32 %or37, i32* %val, align 4, !dbg !4922
  %35 = load i32, i32* %val, align 4, !dbg !4923
  %36 = load i32*, i32** %data.addr, align 8, !dbg !4924
  %arrayidx = getelementptr i32, i32* %36, i64 1, !dbg !4924
  store i32 %35, i32* %arrayidx, align 4, !dbg !4925
  %37 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4926
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %37, i32 0, i32 1, !dbg !4927
  %38 = load i32, i32* %n, align 4, !dbg !4927
  ret i32 %38, !dbg !4928
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_8255_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #0 !dbg !4929 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %mask = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4930, metadata !DIExpression()), !dbg !4931
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4932, metadata !DIExpression()), !dbg !4933
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4934, metadata !DIExpression()), !dbg !4935
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4938, metadata !DIExpression()), !dbg !4939
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4940
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !4940
  %1 = load i32, i32* %chanspec, align 4, !dbg !4940
  %and = and i32 %1, 65535, !dbg !4940
  store i32 %and, i32* %chan, align 4, !dbg !4939
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !4941, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4943, metadata !DIExpression()), !dbg !4944
  %2 = load i32, i32* %chan, align 4, !dbg !4945
  %cmp = icmp ult i32 %2, 8, !dbg !4947
  br i1 %cmp, label %if.then, label %if.else, !dbg !4948

if.then:                                          ; preds = %entry
  store i32 255, i32* %mask, align 4, !dbg !4949
  br label %if.end8, !dbg !4950

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %chan, align 4, !dbg !4951
  %cmp1 = icmp ult i32 %3, 16, !dbg !4953
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !4954

if.then2:                                         ; preds = %if.else
  store i32 65280, i32* %mask, align 4, !dbg !4955
  br label %if.end7, !dbg !4956

if.else3:                                         ; preds = %if.else
  %4 = load i32, i32* %chan, align 4, !dbg !4957
  %cmp4 = icmp ult i32 %4, 20, !dbg !4959
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !4960

if.then5:                                         ; preds = %if.else3
  store i32 983040, i32* %mask, align 4, !dbg !4961
  br label %if.end, !dbg !4962

if.else6:                                         ; preds = %if.else3
  store i32 15728640, i32* %mask, align 4, !dbg !4963
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4964
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4965
  %7 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4966
  %8 = load i32*, i32** %data.addr, align 8, !dbg !4967
  %9 = load i32, i32* %mask, align 4, !dbg !4968
  %call = call i32 @comedi_dio_insn_config(%struct.comedi_device* %5, %struct.comedi_subdevice* %6, %struct.comedi_insn* %7, i32* %8, i32 %9) #8, !dbg !4969
  store i32 %call, i32* %ret, align 4, !dbg !4970
  %10 = load i32, i32* %ret, align 4, !dbg !4971
  %tobool = icmp ne i32 %10, 0, !dbg !4971
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !4973

if.then9:                                         ; preds = %if.end8
  %11 = load i32, i32* %ret, align 4, !dbg !4974
  store i32 %11, i32* %retval, align 4, !dbg !4975
  br label %return, !dbg !4975

if.end10:                                         ; preds = %if.end8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4976
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4977
  call void @dio200_subdev_8255_set_dir(%struct.comedi_device* %12, %struct.comedi_subdevice* %13) #8, !dbg !4978
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4979
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1, !dbg !4980
  %15 = load i32, i32* %n, align 4, !dbg !4980
  store i32 %15, i32* %retval, align 4, !dbg !4981
  br label %return, !dbg !4981

return:                                           ; preds = %if.end10, %if.then9
  %16 = load i32, i32* %retval, align 4, !dbg !4982
  ret i32 %16, !dbg !4982
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dio200_subdev_8255_set_dir(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #0 !dbg !4983 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %subpriv = alloca %struct.dio200_subdev_8255*, align 8
  %config = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4986, metadata !DIExpression()), !dbg !4987
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4988, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.declare(metadata %struct.dio200_subdev_8255** %subpriv, metadata !4990, metadata !DIExpression()), !dbg !4991
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4992
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !4993
  %1 = load i8*, i8** %private, align 8, !dbg !4993
  %2 = bitcast i8* %1 to %struct.dio200_subdev_8255*, !dbg !4992
  store %struct.dio200_subdev_8255* %2, %struct.dio200_subdev_8255** %subpriv, align 8, !dbg !4991
  call void @llvm.dbg.declare(metadata i32* %config, metadata !4994, metadata !DIExpression()), !dbg !4995
  store i32 128, i32* %config, align 4, !dbg !4996
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4997
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 12, !dbg !4999
  %4 = load i32, i32* %io_bits, align 4, !dbg !4999
  %and = and i32 %4, 255, !dbg !5000
  %tobool = icmp ne i32 %and, 0, !dbg !5000
  br i1 %tobool, label %if.end, label %if.then, !dbg !5001

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %config, align 4, !dbg !5002
  %conv = sext i32 %5 to i64, !dbg !5002
  %or = or i64 %conv, 16, !dbg !5002
  %conv1 = trunc i64 %or to i32, !dbg !5002
  store i32 %conv1, i32* %config, align 4, !dbg !5002
  br label %if.end, !dbg !5003

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5004
  %io_bits2 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 12, !dbg !5006
  %7 = load i32, i32* %io_bits2, align 4, !dbg !5006
  %and3 = and i32 %7, 65280, !dbg !5007
  %tobool4 = icmp ne i32 %and3, 0, !dbg !5007
  br i1 %tobool4, label %if.end9, label %if.then5, !dbg !5008

if.then5:                                         ; preds = %if.end
  %8 = load i32, i32* %config, align 4, !dbg !5009
  %conv6 = sext i32 %8 to i64, !dbg !5009
  %or7 = or i64 %conv6, 2, !dbg !5009
  %conv8 = trunc i64 %or7 to i32, !dbg !5009
  store i32 %conv8, i32* %config, align 4, !dbg !5009
  br label %if.end9, !dbg !5010

if.end9:                                          ; preds = %if.then5, %if.end
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5011
  %io_bits10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 12, !dbg !5013
  %10 = load i32, i32* %io_bits10, align 4, !dbg !5013
  %and11 = and i32 %10, 983040, !dbg !5014
  %tobool12 = icmp ne i32 %and11, 0, !dbg !5014
  br i1 %tobool12, label %if.end17, label %if.then13, !dbg !5015

if.then13:                                        ; preds = %if.end9
  %11 = load i32, i32* %config, align 4, !dbg !5016
  %conv14 = sext i32 %11 to i64, !dbg !5016
  %or15 = or i64 %conv14, 1, !dbg !5016
  %conv16 = trunc i64 %or15 to i32, !dbg !5016
  store i32 %conv16, i32* %config, align 4, !dbg !5016
  br label %if.end17, !dbg !5017

if.end17:                                         ; preds = %if.then13, %if.end9
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5018
  %io_bits18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 12, !dbg !5020
  %13 = load i32, i32* %io_bits18, align 4, !dbg !5020
  %and19 = and i32 %13, 15728640, !dbg !5021
  %tobool20 = icmp ne i32 %and19, 0, !dbg !5021
  br i1 %tobool20, label %if.end25, label %if.then21, !dbg !5022

if.then21:                                        ; preds = %if.end17
  %14 = load i32, i32* %config, align 4, !dbg !5023
  %conv22 = sext i32 %14 to i64, !dbg !5023
  %or23 = or i64 %conv22, 8, !dbg !5023
  %conv24 = trunc i64 %or23 to i32, !dbg !5023
  store i32 %conv24, i32* %config, align 4, !dbg !5023
  br label %if.end25, !dbg !5024

if.end25:                                         ; preds = %if.then21, %if.end17
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5025
  %16 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %subpriv, align 8, !dbg !5026
  %ofs = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %16, i32 0, i32 0, !dbg !5027
  %17 = load i32, i32* %ofs, align 4, !dbg !5027
  %add = add i32 %17, 3, !dbg !5028
  %18 = load i32, i32* %config, align 4, !dbg !5029
  %conv26 = trunc i32 %18 to i8, !dbg !5029
  call void @dio200_write8(%struct.comedi_device* %15, i32 %add, i8 zeroext %conv26) #8, !dbg !5030
  ret void, !dbg !5031
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @dio200_read8(%struct.comedi_device* %dev, i32 %offset) #0 !dbg !5032 {
entry:
  %retval = alloca i8, align 1
  %dev.addr = alloca %struct.comedi_device*, align 8
  %offset.addr = alloca i32, align 4
  %board = alloca %struct.dio200_board*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5035, metadata !DIExpression()), !dbg !5036
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5037, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.declare(metadata %struct.dio200_board** %board, metadata !5039, metadata !DIExpression()), !dbg !5040
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5041
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !5042
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !5042
  %2 = bitcast i8* %1 to %struct.dio200_board*, !dbg !5041
  store %struct.dio200_board* %2, %struct.dio200_board** %board, align 8, !dbg !5040
  %3 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !5043
  %is_pcie = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %3, i32 0, i32 5, !dbg !5045
  %bf.load = load i8, i8* %is_pcie, align 4, !dbg !5045
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !5045
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5045
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5045
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5043
  br i1 %tobool, label %if.then, label %if.end, !dbg !5046

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %offset.addr, align 4, !dbg !5047
  %shl = shl i32 %4, 3, !dbg !5047
  store i32 %shl, i32* %offset.addr, align 4, !dbg !5047
  br label %if.end, !dbg !5048

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5049
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !5051
  %6 = load i8*, i8** %mmio, align 8, !dbg !5051
  %tobool1 = icmp ne i8* %6, null, !dbg !5049
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5052

if.then2:                                         ; preds = %if.end
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5053
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !5054
  %8 = load i8*, i8** %mmio3, align 8, !dbg !5054
  %9 = load i32, i32* %offset.addr, align 4, !dbg !5055
  %idx.ext = zext i32 %9 to i64, !dbg !5056
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !5056
  %call = call zeroext i8 @readb(i8* %add.ptr) #8, !dbg !5057
  store i8 %call, i8* %retval, align 1, !dbg !5058
  br label %return, !dbg !5058

if.end4:                                          ; preds = %if.end
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5059
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 18, !dbg !5060
  %11 = load i64, i64* %iobase, align 8, !dbg !5060
  %12 = load i32, i32* %offset.addr, align 4, !dbg !5061
  %conv = zext i32 %12 to i64, !dbg !5061
  %add = add i64 %11, %conv, !dbg !5062
  %conv5 = trunc i64 %add to i32, !dbg !5059
  %call6 = call zeroext i8 @inb(i32 %conv5) #8, !dbg !5063
  store i8 %call6, i8* %retval, align 1, !dbg !5064
  br label %return, !dbg !5064

return:                                           ; preds = %if.end4, %if.then2
  %13 = load i8, i8* %retval, align 1, !dbg !5065
  ret i8 %13, !dbg !5065
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #0 !dbg !5066 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5071, metadata !DIExpression()), !dbg !5072
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !5073, metadata !DIExpression()), !dbg !5072
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5072
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #7, !dbg !5072, !srcloc !5074
  store i8 %1, i8* %ret, align 1, !dbg !5072
  %2 = load i8, i8* %ret, align 1, !dbg !5072
  ret i8 %2, !dbg !5072
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #0 !dbg !5075 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5078, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5080, metadata !DIExpression()), !dbg !5079
  %0 = load i32, i32* %port.addr, align 4, !dbg !5079
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #7, !dbg !5079, !srcloc !5081
  store i8 %1, i8* %value, align 1, !dbg !5079
  %2 = load i8, i8* %value, align 1, !dbg !5079
  ret i8 %2, !dbg !5079
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_intr_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #0 !dbg !5082 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %board = alloca %struct.dio200_board*, align 8
  %subpriv = alloca %struct.dio200_subdev_intr*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.declare(metadata %struct.dio200_board** %board, metadata !5091, metadata !DIExpression()), !dbg !5092
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5093
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !5094
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !5094
  %2 = bitcast i8* %1 to %struct.dio200_board*, !dbg !5093
  store %struct.dio200_board* %2, %struct.dio200_board** %board, align 8, !dbg !5092
  call void @llvm.dbg.declare(metadata %struct.dio200_subdev_intr** %subpriv, metadata !5095, metadata !DIExpression()), !dbg !5096
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5097
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 6, !dbg !5098
  %4 = load i8*, i8** %private, align 8, !dbg !5098
  %5 = bitcast i8* %4 to %struct.dio200_subdev_intr*, !dbg !5097
  store %struct.dio200_subdev_intr* %5, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5096
  %6 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !5099
  %has_int_sce = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %6, i32 0, i32 5, !dbg !5101
  %bf.load = load i8, i8* %has_int_sce, align 4, !dbg !5101
  %bf.clear = and i8 %bf.load, 1, !dbg !5101
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5101
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5099
  br i1 %tobool, label %if.then, label %if.else, !dbg !5102

if.then:                                          ; preds = %entry
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5103
  %8 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5105
  %ofs = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %8, i32 0, i32 1, !dbg !5106
  %9 = load i32, i32* %ofs, align 4, !dbg !5106
  %call = call zeroext i8 @dio200_read8(%struct.comedi_device* %7, i32 %9) #8, !dbg !5107
  %conv = zext i8 %call to i32, !dbg !5107
  %10 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5108
  %valid_isns = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %10, i32 0, i32 2, !dbg !5109
  %11 = load i32, i32* %valid_isns, align 4, !dbg !5109
  %and = and i32 %conv, %11, !dbg !5110
  %12 = load i32*, i32** %data.addr, align 8, !dbg !5111
  %arrayidx = getelementptr i32, i32* %12, i64 1, !dbg !5111
  store i32 %and, i32* %arrayidx, align 4, !dbg !5112
  br label %if.end, !dbg !5113

if.else:                                          ; preds = %entry
  %13 = load i32*, i32** %data.addr, align 8, !dbg !5114
  %arrayidx1 = getelementptr i32, i32* %13, i64 0, !dbg !5114
  store i32 0, i32* %arrayidx1, align 4, !dbg !5116
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5117
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1, !dbg !5118
  %15 = load i32, i32* %n, align 4, !dbg !5118
  ret i32 %15, !dbg !5119
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_intr_cmdtest(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #0 !dbg !5120 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %err = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5121, metadata !DIExpression()), !dbg !5122
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5123, metadata !DIExpression()), !dbg !5124
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5125, metadata !DIExpression()), !dbg !5126
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5127, metadata !DIExpression()), !dbg !5128
  store i32 0, i32* %err, align 4, !dbg !5128
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5129
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 2, !dbg !5130
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 130) #8, !dbg !5131
  %1 = load i32, i32* %err, align 4, !dbg !5132
  %or = or i32 %1, %call, !dbg !5132
  store i32 %or, i32* %err, align 4, !dbg !5132
  %2 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5133
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %2, i32 0, i32 4, !dbg !5134
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 64) #8, !dbg !5135
  %3 = load i32, i32* %err, align 4, !dbg !5136
  %or2 = or i32 %3, %call1, !dbg !5136
  store i32 %or2, i32* %err, align 4, !dbg !5136
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5137
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 6, !dbg !5138
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 2) #8, !dbg !5139
  %5 = load i32, i32* %err, align 4, !dbg !5140
  %or4 = or i32 %5, %call3, !dbg !5140
  store i32 %or4, i32* %err, align 4, !dbg !5140
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5141
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 8, !dbg !5142
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #8, !dbg !5143
  %7 = load i32, i32* %err, align 4, !dbg !5144
  %or6 = or i32 %7, %call5, !dbg !5144
  store i32 %or6, i32* %err, align 4, !dbg !5144
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5145
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 10, !dbg !5146
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 33) #8, !dbg !5147
  %9 = load i32, i32* %err, align 4, !dbg !5148
  %or8 = or i32 %9, %call7, !dbg !5148
  store i32 %or8, i32* %err, align 4, !dbg !5148
  %10 = load i32, i32* %err, align 4, !dbg !5149
  %tobool = icmp ne i32 %10, 0, !dbg !5149
  br i1 %tobool, label %if.then, label %if.end, !dbg !5151

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5152
  br label %return, !dbg !5152

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5153
  %start_src9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 2, !dbg !5154
  %12 = load i32, i32* %start_src9, align 8, !dbg !5154
  %call10 = call i32 @comedi_check_trigger_is_unique(i32 %12) #8, !dbg !5155
  %13 = load i32, i32* %err, align 4, !dbg !5156
  %or11 = or i32 %13, %call10, !dbg !5156
  store i32 %or11, i32* %err, align 4, !dbg !5156
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5157
  %stop_src12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 10, !dbg !5158
  %15 = load i32, i32* %stop_src12, align 8, !dbg !5158
  %call13 = call i32 @comedi_check_trigger_is_unique(i32 %15) #8, !dbg !5159
  %16 = load i32, i32* %err, align 4, !dbg !5160
  %or14 = or i32 %16, %call13, !dbg !5160
  store i32 %or14, i32* %err, align 4, !dbg !5160
  %17 = load i32, i32* %err, align 4, !dbg !5161
  %tobool15 = icmp ne i32 %17, 0, !dbg !5161
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5163

if.then16:                                        ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !5164
  br label %return, !dbg !5164

if.end17:                                         ; preds = %if.end
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5165
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 3, !dbg !5166
  %call18 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #8, !dbg !5167
  %19 = load i32, i32* %err, align 4, !dbg !5168
  %or19 = or i32 %19, %call18, !dbg !5168
  store i32 %or19, i32* %err, align 4, !dbg !5168
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5169
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 5, !dbg !5170
  %call20 = call i32 @comedi_check_trigger_arg_is(i32* %scan_begin_arg, i32 0) #8, !dbg !5171
  %21 = load i32, i32* %err, align 4, !dbg !5172
  %or21 = or i32 %21, %call20, !dbg !5172
  store i32 %or21, i32* %err, align 4, !dbg !5172
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5173
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 7, !dbg !5174
  %call22 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg, i32 0) #8, !dbg !5175
  %23 = load i32, i32* %err, align 4, !dbg !5176
  %or23 = or i32 %23, %call22, !dbg !5176
  store i32 %or23, i32* %err, align 4, !dbg !5176
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5177
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 9, !dbg !5178
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5179
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 13, !dbg !5180
  %26 = load i32, i32* %chanlist_len, align 8, !dbg !5180
  %call24 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %26) #8, !dbg !5181
  %27 = load i32, i32* %err, align 4, !dbg !5182
  %or25 = or i32 %27, %call24, !dbg !5182
  store i32 %or25, i32* %err, align 4, !dbg !5182
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5183
  %stop_src26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 10, !dbg !5185
  %29 = load i32, i32* %stop_src26, align 8, !dbg !5185
  %cmp = icmp eq i32 %29, 32, !dbg !5186
  br i1 %cmp, label %if.then27, label %if.else, !dbg !5187

if.then27:                                        ; preds = %if.end17
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5188
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 11, !dbg !5189
  %call28 = call i32 @comedi_check_trigger_arg_min(i32* %stop_arg, i32 1) #8, !dbg !5190
  %31 = load i32, i32* %err, align 4, !dbg !5191
  %or29 = or i32 %31, %call28, !dbg !5191
  store i32 %or29, i32* %err, align 4, !dbg !5191
  br label %if.end33, !dbg !5192

if.else:                                          ; preds = %if.end17
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5193
  %stop_arg30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 11, !dbg !5194
  %call31 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg30, i32 0) #8, !dbg !5195
  %33 = load i32, i32* %err, align 4, !dbg !5196
  %or32 = or i32 %33, %call31, !dbg !5196
  store i32 %or32, i32* %err, align 4, !dbg !5196
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then27
  %34 = load i32, i32* %err, align 4, !dbg !5197
  %tobool34 = icmp ne i32 %34, 0, !dbg !5197
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5199

if.then35:                                        ; preds = %if.end33
  store i32 3, i32* %retval, align 4, !dbg !5200
  br label %return, !dbg !5200

if.end36:                                         ; preds = %if.end33
  store i32 0, i32* %retval, align 4, !dbg !5201
  br label %return, !dbg !5201

return:                                           ; preds = %if.end36, %if.then35, %if.then16, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !5202
  ret i32 %35, !dbg !5202
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_intr_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #0 !dbg !5203 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !5204, metadata !DIExpression()), !dbg !5208
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5210, metadata !DIExpression()), !dbg !5211
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4368, metadata !DIExpression()), !dbg !5212
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %subpriv = alloca %struct.dio200_subdev_intr*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5219, metadata !DIExpression()), !dbg !5220
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5223, metadata !DIExpression()), !dbg !5224
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5225
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !5226
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5226
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %1, i32 0, i32 17, !dbg !5227
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5224
  call void @llvm.dbg.declare(metadata %struct.dio200_subdev_intr** %subpriv, metadata !5228, metadata !DIExpression()), !dbg !5229
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5230
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 6, !dbg !5231
  %3 = load i8*, i8** %private, align 8, !dbg !5231
  %4 = bitcast i8* %3 to %struct.dio200_subdev_intr*, !dbg !5230
  store %struct.dio200_subdev_intr* %4, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5229
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5232, metadata !DIExpression()), !dbg !5233
  br label %do.body, !dbg !5234

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5235

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5236, metadata !DIExpression()), !dbg !5238
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5239, metadata !DIExpression()), !dbg !5238
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5238
  %conv = zext i1 %cmp to i32, !dbg !5238
  store i32 1, i32* %tmp, align 4, !dbg !5238
  %5 = load i32, i32* %tmp, align 4, !dbg !5238
  br label %do.body3, !dbg !5240

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5241

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !5242

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !5244, metadata !DIExpression()), !dbg !5247
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !5248, metadata !DIExpression()), !dbg !5247
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !5247
  %conv9 = zext i1 %cmp8 to i32, !dbg !5247
  store i32 1, i32* %tmp10, align 4, !dbg !5247
  %6 = load i32, i32* %tmp10, align 4, !dbg !5247
  %call = call i64 @arch_local_irq_save() #8, !dbg !5249
  store i64 %call, i64* %flags, align 8, !dbg !5249
  br label %do.end, !dbg !5249

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !5242

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !5241

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5250, !srcloc !5251
  br label %do.body13, !dbg !5250

do.body13:                                        ; preds = %do.body12
  %7 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5252
  %spinlock = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %7, i32 0, i32 0, !dbg !5252
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5253
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !5254
  %rlock.i = bitcast %union.anon.3* %9 to %struct.raw_spinlock*, !dbg !5254
  br label %do.end15, !dbg !5252

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !5250

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5241

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5240

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5235

do.end19:                                         ; preds = %do.end18
  %10 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5255
  %active = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %10, i32 0, i32 4, !dbg !5256
  %bf.load = load i8, i8* %active, align 4, !dbg !5257
  %bf.clear = and i8 %bf.load, -2, !dbg !5257
  %bf.set = or i8 %bf.clear, 1, !dbg !5257
  store i8 %bf.set, i8* %active, align 4, !dbg !5257
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5258
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 2, !dbg !5260
  %12 = load i32, i32* %start_src, align 8, !dbg !5260
  %cmp20 = icmp eq i32 %12, 128, !dbg !5261
  br i1 %cmp20, label %if.then, label %if.else, !dbg !5262

if.then:                                          ; preds = %do.end19
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5263
  %async22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 7, !dbg !5264
  %14 = load %struct.comedi_async*, %struct.comedi_async** %async22, align 8, !dbg !5264
  %inttrig = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %14, i32 0, i32 20, !dbg !5265
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @dio200_inttrig_start_intr, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %inttrig, align 8, !dbg !5266
  br label %if.end, !dbg !5263

if.else:                                          ; preds = %do.end19
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5267
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5268
  call void @dio200_start_intr(%struct.comedi_device* %15, %struct.comedi_subdevice* %16) #8, !dbg !5269
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5270
  %spinlock23 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %17, i32 0, i32 0, !dbg !5271
  %18 = load i64, i64* %flags, align 8, !dbg !5272
  store %struct.spinlock* %spinlock23, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %18, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !321, metadata !5273, metadata !DIExpression()) #7, !dbg !5276
  call void @llvm.dbg.declare(metadata !321, metadata !5277, metadata !DIExpression()) #7, !dbg !5276
  store i32 1, i32* %tmp.i, align 4, !dbg !5276
  %19 = load i32, i32* %tmp.i, align 4, !dbg !5276
  call void @llvm.dbg.declare(metadata !321, metadata !5278, metadata !DIExpression()) #7, !dbg !5283
  call void @llvm.dbg.declare(metadata !321, metadata !5284, metadata !DIExpression()) #7, !dbg !5283
  store i32 1, i32* %tmp8.i, align 4, !dbg !5283
  %20 = load i32, i32* %tmp8.i, align 4, !dbg !5283
  %21 = load i64, i64* %flags.addr.i, align 8, !dbg !5285
  call void @arch_local_irq_restore(i64 %21) #10, !dbg !5285
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5286, !srcloc !5288
  %22 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !5289
  %23 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %22, i32 0, i32 0, !dbg !5289
  %rlock.i25 = bitcast %union.anon.3* %23 to %struct.raw_spinlock*, !dbg !5289
  ret i32 0, !dbg !5291
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_intr_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #0 !dbg !5292 {
entry:
  %lock.addr.i20 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i20, metadata !5204, metadata !DIExpression()), !dbg !5293
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5210, metadata !DIExpression()), !dbg !5295
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4368, metadata !DIExpression()), !dbg !5296
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %subpriv = alloca %struct.dio200_subdev_intr*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5303, metadata !DIExpression()), !dbg !5304
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5305, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.declare(metadata %struct.dio200_subdev_intr** %subpriv, metadata !5307, metadata !DIExpression()), !dbg !5308
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5309
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !5310
  %1 = load i8*, i8** %private, align 8, !dbg !5310
  %2 = bitcast i8* %1 to %struct.dio200_subdev_intr*, !dbg !5309
  store %struct.dio200_subdev_intr* %2, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5308
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5311, metadata !DIExpression()), !dbg !5312
  br label %do.body, !dbg !5313

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5314

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5315, metadata !DIExpression()), !dbg !5317
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5318, metadata !DIExpression()), !dbg !5317
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5317
  %conv = zext i1 %cmp to i32, !dbg !5317
  store i32 1, i32* %tmp, align 4, !dbg !5317
  %3 = load i32, i32* %tmp, align 4, !dbg !5317
  br label %do.body2, !dbg !5319

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5320

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5321

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5323, metadata !DIExpression()), !dbg !5326
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5327, metadata !DIExpression()), !dbg !5326
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5326
  %conv8 = zext i1 %cmp7 to i32, !dbg !5326
  store i32 1, i32* %tmp9, align 4, !dbg !5326
  %4 = load i32, i32* %tmp9, align 4, !dbg !5326
  %call = call i64 @arch_local_irq_save() #8, !dbg !5328
  store i64 %call, i64* %flags, align 8, !dbg !5328
  br label %do.end, !dbg !5328

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5321

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5320

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5329, !srcloc !5330
  br label %do.body12, !dbg !5329

do.body12:                                        ; preds = %do.body11
  %5 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5331
  %spinlock = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %5, i32 0, i32 0, !dbg !5331
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5332
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !5333
  %rlock.i = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !5333
  br label %do.end14, !dbg !5331

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5329

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5320

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5319

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5314

do.end18:                                         ; preds = %do.end17
  %8 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5334
  %active = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %8, i32 0, i32 4, !dbg !5336
  %bf.load = load i8, i8* %active, align 4, !dbg !5336
  %bf.clear = and i8 %bf.load, 1, !dbg !5336
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5336
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5334
  br i1 %tobool, label %if.then, label %if.end, !dbg !5337

if.then:                                          ; preds = %do.end18
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5338
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5339
  call void @dio200_stop_intr(%struct.comedi_device* %9, %struct.comedi_subdevice* %10) #8, !dbg !5340
  br label %if.end, !dbg !5340

if.end:                                           ; preds = %if.then, %do.end18
  %11 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5341
  %spinlock19 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %11, i32 0, i32 0, !dbg !5342
  %12 = load i64, i64* %flags, align 8, !dbg !5343
  store %struct.spinlock* %spinlock19, %struct.spinlock** %lock.addr.i20, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !321, metadata !5273, metadata !DIExpression()) #7, !dbg !5344
  call void @llvm.dbg.declare(metadata !321, metadata !5277, metadata !DIExpression()) #7, !dbg !5344
  store i32 1, i32* %tmp.i, align 4, !dbg !5344
  %13 = load i32, i32* %tmp.i, align 4, !dbg !5344
  call void @llvm.dbg.declare(metadata !321, metadata !5278, metadata !DIExpression()) #7, !dbg !5345
  call void @llvm.dbg.declare(metadata !321, metadata !5284, metadata !DIExpression()) #7, !dbg !5345
  store i32 1, i32* %tmp8.i, align 4, !dbg !5345
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !5345
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !5346
  call void @arch_local_irq_restore(i64 %15) #10, !dbg !5346
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5347, !srcloc !5288
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i20, align 8, !dbg !5348
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !5348
  %rlock.i21 = bitcast %union.anon.3* %17 to %struct.raw_spinlock*, !dbg !5348
  ret i32 0, !dbg !5349
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #0 !dbg !5350 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !5353, metadata !DIExpression()), !dbg !5354
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !5357, metadata !DIExpression()), !dbg !5358
  %0 = load i32*, i32** %src.addr, align 8, !dbg !5359
  %1 = load i32, i32* %0, align 4, !dbg !5360
  store i32 %1, i32* %orig_src, align 4, !dbg !5358
  %2 = load i32, i32* %orig_src, align 4, !dbg !5361
  %3 = load i32, i32* %flags.addr, align 4, !dbg !5362
  %and = and i32 %2, %3, !dbg !5363
  %4 = load i32*, i32** %src.addr, align 8, !dbg !5364
  store i32 %and, i32* %4, align 4, !dbg !5365
  %5 = load i32*, i32** %src.addr, align 8, !dbg !5366
  %6 = load i32, i32* %5, align 4, !dbg !5368
  %cmp = icmp eq i32 %6, 0, !dbg !5369
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5370

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !5371
  %8 = load i32, i32* %7, align 4, !dbg !5372
  %9 = load i32, i32* %orig_src, align 4, !dbg !5373
  %cmp1 = icmp ne i32 %8, %9, !dbg !5374
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5375

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5376
  br label %return, !dbg !5376

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5377
  br label %return, !dbg !5377

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5378
  ret i32 %10, !dbg !5378
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_is_unique(i32 %src) #0 !dbg !5379 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !5382, metadata !DIExpression()), !dbg !5383
  %0 = load i32, i32* %src.addr, align 4, !dbg !5384
  %1 = load i32, i32* %src.addr, align 4, !dbg !5386
  %sub = sub i32 %1, 1, !dbg !5387
  %and = and i32 %0, %sub, !dbg !5388
  %cmp = icmp ne i32 %and, 0, !dbg !5389
  br i1 %cmp, label %if.then, label %if.end, !dbg !5390

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5391
  br label %return, !dbg !5391

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5392
  br label %return, !dbg !5392

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !5393
  ret i32 %2, !dbg !5393
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #0 !dbg !5394 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5395, metadata !DIExpression()), !dbg !5396
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5399
  %1 = load i32, i32* %0, align 4, !dbg !5401
  %2 = load i32, i32* %val.addr, align 4, !dbg !5402
  %cmp = icmp ne i32 %1, %2, !dbg !5403
  br i1 %cmp, label %if.then, label %if.end, !dbg !5404

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5405
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5407
  store i32 %3, i32* %4, align 4, !dbg !5408
  store i32 -22, i32* %retval, align 4, !dbg !5409
  br label %return, !dbg !5409

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5410
  br label %return, !dbg !5410

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5411
  ret i32 %5, !dbg !5411
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_min(i32* %arg, i32 %val) #0 !dbg !5412 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5413, metadata !DIExpression()), !dbg !5414
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5417
  %1 = load i32, i32* %0, align 4, !dbg !5419
  %2 = load i32, i32* %val.addr, align 4, !dbg !5420
  %cmp = icmp ult i32 %1, %2, !dbg !5421
  br i1 %cmp, label %if.then, label %if.end, !dbg !5422

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5423
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5425
  store i32 %3, i32* %4, align 4, !dbg !5426
  store i32 -22, i32* %retval, align 4, !dbg !5427
  br label %return, !dbg !5427

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5428
  br label %return, !dbg !5428

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5429
  ret i32 %5, !dbg !5429
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !5430 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5434, metadata !DIExpression()), !dbg !5435
  %call = call i64 @arch_local_save_flags() #8, !dbg !5436
  store i64 %call, i64* %f, align 8, !dbg !5437
  call void @arch_local_irq_disable() #8, !dbg !5438
  %0 = load i64, i64* %f, align 8, !dbg !5439
  ret i64 %0, !dbg !5440
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_inttrig_start_intr(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %trig_num) #0 !dbg !5441 {
entry:
  %lock.addr.i25 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i25, metadata !5204, metadata !DIExpression()), !dbg !5442
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5210, metadata !DIExpression()), !dbg !5444
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4368, metadata !DIExpression()), !dbg !5445
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %trig_num.addr = alloca i32, align 4
  %subpriv = alloca %struct.dio200_subdev_intr*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  store i32 %trig_num, i32* %trig_num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trig_num.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  call void @llvm.dbg.declare(metadata %struct.dio200_subdev_intr** %subpriv, metadata !5458, metadata !DIExpression()), !dbg !5459
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5460
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !5461
  %1 = load i8*, i8** %private, align 8, !dbg !5461
  %2 = bitcast i8* %1 to %struct.dio200_subdev_intr*, !dbg !5460
  store %struct.dio200_subdev_intr* %2, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5459
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5462, metadata !DIExpression()), !dbg !5463
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5464
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5465
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5465
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !5466
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5463
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5467, metadata !DIExpression()), !dbg !5468
  %5 = load i32, i32* %trig_num.addr, align 4, !dbg !5469
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5471
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 3, !dbg !5472
  %7 = load i32, i32* %start_arg, align 4, !dbg !5472
  %cmp = icmp ne i32 %5, %7, !dbg !5473
  br i1 %cmp, label %if.then, label %if.end, !dbg !5474

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5475
  br label %return, !dbg !5475

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5476

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !5477

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5478, metadata !DIExpression()), !dbg !5480
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5481, metadata !DIExpression()), !dbg !5480
  %cmp3 = icmp eq i64* %__dummy, %__dummy2, !dbg !5480
  %conv = zext i1 %cmp3 to i32, !dbg !5480
  store i32 1, i32* %tmp, align 4, !dbg !5480
  %8 = load i32, i32* %tmp, align 4, !dbg !5480
  br label %do.body4, !dbg !5482

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !5483

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !5484

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !5486, metadata !DIExpression()), !dbg !5489
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !5490, metadata !DIExpression()), !dbg !5489
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !5489
  %conv10 = zext i1 %cmp9 to i32, !dbg !5489
  store i32 1, i32* %tmp11, align 4, !dbg !5489
  %9 = load i32, i32* %tmp11, align 4, !dbg !5489
  %call = call i64 @arch_local_irq_save() #8, !dbg !5491
  store i64 %call, i64* %flags, align 8, !dbg !5491
  br label %do.end, !dbg !5491

do.end:                                           ; preds = %do.body6
  br label %do.end12, !dbg !5484

do.end12:                                         ; preds = %do.end
  br label %do.body13, !dbg !5483

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5492, !srcloc !5493
  br label %do.body14, !dbg !5492

do.body14:                                        ; preds = %do.body13
  %10 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5494
  %spinlock = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %10, i32 0, i32 0, !dbg !5494
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5495
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !5496
  %rlock.i = bitcast %union.anon.3* %12 to %struct.raw_spinlock*, !dbg !5496
  br label %do.end16, !dbg !5494

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !5492

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5483

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5482

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !5477

do.end20:                                         ; preds = %do.end19
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5497
  %async21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 7, !dbg !5498
  %14 = load %struct.comedi_async*, %struct.comedi_async** %async21, align 8, !dbg !5498
  %inttrig = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %14, i32 0, i32 20, !dbg !5499
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* null, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %inttrig, align 8, !dbg !5500
  %15 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5501
  %active = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %15, i32 0, i32 4, !dbg !5503
  %bf.load = load i8, i8* %active, align 4, !dbg !5503
  %bf.clear = and i8 %bf.load, 1, !dbg !5503
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5503
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5501
  br i1 %tobool, label %if.then22, label %if.end23, !dbg !5504

if.then22:                                        ; preds = %do.end20
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5505
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5506
  call void @dio200_start_intr(%struct.comedi_device* %16, %struct.comedi_subdevice* %17) #8, !dbg !5507
  br label %if.end23, !dbg !5507

if.end23:                                         ; preds = %if.then22, %do.end20
  %18 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5508
  %spinlock24 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %18, i32 0, i32 0, !dbg !5509
  %19 = load i64, i64* %flags, align 8, !dbg !5510
  store %struct.spinlock* %spinlock24, %struct.spinlock** %lock.addr.i25, align 8
  store i64 %19, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !321, metadata !5273, metadata !DIExpression()) #7, !dbg !5511
  call void @llvm.dbg.declare(metadata !321, metadata !5277, metadata !DIExpression()) #7, !dbg !5511
  store i32 1, i32* %tmp.i, align 4, !dbg !5511
  %20 = load i32, i32* %tmp.i, align 4, !dbg !5511
  call void @llvm.dbg.declare(metadata !321, metadata !5278, metadata !DIExpression()) #7, !dbg !5512
  call void @llvm.dbg.declare(metadata !321, metadata !5284, metadata !DIExpression()) #7, !dbg !5512
  store i32 1, i32* %tmp8.i, align 4, !dbg !5512
  %21 = load i32, i32* %tmp8.i, align 4, !dbg !5512
  %22 = load i64, i64* %flags.addr.i, align 8, !dbg !5513
  call void @arch_local_irq_restore(i64 %22) #10, !dbg !5513
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5514, !srcloc !5288
  %23 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i25, align 8, !dbg !5515
  %24 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i32 0, i32 0, !dbg !5515
  %rlock.i26 = bitcast %union.anon.3* %24 to %struct.raw_spinlock*, !dbg !5515
  store i32 1, i32* %retval, align 4, !dbg !5516
  br label %return, !dbg !5516

return:                                           ; preds = %if.end23, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !5517
  ret i32 %25, !dbg !5517
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dio200_start_intr(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #0 !dbg !5518 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %board = alloca %struct.dio200_board*, align 8
  %subpriv = alloca %struct.dio200_subdev_intr*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %n = alloca i32, align 4
  %isn_bits = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5519, metadata !DIExpression()), !dbg !5520
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5521, metadata !DIExpression()), !dbg !5522
  call void @llvm.dbg.declare(metadata %struct.dio200_board** %board, metadata !5523, metadata !DIExpression()), !dbg !5524
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5525
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !5526
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !5526
  %2 = bitcast i8* %1 to %struct.dio200_board*, !dbg !5525
  store %struct.dio200_board* %2, %struct.dio200_board** %board, align 8, !dbg !5524
  call void @llvm.dbg.declare(metadata %struct.dio200_subdev_intr** %subpriv, metadata !5527, metadata !DIExpression()), !dbg !5528
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5529
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 6, !dbg !5530
  %4 = load i8*, i8** %private, align 8, !dbg !5530
  %5 = bitcast i8* %4 to %struct.dio200_subdev_intr*, !dbg !5529
  store %struct.dio200_subdev_intr* %5, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5528
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5531, metadata !DIExpression()), !dbg !5532
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5533
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 7, !dbg !5534
  %7 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5534
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %7, i32 0, i32 17, !dbg !5535
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5532
  call void @llvm.dbg.declare(metadata i32* %n, metadata !5536, metadata !DIExpression()), !dbg !5537
  call void @llvm.dbg.declare(metadata i32* %isn_bits, metadata !5538, metadata !DIExpression()), !dbg !5539
  store i32 0, i32* %isn_bits, align 4, !dbg !5540
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5541
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 12, !dbg !5543
  %9 = load i32*, i32** %chanlist, align 8, !dbg !5543
  %tobool = icmp ne i32* %9, null, !dbg !5541
  br i1 %tobool, label %if.then, label %if.end, !dbg !5544

if.then:                                          ; preds = %entry
  store i32 0, i32* %n, align 4, !dbg !5545
  br label %for.cond, !dbg !5548

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %n, align 4, !dbg !5549
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5551
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 13, !dbg !5552
  %12 = load i32, i32* %chanlist_len, align 8, !dbg !5552
  %cmp = icmp ult i32 %10, %12, !dbg !5553
  br i1 %cmp, label %for.body, label %for.end, !dbg !5554

for.body:                                         ; preds = %for.cond
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5555
  %chanlist2 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 12, !dbg !5555
  %14 = load i32*, i32** %chanlist2, align 8, !dbg !5555
  %15 = load i32, i32* %n, align 4, !dbg !5555
  %idxprom = zext i32 %15 to i64, !dbg !5555
  %arrayidx = getelementptr i32, i32* %14, i64 %idxprom, !dbg !5555
  %16 = load i32, i32* %arrayidx, align 4, !dbg !5555
  %and = and i32 %16, 65535, !dbg !5555
  %shl = shl i32 1, %and, !dbg !5556
  %17 = load i32, i32* %isn_bits, align 4, !dbg !5557
  %or = or i32 %17, %shl, !dbg !5557
  store i32 %or, i32* %isn_bits, align 4, !dbg !5557
  br label %for.inc, !dbg !5558

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %n, align 4, !dbg !5559
  %inc = add i32 %18, 1, !dbg !5559
  store i32 %inc, i32* %n, align 4, !dbg !5559
  br label %for.cond, !dbg !5560, !llvm.loop !5561

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !5563

if.end:                                           ; preds = %for.end, %entry
  %19 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5564
  %valid_isns = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %19, i32 0, i32 2, !dbg !5565
  %20 = load i32, i32* %valid_isns, align 4, !dbg !5565
  %21 = load i32, i32* %isn_bits, align 4, !dbg !5566
  %and3 = and i32 %21, %20, !dbg !5566
  store i32 %and3, i32* %isn_bits, align 4, !dbg !5566
  %22 = load i32, i32* %isn_bits, align 4, !dbg !5567
  %23 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5568
  %enabled_isns = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %23, i32 0, i32 3, !dbg !5569
  store i32 %22, i32* %enabled_isns, align 4, !dbg !5570
  %24 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !5571
  %has_int_sce = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %24, i32 0, i32 5, !dbg !5573
  %bf.load = load i8, i8* %has_int_sce, align 4, !dbg !5573
  %bf.clear = and i8 %bf.load, 1, !dbg !5573
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5573
  %tobool4 = icmp ne i32 %bf.cast, 0, !dbg !5571
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5574

if.then5:                                         ; preds = %if.end
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5575
  %26 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5576
  %ofs = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %26, i32 0, i32 1, !dbg !5577
  %27 = load i32, i32* %ofs, align 4, !dbg !5577
  %28 = load i32, i32* %isn_bits, align 4, !dbg !5578
  %conv = trunc i32 %28 to i8, !dbg !5578
  call void @dio200_write8(%struct.comedi_device* %25, i32 %27, i8 zeroext %conv) #8, !dbg !5579
  br label %if.end6, !dbg !5579

if.end6:                                          ; preds = %if.then5, %if.end
  ret void, !dbg !5580
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5581 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5582, metadata !DIExpression()), !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5585, metadata !DIExpression()), !dbg !5584
  %0 = load i64, i64* %__edi, align 8, !dbg !5584
  store i64 %0, i64* %__edi, align 8, !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5586, metadata !DIExpression()), !dbg !5584
  %1 = load i64, i64* %__esi, align 8, !dbg !5584
  store i64 %1, i64* %__esi, align 8, !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5587, metadata !DIExpression()), !dbg !5584
  %2 = load i64, i64* %__edx, align 8, !dbg !5584
  store i64 %2, i64* %__edx, align 8, !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5588, metadata !DIExpression()), !dbg !5584
  %3 = load i64, i64* %__ecx, align 8, !dbg !5584
  store i64 %3, i64* %__ecx, align 8, !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5589, metadata !DIExpression()), !dbg !5584
  %4 = load i64, i64* %__eax, align 8, !dbg !5584
  store i64 %4, i64* %__eax, align 8, !dbg !5584
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5584
  %6 = call i64 @llvm.read_register.i64(metadata !186), !dbg !5590
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !5590, !srcloc !5593
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5590
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5590
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5590
  call void @llvm.write_register.i64(metadata !186, i64 %asmresult1), !dbg !5590
  %8 = load i64, i64* %__eax, align 8, !dbg !5590
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5594, metadata !DIExpression()), !dbg !5596
  store i64 -1, i64* %__mask, align 8, !dbg !5596
  %9 = load i64, i64* %__mask, align 8, !dbg !5596
  store i64 %9, i64* %tmp, align 8, !dbg !5596
  %10 = load i64, i64* %tmp, align 8, !dbg !5596
  %and = and i64 %8, %10, !dbg !5590
  store i64 %and, i64* %__ret, align 8, !dbg !5590
  %11 = load i64, i64* %__ret, align 8, !dbg !5584
  store i64 %11, i64* %tmp2, align 8, !dbg !5597
  %12 = load i64, i64* %tmp2, align 8, !dbg !5584
  ret i64 %12, !dbg !5598
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5599 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5600, metadata !DIExpression()), !dbg !5602
  %0 = load i64, i64* %__edi, align 8, !dbg !5602
  store i64 %0, i64* %__edi, align 8, !dbg !5602
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5603, metadata !DIExpression()), !dbg !5602
  %1 = load i64, i64* %__esi, align 8, !dbg !5602
  store i64 %1, i64* %__esi, align 8, !dbg !5602
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5604, metadata !DIExpression()), !dbg !5602
  %2 = load i64, i64* %__edx, align 8, !dbg !5602
  store i64 %2, i64* %__edx, align 8, !dbg !5602
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5605, metadata !DIExpression()), !dbg !5602
  %3 = load i64, i64* %__ecx, align 8, !dbg !5602
  store i64 %3, i64* %__ecx, align 8, !dbg !5602
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5606, metadata !DIExpression()), !dbg !5602
  %4 = load i64, i64* %__eax, align 8, !dbg !5602
  store i64 %4, i64* %__eax, align 8, !dbg !5602
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5602
  %6 = call i64 @llvm.read_register.i64(metadata !186), !dbg !5602
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !5602, !srcloc !5607
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5602
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5602
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5602
  call void @llvm.write_register.i64(metadata !186, i64 %asmresult1), !dbg !5602
  ret void, !dbg !5608
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5609 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5612, metadata !DIExpression()), !dbg !5613
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5614, metadata !DIExpression()), !dbg !5616
  %0 = load i64, i64* %__edi, align 8, !dbg !5616
  store i64 %0, i64* %__edi, align 8, !dbg !5616
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5617, metadata !DIExpression()), !dbg !5616
  %1 = load i64, i64* %__esi, align 8, !dbg !5616
  store i64 %1, i64* %__esi, align 8, !dbg !5616
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5618, metadata !DIExpression()), !dbg !5616
  %2 = load i64, i64* %__edx, align 8, !dbg !5616
  store i64 %2, i64* %__edx, align 8, !dbg !5616
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5619, metadata !DIExpression()), !dbg !5616
  %3 = load i64, i64* %__ecx, align 8, !dbg !5616
  store i64 %3, i64* %__ecx, align 8, !dbg !5616
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5620, metadata !DIExpression()), !dbg !5616
  %4 = load i64, i64* %__eax, align 8, !dbg !5616
  store i64 %4, i64* %__eax, align 8, !dbg !5616
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5616
  %6 = call i64 @llvm.read_register.i64(metadata !186), !dbg !5616
  %7 = load i64, i64* %f.addr, align 8, !dbg !5616
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !5616, !srcloc !5621
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5616
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5616
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5616
  call void @llvm.write_register.i64(metadata !186, i64 %asmresult1), !dbg !5616
  ret void, !dbg !5622
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dio200_stop_intr(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #0 !dbg !5623 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %board = alloca %struct.dio200_board*, align 8
  %subpriv = alloca %struct.dio200_subdev_intr*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5624, metadata !DIExpression()), !dbg !5625
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5626, metadata !DIExpression()), !dbg !5627
  call void @llvm.dbg.declare(metadata %struct.dio200_board** %board, metadata !5628, metadata !DIExpression()), !dbg !5629
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5630
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !5631
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !5631
  %2 = bitcast i8* %1 to %struct.dio200_board*, !dbg !5630
  store %struct.dio200_board* %2, %struct.dio200_board** %board, align 8, !dbg !5629
  call void @llvm.dbg.declare(metadata %struct.dio200_subdev_intr** %subpriv, metadata !5632, metadata !DIExpression()), !dbg !5633
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5634
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 6, !dbg !5635
  %4 = load i8*, i8** %private, align 8, !dbg !5635
  %5 = bitcast i8* %4 to %struct.dio200_subdev_intr*, !dbg !5634
  store %struct.dio200_subdev_intr* %5, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5633
  %6 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5636
  %active = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %6, i32 0, i32 4, !dbg !5637
  %bf.load = load i8, i8* %active, align 4, !dbg !5638
  %bf.clear = and i8 %bf.load, -2, !dbg !5638
  store i8 %bf.clear, i8* %active, align 4, !dbg !5638
  %7 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5639
  %enabled_isns = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %7, i32 0, i32 3, !dbg !5640
  store i32 0, i32* %enabled_isns, align 4, !dbg !5641
  %8 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !5642
  %has_int_sce = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %8, i32 0, i32 5, !dbg !5644
  %bf.load1 = load i8, i8* %has_int_sce, align 4, !dbg !5644
  %bf.clear2 = and i8 %bf.load1, 1, !dbg !5644
  %bf.cast = zext i8 %bf.clear2 to i32, !dbg !5644
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5642
  br i1 %tobool, label %if.then, label %if.end, !dbg !5645

if.then:                                          ; preds = %entry
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5646
  %10 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5647
  %ofs = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %10, i32 0, i32 1, !dbg !5648
  %11 = load i32, i32* %ofs, align 4, !dbg !5648
  call void @dio200_write8(%struct.comedi_device* %9, i32 %11, i8 zeroext 0) #8, !dbg !5649
  br label %if.end, !dbg !5649

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_read32(%struct.comedi_device* %dev, i32 %offset) #0 !dbg !5651 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %offset.addr = alloca i32, align 4
  %board = alloca %struct.dio200_board*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5654, metadata !DIExpression()), !dbg !5655
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5656, metadata !DIExpression()), !dbg !5657
  call void @llvm.dbg.declare(metadata %struct.dio200_board** %board, metadata !5658, metadata !DIExpression()), !dbg !5659
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5660
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !5661
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !5661
  %2 = bitcast i8* %1 to %struct.dio200_board*, !dbg !5660
  store %struct.dio200_board* %2, %struct.dio200_board** %board, align 8, !dbg !5659
  %3 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !5662
  %is_pcie = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %3, i32 0, i32 5, !dbg !5664
  %bf.load = load i8, i8* %is_pcie, align 4, !dbg !5664
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !5664
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5664
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5664
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5662
  br i1 %tobool, label %if.then, label %if.end, !dbg !5665

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %offset.addr, align 4, !dbg !5666
  %shl = shl i32 %4, 3, !dbg !5666
  store i32 %shl, i32* %offset.addr, align 4, !dbg !5666
  br label %if.end, !dbg !5667

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5668
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !5670
  %6 = load i8*, i8** %mmio, align 8, !dbg !5670
  %tobool1 = icmp ne i8* %6, null, !dbg !5668
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5671

if.then2:                                         ; preds = %if.end
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5672
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !5673
  %8 = load i8*, i8** %mmio3, align 8, !dbg !5673
  %9 = load i32, i32* %offset.addr, align 4, !dbg !5674
  %idx.ext = zext i32 %9 to i64, !dbg !5675
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !5675
  %call = call i32 @readl(i8* %add.ptr) #8, !dbg !5676
  store i32 %call, i32* %retval, align 4, !dbg !5677
  br label %return, !dbg !5677

if.end4:                                          ; preds = %if.end
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5678
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 18, !dbg !5679
  %11 = load i64, i64* %iobase, align 8, !dbg !5679
  %12 = load i32, i32* %offset.addr, align 4, !dbg !5680
  %conv = zext i32 %12 to i64, !dbg !5680
  %add = add i64 %11, %conv, !dbg !5681
  %conv5 = trunc i64 %add to i32, !dbg !5678
  %call6 = call i32 @inl(i32 %conv5) #8, !dbg !5682
  store i32 %call6, i32* %retval, align 4, !dbg !5683
  br label %return, !dbg !5683

return:                                           ; preds = %if.end4, %if.then2
  %13 = load i32, i32* %retval, align 4, !dbg !5684
  ret i32 %13, !dbg !5684
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !5685 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5688, metadata !DIExpression()), !dbg !5689
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5690, metadata !DIExpression()), !dbg !5689
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5689
  %1 = bitcast i8* %0 to i32*, !dbg !5689
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !5689, !srcloc !5691
  store i32 %2, i32* %ret, align 4, !dbg !5689
  %3 = load i32, i32* %ret, align 4, !dbg !5689
  ret i32 %3, !dbg !5689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @inl(i32 %port) #0 !dbg !5692 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5695, metadata !DIExpression()), !dbg !5696
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5697, metadata !DIExpression()), !dbg !5696
  %0 = load i32, i32* %port.addr, align 4, !dbg !5696
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #7, !dbg !5696, !srcloc !5698
  store i32 %1, i32* %value, align 4, !dbg !5696
  %2 = load i32, i32* %value, align 4, !dbg !5696
  ret i32 %2, !dbg !5696
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dio200_subdev_timer_reset(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #0 !dbg !5699 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %clock = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5700, metadata !DIExpression()), !dbg !5701
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5702, metadata !DIExpression()), !dbg !5703
  call void @llvm.dbg.declare(metadata i32* %clock, metadata !5704, metadata !DIExpression()), !dbg !5705
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5706
  %call = call i32 @dio200_read32(%struct.comedi_device* %0, i32 1536) #8, !dbg !5707
  %and = and i32 %call, 255, !dbg !5708
  store i32 %and, i32* %clock, align 4, !dbg !5709
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5710
  %2 = load i32, i32* %clock, align 4, !dbg !5711
  %or = or i32 %2, 256, !dbg !5712
  call void @dio200_write32(%struct.comedi_device* %1, i32 1536, i32 %or) #8, !dbg !5713
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5714
  %4 = load i32, i32* %clock, align 4, !dbg !5715
  call void @dio200_write32(%struct.comedi_device* %3, i32 1536, i32 %4) #8, !dbg !5716
  ret void, !dbg !5717
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_subdev_timer_set_clock_src(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %src) #0 !dbg !5718 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %src.addr = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5721, metadata !DIExpression()), !dbg !5722
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !5723, metadata !DIExpression()), !dbg !5724
  %0 = load i32, i32* %src.addr, align 4, !dbg !5725
  %cmp = icmp ugt i32 %0, 2, !dbg !5727
  br i1 %cmp, label %if.then, label %if.end, !dbg !5728

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5729
  br label %return, !dbg !5729

if.end:                                           ; preds = %entry
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5730
  %2 = load i32, i32* %src.addr, align 4, !dbg !5731
  call void @dio200_write32(%struct.comedi_device* %1, i32 1536, i32 %2) #8, !dbg !5732
  store i32 0, i32* %retval, align 4, !dbg !5733
  br label %return, !dbg !5733

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5734
  ret i32 %3, !dbg !5734
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dio200_subdev_timer_get_clock_src(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32* %src, i32* %period) #0 !dbg !5735 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %src.addr = alloca i32*, align 8
  %period.addr = alloca i32*, align 8
  %clk = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5738, metadata !DIExpression()), !dbg !5739
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5740, metadata !DIExpression()), !dbg !5741
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !5742, metadata !DIExpression()), !dbg !5743
  store i32* %period, i32** %period.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %period.addr, metadata !5744, metadata !DIExpression()), !dbg !5745
  call void @llvm.dbg.declare(metadata i32* %clk, metadata !5746, metadata !DIExpression()), !dbg !5747
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5748
  %call = call i32 @dio200_read32(%struct.comedi_device* %0, i32 1536) #8, !dbg !5749
  %and = and i32 %call, 255, !dbg !5750
  store i32 %and, i32* %clk, align 4, !dbg !5751
  %1 = load i32, i32* %clk, align 4, !dbg !5752
  %2 = load i32*, i32** %src.addr, align 8, !dbg !5753
  store i32 %1, i32* %2, align 4, !dbg !5754
  %3 = load i32, i32* %clk, align 4, !dbg !5755
  %conv = zext i32 %3 to i64, !dbg !5755
  %cmp = icmp ult i64 %conv, 3, !dbg !5756
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5757

cond.true:                                        ; preds = %entry
  %4 = load i32, i32* %clk, align 4, !dbg !5758
  %idxprom = zext i32 %4 to i64, !dbg !5759
  %arrayidx = getelementptr [3 x i32], [3 x i32]* @ts_clock_period, i64 0, i64 %idxprom, !dbg !5759
  %5 = load i32, i32* %arrayidx, align 4, !dbg !5759
  br label %cond.end, !dbg !5757

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5757

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 0, %cond.false ], !dbg !5757
  %6 = load i32*, i32** %period.addr, align 8, !dbg !5760
  store i32 %cond, i32* %6, align 4, !dbg !5761
  ret void, !dbg !5762
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dio200_write32(%struct.comedi_device* %dev, i32 %offset, i32 %val) #0 !dbg !5763 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %offset.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %board = alloca %struct.dio200_board*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5766, metadata !DIExpression()), !dbg !5767
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5768, metadata !DIExpression()), !dbg !5769
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5770, metadata !DIExpression()), !dbg !5771
  call void @llvm.dbg.declare(metadata %struct.dio200_board** %board, metadata !5772, metadata !DIExpression()), !dbg !5773
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5774
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !5775
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !5775
  %2 = bitcast i8* %1 to %struct.dio200_board*, !dbg !5774
  store %struct.dio200_board* %2, %struct.dio200_board** %board, align 8, !dbg !5773
  %3 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !5776
  %is_pcie = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %3, i32 0, i32 5, !dbg !5778
  %bf.load = load i8, i8* %is_pcie, align 4, !dbg !5778
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !5778
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5778
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5778
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5776
  br i1 %tobool, label %if.then, label %if.end, !dbg !5779

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %offset.addr, align 4, !dbg !5780
  %shl = shl i32 %4, 3, !dbg !5780
  store i32 %shl, i32* %offset.addr, align 4, !dbg !5780
  br label %if.end, !dbg !5781

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5782
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !5784
  %6 = load i8*, i8** %mmio, align 8, !dbg !5784
  %tobool1 = icmp ne i8* %6, null, !dbg !5782
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5785

if.then2:                                         ; preds = %if.end
  %7 = load i32, i32* %val.addr, align 4, !dbg !5786
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5787
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 17, !dbg !5788
  %9 = load i8*, i8** %mmio3, align 8, !dbg !5788
  %10 = load i32, i32* %offset.addr, align 4, !dbg !5789
  %idx.ext = zext i32 %10 to i64, !dbg !5790
  %add.ptr = getelementptr i8, i8* %9, i64 %idx.ext, !dbg !5790
  call void @writel(i32 %7, i8* %add.ptr) #8, !dbg !5791
  br label %if.end5, !dbg !5791

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %val.addr, align 4, !dbg !5792
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5793
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 18, !dbg !5794
  %13 = load i64, i64* %iobase, align 8, !dbg !5794
  %14 = load i32, i32* %offset.addr, align 4, !dbg !5795
  %conv = zext i32 %14 to i64, !dbg !5795
  %add = add i64 %13, %conv, !dbg !5796
  %conv4 = trunc i64 %add to i32, !dbg !5793
  call void @outl(i32 %11, i32 %conv4) #8, !dbg !5797
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  ret void, !dbg !5798
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !5799 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5802, metadata !DIExpression()), !dbg !5803
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5804, metadata !DIExpression()), !dbg !5803
  %0 = load i32, i32* %val.addr, align 4, !dbg !5803
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5803
  %2 = bitcast i8* %1 to i32*, !dbg !5803
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !5803, !srcloc !5805
  ret void, !dbg !5803
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outl(i32 %value, i32 %port) #0 !dbg !5806 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5809, metadata !DIExpression()), !dbg !5810
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5811, metadata !DIExpression()), !dbg !5810
  %0 = load i32, i32* %value.addr, align 4, !dbg !5810
  %1 = load i32, i32* %port.addr, align 4, !dbg !5810
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #7, !dbg !5810, !srcloc !5812
  ret void, !dbg !5810
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dio200_handle_read_intr(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #0 !dbg !5813 {
entry:
  %lock.addr.i57 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i57, metadata !5204, metadata !DIExpression()), !dbg !5814
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5210, metadata !DIExpression()), !dbg !5816
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4368, metadata !DIExpression()), !dbg !5817
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %board = alloca %struct.dio200_board*, align 8
  %subpriv = alloca %struct.dio200_subdev_intr*, align 8
  %triggered = alloca i32, align 4
  %intstat = alloca i32, align 4
  %cur_enabled = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5826, metadata !DIExpression()), !dbg !5827
  call void @llvm.dbg.declare(metadata %struct.dio200_board** %board, metadata !5828, metadata !DIExpression()), !dbg !5829
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5830
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !5831
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !5831
  %2 = bitcast i8* %1 to %struct.dio200_board*, !dbg !5830
  store %struct.dio200_board* %2, %struct.dio200_board** %board, align 8, !dbg !5829
  call void @llvm.dbg.declare(metadata %struct.dio200_subdev_intr** %subpriv, metadata !5832, metadata !DIExpression()), !dbg !5833
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5834
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 6, !dbg !5835
  %4 = load i8*, i8** %private, align 8, !dbg !5835
  %5 = bitcast i8* %4 to %struct.dio200_subdev_intr*, !dbg !5834
  store %struct.dio200_subdev_intr* %5, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5833
  call void @llvm.dbg.declare(metadata i32* %triggered, metadata !5836, metadata !DIExpression()), !dbg !5837
  call void @llvm.dbg.declare(metadata i32* %intstat, metadata !5838, metadata !DIExpression()), !dbg !5839
  call void @llvm.dbg.declare(metadata i32* %cur_enabled, metadata !5840, metadata !DIExpression()), !dbg !5841
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5842, metadata !DIExpression()), !dbg !5843
  store i32 0, i32* %triggered, align 4, !dbg !5844
  br label %do.body, !dbg !5845

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5846

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5847, metadata !DIExpression()), !dbg !5849
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5850, metadata !DIExpression()), !dbg !5849
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5849
  %conv = zext i1 %cmp to i32, !dbg !5849
  store i32 1, i32* %tmp, align 4, !dbg !5849
  %6 = load i32, i32* %tmp, align 4, !dbg !5849
  br label %do.body2, !dbg !5851

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5852

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5853

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5855, metadata !DIExpression()), !dbg !5858
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5859, metadata !DIExpression()), !dbg !5858
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5858
  %conv8 = zext i1 %cmp7 to i32, !dbg !5858
  store i32 1, i32* %tmp9, align 4, !dbg !5858
  %7 = load i32, i32* %tmp9, align 4, !dbg !5858
  %call = call i64 @arch_local_irq_save() #8, !dbg !5860
  store i64 %call, i64* %flags, align 8, !dbg !5860
  br label %do.end, !dbg !5860

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5853

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5852

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5861, !srcloc !5862
  br label %do.body12, !dbg !5861

do.body12:                                        ; preds = %do.body11
  %8 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5863
  %spinlock = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %8, i32 0, i32 0, !dbg !5863
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5864
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !5865
  %rlock.i = bitcast %union.anon.3* %10 to %struct.raw_spinlock*, !dbg !5865
  br label %do.end14, !dbg !5863

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5861

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5852

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5851

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5846

do.end18:                                         ; preds = %do.end17
  %11 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !5866
  %has_int_sce = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %11, i32 0, i32 5, !dbg !5868
  %bf.load = load i8, i8* %has_int_sce, align 4, !dbg !5868
  %bf.clear = and i8 %bf.load, 1, !dbg !5868
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5868
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5866
  br i1 %tobool, label %if.then, label %if.else, !dbg !5869

if.then:                                          ; preds = %do.end18
  %12 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5870
  %enabled_isns = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %12, i32 0, i32 3, !dbg !5872
  %13 = load i32, i32* %enabled_isns, align 4, !dbg !5872
  store i32 %13, i32* %cur_enabled, align 4, !dbg !5873
  br label %while.cond, !dbg !5874

while.cond:                                       ; preds = %while.body, %if.then
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5875
  %15 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5876
  %ofs = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %15, i32 0, i32 1, !dbg !5877
  %16 = load i32, i32* %ofs, align 4, !dbg !5877
  %call19 = call zeroext i8 @dio200_read8(%struct.comedi_device* %14, i32 %16) #8, !dbg !5878
  %conv20 = zext i8 %call19 to i32, !dbg !5878
  %17 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5879
  %valid_isns = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %17, i32 0, i32 2, !dbg !5880
  %18 = load i32, i32* %valid_isns, align 4, !dbg !5880
  %and = and i32 %conv20, %18, !dbg !5881
  %19 = load i32, i32* %triggered, align 4, !dbg !5882
  %neg = xor i32 %19, -1, !dbg !5883
  %and21 = and i32 %and, %neg, !dbg !5884
  store i32 %and21, i32* %intstat, align 4, !dbg !5885
  %cmp22 = icmp ne i32 %and21, 0, !dbg !5886
  br i1 %cmp22, label %while.body, label %while.end, !dbg !5874

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %intstat, align 4, !dbg !5887
  %21 = load i32, i32* %triggered, align 4, !dbg !5889
  %or = or i32 %21, %20, !dbg !5889
  store i32 %or, i32* %triggered, align 4, !dbg !5889
  %22 = load i32, i32* %triggered, align 4, !dbg !5890
  %neg24 = xor i32 %22, -1, !dbg !5891
  %23 = load i32, i32* %cur_enabled, align 4, !dbg !5892
  %and25 = and i32 %23, %neg24, !dbg !5892
  store i32 %and25, i32* %cur_enabled, align 4, !dbg !5892
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5893
  %25 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5894
  %ofs26 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %25, i32 0, i32 1, !dbg !5895
  %26 = load i32, i32* %ofs26, align 4, !dbg !5895
  %27 = load i32, i32* %cur_enabled, align 4, !dbg !5896
  %conv27 = trunc i32 %27 to i8, !dbg !5896
  call void @dio200_write8(%struct.comedi_device* %24, i32 %26, i8 zeroext %conv27) #8, !dbg !5897
  br label %while.cond, !dbg !5874, !llvm.loop !5898

while.end:                                        ; preds = %while.cond
  br label %if.end, !dbg !5900

if.else:                                          ; preds = %do.end18
  %28 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5901
  %enabled_isns28 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %28, i32 0, i32 3, !dbg !5903
  %29 = load i32, i32* %enabled_isns28, align 4, !dbg !5903
  store i32 %29, i32* %triggered, align 4, !dbg !5904
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  %30 = load i32, i32* %triggered, align 4, !dbg !5905
  %tobool29 = icmp ne i32 %30, 0, !dbg !5905
  br i1 %tobool29, label %if.then30, label %if.end52, !dbg !5907

if.then30:                                        ; preds = %if.end
  %31 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5908
  %enabled_isns31 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %31, i32 0, i32 3, !dbg !5910
  %32 = load i32, i32* %enabled_isns31, align 4, !dbg !5910
  store i32 %32, i32* %cur_enabled, align 4, !dbg !5911
  %33 = load %struct.dio200_board*, %struct.dio200_board** %board, align 8, !dbg !5912
  %has_int_sce32 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %33, i32 0, i32 5, !dbg !5914
  %bf.load33 = load i8, i8* %has_int_sce32, align 4, !dbg !5914
  %bf.clear34 = and i8 %bf.load33, 1, !dbg !5914
  %bf.cast35 = zext i8 %bf.clear34 to i32, !dbg !5914
  %tobool36 = icmp ne i32 %bf.cast35, 0, !dbg !5912
  br i1 %tobool36, label %if.then37, label %if.end40, !dbg !5915

if.then37:                                        ; preds = %if.then30
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5916
  %35 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5917
  %ofs38 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %35, i32 0, i32 1, !dbg !5918
  %36 = load i32, i32* %ofs38, align 4, !dbg !5918
  %37 = load i32, i32* %cur_enabled, align 4, !dbg !5919
  %conv39 = trunc i32 %37 to i8, !dbg !5919
  call void @dio200_write8(%struct.comedi_device* %34, i32 %36, i8 zeroext %conv39) #8, !dbg !5920
  br label %if.end40, !dbg !5920

if.end40:                                         ; preds = %if.then37, %if.then30
  %38 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5921
  %active = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %38, i32 0, i32 4, !dbg !5923
  %bf.load41 = load i8, i8* %active, align 4, !dbg !5923
  %bf.clear42 = and i8 %bf.load41, 1, !dbg !5923
  %bf.cast43 = zext i8 %bf.clear42 to i32, !dbg !5923
  %tobool44 = icmp ne i32 %bf.cast43, 0, !dbg !5921
  br i1 %tobool44, label %if.then45, label %if.end51, !dbg !5924

if.then45:                                        ; preds = %if.end40
  %39 = load i32, i32* %triggered, align 4, !dbg !5925
  %40 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5928
  %enabled_isns46 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %40, i32 0, i32 3, !dbg !5929
  %41 = load i32, i32* %enabled_isns46, align 4, !dbg !5929
  %and47 = and i32 %39, %41, !dbg !5930
  %tobool48 = icmp ne i32 %and47, 0, !dbg !5930
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !5931

if.then49:                                        ; preds = %if.then45
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5932
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5934
  %44 = load i32, i32* %triggered, align 4, !dbg !5935
  call void @dio200_read_scan_intr(%struct.comedi_device* %42, %struct.comedi_subdevice* %43, i32 %44) #8, !dbg !5936
  br label %if.end50, !dbg !5937

if.end50:                                         ; preds = %if.then49, %if.then45
  br label %if.end51, !dbg !5938

if.end51:                                         ; preds = %if.end50, %if.end40
  br label %if.end52, !dbg !5939

if.end52:                                         ; preds = %if.end51, %if.end
  %45 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %subpriv, align 8, !dbg !5940
  %spinlock53 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %45, i32 0, i32 0, !dbg !5941
  %46 = load i64, i64* %flags, align 8, !dbg !5942
  store %struct.spinlock* %spinlock53, %struct.spinlock** %lock.addr.i57, align 8
  store i64 %46, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !321, metadata !5273, metadata !DIExpression()) #7, !dbg !5943
  call void @llvm.dbg.declare(metadata !321, metadata !5277, metadata !DIExpression()) #7, !dbg !5943
  store i32 1, i32* %tmp.i, align 4, !dbg !5943
  %47 = load i32, i32* %tmp.i, align 4, !dbg !5943
  call void @llvm.dbg.declare(metadata !321, metadata !5278, metadata !DIExpression()) #7, !dbg !5944
  call void @llvm.dbg.declare(metadata !321, metadata !5284, metadata !DIExpression()) #7, !dbg !5944
  store i32 1, i32* %tmp8.i, align 4, !dbg !5944
  %48 = load i32, i32* %tmp8.i, align 4, !dbg !5944
  %49 = load i64, i64* %flags.addr.i, align 8, !dbg !5945
  call void @arch_local_irq_restore(i64 %49) #10, !dbg !5945
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5946, !srcloc !5288
  %50 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i57, align 8, !dbg !5947
  %51 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %50, i32 0, i32 0, !dbg !5947
  %rlock.i58 = bitcast %union.anon.3* %51 to %struct.raw_spinlock*, !dbg !5947
  %52 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5948
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5949
  %call54 = call i32 @comedi_handle_events(%struct.comedi_device* %52, %struct.comedi_subdevice* %53) #8, !dbg !5950
  %54 = load i32, i32* %triggered, align 4, !dbg !5951
  %cmp55 = icmp ne i32 %54, 0, !dbg !5952
  %conv56 = zext i1 %cmp55 to i32, !dbg !5952
  ret i32 %conv56, !dbg !5953
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dio200_read_scan_intr(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %triggered) #0 !dbg !5954 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %triggered.addr = alloca i32, align 4
  %cmd = alloca %struct.comedi_cmd*, align 8
  %val = alloca i16, align 2
  %n = alloca i32, align 4
  %ch = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5959, metadata !DIExpression()), !dbg !5960
  store i32 %triggered, i32* %triggered.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %triggered.addr, metadata !5961, metadata !DIExpression()), !dbg !5962
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5963, metadata !DIExpression()), !dbg !5964
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5965
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !5966
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5966
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %1, i32 0, i32 17, !dbg !5967
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5964
  call void @llvm.dbg.declare(metadata i16* %val, metadata !5968, metadata !DIExpression()), !dbg !5969
  call void @llvm.dbg.declare(metadata i32* %n, metadata !5970, metadata !DIExpression()), !dbg !5971
  call void @llvm.dbg.declare(metadata i32* %ch, metadata !5972, metadata !DIExpression()), !dbg !5973
  store i16 0, i16* %val, align 2, !dbg !5974
  store i32 0, i32* %n, align 4, !dbg !5975
  br label %for.cond, !dbg !5977

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %n, align 4, !dbg !5978
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5980
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 13, !dbg !5981
  %4 = load i32, i32* %chanlist_len, align 8, !dbg !5981
  %cmp = icmp ult i32 %2, %4, !dbg !5982
  br i1 %cmp, label %for.body, label %for.end, !dbg !5983

for.body:                                         ; preds = %for.cond
  %5 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5984
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %5, i32 0, i32 12, !dbg !5984
  %6 = load i32*, i32** %chanlist, align 8, !dbg !5984
  %7 = load i32, i32* %n, align 4, !dbg !5984
  %idxprom = zext i32 %7 to i64, !dbg !5984
  %arrayidx = getelementptr i32, i32* %6, i64 %idxprom, !dbg !5984
  %8 = load i32, i32* %arrayidx, align 4, !dbg !5984
  %and = and i32 %8, 65535, !dbg !5984
  store i32 %and, i32* %ch, align 4, !dbg !5986
  %9 = load i32, i32* %triggered.addr, align 4, !dbg !5987
  %10 = load i32, i32* %ch, align 4, !dbg !5989
  %shl = shl i32 1, %10, !dbg !5990
  %and2 = and i32 %9, %shl, !dbg !5991
  %tobool = icmp ne i32 %and2, 0, !dbg !5991
  br i1 %tobool, label %if.then, label %if.end, !dbg !5992

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %n, align 4, !dbg !5993
  %shl3 = shl i32 1, %11, !dbg !5994
  %12 = load i16, i16* %val, align 2, !dbg !5995
  %conv = zext i16 %12 to i32, !dbg !5995
  %or = or i32 %conv, %shl3, !dbg !5995
  %conv4 = trunc i32 %or to i16, !dbg !5995
  store i16 %conv4, i16* %val, align 2, !dbg !5995
  br label %if.end, !dbg !5996

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5997

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %n, align 4, !dbg !5998
  %inc = add i32 %13, 1, !dbg !5998
  store i32 %inc, i32* %n, align 4, !dbg !5998
  br label %for.cond, !dbg !5999, !llvm.loop !6000

for.end:                                          ; preds = %for.cond
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6002
  %15 = bitcast i16* %val to i8*, !dbg !6003
  %call = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %14, i8* %15, i32 1) #8, !dbg !6004
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6005
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 10, !dbg !6007
  %17 = load i32, i32* %stop_src, align 8, !dbg !6007
  %cmp5 = icmp eq i32 %17, 32, !dbg !6008
  br i1 %cmp5, label %land.lhs.true, label %if.end13, !dbg !6009

land.lhs.true:                                    ; preds = %for.end
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6010
  %async7 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 7, !dbg !6011
  %19 = load %struct.comedi_async*, %struct.comedi_async** %async7, align 8, !dbg !6011
  %scans_done = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 11, !dbg !6012
  %20 = load i32, i32* %scans_done, align 8, !dbg !6012
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6013
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 11, !dbg !6014
  %22 = load i32, i32* %stop_arg, align 4, !dbg !6014
  %cmp8 = icmp uge i32 %20, %22, !dbg !6015
  br i1 %cmp8, label %if.then10, label %if.end13, !dbg !6016

if.then10:                                        ; preds = %land.lhs.true
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6017
  %async11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 7, !dbg !6018
  %24 = load %struct.comedi_async*, %struct.comedi_async** %async11, align 8, !dbg !6018
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %24, i32 0, i32 16, !dbg !6019
  %25 = load i32, i32* %events, align 4, !dbg !6020
  %or12 = or i32 %25, 2, !dbg !6020
  store i32 %or12, i32* %events, align 4, !dbg !6020
  br label %if.end13, !dbg !6017

if.end13:                                         ; preds = %if.then10, %land.lhs.true, %for.end
  ret void, !dbg !6021
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #2

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!186}
!llvm.module.flags = !{!187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_amplc_dio200_common_init230", scope: !2, file: !3, line: 849, type: !185, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !138, globals: !146, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/amplc_dio200_common.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !116, !121, !127}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !94, line: 5, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_subdevice_type", file: !101, line: 221, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedi.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!103 = !DIEnumerator(name: "COMEDI_SUBD_UNUSED", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "COMEDI_SUBD_AI", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "COMEDI_SUBD_AO", value: 2, isUnsigned: true)
!106 = !DIEnumerator(name: "COMEDI_SUBD_DI", value: 3, isUnsigned: true)
!107 = !DIEnumerator(name: "COMEDI_SUBD_DO", value: 4, isUnsigned: true)
!108 = !DIEnumerator(name: "COMEDI_SUBD_DIO", value: 5, isUnsigned: true)
!109 = !DIEnumerator(name: "COMEDI_SUBD_COUNTER", value: 6, isUnsigned: true)
!110 = !DIEnumerator(name: "COMEDI_SUBD_TIMER", value: 7, isUnsigned: true)
!111 = !DIEnumerator(name: "COMEDI_SUBD_MEMORY", value: 8, isUnsigned: true)
!112 = !DIEnumerator(name: "COMEDI_SUBD_CALIB", value: 9, isUnsigned: true)
!113 = !DIEnumerator(name: "COMEDI_SUBD_PROC", value: 10, isUnsigned: true)
!114 = !DIEnumerator(name: "COMEDI_SUBD_SERIAL", value: 11, isUnsigned: true)
!115 = !DIEnumerator(name: "COMEDI_SUBD_PWM", value: 12, isUnsigned: true)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 10, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120}
!119 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !122, line: 11, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_cb", file: !128, line: 383, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137}
!130 = !DIEnumerator(name: "COMEDI_CB_EOS", value: 1, isUnsigned: true)
!131 = !DIEnumerator(name: "COMEDI_CB_EOA", value: 2, isUnsigned: true)
!132 = !DIEnumerator(name: "COMEDI_CB_BLOCK", value: 4, isUnsigned: true)
!133 = !DIEnumerator(name: "COMEDI_CB_EOBUF", value: 8, isUnsigned: true)
!134 = !DIEnumerator(name: "COMEDI_CB_ERROR", value: 16, isUnsigned: true)
!135 = !DIEnumerator(name: "COMEDI_CB_OVERFLOW", value: 32, isUnsigned: true)
!136 = !DIEnumerator(name: "COMEDI_CB_ERROR_MASK", value: 48, isUnsigned: true)
!137 = !DIEnumerator(name: "COMEDI_CB_CANCEL_MASK", value: 50, isUnsigned: true)
!138 = !{!139, !142, !143, !145}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !141)
!141 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!142 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!145 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!146 = !{!0, !147, !154, !161, !166, !171, !176, !180}
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "__exitcall_amplc_dio200_common_exit", scope: !2, file: !3, line: 854, type: !149, isLocal: true, isDefinition: true)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !150, line: 117, baseType: !151)
!150 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null}
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author231", scope: !2, file: !3, line: 856, type: !156, isLocal: true, isDefinition: true, align: 8)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 456, elements: !159)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!159 = !{!160}
!160 = !DISubrange(count: 57)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description232", scope: !2, file: !3, line: 857, type: !163, isLocal: true, isDefinition: true, align: 8)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 672, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 84)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file233", scope: !2, file: !3, line: 858, type: !168, isLocal: true, isDefinition: true, align: 8)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 608, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 76)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license234", scope: !2, file: !3, line: 858, type: !173, isLocal: true, isDefinition: true, align: 8)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 256, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 32)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "clock_period", scope: !2, file: !3, line: 52, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 1024, elements: !174)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "ts_clock_period", scope: !2, file: !3, line: 72, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 96, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 3)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!186 = !{!"rsp"}
!187 = !{i32 7, !"Dwarf Version", i32 4}
!188 = !{i32 2, !"Debug Info Version", i32 3}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"Code Model", i32 2}
!191 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!192 = distinct !DISubprogram(name: "amplc_dio200_set_enhance", scope: !3, file: !3, line: 769, type: !193, scopeLine: 770, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !321)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !195, !141}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !128, line: 541, size: 1920, elements: !197)
!197 = !{!198, !199, !236, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3998, !3999, !4003}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !196, file: !128, line: 542, baseType: !145, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !196, file: !128, line: 543, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !128, line: 437, size: 576, elements: !202)
!202 = !{!203, !204, !206, !210, !223, !227, !231, !232, !235}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !128, line: 439, baseType: !200, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !201, file: !128, line: 441, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !201, file: !128, line: 442, baseType: !207, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !209, line: 76, flags: DIFlagFwdDecl)
!209 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!210 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !201, file: !128, line: 443, baseType: !211, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!145, !195, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !216)
!216 = !{!217, !221}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !215, file: !101, line: 835, baseType: !218, size: 160)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 160, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 20)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !215, file: !101, line: 836, baseType: !222, size: 1024, offset: 160)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 1024, elements: !174)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !201, file: !128, line: 444, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !195}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !201, file: !128, line: 445, baseType: !228, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!145, !195, !142}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !201, file: !128, line: 446, baseType: !7, size: 32, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !201, file: !128, line: 447, baseType: !233, size: 64, offset: 448)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !201, file: !128, line: 448, baseType: !145, size: 32, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !196, file: !128, line: 544, baseType: !237, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !239, line: 78, size: 704, elements: !240)
!239 = !DIFile(filename: "drivers/staging/comedi/drivers/comedi_8254.h", directory: "/home/lizy2001/genbc/linux")
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !260}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !238, file: !239, line: 79, baseType: !142, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !238, file: !239, line: 80, baseType: !185, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "iosize", scope: !238, file: !239, line: 81, baseType: !7, size: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "regshift", scope: !238, file: !239, line: 82, baseType: !7, size: 32, offset: 160)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "osc_base", scope: !238, file: !239, line: 83, baseType: !7, size: 32, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "divisor", scope: !238, file: !239, line: 84, baseType: !7, size: 32, offset: 224)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "divisor1", scope: !238, file: !239, line: 85, baseType: !7, size: 32, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "divisor2", scope: !238, file: !239, line: 86, baseType: !7, size: 32, offset: 288)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next_div", scope: !238, file: !239, line: 87, baseType: !7, size: 32, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next_div1", scope: !238, file: !239, line: 88, baseType: !7, size: 32, offset: 352)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next_div2", scope: !238, file: !239, line: 89, baseType: !7, size: 32, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "clock_src", scope: !238, file: !239, line: 90, baseType: !253, size: 96, offset: 416)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !183)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "gate_src", scope: !238, file: !239, line: 91, baseType: !253, size: 96, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !238, file: !239, line: 92, baseType: !256, size: 24, offset: 608)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 24, elements: !183)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !258, line: 30, baseType: !259)
!258 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!259 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !238, file: !239, line: 94, baseType: !261, size: 64, offset: 640)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!145, !195, !264, !3963, !2748}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !128, line: 153, size: 1792, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3921, !3934, !3937, !3938, !3939, !3940, !3941, !3942, !3946, !3951, !3952, !3953, !3954, !3958, !3959, !3960, !3961, !3962}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !265, file: !128, line: 154, baseType: !195, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !265, file: !128, line: 155, baseType: !145, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !265, file: !128, line: 156, baseType: !145, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !265, file: !128, line: 157, baseType: !145, size: 32, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !265, file: !128, line: 158, baseType: !145, size: 32, offset: 160)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !265, file: !128, line: 159, baseType: !145, size: 32, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !265, file: !128, line: 161, baseType: !185, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !265, file: !128, line: 163, baseType: !275, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !128, line: 347, size: 1536, elements: !277)
!277 = !{!278, !279, !280, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3907, !3908, !3909}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !276, file: !128, line: 348, baseType: !185, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !276, file: !128, line: 349, baseType: !7, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !276, file: !128, line: 350, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !128, line: 249, size: 256, elements: !283)
!283 = !{!284, !3864, !3870, !3871, !3872}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !282, file: !128, line: 250, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !287)
!287 = !{!288, !3436, !3437, !3440, !3441, !3492, !3565, !3566, !3567, !3568, !3569, !3578, !3683, !3696, !3699, !3700, !3704, !3706, !3707, !3708, !3712, !3718, !3719, !3722, !3726, !3816, !3817, !3818, !3819, !3820, !3852, !3853, !3854, !3857, !3860, !3861, !3862, !3863}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !286, file: !73, line: 462, baseType: !289, size: 512)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !290, line: 64, size: 512, elements: !291)
!290 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292, !293, !299, !301, !359, !3287, !3426, !3431, !3432, !3433, !3434, !3435}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !290, line: 65, baseType: !205, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !289, file: !290, line: 66, baseType: !294, size: 128, offset: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !258, line: 178, size: 128, elements: !295)
!295 = !{!296, !298}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !258, line: 179, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !294, file: !258, line: 179, baseType: !297, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !289, file: !290, line: 67, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !289, file: !290, line: 68, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !290, line: 192, size: 704, elements: !304)
!304 = !{!305, !306, !322, !323}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !303, file: !290, line: 193, baseType: !294, size: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !303, file: !290, line: 194, baseType: !307, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !308, line: 83, baseType: !309)
!308 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !308, line: 71, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !308, line: 72, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !308, line: 72, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !312, file: !308, line: 73, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !308, line: 20, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !315, file: !308, line: 21, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !319, line: 25, baseType: !320)
!319 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 25, elements: !321)
!321 = !{}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !303, file: !290, line: 195, baseType: !289, size: 512, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !303, file: !290, line: 196, baseType: !324, size: 64, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !290, line: 156, size: 192, elements: !327)
!327 = !{!328, !333, !338}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !326, file: !290, line: 157, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!145, !302, !300}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !290, line: 158, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!205, !302, !300}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !326, file: !290, line: 159, baseType: !339, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!145, !302, !300, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !290, line: 148, size: 20736, elements: !345)
!345 = !{!346, !349, !353, !354, !358}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !344, file: !290, line: 149, baseType: !347, size: 192)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 192, elements: !183)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !344, file: !290, line: 150, baseType: !350, size: 4096, offset: 192)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 4096, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !344, file: !290, line: 151, baseType: !145, size: 32, offset: 4288)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !344, file: !290, line: 152, baseType: !355, size: 16384, offset: 4320)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 16384, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 2048)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !344, file: !290, line: 153, baseType: !145, size: 32, offset: 20704)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !289, file: !290, line: 69, baseType: !360, size: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !290, line: 138, size: 448, elements: !362)
!362 = !{!363, !367, !396, !398, !3249, !3277, !3281}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !361, file: !290, line: 139, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !300}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !361, file: !290, line: 140, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !371, line: 230, size: 128, elements: !372)
!371 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!372 = !{!373, !389}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !370, file: !371, line: 231, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!377, !300, !382, !348}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !258, line: 60, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !379, line: 73, baseType: !380)
!379 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !379, line: 15, baseType: !381)
!381 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !371, line: 30, size: 128, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !383, file: !371, line: 31, baseType: !205, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !383, file: !371, line: 32, baseType: !387, size: 16, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !258, line: 19, baseType: !388)
!388 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !370, file: !371, line: 232, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!377, !300, !382, !205, !393}
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !258, line: 55, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !379, line: 72, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !379, line: 16, baseType: !142)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !361, file: !290, line: 141, baseType: !397, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !361, file: !290, line: 142, baseType: !399, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !371, line: 84, size: 320, elements: !403)
!403 = !{!404, !405, !409, !3246, !3247}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !402, file: !371, line: 85, baseType: !205, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !402, file: !371, line: 86, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!387, !300, !382, !145}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !402, file: !371, line: 88, baseType: !410, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!387, !300, !413, !145}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !371, line: 168, size: 448, elements: !415)
!415 = !{!416, !417, !418, !419, !3241, !3242}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !414, file: !371, line: 169, baseType: !383, size: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !414, file: !371, line: 170, baseType: !393, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !414, file: !371, line: 171, baseType: !185, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !414, file: !371, line: 172, baseType: !420, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!377, !423, !300, !413, !348, !599, !393}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !425)
!425 = !{!426, !444, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3224, !3225, !3234, !3235, !3236, !3237, !3238, !3239, !3240}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !424, file: !44, line: 920, baseType: !427, size: 128)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !44, line: 917, size: 128, elements: !428)
!428 = !{!429, !435}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !427, file: !44, line: 918, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !431, line: 58, size: 64, elements: !432)
!431 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !431, line: 59, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !427, file: !44, line: 919, baseType: !436, size: 128, align: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !258, line: 216, size: 128, align: 64, elements: !437)
!437 = !{!438, !440}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !258, line: 217, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !436, file: !258, line: 218, baseType: !441, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !439}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !424, file: !44, line: 921, baseType: !445, size: 128, offset: 128)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !446, line: 8, size: 128, elements: !447)
!446 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!447 = !{!448, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !445, file: !446, line: 9, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !451, line: 18, flags: DIFlagFwdDecl)
!451 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!452 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !445, file: !446, line: 10, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !451, line: 89, size: 1536, elements: !455)
!455 = !{!456, !457, !467, !475, !476, !498, !3174, !3176, !3188, !3189, !3190, !3191, !3192, !3198, !3199, !3200}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !454, file: !451, line: 91, baseType: !7, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !454, file: !451, line: 92, baseType: !458, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !459, line: 277, baseType: !460)
!459 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !459, line: 277, size: 32, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !460, file: !459, line: 277, baseType: !463, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !459, line: 70, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !459, line: 65, size: 32, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !464, file: !459, line: 66, baseType: !7, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !454, file: !451, line: 93, baseType: !468, size: 128, offset: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !469, line: 38, size: 128, elements: !470)
!469 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!470 = !{!471, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !469, line: 39, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !468, file: !469, line: 39, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !454, file: !451, line: 94, baseType: !453, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !454, file: !451, line: 95, baseType: !477, size: 128, offset: 256)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !451, line: 47, size: 128, elements: !478)
!478 = !{!479, !495}
!479 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !451, line: 48, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !477, file: !451, line: 48, size: 64, elements: !481)
!481 = !{!482, !491}
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !451, line: 49, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !480, file: !451, line: 49, size: 64, elements: !484)
!484 = !{!485, !490}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !483, file: !451, line: 50, baseType: !486, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !487, line: 21, baseType: !488)
!487 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !489, line: 27, baseType: !7)
!489 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!490 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !483, file: !451, line: 50, baseType: !486, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !480, file: !451, line: 52, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !487, line: 23, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !489, line: 31, baseType: !494)
!494 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !477, file: !451, line: 54, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !454, file: !451, line: 96, baseType: !499, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !501)
!501 = !{!502, !503, !504, !512, !519, !520, !666, !2886, !2887, !2888, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !3150, !3158, !3159, !3160, !3170, !3171, !3172, !3173}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !500, file: !44, line: 611, baseType: !387, size: 16)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !500, file: !44, line: 612, baseType: !388, size: 16, offset: 16)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !500, file: !44, line: 613, baseType: !505, size: 32, offset: 32)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !506, line: 23, baseType: !507)
!506 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !506, line: 21, size: 32, elements: !508)
!508 = !{!509}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !507, file: !506, line: 22, baseType: !510, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !258, line: 32, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !379, line: 49, baseType: !7)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !500, file: !44, line: 614, baseType: !513, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !506, line: 28, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !506, line: 26, size: 32, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !514, file: !506, line: 27, baseType: !517, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !258, line: 33, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !379, line: 50, baseType: !7)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !500, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !500, file: !44, line: 622, baseType: !521, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !524)
!524 = !{!525, !529, !542, !546, !552, !556, !560, !564, !568, !572, !576, !577, !583, !587, !613, !642, !646, !652, !657, !661, !662}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !523, file: !44, line: 1865, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!453, !499, !453, !7}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !523, file: !44, line: 1866, baseType: !530, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!205, !453, !499, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !535, line: 10, size: 128, elements: !536)
!535 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!536 = !{!537, !541}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !534, file: !535, line: 11, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !185}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !534, file: !535, line: 12, baseType: !185, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !523, file: !44, line: 1867, baseType: !543, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!145, !499, !145}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !523, file: !44, line: 1868, baseType: !547, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!550, !499, !145}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !523, file: !44, line: 1870, baseType: !553, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!145, !453, !348, !145}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !523, file: !44, line: 1872, baseType: !557, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!145, !499, !453, !387, !257}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !523, file: !44, line: 1873, baseType: !561, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!145, !453, !499, !453}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !523, file: !44, line: 1874, baseType: !565, size: 64, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!145, !499, !453}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !523, file: !44, line: 1875, baseType: !569, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!145, !499, !453, !205}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !523, file: !44, line: 1876, baseType: !573, size: 64, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!145, !499, !453, !387}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !523, file: !44, line: 1877, baseType: !565, size: 64, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !523, file: !44, line: 1878, baseType: !578, size: 64, offset: 704)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!145, !499, !453, !387, !581}
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !258, line: 16, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !258, line: 13, baseType: !486)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !523, file: !44, line: 1879, baseType: !584, size: 64, offset: 768)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!145, !499, !453, !499, !453, !7}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !523, file: !44, line: 1881, baseType: !588, size: 64, offset: 832)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!145, !453, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !602, !610, !611, !612}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !592, file: !44, line: 220, baseType: !7, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !592, file: !44, line: 221, baseType: !387, size: 16, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !592, file: !44, line: 222, baseType: !505, size: 32, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !592, file: !44, line: 223, baseType: !513, size: 32, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !592, file: !44, line: 224, baseType: !599, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !258, line: 46, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !379, line: 88, baseType: !601)
!601 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !592, file: !44, line: 225, baseType: !603, size: 128, offset: 192)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !604, line: 13, size: 128, elements: !605)
!604 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!605 = !{!606, !609}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !603, file: !604, line: 14, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !604, line: 8, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !489, line: 30, baseType: !601)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !603, file: !604, line: 15, baseType: !381, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !592, file: !44, line: 226, baseType: !603, size: 128, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !592, file: !44, line: 227, baseType: !603, size: 128, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !592, file: !44, line: 234, baseType: !423, size: 64, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !523, file: !44, line: 1882, baseType: !614, size: 64, offset: 896)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!145, !617, !619, !486, !7}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !621, line: 22, size: 1152, elements: !622)
!621 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!622 = !{!623, !624, !625, !626, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !620, file: !621, line: 23, baseType: !486, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !620, file: !621, line: 24, baseType: !387, size: 16, offset: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !620, file: !621, line: 25, baseType: !7, size: 32, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !620, file: !621, line: 26, baseType: !627, size: 32, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !258, line: 104, baseType: !486)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !620, file: !621, line: 27, baseType: !492, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !620, file: !621, line: 28, baseType: !492, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !620, file: !621, line: 37, baseType: !492, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !620, file: !621, line: 38, baseType: !581, size: 32, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !620, file: !621, line: 39, baseType: !581, size: 32, offset: 352)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !620, file: !621, line: 40, baseType: !505, size: 32, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !620, file: !621, line: 41, baseType: !513, size: 32, offset: 416)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !620, file: !621, line: 42, baseType: !599, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !620, file: !621, line: 43, baseType: !603, size: 128, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !620, file: !621, line: 44, baseType: !603, size: 128, offset: 640)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !620, file: !621, line: 45, baseType: !603, size: 128, offset: 768)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !620, file: !621, line: 46, baseType: !603, size: 128, offset: 896)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !620, file: !621, line: 47, baseType: !492, size: 64, offset: 1024)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !620, file: !621, line: 48, baseType: !492, size: 64, offset: 1088)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !523, file: !44, line: 1883, baseType: !643, size: 64, offset: 960)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!377, !453, !348, !393}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !523, file: !44, line: 1884, baseType: !647, size: 64, offset: 1024)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!145, !499, !650, !492, !492}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !523, file: !44, line: 1886, baseType: !653, size: 64, offset: 1088)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!145, !499, !656, !145}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !523, file: !44, line: 1887, baseType: !658, size: 64, offset: 1152)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!145, !499, !453, !423, !7, !387}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !523, file: !44, line: 1890, baseType: !573, size: 64, offset: 1216)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !523, file: !44, line: 1891, baseType: !663, size: 64, offset: 1280)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!145, !499, !550, !145}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !500, file: !44, line: 623, baseType: !667, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !722, !2493, !2575, !2658, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2674, !2678, !2679, !2682, !2683, !2686, !2687, !2688, !2729, !2756, !2757, !2758, !2759, !2760, !2761, !2764, !2766, !2773, !2774, !2776, !2777, !2778, !2837, !2838, !2853, !2854, !2855, !2856, !2857, !2860, !2861, !2862, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !668, file: !44, line: 1417, baseType: !294, size: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !668, file: !44, line: 1418, baseType: !581, size: 32, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !668, file: !44, line: 1419, baseType: !141, size: 8, offset: 160)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !668, file: !44, line: 1420, baseType: !142, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !668, file: !44, line: 1421, baseType: !599, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !668, file: !44, line: 1422, baseType: !676, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !678)
!678 = !{!679, !680, !681, !688, !692, !696, !700, !701, !702, !712, !715, !716, !717, !719, !720, !721}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !677, file: !44, line: 2229, baseType: !205, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !677, file: !44, line: 2230, baseType: !145, size: 32, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !677, file: !44, line: 2238, baseType: !682, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!145, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !687, line: 28, flags: DIFlagFwdDecl)
!687 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!688 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !677, file: !44, line: 2239, baseType: !689, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !677, file: !44, line: 2240, baseType: !693, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!453, !676, !145, !205, !185}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !677, file: !44, line: 2242, baseType: !697, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !667}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !677, file: !44, line: 2243, baseType: !207, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !677, file: !44, line: 2244, baseType: !676, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !677, file: !44, line: 2245, baseType: !703, size: 64, offset: 512)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !258, line: 182, size: 64, elements: !704)
!704 = !{!705}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !703, file: !258, line: 183, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !258, line: 186, size: 128, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !707, file: !258, line: 187, baseType: !706, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !707, file: !258, line: 187, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !677, file: !44, line: 2247, baseType: !713, offset: 576)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !714, line: 187, elements: !321)
!714 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!715 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !677, file: !44, line: 2248, baseType: !713, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !677, file: !44, line: 2249, baseType: !713, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !677, file: !44, line: 2250, baseType: !718, offset: 576)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, elements: !183)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !677, file: !44, line: 2252, baseType: !713, offset: 576)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !677, file: !44, line: 2253, baseType: !713, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !677, file: !44, line: 2254, baseType: !713, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !668, file: !44, line: 1423, baseType: !723, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !726)
!726 = !{!727, !731, !735, !736, !740, !746, !750, !751, !752, !756, !760, !761, !762, !763, !769, !774, !775, !782, !783, !784, !785, !2477, !2492}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !725, file: !44, line: 1936, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!499, !667}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !725, file: !44, line: 1937, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !499}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !725, file: !44, line: 1938, baseType: !732, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !725, file: !44, line: 1940, baseType: !737, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !499, !145}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !725, file: !44, line: 1941, baseType: !741, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!145, !499, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !725, file: !44, line: 1942, baseType: !747, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!145, !499}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !725, file: !44, line: 1943, baseType: !732, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !725, file: !44, line: 1944, baseType: !697, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !725, file: !44, line: 1945, baseType: !753, size: 64, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!145, !667, !145}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !725, file: !44, line: 1946, baseType: !757, size: 64, offset: 576)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!145, !667}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !725, file: !44, line: 1947, baseType: !757, size: 64, offset: 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !725, file: !44, line: 1948, baseType: !757, size: 64, offset: 704)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !725, file: !44, line: 1949, baseType: !757, size: 64, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !725, file: !44, line: 1950, baseType: !764, size: 64, offset: 832)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!145, !453, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !725, file: !44, line: 1951, baseType: !770, size: 64, offset: 896)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!145, !667, !773, !348}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !725, file: !44, line: 1952, baseType: !697, size: 64, offset: 960)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !725, file: !44, line: 1954, baseType: !776, size: 64, offset: 1024)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!145, !779, !453}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !781, line: 539, flags: DIFlagFwdDecl)
!781 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!782 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !725, file: !44, line: 1955, baseType: !776, size: 64, offset: 1088)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !725, file: !44, line: 1956, baseType: !776, size: 64, offset: 1152)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !725, file: !44, line: 1957, baseType: !776, size: 64, offset: 1216)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !725, file: !44, line: 1963, baseType: !786, size: 64, offset: 1280)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!145, !667, !789, !812}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !791, line: 68, size: 512, align: 128, elements: !792)
!791 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793, !794, !2469, !2476}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !791, line: 69, baseType: !142, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !791, line: 77, baseType: !795, size: 320, offset: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !791, line: 77, size: 320, elements: !796)
!796 = !{!797, !985, !990, !1018, !1026, !1032, !2400, !2468}
!797 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 78, baseType: !798, size: 320)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 78, size: 320, elements: !799)
!799 = !{!800, !801, !983, !984}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !798, file: !791, line: 84, baseType: !294, size: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !798, file: !791, line: 86, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !804)
!804 = !{!805, !806, !814, !815, !820, !835, !851, !852, !853, !854, !976, !977, !980, !981, !982}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !803, file: !44, line: 452, baseType: !499, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !803, file: !44, line: 453, baseType: !807, size: 128, offset: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !808, line: 292, size: 128, elements: !809)
!808 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !811, !813}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !807, file: !808, line: 293, baseType: !307)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !807, file: !808, line: 295, baseType: !812, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !258, line: 148, baseType: !7)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !807, file: !808, line: 296, baseType: !185, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !803, file: !44, line: 454, baseType: !812, size: 32, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !803, file: !44, line: 455, baseType: !816, size: 32, offset: 224)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !258, line: 168, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 166, size: 32, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !817, file: !258, line: 167, baseType: !145, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !803, file: !44, line: 460, baseType: !821, size: 128, offset: 256)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !822, line: 125, size: 128, elements: !823)
!822 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!823 = !{!824, !834}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !821, file: !822, line: 126, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !822, line: 31, size: 64, elements: !826)
!826 = !{!827}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !825, file: !822, line: 32, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !822, line: 24, size: 192, align: 64, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !829, file: !822, line: 25, baseType: !142, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !829, file: !822, line: 26, baseType: !828, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !829, file: !822, line: 27, baseType: !828, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !821, file: !822, line: 127, baseType: !828, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !803, file: !44, line: 461, baseType: !836, size: 256, offset: 384)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !837, line: 35, size: 256, elements: !838)
!837 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!838 = !{!839, !847, !848, !850}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !836, file: !837, line: 36, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !841, line: 13, baseType: !842)
!841 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !258, line: 175, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 173, size: 64, elements: !844)
!844 = !{!845}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !843, file: !258, line: 174, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !487, line: 22, baseType: !608)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !836, file: !837, line: 42, baseType: !840, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !836, file: !837, line: 46, baseType: !849, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !308, line: 29, baseType: !315)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !836, file: !837, line: 47, baseType: !294, size: 128, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !803, file: !44, line: 462, baseType: !142, size: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !803, file: !44, line: 463, baseType: !142, size: 64, offset: 704)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !803, file: !44, line: 464, baseType: !142, size: 64, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !803, file: !44, line: 465, baseType: !855, size: 64, offset: 832)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !858)
!858 = !{!859, !863, !867, !871, !875, !879, !885, !891, !895, !900, !904, !908, !912, !940, !944, !950, !951, !952, !956, !961, !965, !972}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !857, file: !44, line: 368, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!145, !789, !744}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !857, file: !44, line: 369, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!145, !423, !789}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !857, file: !44, line: 372, baseType: !868, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!145, !802, !744}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !857, file: !44, line: 375, baseType: !872, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!145, !789}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !857, file: !44, line: 381, baseType: !876, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!145, !423, !802, !297, !7}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !857, file: !44, line: 383, baseType: !880, size: 64, offset: 320)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !883}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !857, file: !44, line: 385, baseType: !886, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!145, !423, !802, !599, !7, !7, !889, !890}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !857, file: !44, line: 388, baseType: !892, size: 64, offset: 448)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!145, !423, !802, !599, !7, !7, !789, !185}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !857, file: !44, line: 393, baseType: !896, size: 64, offset: 512)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!899, !802, !899}
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !258, line: 125, baseType: !492)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !857, file: !44, line: 394, baseType: !901, size: 64, offset: 576)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !789, !7, !7}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !857, file: !44, line: 395, baseType: !905, size: 64, offset: 640)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!145, !789, !812}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !857, file: !44, line: 396, baseType: !909, size: 64, offset: 704)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !789}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !857, file: !44, line: 397, baseType: !913, size: 64, offset: 768)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!377, !916, !938}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !918)
!918 = !{!919, !920, !921, !925, !926, !927, !930, !931}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !917, file: !44, line: 321, baseType: !423, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !917, file: !44, line: 326, baseType: !599, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !917, file: !44, line: 327, baseType: !922, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !916, !381, !381}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !917, file: !44, line: 328, baseType: !185, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !917, file: !44, line: 329, baseType: !145, size: 32, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !917, file: !44, line: 330, baseType: !928, size: 16, offset: 288)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !487, line: 19, baseType: !929)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !489, line: 24, baseType: !388)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !917, file: !44, line: 331, baseType: !928, size: 16, offset: 304)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !44, line: 332, baseType: !932, size: 64, offset: 320)
!932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !44, line: 332, size: 64, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !932, file: !44, line: 333, baseType: !7, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !932, file: !44, line: 334, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !857, file: !44, line: 402, baseType: !941, size: 64, offset: 832)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!145, !802, !789, !789, !5}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !857, file: !44, line: 404, baseType: !945, size: 64, offset: 896)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!257, !789, !948}
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !949, line: 305, baseType: !7)
!949 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!950 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !857, file: !44, line: 405, baseType: !909, size: 64, offset: 960)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !857, file: !44, line: 406, baseType: !872, size: 64, offset: 1024)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !857, file: !44, line: 407, baseType: !953, size: 64, offset: 1088)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!145, !789, !142, !142}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !857, file: !44, line: 409, baseType: !957, size: 64, offset: 1152)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !789, !960, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !857, file: !44, line: 410, baseType: !962, size: 64, offset: 1216)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!145, !802, !789}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !857, file: !44, line: 413, baseType: !966, size: 64, offset: 1280)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!145, !969, !423, !971}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !857, file: !44, line: 415, baseType: !973, size: 64, offset: 1344)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !423}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !44, line: 466, baseType: !142, size: 64, offset: 896)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !803, file: !44, line: 467, baseType: !978, size: 32, offset: 960)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !979, line: 8, baseType: !486)
!979 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!980 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !803, file: !44, line: 468, baseType: !307, offset: 992)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !803, file: !44, line: 469, baseType: !294, size: 128, offset: 1024)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !803, file: !44, line: 470, baseType: !185, size: 64, offset: 1152)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !798, file: !791, line: 87, baseType: !142, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !798, file: !791, line: 94, baseType: !142, size: 64, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 96, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 96, size: 64, elements: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !986, file: !791, line: 101, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !258, line: 143, baseType: !492)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 103, baseType: !991, size: 320)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 103, size: 320, elements: !992)
!992 = !{!993, !1003, !1006, !1007}
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !791, line: 104, baseType: !994, size: 128)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !991, file: !791, line: 104, size: 128, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !994, file: !791, line: 105, baseType: !294, size: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !791, line: 106, baseType: !998, size: 128)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !994, file: !791, line: 106, size: 128, elements: !999)
!999 = !{!1000, !1001, !1002}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !998, file: !791, line: 107, baseType: !789, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !998, file: !791, line: 109, baseType: !145, size: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !998, file: !791, line: 110, baseType: !145, size: 32, offset: 96)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !991, file: !791, line: 117, baseType: !1004, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !791, line: 117, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !991, file: !791, line: 119, baseType: !185, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !791, line: 120, baseType: !1008, size: 64, offset: 256)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !991, file: !791, line: 120, size: 64, elements: !1009)
!1009 = !{!1010, !1011, !1012}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1008, file: !791, line: 121, baseType: !185, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1008, file: !791, line: 122, baseType: !142, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !791, line: 123, baseType: !1013, size: 32)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !791, line: 123, size: 32, elements: !1014)
!1014 = !{!1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1013, file: !791, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1013, file: !791, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1013, file: !791, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 130, baseType: !1019, size: 192)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 130, size: 192, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1019, file: !791, line: 131, baseType: !142, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1019, file: !791, line: 134, baseType: !141, size: 8, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1019, file: !791, line: 135, baseType: !141, size: 8, offset: 72)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1019, file: !791, line: 136, baseType: !816, size: 32, offset: 96)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1019, file: !791, line: 137, baseType: !7, size: 32, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 139, baseType: !1027, size: 256)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 139, size: 256, elements: !1028)
!1028 = !{!1029, !1030, !1031}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1027, file: !791, line: 140, baseType: !142, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1027, file: !791, line: 141, baseType: !816, size: 32, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1027, file: !791, line: 143, baseType: !294, size: 128, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 145, baseType: !1033, size: 256)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 145, size: 256, elements: !1034)
!1034 = !{!1035, !1036, !1038, !1039, !2399}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1033, file: !791, line: 146, baseType: !142, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1033, file: !791, line: 147, baseType: !1037, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !781, line: 509, baseType: !789)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1033, file: !791, line: 148, baseType: !142, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1033, file: !791, line: 149, baseType: !1040, size: 64, offset: 192)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1033, file: !791, line: 149, size: 64, elements: !1041)
!1041 = !{!1042, !2398}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1040, file: !791, line: 150, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !791, line: 388, size: 7296, elements: !1045)
!1045 = !{!1046, !2394}
!1046 = !DIDerivedType(tag: DW_TAG_member, scope: !1044, file: !791, line: 389, baseType: !1047, size: 7296)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1044, file: !791, line: 389, size: 7296, elements: !1048)
!1048 = !{!1049, !1167, !1168, !1169, !1173, !1174, !1175, !1176, !1177, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1218, !1226, !1229, !1275, !1276, !2378, !2379, !2382, !2383, !2384, !2387, !2388, !2389, !2392, !2393}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1047, file: !791, line: 390, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !791, line: 305, size: 1472, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1067, !1068, !1073, !1074, !1077, !1161, !1162, !1163, !1164, !1165}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1051, file: !791, line: 308, baseType: !142, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1051, file: !791, line: 309, baseType: !142, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1051, file: !791, line: 313, baseType: !1050, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1051, file: !791, line: 313, baseType: !1050, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1051, file: !791, line: 315, baseType: !829, size: 192, align: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1051, file: !791, line: 323, baseType: !142, size: 64, offset: 448)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1051, file: !791, line: 327, baseType: !1043, size: 64, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1051, file: !791, line: 333, baseType: !1061, size: 64, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !781, line: 284, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !781, line: 284, size: 64, elements: !1063)
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1062, file: !781, line: 284, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1066, line: 19, baseType: !142)
!1066 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1051, file: !791, line: 334, baseType: !142, size: 64, offset: 640)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1051, file: !791, line: 343, baseType: !1069, size: 256, offset: 704)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !791, line: 340, size: 256, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1069, file: !791, line: 341, baseType: !829, size: 192, align: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1069, file: !791, line: 342, baseType: !142, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1051, file: !791, line: 351, baseType: !294, size: 128, offset: 960)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1051, file: !791, line: 353, baseType: !1075, size: 64, offset: 1088)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !791, line: 353, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1051, file: !791, line: 356, baseType: !1078, size: 64, offset: 1152)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1081)
!1081 = !{!1082, !1086, !1087, !1091, !1095, !1135, !1139, !1143, !1147, !1148, !1149, !1153, !1157}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1080, file: !14, line: 558, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !1050}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1080, file: !14, line: 559, baseType: !1083, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1080, file: !14, line: 560, baseType: !1088, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!145, !1050, !142}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1080, file: !14, line: 561, baseType: !1092, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!145, !1050}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1080, file: !14, line: 562, baseType: !1096, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !791, line: 682, baseType: !7)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1102)
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108, !1115, !1122, !1128, !1129, !1130, !1132, !1134}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1101, file: !14, line: 509, baseType: !1050, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1101, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1101, file: !14, line: 511, baseType: !812, size: 32, offset: 96)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1101, file: !14, line: 512, baseType: !142, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1101, file: !14, line: 513, baseType: !142, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1101, file: !14, line: 514, baseType: !1109, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !781, line: 385, baseType: !1111)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 385, size: 64, elements: !1112)
!1112 = !{!1113}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1111, file: !781, line: 385, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1066, line: 15, baseType: !142)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1101, file: !14, line: 516, baseType: !1116, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !781, line: 359, baseType: !1118)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 359, size: 64, elements: !1119)
!1119 = !{!1120}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1118, file: !781, line: 359, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1066, line: 16, baseType: !142)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1101, file: !14, line: 519, baseType: !1123, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1066, line: 21, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1066, line: 21, size: 64, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1124, file: !1066, line: 21, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1066, line: 14, baseType: !142)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1101, file: !14, line: 521, baseType: !789, size: 64, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1101, file: !14, line: 522, baseType: !789, size: 64, offset: 512)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1101, file: !14, line: 528, baseType: !1131, size: 64, offset: 576)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1101, file: !14, line: 532, baseType: !1133, size: 64, offset: 640)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1101, file: !14, line: 536, baseType: !1037, size: 64, offset: 704)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1080, file: !14, line: 563, baseType: !1136, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!1099, !1100, !13}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1080, file: !14, line: 565, baseType: !1140, size: 64, offset: 384)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !1100, !142, !142}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1080, file: !14, line: 567, baseType: !1144, size: 64, offset: 448)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!142, !1050}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1080, file: !14, line: 571, baseType: !1096, size: 64, offset: 512)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1080, file: !14, line: 574, baseType: !1096, size: 64, offset: 576)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1080, file: !14, line: 579, baseType: !1150, size: 64, offset: 640)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!145, !1050, !142, !185, !145, !145}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1080, file: !14, line: 585, baseType: !1154, size: 64, offset: 704)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!205, !1050}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1080, file: !14, line: 615, baseType: !1158, size: 64, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!789, !1050, !142}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1051, file: !791, line: 359, baseType: !142, size: 64, offset: 1216)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1051, file: !791, line: 361, baseType: !423, size: 64, offset: 1280)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1051, file: !791, line: 362, baseType: !185, size: 64, offset: 1344)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1051, file: !791, line: 365, baseType: !840, size: 64, offset: 1408)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1051, file: !791, line: 373, baseType: !1166, offset: 1472)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !791, line: 296, elements: !321)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1047, file: !791, line: 391, baseType: !825, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1047, file: !791, line: 392, baseType: !492, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1047, file: !791, line: 394, baseType: !1170, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!142, !423, !142, !142, !142, !142}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1047, file: !791, line: 398, baseType: !142, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1047, file: !791, line: 399, baseType: !142, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1047, file: !791, line: 405, baseType: !142, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1047, file: !791, line: 406, baseType: !142, size: 64, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1047, file: !791, line: 407, baseType: !1178, size: 64, offset: 512)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !781, line: 286, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 286, size: 64, elements: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1180, file: !781, line: 286, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1066, line: 18, baseType: !142)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1047, file: !791, line: 416, baseType: !816, size: 32, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1047, file: !791, line: 428, baseType: !816, size: 32, offset: 608)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1047, file: !791, line: 437, baseType: !816, size: 32, offset: 640)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1047, file: !791, line: 447, baseType: !816, size: 32, offset: 672)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1047, file: !791, line: 450, baseType: !840, size: 64, offset: 704)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1047, file: !791, line: 452, baseType: !145, size: 32, offset: 768)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1047, file: !791, line: 454, baseType: !307, offset: 800)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1047, file: !791, line: 457, baseType: !836, size: 256, offset: 832)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1047, file: !791, line: 459, baseType: !294, size: 128, offset: 1088)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1047, file: !791, line: 466, baseType: !142, size: 64, offset: 1216)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1047, file: !791, line: 467, baseType: !142, size: 64, offset: 1280)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1047, file: !791, line: 469, baseType: !142, size: 64, offset: 1344)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1047, file: !791, line: 470, baseType: !142, size: 64, offset: 1408)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1047, file: !791, line: 471, baseType: !842, size: 64, offset: 1472)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1047, file: !791, line: 472, baseType: !142, size: 64, offset: 1536)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1047, file: !791, line: 473, baseType: !142, size: 64, offset: 1600)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1047, file: !791, line: 474, baseType: !142, size: 64, offset: 1664)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1047, file: !791, line: 475, baseType: !142, size: 64, offset: 1728)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1047, file: !791, line: 477, baseType: !307, offset: 1792)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1047, file: !791, line: 478, baseType: !142, size: 64, offset: 1792)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1047, file: !791, line: 478, baseType: !142, size: 64, offset: 1856)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1047, file: !791, line: 478, baseType: !142, size: 64, offset: 1920)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1047, file: !791, line: 478, baseType: !142, size: 64, offset: 1984)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1047, file: !791, line: 479, baseType: !142, size: 64, offset: 2048)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1047, file: !791, line: 479, baseType: !142, size: 64, offset: 2112)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1047, file: !791, line: 479, baseType: !142, size: 64, offset: 2176)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1047, file: !791, line: 480, baseType: !142, size: 64, offset: 2240)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1047, file: !791, line: 480, baseType: !142, size: 64, offset: 2304)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1047, file: !791, line: 480, baseType: !142, size: 64, offset: 2368)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1047, file: !791, line: 480, baseType: !142, size: 64, offset: 2432)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1047, file: !791, line: 482, baseType: !1215, size: 2816, offset: 2496)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 2816, elements: !1216)
!1216 = !{!1217}
!1217 = !DISubrange(count: 44)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1047, file: !791, line: 488, baseType: !1219, size: 256, offset: 5312)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1220, line: 60, size: 256, elements: !1221)
!1220 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1221 = !{!1222}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1219, file: !1220, line: 61, baseType: !1223, size: 256)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 256, elements: !1224)
!1224 = !{!1225}
!1225 = !DISubrange(count: 4)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1047, file: !791, line: 490, baseType: !1227, size: 64, offset: 5568)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !791, line: 490, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1047, file: !791, line: 493, baseType: !1230, size: 896, offset: 5632)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1231, line: 53, baseType: !1232)
!1231 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1231, line: 13, size: 896, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1240, !1241, !1248, !1249, !1269, !1270, !1271}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1232, file: !1231, line: 18, baseType: !492, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1232, file: !1231, line: 28, baseType: !842, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1232, file: !1231, line: 31, baseType: !836, size: 256, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1232, file: !1231, line: 32, baseType: !1238, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1231, line: 32, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1232, file: !1231, line: 37, baseType: !388, size: 16, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1232, file: !1231, line: 40, baseType: !1242, size: 192, offset: 512)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1243, line: 53, size: 192, elements: !1244)
!1243 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1244 = !{!1245, !1246, !1247}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1242, file: !1243, line: 54, baseType: !840, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1242, file: !1243, line: 55, baseType: !307, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1242, file: !1243, line: 59, baseType: !294, size: 128, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1232, file: !1231, line: 41, baseType: !185, size: 64, offset: 704)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1232, file: !1231, line: 42, baseType: !1250, size: 64, offset: 768)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1253, line: 13, size: 896, elements: !1254)
!1253 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1252, file: !1253, line: 14, baseType: !185, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1252, file: !1253, line: 15, baseType: !142, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1252, file: !1253, line: 17, baseType: !142, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1252, file: !1253, line: 17, baseType: !142, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1252, file: !1253, line: 19, baseType: !381, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1252, file: !1253, line: 21, baseType: !381, size: 64, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1252, file: !1253, line: 22, baseType: !381, size: 64, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1252, file: !1253, line: 23, baseType: !381, size: 64, offset: 448)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1252, file: !1253, line: 24, baseType: !381, size: 64, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1252, file: !1253, line: 25, baseType: !381, size: 64, offset: 576)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1252, file: !1253, line: 26, baseType: !381, size: 64, offset: 640)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1252, file: !1253, line: 27, baseType: !381, size: 64, offset: 704)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1252, file: !1253, line: 28, baseType: !381, size: 64, offset: 768)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1252, file: !1253, line: 29, baseType: !381, size: 64, offset: 832)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1232, file: !1231, line: 44, baseType: !816, size: 32, offset: 832)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1232, file: !1231, line: 50, baseType: !928, size: 16, offset: 864)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1232, file: !1231, line: 51, baseType: !1272, size: 16, offset: 880)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !487, line: 18, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !489, line: 23, baseType: !1274)
!1274 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1047, file: !791, line: 495, baseType: !142, size: 64, offset: 6528)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1047, file: !791, line: 497, baseType: !1277, size: 64, offset: 6592)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !791, line: 381, size: 384, elements: !1279)
!1279 = !{!1280, !1281, !2377}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1278, file: !791, line: 382, baseType: !816, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1278, file: !791, line: 383, baseType: !1282, size: 128, offset: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !791, line: 376, size: 128, elements: !1283)
!1283 = !{!1284, !2375}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1282, file: !791, line: 377, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1287, line: 640, size: 48640, elements: !1288)
!1287 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1288 = !{!1289, !1295, !1297, !1298, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1315, !1333, !1344, !1429, !1430, !1431, !1442, !1443, !1445, !1446, !1447, !1448, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1527, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1565, !1567, !1568, !1569, !1581, !1582, !1583, !1584, !1585, !1586, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1610, !1615, !1799, !1800, !1801, !1802, !1806, !1809, !1812, !1815, !1818, !1822, !1923, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1967, !1968, !1969, !1970, !1971, !1976, !1977, !1978, !1981, !1982, !1985, !1988, !1991, !1994, !2037, !2040, !2041, !2120, !2121, !2124, !2125, !2128, !2129, !2130, !2134, !2135, !2136, !2149, !2150, !2151, !2161, !2166, !2169, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1286, file: !1287, line: 646, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1291, line: 56, size: 128, elements: !1292)
!1291 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1290, file: !1291, line: 57, baseType: !142, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1290, file: !1291, line: 58, baseType: !486, size: 32, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1286, file: !1287, line: 649, baseType: !1296, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !381)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1286, file: !1287, line: 657, baseType: !185, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1286, file: !1287, line: 658, baseType: !1299, size: 32, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1300, line: 113, baseType: !1301)
!1300 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1300, line: 111, size: 32, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1301, file: !1300, line: 112, baseType: !816, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1286, file: !1287, line: 660, baseType: !7, size: 32, offset: 288)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1286, file: !1287, line: 661, baseType: !7, size: 32, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1286, file: !1287, line: 684, baseType: !145, size: 32, offset: 352)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1286, file: !1287, line: 686, baseType: !145, size: 32, offset: 384)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1286, file: !1287, line: 687, baseType: !145, size: 32, offset: 416)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1286, file: !1287, line: 688, baseType: !145, size: 32, offset: 448)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1286, file: !1287, line: 689, baseType: !7, size: 32, offset: 480)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1286, file: !1287, line: 691, baseType: !1312, size: 64, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1314)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1287, line: 691, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1286, file: !1287, line: 692, baseType: !1316, size: 832, offset: 576)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1287, line: 451, size: 832, elements: !1317)
!1317 = !{!1318, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1316, file: !1287, line: 453, baseType: !1319, size: 128)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1287, line: 325, size: 128, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1319, file: !1287, line: 326, baseType: !142, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1319, file: !1287, line: 327, baseType: !486, size: 32, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1316, file: !1287, line: 454, baseType: !829, size: 192, align: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1316, file: !1287, line: 455, baseType: !294, size: 128, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1316, file: !1287, line: 456, baseType: !7, size: 32, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1316, file: !1287, line: 458, baseType: !492, size: 64, offset: 512)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1316, file: !1287, line: 459, baseType: !492, size: 64, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1316, file: !1287, line: 460, baseType: !492, size: 64, offset: 640)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1316, file: !1287, line: 461, baseType: !492, size: 64, offset: 704)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1316, file: !1287, line: 463, baseType: !492, size: 64, offset: 768)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1316, file: !1287, line: 465, baseType: !1332, offset: 832)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1287, line: 415, elements: !321)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1286, file: !1287, line: 693, baseType: !1334, size: 384, offset: 1408)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1287, line: 489, size: 384, elements: !1335)
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1334, file: !1287, line: 490, baseType: !294, size: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1334, file: !1287, line: 491, baseType: !142, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1334, file: !1287, line: 492, baseType: !142, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1334, file: !1287, line: 493, baseType: !7, size: 32, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1334, file: !1287, line: 494, baseType: !388, size: 16, offset: 288)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1334, file: !1287, line: 495, baseType: !388, size: 16, offset: 304)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1334, file: !1287, line: 497, baseType: !1343, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1286, file: !1287, line: 697, baseType: !1345, size: 1792, offset: 1792)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1287, line: 507, size: 1792, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1426, !1427}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1345, file: !1287, line: 508, baseType: !829, size: 192, align: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1345, file: !1287, line: 515, baseType: !492, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1345, file: !1287, line: 516, baseType: !492, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1345, file: !1287, line: 517, baseType: !492, size: 64, offset: 320)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1345, file: !1287, line: 518, baseType: !492, size: 64, offset: 384)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1345, file: !1287, line: 519, baseType: !492, size: 64, offset: 448)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1345, file: !1287, line: 526, baseType: !846, size: 64, offset: 512)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1345, file: !1287, line: 527, baseType: !492, size: 64, offset: 576)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1345, file: !1287, line: 528, baseType: !7, size: 32, offset: 640)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1345, file: !1287, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1345, file: !1287, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1345, file: !1287, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1345, file: !1287, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1345, file: !1287, line: 563, baseType: !1361, size: 512, offset: 704)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1362)
!1362 = !{!1363, !1371, !1372, !1377, !1420, !1423, !1424, !1425}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1361, file: !20, line: 119, baseType: !1364, size: 256)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1365, line: 9, size: 256, elements: !1366)
!1365 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1364, file: !1365, line: 10, baseType: !829, size: 192, align: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1364, file: !1365, line: 11, baseType: !1369, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1370, line: 29, baseType: !846)
!1370 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1361, file: !20, line: 120, baseType: !1369, size: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1361, file: !20, line: 121, baseType: !1373, size: 64, offset: 320)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!19, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1361, file: !20, line: 122, baseType: !1378, size: 64, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1380)
!1380 = !{!1381, !1401, !1402, !1405, !1410, !1411, !1415, !1419}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1379, file: !20, line: 160, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1383, file: !20, line: 215, baseType: !849)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1383, file: !20, line: 216, baseType: !7, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1383, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1383, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1383, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1383, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1383, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1383, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1383, file: !20, line: 233, baseType: !1369, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1383, file: !20, line: 234, baseType: !1376, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1383, file: !20, line: 235, baseType: !1369, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1383, file: !20, line: 236, baseType: !1376, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1383, file: !20, line: 237, baseType: !1398, size: 4096, offset: 512)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 4096, elements: !1399)
!1399 = !{!1400}
!1400 = !DISubrange(count: 8)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1379, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1379, file: !20, line: 162, baseType: !1403, size: 32, offset: 96)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !258, line: 27, baseType: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !379, line: 96, baseType: !145)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1379, file: !20, line: 163, baseType: !1406, size: 32, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !459, line: 276, baseType: !1407)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !459, line: 276, size: 32, elements: !1408)
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1407, file: !459, line: 276, baseType: !463, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1379, file: !20, line: 164, baseType: !1376, size: 64, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1379, file: !20, line: 165, baseType: !1412, size: 128, offset: 256)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1365, line: 14, size: 128, elements: !1413)
!1413 = !{!1414}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1412, file: !1365, line: 15, baseType: !821, size: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1379, file: !20, line: 166, baseType: !1416, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!1369}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1379, file: !20, line: 167, baseType: !1369, size: 64, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1361, file: !20, line: 123, baseType: !1421, size: 8, offset: 448)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !487, line: 17, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !489, line: 21, baseType: !141)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1361, file: !20, line: 124, baseType: !1421, size: 8, offset: 456)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1361, file: !20, line: 125, baseType: !1421, size: 8, offset: 464)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1361, file: !20, line: 126, baseType: !1421, size: 8, offset: 472)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1345, file: !1287, line: 572, baseType: !1361, size: 512, offset: 1216)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1345, file: !1287, line: 580, baseType: !1428, size: 64, offset: 1728)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1286, file: !1287, line: 721, baseType: !7, size: 32, offset: 3584)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1286, file: !1287, line: 722, baseType: !145, size: 32, offset: 3616)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1286, file: !1287, line: 723, baseType: !1432, size: 64, offset: 3648)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1435, line: 17, baseType: !1436)
!1435 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1435, line: 17, size: 64, elements: !1437)
!1437 = !{!1438}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1436, file: !1435, line: 17, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !1440)
!1440 = !{!1441}
!1441 = !DISubrange(count: 1)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1286, file: !1287, line: 724, baseType: !1434, size: 64, offset: 3712)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1286, file: !1287, line: 749, baseType: !1444, offset: 3776)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1287, line: 290, elements: !321)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1286, file: !1287, line: 751, baseType: !294, size: 128, offset: 3776)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1286, file: !1287, line: 757, baseType: !1043, size: 64, offset: 3904)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1286, file: !1287, line: 758, baseType: !1043, size: 64, offset: 3968)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1286, file: !1287, line: 761, baseType: !1449, size: 320, offset: 4032)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1220, line: 34, size: 320, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1449, file: !1220, line: 35, baseType: !492, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1449, file: !1220, line: 36, baseType: !1453, size: 256, offset: 64)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1050, size: 256, elements: !1224)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1286, file: !1287, line: 766, baseType: !145, size: 32, offset: 4352)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1286, file: !1287, line: 767, baseType: !145, size: 32, offset: 4384)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1286, file: !1287, line: 768, baseType: !145, size: 32, offset: 4416)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1286, file: !1287, line: 770, baseType: !145, size: 32, offset: 4448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1286, file: !1287, line: 772, baseType: !142, size: 64, offset: 4480)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1286, file: !1287, line: 775, baseType: !7, size: 32, offset: 4544)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1286, file: !1287, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1286, file: !1287, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1286, file: !1287, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1286, file: !1287, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1286, file: !1287, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1286, file: !1287, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1286, file: !1287, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1286, file: !1287, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1286, file: !1287, line: 831, baseType: !142, size: 64, offset: 4672)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1286, file: !1287, line: 833, baseType: !1470, size: 384, offset: 4736)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1471)
!1471 = !{!1472, !1477}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1470, file: !25, line: 26, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!381, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1470, file: !25, line: 27, baseType: !1478, size: 320, offset: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1470, file: !25, line: 27, size: 320, elements: !1479)
!1479 = !{!1480, !1490, !1517}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1478, file: !25, line: 36, baseType: !1481, size: 320)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !25, line: 29, size: 320, elements: !1482)
!1482 = !{!1483, !1485, !1486, !1487, !1488, !1489}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1481, file: !25, line: 30, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1481, file: !25, line: 31, baseType: !486, size: 32, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1481, file: !25, line: 32, baseType: !486, size: 32, offset: 96)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1481, file: !25, line: 33, baseType: !486, size: 32, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1481, file: !25, line: 34, baseType: !492, size: 64, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1481, file: !25, line: 35, baseType: !1484, size: 64, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1478, file: !25, line: 46, baseType: !1491, size: 192)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !25, line: 38, size: 192, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1516}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1491, file: !25, line: 39, baseType: !1403, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1491, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1491, file: !25, line: 41, baseType: !1496, size: 64, offset: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1491, file: !25, line: 41, size: 64, elements: !1497)
!1497 = !{!1498, !1506}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1496, file: !25, line: 42, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1501, line: 7, size: 128, elements: !1502)
!1501 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1502 = !{!1503, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1500, file: !1501, line: 8, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !379, line: 93, baseType: !601)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1500, file: !1501, line: 9, baseType: !601, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1496, file: !25, line: 43, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1509, line: 7, size: 64, elements: !1510)
!1509 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1510 = !{!1511, !1515}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1508, file: !1509, line: 8, baseType: !1512, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1509, line: 5, baseType: !1513)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !487, line: 20, baseType: !1514)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !489, line: 26, baseType: !145)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1508, file: !1509, line: 9, baseType: !1513, size: 32, offset: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1491, file: !25, line: 45, baseType: !492, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1478, file: !25, line: 54, baseType: !1518, size: 256)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !25, line: 48, size: 256, elements: !1519)
!1519 = !{!1520, !1523, !1524, !1525, !1526}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1518, file: !25, line: 49, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1518, file: !25, line: 50, baseType: !145, size: 32, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1518, file: !25, line: 51, baseType: !145, size: 32, offset: 96)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1518, file: !25, line: 52, baseType: !142, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1518, file: !25, line: 53, baseType: !142, size: 64, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1286, file: !1287, line: 835, baseType: !1528, size: 32, offset: 5120)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !258, line: 22, baseType: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !379, line: 28, baseType: !145)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1286, file: !1287, line: 836, baseType: !1528, size: 32, offset: 5152)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1286, file: !1287, line: 840, baseType: !142, size: 64, offset: 5184)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1286, file: !1287, line: 849, baseType: !1285, size: 64, offset: 5248)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1286, file: !1287, line: 852, baseType: !1285, size: 64, offset: 5312)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1286, file: !1287, line: 857, baseType: !294, size: 128, offset: 5376)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1286, file: !1287, line: 858, baseType: !294, size: 128, offset: 5504)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1286, file: !1287, line: 859, baseType: !1285, size: 64, offset: 5632)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1286, file: !1287, line: 867, baseType: !294, size: 128, offset: 5696)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1286, file: !1287, line: 868, baseType: !294, size: 128, offset: 5824)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1286, file: !1287, line: 871, baseType: !1540, size: 64, offset: 5952)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1542)
!1542 = !{!1543, !1544, !1545, !1546, !1548, !1549, !1556, !1557}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1541, file: !53, line: 61, baseType: !1299, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1541, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1541, file: !53, line: 63, baseType: !307, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1541, file: !53, line: 65, baseType: !1547, size: 256, offset: 64)
!1547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !703, size: 256, elements: !1224)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1541, file: !53, line: 66, baseType: !703, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1541, file: !53, line: 68, baseType: !1550, size: 128, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1551, line: 40, baseType: !1552)
!1551 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1551, line: 36, size: 128, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1552, file: !1551, line: 37, baseType: !307)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1552, file: !1551, line: 38, baseType: !294, size: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1541, file: !53, line: 69, baseType: !436, size: 128, align: 64, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1541, file: !53, line: 70, baseType: !1558, size: 128, offset: 640)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1559, size: 128, elements: !1440)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1559, file: !53, line: 55, baseType: !145, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1559, file: !53, line: 56, baseType: !1563, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1286, file: !1287, line: 872, baseType: !1566, size: 512, offset: 6016)
!1566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 512, elements: !1224)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1286, file: !1287, line: 873, baseType: !294, size: 128, offset: 6528)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1286, file: !1287, line: 874, baseType: !294, size: 128, offset: 6656)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1286, file: !1287, line: 876, baseType: !1570, size: 64, offset: 6784)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1572, line: 26, size: 192, elements: !1573)
!1572 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1573 = !{!1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1571, file: !1572, line: 27, baseType: !7, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1571, file: !1572, line: 28, baseType: !1576, size: 128, offset: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1577, line: 43, size: 128, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1576, file: !1577, line: 44, baseType: !849)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1576, file: !1577, line: 45, baseType: !294, size: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1286, file: !1287, line: 879, baseType: !773, size: 64, offset: 6848)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1286, file: !1287, line: 882, baseType: !773, size: 64, offset: 6912)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1286, file: !1287, line: 884, baseType: !492, size: 64, offset: 6976)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1286, file: !1287, line: 885, baseType: !492, size: 64, offset: 7040)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1286, file: !1287, line: 890, baseType: !492, size: 64, offset: 7104)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1286, file: !1287, line: 891, baseType: !1587, size: 128, offset: 7168)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1287, line: 242, size: 128, elements: !1588)
!1588 = !{!1589, !1590, !1591}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1587, file: !1287, line: 244, baseType: !492, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1587, file: !1287, line: 245, baseType: !492, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1587, file: !1287, line: 246, baseType: !849, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1286, file: !1287, line: 900, baseType: !142, size: 64, offset: 7296)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1286, file: !1287, line: 901, baseType: !142, size: 64, offset: 7360)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1286, file: !1287, line: 904, baseType: !492, size: 64, offset: 7424)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1286, file: !1287, line: 907, baseType: !492, size: 64, offset: 7488)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1286, file: !1287, line: 910, baseType: !142, size: 64, offset: 7552)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1286, file: !1287, line: 911, baseType: !142, size: 64, offset: 7616)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1286, file: !1287, line: 914, baseType: !1599, size: 640, offset: 7680)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1600, line: 123, size: 640, elements: !1601)
!1600 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1601 = !{!1602, !1608, !1609}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1599, file: !1600, line: 124, baseType: !1603, size: 576)
!1603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1604, size: 576, elements: !183)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1600, line: 108, size: 192, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1604, file: !1600, line: 109, baseType: !492, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1604, file: !1600, line: 110, baseType: !1412, size: 128, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1599, file: !1600, line: 125, baseType: !7, size: 32, offset: 576)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1599, file: !1600, line: 126, baseType: !7, size: 32, offset: 608)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1286, file: !1287, line: 917, baseType: !1611, size: 192, offset: 8320)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1600, line: 134, size: 192, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1611, file: !1600, line: 135, baseType: !436, size: 128, align: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1611, file: !1600, line: 136, baseType: !7, size: 32, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1286, file: !1287, line: 923, baseType: !1616, size: 64, offset: 8512)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1619, line: 111, size: 1280, elements: !1620)
!1619 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1640, !1641, !1642, !1643, !1644, !1645, !1752, !1753, !1754, !1755, !1781, !1784, !1794}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1618, file: !1619, line: 112, baseType: !816, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1618, file: !1619, line: 120, baseType: !505, size: 32, offset: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1618, file: !1619, line: 121, baseType: !513, size: 32, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1618, file: !1619, line: 122, baseType: !505, size: 32, offset: 96)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1618, file: !1619, line: 123, baseType: !513, size: 32, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1618, file: !1619, line: 124, baseType: !505, size: 32, offset: 160)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1618, file: !1619, line: 125, baseType: !513, size: 32, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1618, file: !1619, line: 126, baseType: !505, size: 32, offset: 224)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1618, file: !1619, line: 127, baseType: !513, size: 32, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1618, file: !1619, line: 128, baseType: !7, size: 32, offset: 288)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1618, file: !1619, line: 129, baseType: !1632, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1633, line: 26, baseType: !1634)
!1633 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1633, line: 24, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1634, file: !1633, line: 25, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 64, elements: !1638)
!1638 = !{!1639}
!1639 = !DISubrange(count: 2)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1618, file: !1619, line: 130, baseType: !1632, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1618, file: !1619, line: 131, baseType: !1632, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1618, file: !1619, line: 132, baseType: !1632, size: 64, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1618, file: !1619, line: 133, baseType: !1632, size: 64, offset: 576)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1618, file: !1619, line: 135, baseType: !141, size: 8, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1618, file: !1619, line: 137, baseType: !1646, size: 64, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1648, line: 189, size: 1664, elements: !1649)
!1648 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !{!1650, !1651, !1654, !1659, !1660, !1663, !1664, !1669, !1670, !1671, !1672, !1674, !1675, !1676, !1677, !1678, !1716, !1737}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1647, file: !1648, line: 190, baseType: !1299, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1647, file: !1648, line: 191, baseType: !1652, size: 32, offset: 32)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1648, line: 28, baseType: !1653)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !258, line: 98, baseType: !1513)
!1654 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !1648, line: 192, baseType: !1655, size: 192, offset: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1647, file: !1648, line: 192, size: 192, elements: !1656)
!1656 = !{!1657, !1658}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1655, file: !1648, line: 193, baseType: !294, size: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1655, file: !1648, line: 194, baseType: !829, size: 192, align: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1647, file: !1648, line: 199, baseType: !836, size: 256, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1647, file: !1648, line: 200, baseType: !1661, size: 64, offset: 512)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1648, line: 200, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1647, file: !1648, line: 201, baseType: !185, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !1648, line: 202, baseType: !1665, size: 64, offset: 640)
!1665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1647, file: !1648, line: 202, size: 64, elements: !1666)
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1665, file: !1648, line: 203, baseType: !607, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1665, file: !1648, line: 204, baseType: !607, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1647, file: !1648, line: 206, baseType: !607, size: 64, offset: 704)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1647, file: !1648, line: 207, baseType: !505, size: 32, offset: 768)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1647, file: !1648, line: 208, baseType: !513, size: 32, offset: 800)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1647, file: !1648, line: 209, baseType: !1673, size: 32, offset: 832)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1648, line: 31, baseType: !627)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1647, file: !1648, line: 210, baseType: !388, size: 16, offset: 864)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1647, file: !1648, line: 211, baseType: !388, size: 16, offset: 880)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1647, file: !1648, line: 215, baseType: !1274, size: 16, offset: 896)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1647, file: !1648, line: 222, baseType: !142, size: 64, offset: 960)
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !1648, line: 239, baseType: !1679, size: 320, offset: 1024)
!1679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1647, file: !1648, line: 239, size: 320, elements: !1680)
!1680 = !{!1681, !1708}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1679, file: !1648, line: 240, baseType: !1682, size: 320)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1648, line: 108, size: 320, elements: !1683)
!1683 = !{!1684, !1685, !1697, !1700, !1707}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1682, file: !1648, line: 110, baseType: !142, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !1648, line: 111, baseType: !1686, size: 64, offset: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !1648, line: 111, size: 64, elements: !1687)
!1687 = !{!1688, !1696}
!1688 = !DIDerivedType(tag: DW_TAG_member, scope: !1686, file: !1648, line: 112, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1686, file: !1648, line: 112, size: 64, elements: !1690)
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1689, file: !1648, line: 114, baseType: !928, size: 16)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1689, file: !1648, line: 115, baseType: !1693, size: 48, offset: 16)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 48, elements: !1694)
!1694 = !{!1695}
!1695 = !DISubrange(count: 6)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1686, file: !1648, line: 121, baseType: !142, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1682, file: !1648, line: 123, baseType: !1698, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1648, line: 96, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1682, file: !1648, line: 124, baseType: !1701, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1648, line: 102, size: 192, elements: !1703)
!1703 = !{!1704, !1705, !1706}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1702, file: !1648, line: 103, baseType: !436, size: 128, align: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1702, file: !1648, line: 104, baseType: !1299, size: 32, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1702, file: !1648, line: 105, baseType: !257, size: 8, offset: 160)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1682, file: !1648, line: 125, baseType: !205, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !1648, line: 241, baseType: !1709, size: 320)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1679, file: !1648, line: 241, size: 320, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1709, file: !1648, line: 242, baseType: !142, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1709, file: !1648, line: 243, baseType: !142, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1709, file: !1648, line: 244, baseType: !1698, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1709, file: !1648, line: 245, baseType: !1701, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1709, file: !1648, line: 246, baseType: !348, size: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !1648, line: 254, baseType: !1717, size: 256, offset: 1344)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1647, file: !1648, line: 254, size: 256, elements: !1718)
!1718 = !{!1719, !1725}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1717, file: !1648, line: 255, baseType: !1720, size: 256)
!1720 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1648, line: 128, size: 256, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1720, file: !1648, line: 129, baseType: !185, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1720, file: !1648, line: 130, baseType: !1724, size: 256)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !1224)
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !1648, line: 256, baseType: !1726, size: 256)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !1648, line: 256, size: 256, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1726, file: !1648, line: 258, baseType: !294, size: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1726, file: !1648, line: 259, baseType: !1730, size: 128, offset: 128)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1731, line: 22, size: 128, elements: !1732)
!1731 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1732 = !{!1733, !1736}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1730, file: !1731, line: 23, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1731, line: 23, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1730, file: !1731, line: 24, baseType: !142, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1647, file: !1648, line: 274, baseType: !1738, size: 64, offset: 1600)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1648, line: 170, size: 192, elements: !1740)
!1740 = !{!1741, !1750, !1751}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1739, file: !1648, line: 171, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1648, line: 165, baseType: !1743)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!145, !1646, !1746, !1748, !1646}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1699)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1720)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1739, file: !1648, line: 172, baseType: !1646, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1739, file: !1648, line: 173, baseType: !1698, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1618, file: !1619, line: 138, baseType: !1646, size: 64, offset: 768)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1618, file: !1619, line: 139, baseType: !1646, size: 64, offset: 832)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1618, file: !1619, line: 140, baseType: !1646, size: 64, offset: 896)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1618, file: !1619, line: 145, baseType: !1756, size: 64, offset: 960)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1758, line: 13, size: 896, elements: !1759)
!1758 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1757, file: !1758, line: 14, baseType: !1299, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1757, file: !1758, line: 15, baseType: !816, size: 32, offset: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1757, file: !1758, line: 16, baseType: !816, size: 32, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1757, file: !1758, line: 21, baseType: !840, size: 64, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1757, file: !1758, line: 27, baseType: !142, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1757, file: !1758, line: 28, baseType: !142, size: 64, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1757, file: !1758, line: 29, baseType: !840, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1757, file: !1758, line: 32, baseType: !707, size: 128, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1757, file: !1758, line: 33, baseType: !505, size: 32, offset: 512)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1757, file: !1758, line: 37, baseType: !840, size: 64, offset: 576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1757, file: !1758, line: 44, baseType: !1771, size: 256, offset: 640)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1772, line: 15, size: 256, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779, !1780}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1771, file: !1772, line: 16, baseType: !849)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1771, file: !1772, line: 18, baseType: !145, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1771, file: !1772, line: 19, baseType: !145, size: 32, offset: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1771, file: !1772, line: 20, baseType: !145, size: 32, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1771, file: !1772, line: 21, baseType: !145, size: 32, offset: 96)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1771, file: !1772, line: 22, baseType: !142, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1771, file: !1772, line: 23, baseType: !142, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1618, file: !1619, line: 146, baseType: !1782, size: 64, offset: 1024)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !506, line: 18, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1618, file: !1619, line: 147, baseType: !1785, size: 64, offset: 1088)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1619, line: 25, size: 64, elements: !1787)
!1787 = !{!1788, !1789, !1790}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1786, file: !1619, line: 26, baseType: !816, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1786, file: !1619, line: 27, baseType: !145, size: 32, offset: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1786, file: !1619, line: 28, baseType: !1791, offset: 64)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, elements: !1792)
!1792 = !{!1793}
!1793 = !DISubrange(count: 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, scope: !1618, file: !1619, line: 149, baseType: !1795, size: 128, offset: 1152)
!1795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1618, file: !1619, line: 149, size: 128, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1795, file: !1619, line: 150, baseType: !145, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1795, file: !1619, line: 151, baseType: !436, size: 128, align: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1286, file: !1287, line: 926, baseType: !1616, size: 64, offset: 8576)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1286, file: !1287, line: 929, baseType: !1616, size: 64, offset: 8640)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1286, file: !1287, line: 933, baseType: !1646, size: 64, offset: 8704)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1286, file: !1287, line: 943, baseType: !1803, size: 128, offset: 8768)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, elements: !1804)
!1804 = !{!1805}
!1805 = !DISubrange(count: 16)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1286, file: !1287, line: 945, baseType: !1807, size: 64, offset: 8896)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1287, line: 49, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1286, file: !1287, line: 956, baseType: !1810, size: 64, offset: 8960)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1287, line: 45, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1286, file: !1287, line: 959, baseType: !1813, size: 64, offset: 9024)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1287, line: 959, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1286, file: !1287, line: 962, baseType: !1816, size: 64, offset: 9088)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1287, line: 66, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1286, file: !1287, line: 966, baseType: !1819, size: 64, offset: 9152)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1821, line: 35, flags: DIFlagFwdDecl)
!1821 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1286, file: !1287, line: 969, baseType: !1823, size: 64, offset: 9216)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1825, line: 82, size: 7296, elements: !1826)
!1825 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1826 = !{!1827, !1828, !1829, !1830, !1831, !1832, !1833, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1862, !1871, !1872, !1874, !1875, !1876, !1879, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1909, !1910, !1917, !1918, !1919, !1920, !1921, !1922}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1824, file: !1825, line: 83, baseType: !1299, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1824, file: !1825, line: 84, baseType: !816, size: 32, offset: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1824, file: !1825, line: 85, baseType: !145, size: 32, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1824, file: !1825, line: 86, baseType: !294, size: 128, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1824, file: !1825, line: 88, baseType: !1550, size: 128, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1824, file: !1825, line: 91, baseType: !1285, size: 64, offset: 384)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1824, file: !1825, line: 94, baseType: !1834, size: 192, offset: 448)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1835, line: 30, size: 192, elements: !1836)
!1835 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1834, file: !1835, line: 31, baseType: !294, size: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1834, file: !1835, line: 32, baseType: !1839, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1840, line: 25, baseType: !1841)
!1840 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1840, line: 23, size: 64, elements: !1842)
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1841, file: !1840, line: 24, baseType: !1439, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1824, file: !1825, line: 97, baseType: !703, size: 64, offset: 640)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1824, file: !1825, line: 100, baseType: !145, size: 32, offset: 704)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1824, file: !1825, line: 106, baseType: !145, size: 32, offset: 736)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1824, file: !1825, line: 107, baseType: !1285, size: 64, offset: 768)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1824, file: !1825, line: 110, baseType: !145, size: 32, offset: 832)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1824, file: !1825, line: 111, baseType: !7, size: 32, offset: 864)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1824, file: !1825, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1824, file: !1825, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1824, file: !1825, line: 128, baseType: !145, size: 32, offset: 928)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1824, file: !1825, line: 129, baseType: !294, size: 128, offset: 960)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1824, file: !1825, line: 132, baseType: !1361, size: 512, offset: 1088)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1824, file: !1825, line: 133, baseType: !1369, size: 64, offset: 1600)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1824, file: !1825, line: 140, baseType: !1857, size: 256, offset: 1664)
!1857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1858, size: 256, elements: !1638)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1825, line: 38, size: 128, elements: !1859)
!1859 = !{!1860, !1861}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1858, file: !1825, line: 39, baseType: !492, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1858, file: !1825, line: 40, baseType: !492, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1824, file: !1825, line: 146, baseType: !1863, size: 192, offset: 1920)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1825, line: 66, size: 192, elements: !1864)
!1864 = !{!1865}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1863, file: !1825, line: 67, baseType: !1866, size: 192)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1825, line: 47, size: 192, elements: !1867)
!1867 = !{!1868, !1869, !1870}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1866, file: !1825, line: 48, baseType: !842, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1866, file: !1825, line: 49, baseType: !842, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1866, file: !1825, line: 50, baseType: !842, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1824, file: !1825, line: 150, baseType: !1599, size: 640, offset: 2112)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1824, file: !1825, line: 153, baseType: !1873, size: 256, offset: 2752)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1540, size: 256, elements: !1224)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1824, file: !1825, line: 159, baseType: !1540, size: 64, offset: 3008)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1824, file: !1825, line: 162, baseType: !145, size: 32, offset: 3072)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1824, file: !1825, line: 164, baseType: !1877, size: 64, offset: 3136)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1825, line: 164, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1824, file: !1825, line: 175, baseType: !1880, size: 32, offset: 3200)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !459, line: 805, baseType: !1881)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 798, size: 32, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1881, file: !459, line: 803, baseType: !458, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1881, file: !459, line: 804, baseType: !307, offset: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1824, file: !1825, line: 176, baseType: !492, size: 64, offset: 3264)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1824, file: !1825, line: 176, baseType: !492, size: 64, offset: 3328)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1824, file: !1825, line: 176, baseType: !492, size: 64, offset: 3392)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1824, file: !1825, line: 176, baseType: !492, size: 64, offset: 3456)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1824, file: !1825, line: 177, baseType: !492, size: 64, offset: 3520)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1824, file: !1825, line: 178, baseType: !492, size: 64, offset: 3584)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1824, file: !1825, line: 179, baseType: !1587, size: 128, offset: 3648)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1824, file: !1825, line: 180, baseType: !142, size: 64, offset: 3776)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1824, file: !1825, line: 180, baseType: !142, size: 64, offset: 3840)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1824, file: !1825, line: 180, baseType: !142, size: 64, offset: 3904)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1824, file: !1825, line: 180, baseType: !142, size: 64, offset: 3968)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1824, file: !1825, line: 181, baseType: !142, size: 64, offset: 4032)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1824, file: !1825, line: 181, baseType: !142, size: 64, offset: 4096)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1824, file: !1825, line: 181, baseType: !142, size: 64, offset: 4160)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1824, file: !1825, line: 181, baseType: !142, size: 64, offset: 4224)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1824, file: !1825, line: 182, baseType: !142, size: 64, offset: 4288)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1824, file: !1825, line: 182, baseType: !142, size: 64, offset: 4352)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1824, file: !1825, line: 182, baseType: !142, size: 64, offset: 4416)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1824, file: !1825, line: 182, baseType: !142, size: 64, offset: 4480)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1824, file: !1825, line: 183, baseType: !142, size: 64, offset: 4544)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1824, file: !1825, line: 183, baseType: !142, size: 64, offset: 4608)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1824, file: !1825, line: 184, baseType: !1907, offset: 4672)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1908, line: 12, elements: !321)
!1908 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1824, file: !1825, line: 192, baseType: !494, size: 64, offset: 4672)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1824, file: !1825, line: 203, baseType: !1911, size: 2048, offset: 4736)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1912, size: 2048, elements: !1804)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1913, line: 43, size: 128, elements: !1914)
!1913 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1912, file: !1913, line: 44, baseType: !395, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1912, file: !1913, line: 45, baseType: !395, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1824, file: !1825, line: 220, baseType: !257, size: 8, offset: 6784)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1824, file: !1825, line: 221, baseType: !1274, size: 16, offset: 6800)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1824, file: !1825, line: 222, baseType: !1274, size: 16, offset: 6816)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1824, file: !1825, line: 224, baseType: !1043, size: 64, offset: 6848)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1824, file: !1825, line: 227, baseType: !1242, size: 192, offset: 6912)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1824, file: !1825, line: 233, baseType: !1242, size: 192, offset: 7104)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1286, file: !1287, line: 970, baseType: !1924, size: 64, offset: 9280)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1825, line: 20, size: 16576, elements: !1926)
!1926 = !{!1927, !1928, !1929, !1930}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1925, file: !1825, line: 21, baseType: !307)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1925, file: !1825, line: 22, baseType: !1299, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1925, file: !1825, line: 23, baseType: !1550, size: 128, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1925, file: !1825, line: 24, baseType: !1931, size: 16384, offset: 192)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1932, size: 16384, elements: !351)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1835, line: 49, size: 256, elements: !1933)
!1933 = !{!1934}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1932, file: !1835, line: 50, baseType: !1935, size: 256)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1835, line: 35, size: 256, elements: !1936)
!1936 = !{!1937, !1944, !1945, !1949}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1935, file: !1835, line: 37, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1939, line: 19, baseType: !1940)
!1939 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1939, line: 18, baseType: !1942)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !145}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1935, file: !1835, line: 38, baseType: !142, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1935, file: !1835, line: 44, baseType: !1946, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1939, line: 22, baseType: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1939, line: 21, baseType: !152)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1935, file: !1835, line: 46, baseType: !1839, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1286, file: !1287, line: 971, baseType: !1839, size: 64, offset: 9344)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1286, file: !1287, line: 972, baseType: !1839, size: 64, offset: 9408)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1286, file: !1287, line: 974, baseType: !1839, size: 64, offset: 9472)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1286, file: !1287, line: 975, baseType: !1834, size: 192, offset: 9536)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1286, file: !1287, line: 976, baseType: !142, size: 64, offset: 9728)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1286, file: !1287, line: 977, baseType: !393, size: 64, offset: 9792)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1286, file: !1287, line: 978, baseType: !7, size: 32, offset: 9856)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1286, file: !1287, line: 980, baseType: !439, size: 64, offset: 9920)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1286, file: !1287, line: 989, baseType: !1959, size: 128, offset: 9984)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1960, line: 35, size: 128, elements: !1961)
!1960 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1961 = !{!1962, !1963, !1964}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1959, file: !1960, line: 36, baseType: !145, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1959, file: !1960, line: 37, baseType: !816, size: 32, offset: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1959, file: !1960, line: 38, baseType: !1965, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1960, line: 23, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1286, file: !1287, line: 992, baseType: !492, size: 64, offset: 10112)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1286, file: !1287, line: 993, baseType: !492, size: 64, offset: 10176)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1286, file: !1287, line: 996, baseType: !307, offset: 10240)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1286, file: !1287, line: 999, baseType: !849, offset: 10240)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1286, file: !1287, line: 1001, baseType: !1972, size: 64, offset: 10240)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1287, line: 636, size: 64, elements: !1973)
!1973 = !{!1974}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1972, file: !1287, line: 637, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1286, file: !1287, line: 1005, baseType: !821, size: 128, offset: 10304)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1286, file: !1287, line: 1007, baseType: !1285, size: 64, offset: 10432)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1286, file: !1287, line: 1009, baseType: !1979, size: 64, offset: 10496)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1287, line: 1009, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1286, file: !1287, line: 1043, baseType: !185, size: 64, offset: 10560)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1286, file: !1287, line: 1046, baseType: !1983, size: 64, offset: 10624)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1287, line: 41, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1286, file: !1287, line: 1050, baseType: !1986, size: 64, offset: 10688)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1287, line: 42, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1286, file: !1287, line: 1054, baseType: !1989, size: 64, offset: 10752)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1287, line: 55, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1286, file: !1287, line: 1056, baseType: !1992, size: 64, offset: 10816)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1287, line: 40, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1286, file: !1287, line: 1058, baseType: !1995, size: 64, offset: 10880)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1997, line: 99, size: 704, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005, !2024, !2025}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1996, file: !1997, line: 100, baseType: !840, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1996, file: !1997, line: 101, baseType: !816, size: 32, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1996, file: !1997, line: 102, baseType: !816, size: 32, offset: 96)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1996, file: !1997, line: 105, baseType: !307, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1996, file: !1997, line: 107, baseType: !388, size: 16, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1996, file: !1997, line: 109, baseType: !807, size: 128, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1996, file: !1997, line: 110, baseType: !2006, size: 64, offset: 320)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1997, line: 73, size: 448, elements: !2008)
!2008 = !{!2009, !2012, !2013, !2018, !2023}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2007, file: !1997, line: 74, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1997, line: 74, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2007, file: !1997, line: 75, baseType: !1995, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !1997, line: 83, baseType: !2014, size: 128, offset: 128)
!2014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2007, file: !1997, line: 83, size: 128, elements: !2015)
!2015 = !{!2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2014, file: !1997, line: 84, baseType: !294, size: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2014, file: !1997, line: 85, baseType: !1004, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !1997, line: 87, baseType: !2019, size: 128, offset: 256)
!2019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2007, file: !1997, line: 87, size: 128, elements: !2020)
!2020 = !{!2021, !2022}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2019, file: !1997, line: 88, baseType: !707, size: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2019, file: !1997, line: 89, baseType: !436, size: 128, align: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2007, file: !1997, line: 92, baseType: !7, size: 32, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1996, file: !1997, line: 111, baseType: !703, size: 64, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1996, file: !1997, line: 113, baseType: !2026, size: 256, offset: 448)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2027, line: 102, size: 256, elements: !2028)
!2027 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2028 = !{!2029, !2030, !2031}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2026, file: !2027, line: 103, baseType: !840, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2026, file: !2027, line: 104, baseType: !294, size: 128, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2026, file: !2027, line: 105, baseType: !2032, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2027, line: 21, baseType: !2033)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !2036}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1286, file: !1287, line: 1061, baseType: !2038, size: 64, offset: 10944)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1287, line: 43, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1286, file: !1287, line: 1064, baseType: !142, size: 64, offset: 11008)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1286, file: !1287, line: 1065, baseType: !2042, size: 64, offset: 11072)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1835, line: 14, baseType: !2044)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1835, line: 12, size: 384, elements: !2045)
!2045 = !{!2046}
!2046 = !DIDerivedType(tag: DW_TAG_member, scope: !2044, file: !1835, line: 13, baseType: !2047, size: 384)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2044, file: !1835, line: 13, size: 384, elements: !2048)
!2048 = !{!2049, !2050, !2051, !2052}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2047, file: !1835, line: 13, baseType: !145, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2047, file: !1835, line: 13, baseType: !145, size: 32, offset: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2047, file: !1835, line: 13, baseType: !145, size: 32, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2047, file: !1835, line: 13, baseType: !2053, size: 256, offset: 128)
!2053 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2054, line: 32, size: 256, elements: !2055)
!2054 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2055 = !{!2056, !2061, !2074, !2080, !2089, !2109, !2114}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2053, file: !2054, line: 37, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2053, file: !2054, line: 34, size: 64, elements: !2058)
!2058 = !{!2059, !2060}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2057, file: !2054, line: 35, baseType: !1529, size: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2057, file: !2054, line: 36, baseType: !511, size: 32, offset: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2053, file: !2054, line: 45, baseType: !2062, size: 192)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2053, file: !2054, line: 40, size: 192, elements: !2063)
!2063 = !{!2064, !2066, !2067, !2073}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2062, file: !2054, line: 41, baseType: !2065, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !379, line: 95, baseType: !145)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2062, file: !2054, line: 42, baseType: !145, size: 32, offset: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2062, file: !2054, line: 43, baseType: !2068, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2054, line: 11, baseType: !2069)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2054, line: 8, size: 64, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2069, file: !2054, line: 9, baseType: !145, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2069, file: !2054, line: 10, baseType: !185, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2062, file: !2054, line: 44, baseType: !145, size: 32, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2053, file: !2054, line: 52, baseType: !2075, size: 128)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2053, file: !2054, line: 48, size: 128, elements: !2076)
!2076 = !{!2077, !2078, !2079}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2075, file: !2054, line: 49, baseType: !1529, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2075, file: !2054, line: 50, baseType: !511, size: 32, offset: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2075, file: !2054, line: 51, baseType: !2068, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2053, file: !2054, line: 61, baseType: !2081, size: 256)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2053, file: !2054, line: 55, size: 256, elements: !2082)
!2082 = !{!2083, !2084, !2085, !2086, !2088}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2081, file: !2054, line: 56, baseType: !1529, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2081, file: !2054, line: 57, baseType: !511, size: 32, offset: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2081, file: !2054, line: 58, baseType: !145, size: 32, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2081, file: !2054, line: 59, baseType: !2087, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !379, line: 94, baseType: !380)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2081, file: !2054, line: 60, baseType: !2087, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2053, file: !2054, line: 95, baseType: !2090, size: 256)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2053, file: !2054, line: 64, size: 256, elements: !2091)
!2091 = !{!2092, !2093}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2090, file: !2054, line: 65, baseType: !185, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !2090, file: !2054, line: 77, baseType: !2094, size: 192, offset: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2090, file: !2054, line: 77, size: 192, elements: !2095)
!2095 = !{!2096, !2097, !2104}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2094, file: !2054, line: 82, baseType: !1274, size: 16)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2094, file: !2054, line: 88, baseType: !2098, size: 192)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2094, file: !2054, line: 84, size: 192, elements: !2099)
!2099 = !{!2100, !2102, !2103}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2098, file: !2054, line: 85, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 64, elements: !1399)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2098, file: !2054, line: 86, baseType: !185, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2098, file: !2054, line: 87, baseType: !185, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2094, file: !2054, line: 93, baseType: !2105, size: 96)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2094, file: !2054, line: 90, size: 96, elements: !2106)
!2106 = !{!2107, !2108}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2105, file: !2054, line: 91, baseType: !2101, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2105, file: !2054, line: 92, baseType: !488, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2053, file: !2054, line: 101, baseType: !2110, size: 128)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2053, file: !2054, line: 98, size: 128, elements: !2111)
!2111 = !{!2112, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2110, file: !2054, line: 99, baseType: !381, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2110, file: !2054, line: 100, baseType: !145, size: 32, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2053, file: !2054, line: 108, baseType: !2115, size: 128)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2053, file: !2054, line: 104, size: 128, elements: !2116)
!2116 = !{!2117, !2118, !2119}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2115, file: !2054, line: 105, baseType: !185, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2115, file: !2054, line: 106, baseType: !145, size: 32, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2115, file: !2054, line: 107, baseType: !7, size: 32, offset: 96)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1286, file: !1287, line: 1067, baseType: !1907, offset: 11136)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1286, file: !1287, line: 1099, baseType: !2122, size: 64, offset: 11136)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1287, line: 56, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1286, file: !1287, line: 1103, baseType: !294, size: 128, offset: 11200)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1286, file: !1287, line: 1104, baseType: !2126, size: 64, offset: 11328)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1287, line: 46, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1286, file: !1287, line: 1105, baseType: !1242, size: 192, offset: 11392)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1286, file: !1287, line: 1106, baseType: !7, size: 32, offset: 11584)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1286, file: !1287, line: 1109, baseType: !2131, size: 128, offset: 11648)
!2131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2132, size: 128, elements: !1638)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1287, line: 51, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1286, file: !1287, line: 1110, baseType: !1242, size: 192, offset: 11776)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1286, file: !1287, line: 1111, baseType: !294, size: 128, offset: 11968)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1286, file: !1287, line: 1173, baseType: !2137, size: 64, offset: 12096)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2139, line: 62, size: 256, align: 256, elements: !2140)
!2139 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2140 = !{!2141, !2142, !2143, !2148}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2138, file: !2139, line: 75, baseType: !488, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2138, file: !2139, line: 90, baseType: !488, size: 32, offset: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2138, file: !2139, line: 124, baseType: !2144, size: 64, offset: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2138, file: !2139, line: 109, size: 64, elements: !2145)
!2145 = !{!2146, !2147}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2144, file: !2139, line: 110, baseType: !493, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2144, file: !2139, line: 112, baseType: !493, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2138, file: !2139, line: 144, baseType: !488, size: 32, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1286, file: !1287, line: 1174, baseType: !486, size: 32, offset: 12160)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1286, file: !1287, line: 1179, baseType: !142, size: 64, offset: 12224)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1286, file: !1287, line: 1182, baseType: !2152, size: 128, offset: 12288)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1220, line: 76, size: 128, elements: !2153)
!2153 = !{!2154, !2159, !2160}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2152, file: !1220, line: 85, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2156, line: 7, size: 64, elements: !2157)
!2156 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2157 = !{!2158}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2155, file: !2156, line: 12, baseType: !1436, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2152, file: !1220, line: 88, baseType: !257, size: 8, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2152, file: !1220, line: 95, baseType: !257, size: 8, offset: 72)
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !1286, file: !1287, line: 1184, baseType: !2162, size: 128, offset: 12416)
!2162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1286, file: !1287, line: 1184, size: 128, elements: !2163)
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2162, file: !1287, line: 1185, baseType: !1299, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2162, file: !1287, line: 1186, baseType: !436, size: 128, align: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1286, file: !1287, line: 1190, baseType: !2167, size: 64, offset: 12544)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1287, line: 53, flags: DIFlagFwdDecl)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1286, file: !1287, line: 1192, baseType: !2170, size: 128, offset: 12608)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1220, line: 64, size: 128, elements: !2171)
!2171 = !{!2172, !2173, !2174}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2170, file: !1220, line: 65, baseType: !789, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2170, file: !1220, line: 67, baseType: !488, size: 32, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2170, file: !1220, line: 68, baseType: !488, size: 32, offset: 96)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1286, file: !1287, line: 1206, baseType: !145, size: 32, offset: 12736)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1286, file: !1287, line: 1207, baseType: !145, size: 32, offset: 12768)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1286, file: !1287, line: 1209, baseType: !142, size: 64, offset: 12800)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1286, file: !1287, line: 1219, baseType: !492, size: 64, offset: 12864)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1286, file: !1287, line: 1220, baseType: !492, size: 64, offset: 12928)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1286, file: !1287, line: 1317, baseType: !145, size: 32, offset: 12992)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1286, file: !1287, line: 1319, baseType: !1285, size: 64, offset: 13056)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1286, file: !1287, line: 1322, baseType: !2183, size: 64, offset: 13120)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2185, line: 56, size: 512, elements: !2186)
!2185 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2192, !2193, !2195}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2184, file: !2185, line: 57, baseType: !2183, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2184, file: !2185, line: 58, baseType: !185, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2184, file: !2185, line: 59, baseType: !142, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2184, file: !2185, line: 60, baseType: !142, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2184, file: !2185, line: 61, baseType: !889, size: 64, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2184, file: !2185, line: 62, baseType: !7, size: 32, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2184, file: !2185, line: 63, baseType: !2194, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !258, line: 153, baseType: !492)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2184, file: !2185, line: 64, baseType: !2196, size: 64, offset: 448)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1286, file: !1287, line: 1326, baseType: !1299, size: 32, offset: 13184)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1286, file: !1287, line: 1342, baseType: !185, size: 64, offset: 13248)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1286, file: !1287, line: 1343, baseType: !493, size: 64, offset: 13312)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1286, file: !1287, line: 1344, baseType: !492, size: 64, offset: 13376)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1286, file: !1287, line: 1345, baseType: !493, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1286, file: !1287, line: 1346, baseType: !493, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1286, file: !1287, line: 1347, baseType: !493, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1286, file: !1287, line: 1348, baseType: !436, size: 128, align: 64, offset: 13504)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1286, file: !1287, line: 1358, baseType: !2207, size: 34816, offset: 13824)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2208, line: 485, size: 34816, elements: !2209)
!2208 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2209 = !{!2210, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2239, !2240, !2241, !2242, !2243, !2244, !2247, !2248, !2249}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2207, file: !2208, line: 487, baseType: !2211, size: 192)
!2211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2212, size: 192, elements: !183)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2213, line: 16, size: 64, elements: !2214)
!2213 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2214 = !{!2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2212, file: !2213, line: 17, baseType: !928, size: 16)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2212, file: !2213, line: 18, baseType: !928, size: 16, offset: 16)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2212, file: !2213, line: 19, baseType: !928, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2212, file: !2213, line: 19, baseType: !928, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2212, file: !2213, line: 19, baseType: !928, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2212, file: !2213, line: 19, baseType: !928, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2212, file: !2213, line: 19, baseType: !928, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2212, file: !2213, line: 20, baseType: !928, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2212, file: !2213, line: 20, baseType: !928, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2212, file: !2213, line: 20, baseType: !928, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2212, file: !2213, line: 20, baseType: !928, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2212, file: !2213, line: 20, baseType: !928, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2212, file: !2213, line: 20, baseType: !928, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2207, file: !2208, line: 491, baseType: !142, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2207, file: !2208, line: 495, baseType: !388, size: 16, offset: 256)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2207, file: !2208, line: 496, baseType: !388, size: 16, offset: 272)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2207, file: !2208, line: 497, baseType: !388, size: 16, offset: 288)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2207, file: !2208, line: 498, baseType: !388, size: 16, offset: 304)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2207, file: !2208, line: 502, baseType: !142, size: 64, offset: 320)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2207, file: !2208, line: 503, baseType: !142, size: 64, offset: 384)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2207, file: !2208, line: 514, baseType: !2236, size: 256, offset: 448)
!2236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2237, size: 256, elements: !1224)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2208, line: 483, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2207, file: !2208, line: 516, baseType: !142, size: 64, offset: 704)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2207, file: !2208, line: 518, baseType: !142, size: 64, offset: 768)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2207, file: !2208, line: 520, baseType: !142, size: 64, offset: 832)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2207, file: !2208, line: 521, baseType: !142, size: 64, offset: 896)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2207, file: !2208, line: 522, baseType: !142, size: 64, offset: 960)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2207, file: !2208, line: 528, baseType: !2245, size: 64, offset: 1024)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2208, line: 10, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2207, file: !2208, line: 535, baseType: !142, size: 64, offset: 1088)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2207, file: !2208, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2207, file: !2208, line: 540, baseType: !2250, size: 33280, offset: 1536)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2251, line: 317, size: 33280, elements: !2252)
!2251 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2252 = !{!2253, !2254, !2255}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2250, file: !2251, line: 330, baseType: !7, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2250, file: !2251, line: 337, baseType: !142, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2250, file: !2251, line: 348, baseType: !2256, size: 32768, offset: 512)
!2256 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2251, line: 304, size: 32768, elements: !2257)
!2257 = !{!2258, !2271, !2308, !2358, !2371}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2256, file: !2251, line: 305, baseType: !2259, size: 896)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2251, line: 12, size: 896, elements: !2260)
!2260 = !{!2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2270}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2259, file: !2251, line: 13, baseType: !486, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2259, file: !2251, line: 14, baseType: !486, size: 32, offset: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2259, file: !2251, line: 15, baseType: !486, size: 32, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2259, file: !2251, line: 16, baseType: !486, size: 32, offset: 96)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2259, file: !2251, line: 17, baseType: !486, size: 32, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2259, file: !2251, line: 18, baseType: !486, size: 32, offset: 160)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2259, file: !2251, line: 19, baseType: !486, size: 32, offset: 192)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2259, file: !2251, line: 22, baseType: !2269, size: 640, offset: 224)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 640, elements: !219)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2259, file: !2251, line: 25, baseType: !486, size: 32, offset: 864)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2256, file: !2251, line: 306, baseType: !2272, size: 4096, align: 128)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2251, line: 34, size: 4096, align: 128, elements: !2273)
!2273 = !{!2274, !2275, !2276, !2277, !2278, !2293, !2294, !2295, !2297, !2299, !2303}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2272, file: !2251, line: 35, baseType: !928, size: 16)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2272, file: !2251, line: 36, baseType: !928, size: 16, offset: 16)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2272, file: !2251, line: 37, baseType: !928, size: 16, offset: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2272, file: !2251, line: 38, baseType: !928, size: 16, offset: 48)
!2278 = !DIDerivedType(tag: DW_TAG_member, scope: !2272, file: !2251, line: 39, baseType: !2279, size: 128, offset: 64)
!2279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2272, file: !2251, line: 39, size: 128, elements: !2280)
!2280 = !{!2281, !2286}
!2281 = !DIDerivedType(tag: DW_TAG_member, scope: !2279, file: !2251, line: 40, baseType: !2282, size: 128)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2279, file: !2251, line: 40, size: 128, elements: !2283)
!2283 = !{!2284, !2285}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2282, file: !2251, line: 41, baseType: !492, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2282, file: !2251, line: 42, baseType: !492, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2279, file: !2251, line: 44, baseType: !2287, size: 128)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2279, file: !2251, line: 44, size: 128, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2287, file: !2251, line: 45, baseType: !486, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2287, file: !2251, line: 46, baseType: !486, size: 32, offset: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2287, file: !2251, line: 47, baseType: !486, size: 32, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2287, file: !2251, line: 48, baseType: !486, size: 32, offset: 96)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2272, file: !2251, line: 51, baseType: !486, size: 32, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2272, file: !2251, line: 52, baseType: !486, size: 32, offset: 224)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2272, file: !2251, line: 55, baseType: !2296, size: 1024, offset: 256)
!2296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 1024, elements: !174)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2272, file: !2251, line: 58, baseType: !2298, size: 2048, offset: 1280)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 2048, elements: !351)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2272, file: !2251, line: 60, baseType: !2300, size: 384, offset: 3328)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 384, elements: !2301)
!2301 = !{!2302}
!2302 = !DISubrange(count: 12)
!2303 = !DIDerivedType(tag: DW_TAG_member, scope: !2272, file: !2251, line: 62, baseType: !2304, size: 384, offset: 3712)
!2304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2272, file: !2251, line: 62, size: 384, elements: !2305)
!2305 = !{!2306, !2307}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2304, file: !2251, line: 63, baseType: !2300, size: 384)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2304, file: !2251, line: 64, baseType: !2300, size: 384)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2256, file: !2251, line: 307, baseType: !2309, size: 1088)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2251, line: 79, size: 1088, elements: !2310)
!2310 = !{!2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2357}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2309, file: !2251, line: 80, baseType: !486, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2309, file: !2251, line: 81, baseType: !486, size: 32, offset: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2309, file: !2251, line: 82, baseType: !486, size: 32, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2309, file: !2251, line: 83, baseType: !486, size: 32, offset: 96)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2309, file: !2251, line: 84, baseType: !486, size: 32, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2309, file: !2251, line: 85, baseType: !486, size: 32, offset: 160)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2309, file: !2251, line: 86, baseType: !486, size: 32, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2309, file: !2251, line: 88, baseType: !2269, size: 640, offset: 224)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2309, file: !2251, line: 89, baseType: !1421, size: 8, offset: 864)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2309, file: !2251, line: 90, baseType: !1421, size: 8, offset: 872)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2309, file: !2251, line: 91, baseType: !1421, size: 8, offset: 880)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2309, file: !2251, line: 92, baseType: !1421, size: 8, offset: 888)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2309, file: !2251, line: 93, baseType: !1421, size: 8, offset: 896)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2309, file: !2251, line: 94, baseType: !1421, size: 8, offset: 904)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2309, file: !2251, line: 95, baseType: !2326, size: 64, offset: 960)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2328, line: 11, size: 128, elements: !2329)
!2328 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2329 = !{!2330, !2331}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2327, file: !2328, line: 12, baseType: !381, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2327, file: !2328, line: 13, baseType: !2332, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2334, line: 56, size: 1344, elements: !2335)
!2334 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2333, file: !2334, line: 61, baseType: !142, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2333, file: !2334, line: 62, baseType: !142, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2333, file: !2334, line: 63, baseType: !142, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2333, file: !2334, line: 64, baseType: !142, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2333, file: !2334, line: 65, baseType: !142, size: 64, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2333, file: !2334, line: 66, baseType: !142, size: 64, offset: 320)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2333, file: !2334, line: 68, baseType: !142, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2333, file: !2334, line: 69, baseType: !142, size: 64, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2333, file: !2334, line: 70, baseType: !142, size: 64, offset: 512)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2333, file: !2334, line: 71, baseType: !142, size: 64, offset: 576)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2333, file: !2334, line: 72, baseType: !142, size: 64, offset: 640)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2333, file: !2334, line: 73, baseType: !142, size: 64, offset: 704)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2333, file: !2334, line: 74, baseType: !142, size: 64, offset: 768)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2333, file: !2334, line: 75, baseType: !142, size: 64, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2333, file: !2334, line: 76, baseType: !142, size: 64, offset: 896)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2333, file: !2334, line: 81, baseType: !142, size: 64, offset: 960)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2333, file: !2334, line: 83, baseType: !142, size: 64, offset: 1024)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2333, file: !2334, line: 84, baseType: !142, size: 64, offset: 1088)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2333, file: !2334, line: 85, baseType: !142, size: 64, offset: 1152)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2333, file: !2334, line: 86, baseType: !142, size: 64, offset: 1216)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2333, file: !2334, line: 87, baseType: !142, size: 64, offset: 1280)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2309, file: !2251, line: 96, baseType: !486, size: 32, offset: 1024)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2256, file: !2251, line: 308, baseType: !2359, size: 4608, align: 512)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2251, line: 289, size: 4608, align: 512, elements: !2360)
!2360 = !{!2361, !2362, !2369}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2359, file: !2251, line: 290, baseType: !2272, size: 4096, align: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2359, file: !2251, line: 291, baseType: !2363, size: 512, offset: 4096)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2251, line: 268, size: 512, elements: !2364)
!2364 = !{!2365, !2366, !2367}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2363, file: !2251, line: 269, baseType: !492, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2363, file: !2251, line: 270, baseType: !492, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2363, file: !2251, line: 271, baseType: !2368, size: 384, offset: 128)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 384, elements: !1694)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2359, file: !2251, line: 292, baseType: !2370, offset: 4608)
!2370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1421, elements: !1792)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2256, file: !2251, line: 309, baseType: !2372, size: 32768)
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1421, size: 32768, elements: !2373)
!2373 = !{!2374}
!2374 = !DISubrange(count: 4096)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1282, file: !791, line: 378, baseType: !2376, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1278, file: !791, line: 384, baseType: !1571, size: 192, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1047, file: !791, line: 500, baseType: !307, offset: 6656)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1047, file: !791, line: 501, baseType: !2380, size: 64, offset: 6656)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !791, line: 387, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1047, file: !791, line: 516, baseType: !1782, size: 64, offset: 6720)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1047, file: !791, line: 519, baseType: !423, size: 64, offset: 6784)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1047, file: !791, line: 521, baseType: !2385, size: 64, offset: 6848)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !791, line: 521, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1047, file: !791, line: 545, baseType: !816, size: 32, offset: 6912)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1047, file: !791, line: 548, baseType: !257, size: 8, offset: 6944)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1047, file: !791, line: 550, baseType: !2390, offset: 6952)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2391, line: 142, elements: !321)
!2391 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1047, file: !791, line: 554, baseType: !2026, size: 256, offset: 6976)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1047, file: !791, line: 557, baseType: !486, size: 32, offset: 7232)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1044, file: !791, line: 565, baseType: !2395, offset: 7296)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, elements: !2396)
!2396 = !{!2397}
!2397 = !DISubrange(count: -1)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1040, file: !791, line: 151, baseType: !816, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1033, file: !791, line: 156, baseType: !307, offset: 256)
!2400 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 159, baseType: !2401, size: 128)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 159, size: 128, elements: !2402)
!2402 = !{!2403, !2467}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2401, file: !791, line: 161, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2406)
!2406 = !{!2407, !2417, !2438, !2439, !2440, !2441, !2442, !2454, !2455, !2456}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2405, file: !31, line: 111, baseType: !2408, size: 384)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2409)
!2409 = !{!2410, !2412, !2413, !2414, !2415, !2416}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2408, file: !31, line: 20, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2408, file: !31, line: 21, baseType: !2411, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2408, file: !31, line: 22, baseType: !2411, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2408, file: !31, line: 23, baseType: !142, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2408, file: !31, line: 24, baseType: !142, size: 64, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2408, file: !31, line: 25, baseType: !142, size: 64, offset: 320)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2405, file: !31, line: 112, baseType: !2418, size: 64, offset: 384)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2420, line: 105, size: 128, elements: !2421)
!2420 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2421 = !{!2422, !2423}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2419, file: !2420, line: 110, baseType: !142, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2419, file: !2420, line: 118, baseType: !2424, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2420, line: 95, size: 448, elements: !2426)
!2426 = !{!2427, !2428, !2433, !2434, !2435, !2436, !2437}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2425, file: !2420, line: 96, baseType: !840, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2425, file: !2420, line: 97, baseType: !2429, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2420, line: 60, baseType: !2431)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !2418}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2425, file: !2420, line: 98, baseType: !2429, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2425, file: !2420, line: 99, baseType: !257, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2425, file: !2420, line: 100, baseType: !257, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2425, file: !2420, line: 101, baseType: !436, size: 128, align: 64, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2425, file: !2420, line: 102, baseType: !2418, size: 64, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2405, file: !31, line: 113, baseType: !2419, size: 128, offset: 448)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2405, file: !31, line: 114, baseType: !1571, size: 192, offset: 576)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2405, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2405, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2405, file: !31, line: 117, baseType: !2443, size: 64, offset: 832)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2445)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2446)
!2446 = !{!2447, !2448, !2452, !2453}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2445, file: !31, line: 73, baseType: !909, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2445, file: !31, line: 78, baseType: !2449, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !2404}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2445, file: !31, line: 83, baseType: !2449, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2445, file: !31, line: 89, baseType: !1096, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2405, file: !31, line: 118, baseType: !185, size: 64, offset: 896)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2405, file: !31, line: 119, baseType: !145, size: 32, offset: 960)
!2456 = !DIDerivedType(tag: DW_TAG_member, scope: !2405, file: !31, line: 120, baseType: !2457, size: 128, offset: 1024)
!2457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2405, file: !31, line: 120, size: 128, elements: !2458)
!2458 = !{!2459, !2465}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2457, file: !31, line: 121, baseType: !2460, size: 128)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2461, line: 6, size: 128, elements: !2462)
!2461 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2462 = !{!2463, !2464}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2460, file: !2461, line: 7, baseType: !492, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2460, file: !2461, line: 8, baseType: !492, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2457, file: !31, line: 122, baseType: !2466)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2460, elements: !1792)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2401, file: !791, line: 162, baseType: !185, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !795, file: !791, line: 176, baseType: !436, size: 128, align: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !791, line: 179, baseType: !2470, size: 32, offset: 384)
!2470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !791, line: 179, size: 32, elements: !2471)
!2471 = !{!2472, !2473, !2474, !2475}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2470, file: !791, line: 184, baseType: !816, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2470, file: !791, line: 192, baseType: !7, size: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2470, file: !791, line: 194, baseType: !7, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2470, file: !791, line: 195, baseType: !145, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !790, file: !791, line: 199, baseType: !816, size: 32, offset: 416)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !725, file: !44, line: 1964, baseType: !2478, size: 64, offset: 1344)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!381, !667, !2481}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2483, line: 12, size: 256, elements: !2484)
!2483 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2484 = !{!2485, !2486, !2487, !2488, !2489}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2482, file: !2483, line: 13, baseType: !812, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2482, file: !2483, line: 16, baseType: !145, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2482, file: !2483, line: 23, baseType: !142, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2482, file: !2483, line: 30, baseType: !142, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2482, file: !2483, line: 33, baseType: !2490, size: 64, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !791, line: 27, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !725, file: !44, line: 1966, baseType: !2478, size: 64, offset: 1408)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !668, file: !44, line: 1424, baseType: !2494, size: 64, offset: 448)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2496)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2497)
!2497 = !{!2498, !2544, !2548, !2552, !2553, !2554, !2555, !2556, !2561, !2566, !2570}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2496, file: !38, line: 323, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!145, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2504)
!2504 = !{!2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2529, !2530, !2531}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2503, file: !38, line: 295, baseType: !707, size: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2503, file: !38, line: 296, baseType: !294, size: 128, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2503, file: !38, line: 297, baseType: !294, size: 128, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2503, file: !38, line: 298, baseType: !294, size: 128, offset: 384)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2503, file: !38, line: 299, baseType: !1242, size: 192, offset: 512)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2503, file: !38, line: 300, baseType: !307, offset: 704)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2503, file: !38, line: 301, baseType: !816, size: 32, offset: 704)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2503, file: !38, line: 302, baseType: !667, size: 64, offset: 768)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2503, file: !38, line: 303, baseType: !2514, size: 64, offset: 832)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2515)
!2515 = !{!2516, !2528}
!2516 = !DIDerivedType(tag: DW_TAG_member, scope: !2514, file: !38, line: 69, baseType: !2517, size: 32)
!2517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2514, file: !38, line: 69, size: 32, elements: !2518)
!2518 = !{!2519, !2520, !2521}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2517, file: !38, line: 70, baseType: !505, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2517, file: !38, line: 71, baseType: !513, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2517, file: !38, line: 72, baseType: !2522, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2523, line: 24, baseType: !2524)
!2523 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2523, line: 22, size: 32, elements: !2525)
!2525 = !{!2526}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2524, file: !2523, line: 23, baseType: !2527, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2523, line: 20, baseType: !511)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2514, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2503, file: !38, line: 304, baseType: !599, size: 64, offset: 896)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2503, file: !38, line: 305, baseType: !142, size: 64, offset: 960)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2503, file: !38, line: 306, baseType: !2532, size: 576, offset: 1024)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2533)
!2533 = !{!2534, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2532, file: !38, line: 206, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !601)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2532, file: !38, line: 207, baseType: !2535, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2532, file: !38, line: 208, baseType: !2535, size: 64, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2532, file: !38, line: 209, baseType: !2535, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2532, file: !38, line: 210, baseType: !2535, size: 64, offset: 256)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2532, file: !38, line: 211, baseType: !2535, size: 64, offset: 320)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2532, file: !38, line: 212, baseType: !2535, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2532, file: !38, line: 213, baseType: !607, size: 64, offset: 448)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2532, file: !38, line: 214, baseType: !607, size: 64, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2496, file: !38, line: 324, baseType: !2545, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!2502, !667, !145}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2496, file: !38, line: 325, baseType: !2549, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !2502}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2496, file: !38, line: 326, baseType: !2499, size: 64, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2496, file: !38, line: 327, baseType: !2499, size: 64, offset: 256)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2496, file: !38, line: 328, baseType: !2499, size: 64, offset: 320)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2496, file: !38, line: 329, baseType: !753, size: 64, offset: 384)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2496, file: !38, line: 332, baseType: !2557, size: 64, offset: 448)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!2560, !499}
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2496, file: !38, line: 333, baseType: !2562, size: 64, offset: 512)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!145, !499, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2496, file: !38, line: 335, baseType: !2567, size: 64, offset: 576)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!145, !499, !2560}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2496, file: !38, line: 337, baseType: !2571, size: 64, offset: 640)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!145, !667, !2574}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !668, file: !44, line: 1425, baseType: !2576, size: 64, offset: 512)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2578)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2579)
!2579 = !{!2580, !2584, !2585, !2589, !2590, !2591, !2606, !2629, !2633, !2634, !2657}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2578, file: !38, line: 429, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!145, !667, !145, !145, !617}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2578, file: !38, line: 430, baseType: !753, size: 64, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2578, file: !38, line: 431, baseType: !2586, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!145, !667, !7}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2578, file: !38, line: 432, baseType: !2586, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2578, file: !38, line: 433, baseType: !753, size: 64, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2578, file: !38, line: 434, baseType: !2592, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!145, !667, !145, !2595}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2597)
!2597 = !{!2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2596, file: !38, line: 416, baseType: !145, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2596, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2596, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2596, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2596, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2596, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2596, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2596, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2578, file: !38, line: 435, baseType: !2607, size: 64, offset: 384)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!145, !667, !2514, !2610}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2612)
!2612 = !{!2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2611, file: !38, line: 344, baseType: !145, size: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2611, file: !38, line: 345, baseType: !492, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2611, file: !38, line: 346, baseType: !492, size: 64, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2611, file: !38, line: 347, baseType: !492, size: 64, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2611, file: !38, line: 348, baseType: !492, size: 64, offset: 256)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2611, file: !38, line: 349, baseType: !492, size: 64, offset: 320)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2611, file: !38, line: 350, baseType: !492, size: 64, offset: 384)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2611, file: !38, line: 351, baseType: !846, size: 64, offset: 448)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2611, file: !38, line: 353, baseType: !846, size: 64, offset: 512)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2611, file: !38, line: 354, baseType: !145, size: 32, offset: 576)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2611, file: !38, line: 355, baseType: !145, size: 32, offset: 608)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2611, file: !38, line: 356, baseType: !492, size: 64, offset: 640)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2611, file: !38, line: 357, baseType: !492, size: 64, offset: 704)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2611, file: !38, line: 358, baseType: !492, size: 64, offset: 768)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2611, file: !38, line: 359, baseType: !846, size: 64, offset: 832)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2611, file: !38, line: 360, baseType: !145, size: 32, offset: 896)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2578, file: !38, line: 436, baseType: !2630, size: 64, offset: 448)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!145, !667, !2574, !2610}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2578, file: !38, line: 438, baseType: !2607, size: 64, offset: 512)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2578, file: !38, line: 439, baseType: !2635, size: 64, offset: 576)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!145, !667, !2638}
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2640)
!2640 = !{!2641, !2642}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2639, file: !38, line: 410, baseType: !7, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2639, file: !38, line: 411, baseType: !2643, size: 1344, offset: 64)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2644, size: 1344, elements: !183)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2656}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2644, file: !38, line: 396, baseType: !7, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2644, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2644, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2644, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2644, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2644, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2644, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2644, file: !38, line: 404, baseType: !494, size: 64, offset: 256)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2644, file: !38, line: 405, baseType: !2655, size: 64, offset: 320)
!2655 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !258, line: 126, baseType: !492)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2644, file: !38, line: 406, baseType: !2655, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2578, file: !38, line: 440, baseType: !2586, size: 64, offset: 640)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !668, file: !44, line: 1426, baseType: !2659, size: 64, offset: 576)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2661)
!2661 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !668, file: !44, line: 1427, baseType: !142, size: 64, offset: 640)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !668, file: !44, line: 1428, baseType: !142, size: 64, offset: 704)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !668, file: !44, line: 1429, baseType: !142, size: 64, offset: 768)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !668, file: !44, line: 1430, baseType: !453, size: 64, offset: 832)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !668, file: !44, line: 1431, baseType: !836, size: 256, offset: 896)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !668, file: !44, line: 1432, baseType: !145, size: 32, offset: 1152)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !668, file: !44, line: 1433, baseType: !816, size: 32, offset: 1184)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !668, file: !44, line: 1437, baseType: !2670, size: 64, offset: 1216)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !668, file: !44, line: 1449, baseType: !2675, size: 64, offset: 1280)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !469, line: 34, size: 64, elements: !2676)
!2676 = !{!2677}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2675, file: !469, line: 35, baseType: !472, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !668, file: !44, line: 1450, baseType: !294, size: 128, offset: 1344)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !668, file: !44, line: 1451, baseType: !2680, size: 64, offset: 1472)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !668, file: !44, line: 1452, baseType: !1992, size: 64, offset: 1536)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !668, file: !44, line: 1453, baseType: !2684, size: 64, offset: 1600)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !668, file: !44, line: 1454, baseType: !707, size: 128, offset: 1664)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !668, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !668, file: !44, line: 1456, baseType: !2689, size: 2432, offset: 1856)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2690)
!2690 = !{!2691, !2692, !2693, !2695, !2727}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2689, file: !38, line: 519, baseType: !7, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2689, file: !38, line: 520, baseType: !836, size: 256, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2689, file: !38, line: 521, baseType: !2694, size: 192, offset: 320)
!2694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 192, elements: !183)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2689, file: !38, line: 522, baseType: !2696, size: 1728, offset: 512)
!2696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2697, size: 1728, elements: !183)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2698)
!2698 = !{!2699, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2697, file: !38, line: 223, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2702)
!2702 = !{!2703, !2704, !2717, !2718}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2701, file: !38, line: 444, baseType: !145, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2701, file: !38, line: 445, baseType: !2705, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2707)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2708)
!2708 = !{!2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2707, file: !38, line: 311, baseType: !753, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2707, file: !38, line: 312, baseType: !753, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2707, file: !38, line: 313, baseType: !753, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2707, file: !38, line: 314, baseType: !753, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2707, file: !38, line: 315, baseType: !2499, size: 64, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2707, file: !38, line: 316, baseType: !2499, size: 64, offset: 320)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2707, file: !38, line: 317, baseType: !2499, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2707, file: !38, line: 318, baseType: !2571, size: 64, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2701, file: !38, line: 446, baseType: !207, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2701, file: !38, line: 447, baseType: !2700, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2697, file: !38, line: 224, baseType: !145, size: 32, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2697, file: !38, line: 226, baseType: !294, size: 128, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2697, file: !38, line: 227, baseType: !142, size: 64, offset: 256)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2697, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2697, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2697, file: !38, line: 230, baseType: !2535, size: 64, offset: 384)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2697, file: !38, line: 231, baseType: !2535, size: 64, offset: 448)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2697, file: !38, line: 232, baseType: !185, size: 64, offset: 512)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2689, file: !38, line: 523, baseType: !2728, size: 192, offset: 2240)
!2728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2705, size: 192, elements: !183)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !668, file: !44, line: 1458, baseType: !2730, size: 2112, offset: 4288)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2731)
!2731 = !{!2732, !2733, !2734}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2730, file: !44, line: 1411, baseType: !145, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2730, file: !44, line: 1412, baseType: !1550, size: 128, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2730, file: !44, line: 1413, baseType: !2735, size: 1920, offset: 192)
!2735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2736, size: 1920, elements: !183)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2737, line: 12, size: 640, elements: !2738)
!2737 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2738 = !{!2739, !2747, !2749, !2754, !2755}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2736, file: !2737, line: 13, baseType: !2740, size: 320)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2741, line: 17, size: 320, elements: !2742)
!2741 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2742 = !{!2743, !2744, !2745, !2746}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2740, file: !2741, line: 18, baseType: !145, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2740, file: !2741, line: 19, baseType: !145, size: 32, offset: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2740, file: !2741, line: 20, baseType: !1550, size: 128, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2740, file: !2741, line: 22, baseType: !436, size: 128, align: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2736, file: !2737, line: 14, baseType: !2748, size: 64, offset: 320)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2736, file: !2737, line: 15, baseType: !2750, size: 64, offset: 384)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2751, line: 16, size: 64, elements: !2752)
!2751 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2752 = !{!2753}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2750, file: !2751, line: 17, baseType: !1285, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2736, file: !2737, line: 16, baseType: !1550, size: 128, offset: 448)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2736, file: !2737, line: 17, baseType: !816, size: 32, offset: 576)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !668, file: !44, line: 1465, baseType: !185, size: 64, offset: 6400)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !668, file: !44, line: 1468, baseType: !486, size: 32, offset: 6464)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !668, file: !44, line: 1470, baseType: !607, size: 64, offset: 6528)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !668, file: !44, line: 1471, baseType: !607, size: 64, offset: 6592)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !668, file: !44, line: 1473, baseType: !488, size: 32, offset: 6656)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !668, file: !44, line: 1474, baseType: !2762, size: 64, offset: 6720)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !668, file: !44, line: 1477, baseType: !2765, size: 256, offset: 6784)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 256, elements: !174)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !668, file: !44, line: 1478, baseType: !2767, size: 128, offset: 7040)
!2767 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2768, line: 18, baseType: !2769)
!2768 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2768, line: 16, size: 128, elements: !2770)
!2770 = !{!2771}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2769, file: !2768, line: 17, baseType: !2772, size: 128)
!2772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 128, elements: !1804)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !668, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !668, file: !44, line: 1481, baseType: !2775, size: 32, offset: 7200)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !258, line: 150, baseType: !7)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !668, file: !44, line: 1487, baseType: !1242, size: 192, offset: 7232)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !668, file: !44, line: 1493, baseType: !205, size: 64, offset: 7424)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !668, file: !44, line: 1495, baseType: !2779, size: 64, offset: 7488)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2781)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !451, line: 135, size: 1024, align: 512, elements: !2782)
!2782 = !{!2783, !2787, !2788, !2795, !2801, !2805, !2809, !2813, !2814, !2818, !2822, !2827, !2831}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2781, file: !451, line: 136, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!145, !453, !7}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2781, file: !451, line: 137, baseType: !2784, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2781, file: !451, line: 138, baseType: !2789, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!145, !2792, !2794}
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2781, file: !451, line: 139, baseType: !2796, size: 64, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!145, !2792, !7, !205, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2781, file: !451, line: 141, baseType: !2802, size: 64, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!145, !2792}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2781, file: !451, line: 142, baseType: !2806, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!145, !453}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2781, file: !451, line: 143, baseType: !2810, size: 64, offset: 384)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{null, !453}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2781, file: !451, line: 144, baseType: !2810, size: 64, offset: 448)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2781, file: !451, line: 145, baseType: !2815, size: 64, offset: 512)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{null, !453, !499}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2781, file: !451, line: 146, baseType: !2819, size: 64, offset: 576)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!348, !453, !348, !145}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2781, file: !451, line: 147, baseType: !2823, size: 64, offset: 640)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!449, !2826}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2781, file: !451, line: 148, baseType: !2828, size: 64, offset: 704)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!145, !617, !257}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2781, file: !451, line: 149, baseType: !2832, size: 64, offset: 768)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!453, !453, !2835}
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !668, file: !44, line: 1500, baseType: !145, size: 32, offset: 7552)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !668, file: !44, line: 1502, baseType: !2839, size: 448, offset: 7616)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2483, line: 60, size: 448, elements: !2840)
!2840 = !{!2841, !2846, !2847, !2848, !2849, !2850, !2851}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2839, file: !2483, line: 61, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!142, !2845, !2481}
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2839, file: !2483, line: 63, baseType: !2842, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2839, file: !2483, line: 66, baseType: !381, size: 64, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2839, file: !2483, line: 67, baseType: !145, size: 32, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2839, file: !2483, line: 68, baseType: !7, size: 32, offset: 224)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2839, file: !2483, line: 71, baseType: !294, size: 128, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2839, file: !2483, line: 77, baseType: !2852, size: 64, offset: 384)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !668, file: !44, line: 1505, baseType: !840, size: 64, offset: 8064)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !668, file: !44, line: 1508, baseType: !840, size: 64, offset: 8128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !668, file: !44, line: 1511, baseType: !145, size: 32, offset: 8192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !668, file: !44, line: 1514, baseType: !978, size: 32, offset: 8224)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !668, file: !44, line: 1517, baseType: !2858, size: 64, offset: 8256)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2027, line: 18, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !668, file: !44, line: 1518, baseType: !703, size: 64, offset: 8320)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !668, file: !44, line: 1525, baseType: !1782, size: 64, offset: 8384)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !668, file: !44, line: 1532, baseType: !2863, size: 64, offset: 8448)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2864, line: 52, size: 64, elements: !2865)
!2864 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2865 = !{!2866}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2863, file: !2864, line: 53, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2864, line: 40, size: 256, elements: !2869)
!2869 = !{!2870, !2871, !2876}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2868, file: !2864, line: 42, baseType: !307)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2868, file: !2864, line: 44, baseType: !2872, size: 192)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2864, line: 28, size: 192, elements: !2873)
!2873 = !{!2874, !2875}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2872, file: !2864, line: 29, baseType: !294, size: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2872, file: !2864, line: 31, baseType: !381, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2868, file: !2864, line: 49, baseType: !381, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !668, file: !44, line: 1533, baseType: !2863, size: 64, offset: 8512)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !668, file: !44, line: 1534, baseType: !436, size: 128, align: 64, offset: 8576)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !668, file: !44, line: 1535, baseType: !2026, size: 256, offset: 8704)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !668, file: !44, line: 1537, baseType: !1242, size: 192, offset: 8960)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !668, file: !44, line: 1542, baseType: !145, size: 32, offset: 9152)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !668, file: !44, line: 1545, baseType: !307, offset: 9184)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !668, file: !44, line: 1546, baseType: !294, size: 128, offset: 9216)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !668, file: !44, line: 1548, baseType: !307, offset: 9344)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !668, file: !44, line: 1549, baseType: !294, size: 128, offset: 9344)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !500, file: !44, line: 624, baseType: !802, size: 64, offset: 256)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !500, file: !44, line: 631, baseType: !142, size: 64, offset: 320)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !44, line: 639, baseType: !2889, size: 32, offset: 384)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !44, line: 639, size: 32, elements: !2890)
!2890 = !{!2891, !2892}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2889, file: !44, line: 640, baseType: !179, size: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2889, file: !44, line: 641, baseType: !7, size: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !500, file: !44, line: 643, baseType: !581, size: 32, offset: 416)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !500, file: !44, line: 644, baseType: !599, size: 64, offset: 448)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !500, file: !44, line: 645, baseType: !603, size: 128, offset: 512)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !500, file: !44, line: 646, baseType: !603, size: 128, offset: 640)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !500, file: !44, line: 647, baseType: !603, size: 128, offset: 768)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !500, file: !44, line: 648, baseType: !307, offset: 896)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !500, file: !44, line: 649, baseType: !388, size: 16, offset: 896)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !500, file: !44, line: 650, baseType: !1421, size: 8, offset: 912)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !500, file: !44, line: 651, baseType: !1421, size: 8, offset: 920)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !500, file: !44, line: 652, baseType: !2655, size: 64, offset: 960)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !500, file: !44, line: 659, baseType: !142, size: 64, offset: 1024)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !500, file: !44, line: 660, baseType: !836, size: 256, offset: 1088)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !500, file: !44, line: 662, baseType: !142, size: 64, offset: 1344)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !500, file: !44, line: 663, baseType: !142, size: 64, offset: 1408)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !500, file: !44, line: 665, baseType: !707, size: 128, offset: 1472)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !500, file: !44, line: 666, baseType: !294, size: 128, offset: 1600)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !500, file: !44, line: 675, baseType: !294, size: 128, offset: 1728)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !500, file: !44, line: 676, baseType: !294, size: 128, offset: 1856)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !500, file: !44, line: 677, baseType: !294, size: 128, offset: 1984)
!2912 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !44, line: 678, baseType: !2913, size: 128, offset: 2112)
!2913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !44, line: 678, size: 128, elements: !2914)
!2914 = !{!2915, !2916}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2913, file: !44, line: 679, baseType: !703, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2913, file: !44, line: 680, baseType: !436, size: 128, align: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !500, file: !44, line: 682, baseType: !842, size: 64, offset: 2240)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !500, file: !44, line: 683, baseType: !842, size: 64, offset: 2304)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !500, file: !44, line: 684, baseType: !816, size: 32, offset: 2368)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !500, file: !44, line: 685, baseType: !816, size: 32, offset: 2400)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !500, file: !44, line: 686, baseType: !816, size: 32, offset: 2432)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !500, file: !44, line: 688, baseType: !816, size: 32, offset: 2464)
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !44, line: 690, baseType: !2924, size: 64, offset: 2496)
!2924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !44, line: 690, size: 64, elements: !2925)
!2925 = !{!2926, !3149}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2924, file: !44, line: 691, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2930)
!2930 = !{!2931, !2932, !2936, !2941, !2945, !2946, !2947, !2951, !2964, !2965, !2973, !2977, !2978, !2982, !2983, !2987, !2992, !2993, !2997, !3001, !3109, !3113, !3114, !3118, !3119, !3123, !3127, !3132, !3136, !3140, !3144, !3148}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2929, file: !44, line: 1823, baseType: !207, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2929, file: !44, line: 1824, baseType: !2933, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!599, !423, !599, !145}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2929, file: !44, line: 1825, baseType: !2937, size: 64, offset: 128)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!377, !423, !348, !393, !2940}
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2929, file: !44, line: 1826, baseType: !2942, size: 64, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!377, !423, !205, !393, !2940}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2929, file: !44, line: 1827, baseType: !913, size: 64, offset: 256)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2929, file: !44, line: 1828, baseType: !913, size: 64, offset: 320)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2929, file: !44, line: 1829, baseType: !2948, size: 64, offset: 384)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!145, !916, !257}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2929, file: !44, line: 1830, baseType: !2952, size: 64, offset: 448)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!145, !423, !2955}
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2957)
!2957 = !{!2958, !2963}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2956, file: !44, line: 1777, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2960)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!145, !2955, !205, !145, !599, !492, !7}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2956, file: !44, line: 1778, baseType: !599, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2929, file: !44, line: 1831, baseType: !2952, size: 64, offset: 512)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2929, file: !44, line: 1832, baseType: !2966, size: 64, offset: 576)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!2969, !423, !2971}
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2970, line: 52, baseType: !7)
!2970 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !687, line: 27, flags: DIFlagFwdDecl)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2929, file: !44, line: 1833, baseType: !2974, size: 64, offset: 640)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!381, !423, !7, !142}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2929, file: !44, line: 1834, baseType: !2974, size: 64, offset: 704)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2929, file: !44, line: 1835, baseType: !2979, size: 64, offset: 768)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!145, !423, !1050}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2929, file: !44, line: 1836, baseType: !142, size: 64, offset: 832)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2929, file: !44, line: 1837, baseType: !2984, size: 64, offset: 896)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!145, !499, !423}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2929, file: !44, line: 1838, baseType: !2988, size: 64, offset: 960)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!145, !423, !2991}
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !185)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2929, file: !44, line: 1839, baseType: !2984, size: 64, offset: 1024)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2929, file: !44, line: 1840, baseType: !2994, size: 64, offset: 1088)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!145, !423, !599, !599, !145}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2929, file: !44, line: 1841, baseType: !2998, size: 64, offset: 1152)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!145, !145, !423, !145}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2929, file: !44, line: 1842, baseType: !3002, size: 64, offset: 1216)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!145, !423, !145, !3005}
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !3007)
!3007 = !{!3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3039, !3040, !3041, !3054, !3085}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3006, file: !44, line: 1063, baseType: !3005, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3006, file: !44, line: 1064, baseType: !294, size: 128, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3006, file: !44, line: 1065, baseType: !707, size: 128, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3006, file: !44, line: 1066, baseType: !294, size: 128, offset: 320)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3006, file: !44, line: 1069, baseType: !294, size: 128, offset: 448)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3006, file: !44, line: 1072, baseType: !2991, size: 64, offset: 576)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3006, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3006, file: !44, line: 1074, baseType: !141, size: 8, offset: 672)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3006, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3006, file: !44, line: 1076, baseType: !145, size: 32, offset: 736)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3006, file: !44, line: 1077, baseType: !1550, size: 128, offset: 768)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3006, file: !44, line: 1078, baseType: !423, size: 64, offset: 896)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3006, file: !44, line: 1079, baseType: !599, size: 64, offset: 960)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3006, file: !44, line: 1080, baseType: !599, size: 64, offset: 1024)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3006, file: !44, line: 1082, baseType: !3023, size: 64, offset: 1088)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3025)
!3025 = !{!3026, !3034, !3035, !3036, !3037, !3038}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3024, file: !44, line: 1315, baseType: !3027)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3028, line: 20, baseType: !3029)
!3028 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3028, line: 11, elements: !3030)
!3030 = !{!3031}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3029, file: !3028, line: 12, baseType: !3032)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !319, line: 33, baseType: !3033)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 31, elements: !321)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3024, file: !44, line: 1316, baseType: !145, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3024, file: !44, line: 1317, baseType: !145, size: 32, offset: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3024, file: !44, line: 1318, baseType: !3023, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3024, file: !44, line: 1319, baseType: !423, size: 64, offset: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3024, file: !44, line: 1320, baseType: !436, size: 128, align: 64, offset: 192)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3006, file: !44, line: 1084, baseType: !142, size: 64, offset: 1152)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3006, file: !44, line: 1085, baseType: !142, size: 64, offset: 1216)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3006, file: !44, line: 1087, baseType: !3042, size: 64, offset: 1280)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3044)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3045)
!3045 = !{!3046, !3050}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3044, file: !44, line: 1012, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !3005, !3005}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3044, file: !44, line: 1013, baseType: !3051, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !3005}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3006, file: !44, line: 1088, baseType: !3055, size: 64, offset: 1344)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3057)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3058)
!3058 = !{!3059, !3063, !3067, !3068, !3072, !3076, !3080, !3084}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3057, file: !44, line: 1017, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!2991, !2991}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3057, file: !44, line: 1018, baseType: !3064, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{null, !2991}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3057, file: !44, line: 1019, baseType: !3051, size: 64, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3057, file: !44, line: 1020, baseType: !3069, size: 64, offset: 192)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!145, !3005, !145}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3057, file: !44, line: 1021, baseType: !3073, size: 64, offset: 256)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!257, !3005}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3057, file: !44, line: 1022, baseType: !3077, size: 64, offset: 320)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!145, !3005, !145, !297}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3057, file: !44, line: 1023, baseType: !3081, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{null, !3005, !890}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3057, file: !44, line: 1024, baseType: !3073, size: 64, offset: 448)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3006, file: !44, line: 1097, baseType: !3086, size: 256, offset: 1408)
!3086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3006, file: !44, line: 1089, size: 256, elements: !3087)
!3087 = !{!3088, !3097, !3103}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3086, file: !44, line: 1090, baseType: !3089, size: 256)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3090, line: 10, size: 256, elements: !3091)
!3090 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3091 = !{!3092, !3093, !3096}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3089, file: !3090, line: 11, baseType: !486, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3089, file: !3090, line: 12, baseType: !3094, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3090, line: 5, flags: DIFlagFwdDecl)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3089, file: !3090, line: 13, baseType: !294, size: 128, offset: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3086, file: !44, line: 1091, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3090, line: 17, size: 64, elements: !3099)
!3099 = !{!3100}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3098, file: !3090, line: 18, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3090, line: 16, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3086, file: !44, line: 1096, baseType: !3104, size: 192)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3086, file: !44, line: 1092, size: 192, elements: !3105)
!3105 = !{!3106, !3107, !3108}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3104, file: !44, line: 1093, baseType: !294, size: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3104, file: !44, line: 1094, baseType: !145, size: 32, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3104, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2929, file: !44, line: 1843, baseType: !3110, size: 64, offset: 1280)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!377, !423, !789, !145, !393, !2940, !145}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2929, file: !44, line: 1844, baseType: !1170, size: 64, offset: 1344)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2929, file: !44, line: 1845, baseType: !3115, size: 64, offset: 1408)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!145, !145}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2929, file: !44, line: 1846, baseType: !3002, size: 64, offset: 1472)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2929, file: !44, line: 1847, baseType: !3120, size: 64, offset: 1536)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!377, !2167, !423, !2940, !393, !7}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2929, file: !44, line: 1848, baseType: !3124, size: 64, offset: 1600)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!377, !423, !2940, !2167, !393, !7}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2929, file: !44, line: 1849, baseType: !3128, size: 64, offset: 1664)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!145, !423, !381, !3131, !890}
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2929, file: !44, line: 1850, baseType: !3133, size: 64, offset: 1728)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!381, !423, !145, !599, !599}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2929, file: !44, line: 1852, baseType: !3137, size: 64, offset: 1792)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{null, !779, !423}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2929, file: !44, line: 1856, baseType: !3141, size: 64, offset: 1856)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!377, !423, !599, !423, !599, !393, !7}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2929, file: !44, line: 1858, baseType: !3145, size: 64, offset: 1920)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!599, !423, !599, !423, !599, !599, !7}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2929, file: !44, line: 1861, baseType: !2994, size: 64, offset: 1984)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2924, file: !44, line: 692, baseType: !732, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !500, file: !44, line: 694, baseType: !3151, size: 64, offset: 2560)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3153)
!3153 = !{!3154, !3155, !3156, !3157}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3152, file: !44, line: 1101, baseType: !307)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3152, file: !44, line: 1102, baseType: !294, size: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3152, file: !44, line: 1103, baseType: !294, size: 128, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3152, file: !44, line: 1104, baseType: !294, size: 128, offset: 256)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !500, file: !44, line: 695, baseType: !803, size: 1216, align: 64, offset: 2624)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !500, file: !44, line: 696, baseType: !294, size: 128, offset: 3840)
!3160 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !44, line: 697, baseType: !3161, size: 64, offset: 3968)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !44, line: 697, size: 64, elements: !3162)
!3162 = !{!3163, !3164, !3165, !3168, !3169}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3161, file: !44, line: 698, baseType: !2167, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3161, file: !44, line: 699, baseType: !2680, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3161, file: !44, line: 700, baseType: !3166, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3161, file: !44, line: 701, baseType: !348, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3161, file: !44, line: 702, baseType: !7, size: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !500, file: !44, line: 705, baseType: !488, size: 32, offset: 4032)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !500, file: !44, line: 708, baseType: !488, size: 32, offset: 4064)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !500, file: !44, line: 709, baseType: !2762, size: 64, offset: 4096)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !500, file: !44, line: 720, baseType: !185, size: 64, offset: 4160)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !454, file: !451, line: 98, baseType: !3175, size: 256, offset: 448)
!3175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 256, elements: !174)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !454, file: !451, line: 101, baseType: !3177, size: 32, offset: 704)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3178, line: 25, size: 32, elements: !3179)
!3178 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3179 = !{!3180}
!3180 = !DIDerivedType(tag: DW_TAG_member, scope: !3177, file: !3178, line: 26, baseType: !3181, size: 32)
!3181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3177, file: !3178, line: 26, size: 32, elements: !3182)
!3182 = !{!3183}
!3183 = !DIDerivedType(tag: DW_TAG_member, scope: !3181, file: !3178, line: 30, baseType: !3184, size: 32)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3181, file: !3178, line: 30, size: 32, elements: !3185)
!3185 = !{!3186, !3187}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3184, file: !3178, line: 31, baseType: !307)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3184, file: !3178, line: 32, baseType: !145, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !454, file: !451, line: 102, baseType: !2779, size: 64, offset: 768)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !454, file: !451, line: 103, baseType: !667, size: 64, offset: 832)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !454, file: !451, line: 104, baseType: !142, size: 64, offset: 896)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !454, file: !451, line: 105, baseType: !185, size: 64, offset: 960)
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !451, line: 107, baseType: !3193, size: 128, offset: 1024)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !451, line: 107, size: 128, elements: !3194)
!3194 = !{!3195, !3196}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3193, file: !451, line: 108, baseType: !294, size: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3193, file: !451, line: 109, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !454, file: !451, line: 111, baseType: !294, size: 128, offset: 1152)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !454, file: !451, line: 112, baseType: !294, size: 128, offset: 1280)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !454, file: !451, line: 120, baseType: !3201, size: 128, offset: 1408)
!3201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !451, line: 116, size: 128, elements: !3202)
!3202 = !{!3203, !3204, !3205}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3201, file: !451, line: 117, baseType: !707, size: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3201, file: !451, line: 118, baseType: !468, size: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3201, file: !451, line: 119, baseType: !436, size: 128, align: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !424, file: !44, line: 922, baseType: !499, size: 64, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !424, file: !44, line: 923, baseType: !2927, size: 64, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !424, file: !44, line: 929, baseType: !307, offset: 384)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !424, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !424, file: !44, line: 931, baseType: !840, size: 64, offset: 448)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !424, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !424, file: !44, line: 933, baseType: !2775, size: 32, offset: 544)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !424, file: !44, line: 934, baseType: !1242, size: 192, offset: 576)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !424, file: !44, line: 935, baseType: !599, size: 64, offset: 768)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !424, file: !44, line: 936, baseType: !3216, size: 192, offset: 832)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3216, file: !44, line: 886, baseType: !3027)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3216, file: !44, line: 887, baseType: !1540, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3216, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3216, file: !44, line: 889, baseType: !505, size: 32, offset: 96)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3216, file: !44, line: 889, baseType: !505, size: 32, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3216, file: !44, line: 890, baseType: !145, size: 32, offset: 160)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !424, file: !44, line: 937, baseType: !1616, size: 64, offset: 1024)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !424, file: !44, line: 938, baseType: !3226, size: 256, offset: 1088)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3227)
!3227 = !{!3228, !3229, !3230, !3231, !3232, !3233}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3226, file: !44, line: 897, baseType: !142, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3226, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3226, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3226, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3226, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3226, file: !44, line: 904, baseType: !599, size: 64, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !424, file: !44, line: 940, baseType: !492, size: 64, offset: 1344)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !424, file: !44, line: 945, baseType: !185, size: 64, offset: 1408)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !424, file: !44, line: 949, baseType: !294, size: 128, offset: 1472)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !424, file: !44, line: 950, baseType: !294, size: 128, offset: 1600)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !424, file: !44, line: 952, baseType: !802, size: 64, offset: 1728)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !424, file: !44, line: 953, baseType: !978, size: 32, offset: 1792)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !424, file: !44, line: 954, baseType: !978, size: 32, offset: 1824)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !414, file: !371, line: 174, baseType: !420, size: 64, offset: 320)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !414, file: !371, line: 176, baseType: !3243, size: 64, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!145, !423, !300, !413, !1050}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !402, file: !371, line: 90, baseType: !397, size: 64, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !402, file: !371, line: 91, baseType: !3248, size: 64, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !361, file: !290, line: 143, baseType: !3250, size: 64, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!3253, !300}
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3255)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3256)
!3256 = !{!3257, !3258, !3262, !3266, !3272, !3276}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3255, file: !61, line: 40, baseType: !60, size: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3255, file: !61, line: 41, baseType: !3259, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!257}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3255, file: !61, line: 42, baseType: !3263, size: 64, offset: 128)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!185}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3255, file: !61, line: 43, baseType: !3267, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!2196, !3270}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3255, file: !61, line: 44, baseType: !3273, size: 64, offset: 256)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!2196}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3255, file: !61, line: 45, baseType: !538, size: 64, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !361, file: !290, line: 144, baseType: !3278, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!2196, !300}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !361, file: !290, line: 145, baseType: !3282, size: 64, offset: 384)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !300, !3285, !3286}
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !289, file: !290, line: 70, baseType: !3288, size: 64, offset: 384)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !687, line: 123, size: 1024, elements: !3290)
!3290 = !{!3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3419, !3420, !3421, !3422, !3423}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3289, file: !687, line: 124, baseType: !816, size: 32)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3289, file: !687, line: 125, baseType: !816, size: 32, offset: 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3289, file: !687, line: 135, baseType: !3288, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3289, file: !687, line: 136, baseType: !205, size: 64, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3289, file: !687, line: 138, baseType: !829, size: 192, align: 64, offset: 192)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3289, file: !687, line: 140, baseType: !2196, size: 64, offset: 384)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3289, file: !687, line: 141, baseType: !7, size: 32, offset: 448)
!3298 = !DIDerivedType(tag: DW_TAG_member, scope: !3289, file: !687, line: 142, baseType: !3299, size: 256, offset: 512)
!3299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3289, file: !687, line: 142, size: 256, elements: !3300)
!3300 = !{!3301, !3347, !3351}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3299, file: !687, line: 143, baseType: !3302, size: 192)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !687, line: 91, size: 192, elements: !3303)
!3303 = !{!3304, !3305, !3306}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3302, file: !687, line: 92, baseType: !142, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3302, file: !687, line: 94, baseType: !825, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3302, file: !687, line: 100, baseType: !3307, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !687, line: 180, size: 704, elements: !3309)
!3309 = !{!3310, !3311, !3312, !3319, !3320, !3321, !3345, !3346}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3308, file: !687, line: 182, baseType: !3288, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3308, file: !687, line: 183, baseType: !7, size: 32, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3308, file: !687, line: 186, baseType: !3313, size: 192, offset: 128)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3314, line: 19, size: 192, elements: !3315)
!3314 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3315 = !{!3316, !3317, !3318}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3313, file: !3314, line: 20, baseType: !807, size: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3313, file: !3314, line: 21, baseType: !7, size: 32, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3313, file: !3314, line: 22, baseType: !7, size: 32, offset: 160)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3308, file: !687, line: 187, baseType: !486, size: 32, offset: 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3308, file: !687, line: 188, baseType: !486, size: 32, offset: 352)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3308, file: !687, line: 189, baseType: !3322, size: 64, offset: 384)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !687, line: 168, size: 320, elements: !3324)
!3324 = !{!3325, !3329, !3333, !3337, !3341}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3323, file: !687, line: 169, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!145, !779, !3307}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3323, file: !687, line: 171, baseType: !3330, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!145, !3288, !205, !387}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3323, file: !687, line: 173, baseType: !3334, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!145, !3288}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3323, file: !687, line: 174, baseType: !3338, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!145, !3288, !3288, !205}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3323, file: !687, line: 176, baseType: !3342, size: 64, offset: 256)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!145, !779, !3288, !3307}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3308, file: !687, line: 192, baseType: !294, size: 128, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3308, file: !687, line: 194, baseType: !1550, size: 128, offset: 576)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3299, file: !687, line: 144, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !687, line: 103, size: 64, elements: !3349)
!3349 = !{!3350}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3348, file: !687, line: 104, baseType: !3288, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3299, file: !687, line: 145, baseType: !3352, size: 256)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !687, line: 107, size: 256, elements: !3353)
!3353 = !{!3354, !3414, !3417, !3418}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3352, file: !687, line: 108, baseType: !3355, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3357)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !687, line: 217, size: 768, elements: !3358)
!3358 = !{!3359, !3379, !3383, !3387, !3391, !3395, !3399, !3403, !3404, !3405, !3406, !3410}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3357, file: !687, line: 222, baseType: !3360, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!145, !3363}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !687, line: 197, size: 1088, elements: !3365)
!3365 = !{!3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3364, file: !687, line: 199, baseType: !3288, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3364, file: !687, line: 200, baseType: !423, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3364, file: !687, line: 201, baseType: !779, size: 64, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3364, file: !687, line: 202, baseType: !185, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3364, file: !687, line: 205, baseType: !1242, size: 192, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3364, file: !687, line: 206, baseType: !1242, size: 192, offset: 448)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3364, file: !687, line: 207, baseType: !145, size: 32, offset: 640)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3364, file: !687, line: 208, baseType: !294, size: 128, offset: 704)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3364, file: !687, line: 209, baseType: !348, size: 64, offset: 832)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3364, file: !687, line: 211, baseType: !393, size: 64, offset: 896)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3364, file: !687, line: 212, baseType: !257, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3364, file: !687, line: 213, baseType: !257, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3364, file: !687, line: 214, baseType: !1078, size: 64, offset: 1024)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3357, file: !687, line: 223, baseType: !3380, size: 64, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{null, !3363}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3357, file: !687, line: 236, baseType: !3384, size: 64, offset: 128)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!145, !779, !185}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3357, file: !687, line: 238, baseType: !3388, size: 64, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!185, !779, !2940}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3357, file: !687, line: 239, baseType: !3392, size: 64, offset: 256)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!185, !779, !185, !2940}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3357, file: !687, line: 240, baseType: !3396, size: 64, offset: 320)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{null, !779, !185}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3357, file: !687, line: 242, baseType: !3400, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!377, !3363, !348, !393, !599}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3357, file: !687, line: 252, baseType: !393, size: 64, offset: 448)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3357, file: !687, line: 259, baseType: !257, size: 8, offset: 512)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3357, file: !687, line: 260, baseType: !3400, size: 64, offset: 576)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3357, file: !687, line: 263, baseType: !3407, size: 64, offset: 640)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!2969, !3363, !2971}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3357, file: !687, line: 266, baseType: !3411, size: 64, offset: 704)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!145, !3363, !1050}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3352, file: !687, line: 109, baseType: !3415, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !687, line: 31, flags: DIFlagFwdDecl)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3352, file: !687, line: 110, baseType: !599, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3352, file: !687, line: 111, baseType: !3288, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3289, file: !687, line: 148, baseType: !185, size: 64, offset: 768)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3289, file: !687, line: 154, baseType: !492, size: 64, offset: 832)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3289, file: !687, line: 156, baseType: !388, size: 16, offset: 896)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3289, file: !687, line: 157, baseType: !387, size: 16, offset: 912)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3289, file: !687, line: 158, baseType: !3424, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !687, line: 32, flags: DIFlagFwdDecl)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !289, file: !290, line: 71, baseType: !3427, size: 32, offset: 448)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3428, line: 19, size: 32, elements: !3429)
!3428 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3429 = !{!3430}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3427, file: !3428, line: 20, baseType: !1299, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !289, file: !290, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !289, file: !290, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !289, file: !290, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !289, file: !290, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !289, file: !290, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !286, file: !73, line: 463, baseType: !285, size: 64, offset: 512)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !286, file: !73, line: 465, baseType: !3438, size: 64, offset: 576)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !286, file: !73, line: 467, baseType: !205, size: 64, offset: 640)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !286, file: !73, line: 468, baseType: !3442, size: 64, offset: 704)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3444)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3445)
!3445 = !{!3446, !3447, !3448, !3452, !3457, !3461}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3444, file: !73, line: 88, baseType: !205, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3444, file: !73, line: 89, baseType: !399, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3444, file: !73, line: 90, baseType: !3449, size: 64, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!145, !285, !343}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3444, file: !73, line: 91, baseType: !3453, size: 64, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!348, !285, !3456, !3285, !3286}
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3444, file: !73, line: 93, baseType: !3458, size: 64, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{null, !285}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3444, file: !73, line: 95, baseType: !3462, size: 64, offset: 320)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3464)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3465)
!3465 = !{!3466, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3464, file: !80, line: 279, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!145, !285}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3464, file: !80, line: 280, baseType: !3458, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3464, file: !80, line: 281, baseType: !3467, size: 64, offset: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3464, file: !80, line: 282, baseType: !3467, size: 64, offset: 192)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3464, file: !80, line: 283, baseType: !3467, size: 64, offset: 256)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3464, file: !80, line: 284, baseType: !3467, size: 64, offset: 320)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3464, file: !80, line: 285, baseType: !3467, size: 64, offset: 384)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3464, file: !80, line: 286, baseType: !3467, size: 64, offset: 448)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3464, file: !80, line: 287, baseType: !3467, size: 64, offset: 512)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3464, file: !80, line: 288, baseType: !3467, size: 64, offset: 576)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3464, file: !80, line: 289, baseType: !3467, size: 64, offset: 640)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3464, file: !80, line: 290, baseType: !3467, size: 64, offset: 704)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3464, file: !80, line: 291, baseType: !3467, size: 64, offset: 768)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3464, file: !80, line: 292, baseType: !3467, size: 64, offset: 832)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3464, file: !80, line: 293, baseType: !3467, size: 64, offset: 896)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3464, file: !80, line: 294, baseType: !3467, size: 64, offset: 960)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3464, file: !80, line: 295, baseType: !3467, size: 64, offset: 1024)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3464, file: !80, line: 296, baseType: !3467, size: 64, offset: 1088)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3464, file: !80, line: 297, baseType: !3467, size: 64, offset: 1152)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3464, file: !80, line: 298, baseType: !3467, size: 64, offset: 1216)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3464, file: !80, line: 299, baseType: !3467, size: 64, offset: 1280)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3464, file: !80, line: 300, baseType: !3467, size: 64, offset: 1344)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3464, file: !80, line: 301, baseType: !3467, size: 64, offset: 1408)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !286, file: !73, line: 470, baseType: !3493, size: 64, offset: 768)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3495, line: 82, size: 1408, elements: !3496)
!3495 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3496 = !{!3497, !3498, !3499, !3500, !3501, !3502, !3503, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3560, !3563, !3564}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3494, file: !3495, line: 83, baseType: !205, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3494, file: !3495, line: 84, baseType: !205, size: 64, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3494, file: !3495, line: 85, baseType: !285, size: 64, offset: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3494, file: !3495, line: 86, baseType: !399, size: 64, offset: 192)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3494, file: !3495, line: 87, baseType: !399, size: 64, offset: 256)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3494, file: !3495, line: 88, baseType: !399, size: 64, offset: 320)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3494, file: !3495, line: 90, baseType: !3504, size: 64, offset: 384)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!145, !285, !3507}
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3509)
!3509 = !{!3510, !3511, !3512, !3513, !3514, !3515, !3516, !3520, !3524, !3525, !3526, !3527, !3528, !3536, !3537, !3538, !3539, !3540, !3541}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3508, file: !67, line: 96, baseType: !205, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3508, file: !67, line: 97, baseType: !3493, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3508, file: !67, line: 99, baseType: !207, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3508, file: !67, line: 100, baseType: !205, size: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3508, file: !67, line: 102, baseType: !257, size: 8, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3508, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3508, file: !67, line: 105, baseType: !3517, size: 64, offset: 320)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3519)
!3519 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !67, line: 105, flags: DIFlagFwdDecl)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3508, file: !67, line: 106, baseType: !3521, size: 64, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3523)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !67, line: 106, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3508, file: !67, line: 108, baseType: !3467, size: 64, offset: 448)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3508, file: !67, line: 109, baseType: !3458, size: 64, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3508, file: !67, line: 110, baseType: !3467, size: 64, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3508, file: !67, line: 111, baseType: !3458, size: 64, offset: 640)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3508, file: !67, line: 112, baseType: !3529, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!145, !285, !3532}
!3532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3533)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3534)
!3534 = !{!3535}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3533, file: !80, line: 51, baseType: !145, size: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3508, file: !67, line: 113, baseType: !3467, size: 64, offset: 768)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3508, file: !67, line: 114, baseType: !399, size: 64, offset: 832)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3508, file: !67, line: 115, baseType: !399, size: 64, offset: 896)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3508, file: !67, line: 117, baseType: !3462, size: 64, offset: 960)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3508, file: !67, line: 118, baseType: !3458, size: 64, offset: 1024)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3508, file: !67, line: 120, baseType: !3542, size: 64, offset: 1088)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3494, file: !3495, line: 91, baseType: !3449, size: 64, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3494, file: !3495, line: 92, baseType: !3467, size: 64, offset: 512)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3494, file: !3495, line: 93, baseType: !3458, size: 64, offset: 576)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3494, file: !3495, line: 94, baseType: !3467, size: 64, offset: 640)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3494, file: !3495, line: 95, baseType: !3458, size: 64, offset: 704)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3494, file: !3495, line: 97, baseType: !3467, size: 64, offset: 768)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3494, file: !3495, line: 98, baseType: !3467, size: 64, offset: 832)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3494, file: !3495, line: 100, baseType: !3529, size: 64, offset: 896)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3494, file: !3495, line: 101, baseType: !3467, size: 64, offset: 960)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3494, file: !3495, line: 103, baseType: !3467, size: 64, offset: 1024)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3494, file: !3495, line: 105, baseType: !3467, size: 64, offset: 1088)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3494, file: !3495, line: 107, baseType: !3462, size: 64, offset: 1152)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3494, file: !3495, line: 109, baseType: !3557, size: 64, offset: 1216)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3559)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3495, line: 109, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3494, file: !3495, line: 111, baseType: !3561, size: 64, offset: 1280)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3495, line: 111, flags: DIFlagFwdDecl)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3494, file: !3495, line: 112, baseType: !713, offset: 1344)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3494, file: !3495, line: 114, baseType: !257, size: 8, offset: 1344)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !286, file: !73, line: 471, baseType: !3507, size: 64, offset: 832)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !286, file: !73, line: 473, baseType: !185, size: 64, offset: 896)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !286, file: !73, line: 475, baseType: !185, size: 64, offset: 960)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !286, file: !73, line: 480, baseType: !1242, size: 192, offset: 1024)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !286, file: !73, line: 484, baseType: !3570, size: 576, offset: 1216)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3571)
!3571 = !{!3572, !3573, !3574, !3575, !3576, !3577}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3570, file: !73, line: 362, baseType: !294, size: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3570, file: !73, line: 363, baseType: !294, size: 128, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3570, file: !73, line: 364, baseType: !294, size: 128, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3570, file: !73, line: 365, baseType: !294, size: 128, offset: 384)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3570, file: !73, line: 366, baseType: !257, size: 8, offset: 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3570, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !286, file: !73, line: 485, baseType: !3579, size: 2304, offset: 1792)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3676, !3680}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3579, file: !80, line: 566, baseType: !3532, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3579, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3579, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3579, file: !80, line: 569, baseType: !257, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3579, file: !80, line: 570, baseType: !257, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3579, file: !80, line: 571, baseType: !257, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3579, file: !80, line: 572, baseType: !257, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3579, file: !80, line: 573, baseType: !257, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3579, file: !80, line: 574, baseType: !257, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3579, file: !80, line: 575, baseType: !257, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3579, file: !80, line: 576, baseType: !257, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3579, file: !80, line: 577, baseType: !486, size: 32, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3579, file: !80, line: 578, baseType: !307, offset: 96)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3579, file: !80, line: 580, baseType: !294, size: 128, offset: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3579, file: !80, line: 581, baseType: !1571, size: 192, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3579, file: !80, line: 582, baseType: !3597, size: 64, offset: 448)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3599, line: 43, size: 1472, elements: !3600)
!3599 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3608, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3598, file: !3599, line: 44, baseType: !205, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3598, file: !3599, line: 45, baseType: !145, size: 32, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3598, file: !3599, line: 46, baseType: !294, size: 128, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3598, file: !3599, line: 47, baseType: !307, offset: 256)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3598, file: !3599, line: 48, baseType: !3606, size: 64, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3598, file: !3599, line: 49, baseType: !3609, size: 320, offset: 320)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3610, line: 11, size: 320, elements: !3611)
!3610 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3611 = !{!3612, !3613, !3614, !3619}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3609, file: !3610, line: 16, baseType: !707, size: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3609, file: !3610, line: 17, baseType: !142, size: 64, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3609, file: !3610, line: 18, baseType: !3615, size: 64, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{null, !3618}
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3609, file: !3610, line: 19, baseType: !486, size: 32, offset: 256)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3598, file: !3599, line: 50, baseType: !142, size: 64, offset: 640)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3598, file: !3599, line: 51, baseType: !1369, size: 64, offset: 704)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3598, file: !3599, line: 52, baseType: !1369, size: 64, offset: 768)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3598, file: !3599, line: 53, baseType: !1369, size: 64, offset: 832)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3598, file: !3599, line: 54, baseType: !1369, size: 64, offset: 896)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3598, file: !3599, line: 55, baseType: !1369, size: 64, offset: 960)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3598, file: !3599, line: 56, baseType: !142, size: 64, offset: 1024)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3598, file: !3599, line: 57, baseType: !142, size: 64, offset: 1088)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3598, file: !3599, line: 58, baseType: !142, size: 64, offset: 1152)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3598, file: !3599, line: 59, baseType: !142, size: 64, offset: 1216)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3598, file: !3599, line: 60, baseType: !142, size: 64, offset: 1280)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3598, file: !3599, line: 61, baseType: !285, size: 64, offset: 1344)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3598, file: !3599, line: 62, baseType: !257, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3598, file: !3599, line: 63, baseType: !257, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3579, file: !80, line: 583, baseType: !257, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3579, file: !80, line: 584, baseType: !257, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3579, file: !80, line: 585, baseType: !257, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3579, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3579, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3579, file: !80, line: 592, baseType: !1361, size: 512, offset: 576)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3579, file: !80, line: 593, baseType: !492, size: 64, offset: 1088)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3579, file: !80, line: 594, baseType: !2026, size: 256, offset: 1152)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3579, file: !80, line: 595, baseType: !1550, size: 128, offset: 1408)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3579, file: !80, line: 596, baseType: !3606, size: 64, offset: 1536)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3579, file: !80, line: 597, baseType: !816, size: 32, offset: 1600)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3579, file: !80, line: 598, baseType: !816, size: 32, offset: 1632)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3579, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3579, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3579, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3579, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3579, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3579, file: !80, line: 604, baseType: !257, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3579, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3579, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3579, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3579, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3579, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3579, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3579, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3579, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3579, file: !80, line: 613, baseType: !145, size: 32, offset: 1792)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3579, file: !80, line: 614, baseType: !145, size: 32, offset: 1824)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3579, file: !80, line: 615, baseType: !492, size: 64, offset: 1856)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3579, file: !80, line: 616, baseType: !492, size: 64, offset: 1920)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3579, file: !80, line: 617, baseType: !492, size: 64, offset: 1984)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3579, file: !80, line: 618, baseType: !492, size: 64, offset: 2048)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3579, file: !80, line: 620, baseType: !3667, size: 64, offset: 2112)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3673}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3668, file: !80, line: 537, baseType: !307)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3668, file: !80, line: 538, baseType: !7, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3668, file: !80, line: 540, baseType: !294, size: 128, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3668, file: !80, line: 543, baseType: !3674, size: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3579, file: !80, line: 621, baseType: !3677, size: 64, offset: 2176)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{null, !285, !1513}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3579, file: !80, line: 622, baseType: !3681, size: 64, offset: 2240)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !286, file: !73, line: 486, baseType: !3684, size: 64, offset: 4096)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3693, !3694, !3695}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3685, file: !80, line: 643, baseType: !3464, size: 1472)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3685, file: !80, line: 644, baseType: !3467, size: 64, offset: 1472)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3685, file: !80, line: 645, baseType: !3690, size: 64, offset: 1536)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{null, !285, !257}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3685, file: !80, line: 646, baseType: !3467, size: 64, offset: 1600)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3685, file: !80, line: 647, baseType: !3458, size: 64, offset: 1664)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3685, file: !80, line: 648, baseType: !3458, size: 64, offset: 1728)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !286, file: !73, line: 493, baseType: !3697, size: 64, offset: 4160)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !286, file: !73, line: 499, baseType: !294, size: 128, offset: 4224)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !286, file: !73, line: 502, baseType: !3701, size: 64, offset: 4352)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3703)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !286, file: !73, line: 504, baseType: !3705, size: 64, offset: 4416)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !286, file: !73, line: 505, baseType: !492, size: 64, offset: 4480)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !286, file: !73, line: 510, baseType: !492, size: 64, offset: 4544)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !286, file: !73, line: 511, baseType: !3709, size: 64, offset: 4608)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3711)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !286, file: !73, line: 513, baseType: !3713, size: 64, offset: 4672)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3715)
!3715 = !{!3716, !3717}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3714, file: !73, line: 293, baseType: !7, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3714, file: !73, line: 294, baseType: !142, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !286, file: !73, line: 515, baseType: !294, size: 128, offset: 4736)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !286, file: !73, line: 526, baseType: !3720, offset: 4864)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3721, line: 5, elements: !321)
!3721 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !286, file: !73, line: 528, baseType: !3723, size: 64, offset: 4864)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3725, line: 14, flags: DIFlagFwdDecl)
!3725 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !286, file: !73, line: 529, baseType: !3727, size: 64, offset: 4928)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3729, line: 17, size: 192, elements: !3730)
!3729 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3730 = !{!3731, !3732, !3815}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3728, file: !3729, line: 18, baseType: !3727, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3728, file: !3729, line: 19, baseType: !3733, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3735)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3729, line: 110, size: 1152, elements: !3736)
!3736 = !{!3737, !3741, !3745, !3751, !3757, !3761, !3765, !3770, !3774, !3775, !3779, !3783, !3787, !3798, !3799, !3800, !3801, !3811}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3735, file: !3729, line: 111, baseType: !3738, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!3727, !3727}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3735, file: !3729, line: 112, baseType: !3742, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{null, !3727}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3735, file: !3729, line: 113, baseType: !3746, size: 64, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!257, !3749}
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3728)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3735, file: !3729, line: 114, baseType: !3752, size: 64, offset: 192)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!2196, !3749, !3755}
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3735, file: !3729, line: 116, baseType: !3758, size: 64, offset: 256)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!257, !3749, !205}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3735, file: !3729, line: 118, baseType: !3762, size: 64, offset: 320)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!145, !3749, !205, !7, !185, !393}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3735, file: !3729, line: 123, baseType: !3766, size: 64, offset: 384)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!145, !3749, !205, !3769, !393}
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3735, file: !3729, line: 126, baseType: !3771, size: 64, offset: 448)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!205, !3749}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3735, file: !3729, line: 127, baseType: !3771, size: 64, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3735, file: !3729, line: 128, baseType: !3776, size: 64, offset: 576)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!3727, !3749}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3735, file: !3729, line: 130, baseType: !3780, size: 64, offset: 640)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!3727, !3749, !3727}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3735, file: !3729, line: 133, baseType: !3784, size: 64, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!3727, !3749, !205}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3735, file: !3729, line: 135, baseType: !3788, size: 64, offset: 768)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!145, !3749, !205, !205, !7, !7, !3791}
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3729, line: 43, size: 640, elements: !3793)
!3793 = !{!3794, !3795, !3796}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3792, file: !3729, line: 44, baseType: !3727, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3792, file: !3729, line: 45, baseType: !7, size: 32, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3792, file: !3729, line: 46, baseType: !3797, size: 512, offset: 128)
!3797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 512, elements: !1399)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3735, file: !3729, line: 140, baseType: !3780, size: 64, offset: 832)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3735, file: !3729, line: 143, baseType: !3776, size: 64, offset: 896)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3735, file: !3729, line: 145, baseType: !3738, size: 64, offset: 960)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3735, file: !3729, line: 146, baseType: !3802, size: 64, offset: 1024)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!145, !3749, !3805}
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3729, line: 29, size: 128, elements: !3807)
!3807 = !{!3808, !3809, !3810}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3806, file: !3729, line: 30, baseType: !7, size: 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3806, file: !3729, line: 31, baseType: !7, size: 32, offset: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3806, file: !3729, line: 32, baseType: !3749, size: 64, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3735, file: !3729, line: 148, baseType: !3812, size: 64, offset: 1088)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!145, !3749, !285}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3728, file: !3729, line: 20, baseType: !285, size: 64, offset: 128)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !286, file: !73, line: 534, baseType: !581, size: 32, offset: 4992)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !286, file: !73, line: 535, baseType: !486, size: 32, offset: 5024)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !286, file: !73, line: 537, baseType: !307, offset: 5056)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !286, file: !73, line: 538, baseType: !294, size: 128, offset: 5056)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !286, file: !73, line: 540, baseType: !3821, size: 64, offset: 5184)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3823, line: 54, size: 960, elements: !3824)
!3823 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3824 = !{!3825, !3826, !3827, !3828, !3829, !3830, !3831, !3835, !3839, !3840, !3841, !3842, !3846, !3850, !3851}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3822, file: !3823, line: 55, baseType: !205, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3822, file: !3823, line: 56, baseType: !207, size: 64, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3822, file: !3823, line: 58, baseType: !399, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3822, file: !3823, line: 59, baseType: !399, size: 64, offset: 192)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3822, file: !3823, line: 60, baseType: !300, size: 64, offset: 256)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3822, file: !3823, line: 62, baseType: !3449, size: 64, offset: 320)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3822, file: !3823, line: 63, baseType: !3832, size: 64, offset: 384)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!348, !285, !3456}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3822, file: !3823, line: 65, baseType: !3836, size: 64, offset: 448)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{null, !3821}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3822, file: !3823, line: 66, baseType: !3458, size: 64, offset: 512)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3822, file: !3823, line: 68, baseType: !3467, size: 64, offset: 576)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3822, file: !3823, line: 70, baseType: !3253, size: 64, offset: 640)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3822, file: !3823, line: 71, baseType: !3843, size: 64, offset: 704)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!2196, !285}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3822, file: !3823, line: 73, baseType: !3847, size: 64, offset: 768)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{null, !285, !3285, !3286}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3822, file: !3823, line: 75, baseType: !3462, size: 64, offset: 832)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3822, file: !3823, line: 77, baseType: !3561, size: 64, offset: 896)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !286, file: !73, line: 541, baseType: !399, size: 64, offset: 5248)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !286, file: !73, line: 543, baseType: !3458, size: 64, offset: 5312)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !286, file: !73, line: 544, baseType: !3855, size: 64, offset: 5376)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !286, file: !73, line: 545, baseType: !3858, size: 64, offset: 5440)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !286, file: !73, line: 547, baseType: !257, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !286, file: !73, line: 548, baseType: !257, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !286, file: !73, line: 549, baseType: !257, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !286, file: !73, line: 550, baseType: !257, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !282, file: !128, line: 251, baseType: !3865, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !128, line: 220, size: 128, elements: !3867)
!3867 = !{!3868, !3869}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3866, file: !128, line: 221, baseType: !185, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3866, file: !128, line: 222, baseType: !989, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !282, file: !128, line: 252, baseType: !7, size: 32, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !282, file: !128, line: 253, baseType: !93, size: 32, offset: 160)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !282, file: !128, line: 254, baseType: !3427, size: 32, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !276, file: !128, line: 351, baseType: !7, size: 32, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !276, file: !128, line: 352, baseType: !7, size: 32, offset: 224)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !276, file: !128, line: 353, baseType: !7, size: 32, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !276, file: !128, line: 354, baseType: !7, size: 32, offset: 288)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !276, file: !128, line: 355, baseType: !7, size: 32, offset: 320)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !276, file: !128, line: 356, baseType: !7, size: 32, offset: 352)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !276, file: !128, line: 357, baseType: !7, size: 32, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !276, file: !128, line: 358, baseType: !7, size: 32, offset: 416)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !276, file: !128, line: 359, baseType: !7, size: 32, offset: 448)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !276, file: !128, line: 360, baseType: !7, size: 32, offset: 480)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !276, file: !128, line: 361, baseType: !7, size: 32, offset: 512)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !276, file: !128, line: 362, baseType: !7, size: 32, offset: 544)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !276, file: !128, line: 363, baseType: !7, size: 32, offset: 576)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !276, file: !128, line: 364, baseType: !7, size: 32, offset: 608)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !276, file: !128, line: 365, baseType: !3888, size: 640, offset: 640)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !101, line: 589, size: 640, elements: !3889)
!3889 = !{!3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3906}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3888, file: !101, line: 590, baseType: !7, size: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3888, file: !101, line: 591, baseType: !7, size: 32, offset: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3888, file: !101, line: 593, baseType: !7, size: 32, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3888, file: !101, line: 594, baseType: !7, size: 32, offset: 96)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3888, file: !101, line: 596, baseType: !7, size: 32, offset: 128)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3888, file: !101, line: 597, baseType: !7, size: 32, offset: 160)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3888, file: !101, line: 599, baseType: !7, size: 32, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3888, file: !101, line: 600, baseType: !7, size: 32, offset: 224)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3888, file: !101, line: 602, baseType: !7, size: 32, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3888, file: !101, line: 603, baseType: !7, size: 32, offset: 288)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3888, file: !101, line: 605, baseType: !7, size: 32, offset: 320)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3888, file: !101, line: 606, baseType: !7, size: 32, offset: 352)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3888, file: !101, line: 608, baseType: !2748, size: 64, offset: 384)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3888, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3888, file: !101, line: 611, baseType: !3905, size: 64, offset: 512)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3888, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !276, file: !128, line: 366, baseType: !1550, size: 128, offset: 1280)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !276, file: !128, line: 367, baseType: !7, size: 32, offset: 1408)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !276, file: !128, line: 368, baseType: !3910, size: 64, offset: 1472)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!145, !195, !264, !7}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !265, file: !128, line: 165, baseType: !185, size: 64, offset: 384)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !265, file: !128, line: 166, baseType: !185, size: 64, offset: 448)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !265, file: !128, line: 167, baseType: !7, size: 32, offset: 512)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !265, file: !128, line: 168, baseType: !307, offset: 544)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !265, file: !128, line: 170, baseType: !7, size: 32, offset: 544)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !265, file: !128, line: 172, baseType: !7, size: 32, offset: 576)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !265, file: !128, line: 173, baseType: !3920, size: 64, offset: 640)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !265, file: !128, line: 175, baseType: !3922, size: 64, offset: 704)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3924)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !128, line: 635, size: 32, elements: !3925)
!3925 = !{!3926, !3927}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3924, file: !128, line: 636, baseType: !145, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3924, file: !128, line: 637, baseType: !3928, offset: 32)
!3928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3929, elements: !2396)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3930)
!3930 = !{!3931, !3932, !3933}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3929, file: !101, line: 686, baseType: !145, size: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3929, file: !101, line: 687, baseType: !145, size: 32, offset: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3929, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !265, file: !128, line: 176, baseType: !3935, size: 64, offset: 768)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3922)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !265, file: !128, line: 178, baseType: !2748, size: 64, offset: 832)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !265, file: !128, line: 180, baseType: !261, size: 64, offset: 896)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !265, file: !128, line: 182, baseType: !261, size: 64, offset: 960)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !265, file: !128, line: 184, baseType: !261, size: 64, offset: 1024)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !265, file: !128, line: 186, baseType: !261, size: 64, offset: 1088)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !265, file: !128, line: 191, baseType: !3943, size: 64, offset: 1152)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!145, !195, !264}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !265, file: !128, line: 192, baseType: !3947, size: 64, offset: 1216)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!145, !195, !264, !3950}
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !265, file: !128, line: 195, baseType: !3943, size: 64, offset: 1280)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !265, file: !128, line: 196, baseType: !3943, size: 64, offset: 1344)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !265, file: !128, line: 199, baseType: !3943, size: 64, offset: 1408)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !265, file: !128, line: 202, baseType: !3955, size: 64, offset: 1472)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{null, !195, !264, !185, !7, !7}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !265, file: !128, line: 205, baseType: !93, size: 32, offset: 1536)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !265, file: !128, line: 207, baseType: !7, size: 32, offset: 1568)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !265, file: !128, line: 209, baseType: !285, size: 64, offset: 1600)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !265, file: !128, line: 210, baseType: !145, size: 32, offset: 1664)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !265, file: !128, line: 212, baseType: !2748, size: 64, offset: 1728)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3965)
!3965 = !{!3966, !3967, !3968, !3969, !3970, !3971}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3964, file: !101, line: 492, baseType: !7, size: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3964, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3964, file: !101, line: 494, baseType: !2748, size: 64, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3964, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3964, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3964, file: !101, line: 497, baseType: !253, size: 96, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !196, file: !128, line: 545, baseType: !185, size: 64, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !196, file: !128, line: 547, baseType: !285, size: 64, offset: 256)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !196, file: !128, line: 548, baseType: !145, size: 32, offset: 320)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !196, file: !128, line: 549, baseType: !7, size: 32, offset: 352)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !196, file: !128, line: 550, baseType: !285, size: 64, offset: 384)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !196, file: !128, line: 552, baseType: !205, size: 64, offset: 448)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !196, file: !128, line: 553, baseType: !2196, size: 64, offset: 512)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !196, file: !128, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !196, file: !128, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !196, file: !128, line: 556, baseType: !307, offset: 584)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !196, file: !128, line: 557, baseType: !1242, size: 192, offset: 640)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !196, file: !128, line: 558, baseType: !836, size: 256, offset: 832)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !196, file: !128, line: 559, baseType: !3427, size: 32, offset: 1088)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !196, file: !128, line: 561, baseType: !145, size: 32, offset: 1120)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !196, file: !128, line: 562, baseType: !264, size: 64, offset: 1152)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !196, file: !128, line: 565, baseType: !185, size: 64, offset: 1216)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !196, file: !128, line: 566, baseType: !142, size: 64, offset: 1280)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !196, file: !128, line: 567, baseType: !142, size: 64, offset: 1344)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !196, file: !128, line: 568, baseType: !7, size: 32, offset: 1408)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !196, file: !128, line: 570, baseType: !264, size: 64, offset: 1472)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !196, file: !128, line: 571, baseType: !264, size: 64, offset: 1536)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !196, file: !128, line: 573, baseType: !3023, size: 64, offset: 1600)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !196, file: !128, line: 575, baseType: !3995, size: 64, offset: 1664)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!145, !195}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !196, file: !128, line: 576, baseType: !224, size: 64, offset: 1728)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !196, file: !128, line: 577, baseType: !4000, size: 64, offset: 1792)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!145, !195, !3963, !2748}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !196, file: !128, line: 579, baseType: !4004, size: 64, offset: 1856)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!7, !195, !7, !2748}
!4007 = !DILocalVariable(name: "dev", arg: 1, scope: !192, file: !3, line: 769, type: !195)
!4008 = !DILocation(line: 769, column: 53, scope: !192)
!4009 = !DILocalVariable(name: "val", arg: 2, scope: !192, file: !3, line: 769, type: !141)
!4010 = !DILocation(line: 769, column: 72, scope: !192)
!4011 = !DILocation(line: 771, column: 16, scope: !192)
!4012 = !DILocation(line: 771, column: 37, scope: !192)
!4013 = !DILocation(line: 771, column: 2, scope: !192)
!4014 = !DILocation(line: 772, column: 1, scope: !192)
!4015 = distinct !DISubprogram(name: "dio200_write8", scope: !3, file: !3, line: 103, type: !4016, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{null, !195, !7, !141}
!4018 = !DILocalVariable(name: "dev", arg: 1, scope: !4015, file: !3, line: 103, type: !195)
!4019 = !DILocation(line: 103, column: 49, scope: !4015)
!4020 = !DILocalVariable(name: "offset", arg: 2, scope: !4015, file: !3, line: 104, type: !7)
!4021 = !DILocation(line: 104, column: 19, scope: !4015)
!4022 = !DILocalVariable(name: "val", arg: 3, scope: !4015, file: !3, line: 104, type: !141)
!4023 = !DILocation(line: 104, column: 41, scope: !4015)
!4024 = !DILocalVariable(name: "board", scope: !4015, file: !3, line: 106, type: !4025)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4027)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dio200_board", file: !4028, line: 29, size: 256, elements: !4029)
!4028 = !DIFile(filename: "drivers/staging/comedi/drivers/amplc_dio200.h", directory: "/home/lizy2001/genbc/linux")
!4029 = !{!4030, !4031, !4032, !4033, !4035, !4036, !4037, !4038}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4027, file: !4028, line: 30, baseType: !205, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "mainbar", scope: !4027, file: !4028, line: 31, baseType: !141, size: 8, offset: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevs", scope: !4027, file: !4028, line: 32, baseType: !388, size: 16, offset: 80)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "sdtype", scope: !4027, file: !4028, line: 33, baseType: !4034, size: 64, offset: 96)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 64, elements: !1399)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "sdinfo", scope: !4027, file: !4028, line: 34, baseType: !4034, size: 64, offset: 160)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "has_int_sce", scope: !4027, file: !4028, line: 35, baseType: !7, size: 1, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "has_clk_gat_sce", scope: !4027, file: !4028, line: 36, baseType: !7, size: 1, offset: 225, flags: DIFlagBitField, extraData: i64 224)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "is_pcie", scope: !4027, file: !4028, line: 37, baseType: !7, size: 1, offset: 226, flags: DIFlagBitField, extraData: i64 224)
!4039 = !DILocation(line: 106, column: 29, scope: !4015)
!4040 = !DILocation(line: 106, column: 37, scope: !4015)
!4041 = !DILocation(line: 106, column: 42, scope: !4015)
!4042 = !DILocation(line: 108, column: 6, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 108, column: 6)
!4044 = !DILocation(line: 108, column: 13, scope: !4043)
!4045 = !DILocation(line: 108, column: 6, scope: !4015)
!4046 = !DILocation(line: 109, column: 10, scope: !4043)
!4047 = !DILocation(line: 109, column: 3, scope: !4043)
!4048 = !DILocation(line: 111, column: 6, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 111, column: 6)
!4050 = !DILocation(line: 111, column: 11, scope: !4049)
!4051 = !DILocation(line: 111, column: 6, scope: !4015)
!4052 = !DILocation(line: 112, column: 10, scope: !4049)
!4053 = !DILocation(line: 112, column: 15, scope: !4049)
!4054 = !DILocation(line: 112, column: 20, scope: !4049)
!4055 = !DILocation(line: 112, column: 27, scope: !4049)
!4056 = !DILocation(line: 112, column: 25, scope: !4049)
!4057 = !DILocation(line: 112, column: 3, scope: !4049)
!4058 = !DILocation(line: 114, column: 8, scope: !4049)
!4059 = !DILocation(line: 114, column: 13, scope: !4049)
!4060 = !DILocation(line: 114, column: 18, scope: !4049)
!4061 = !DILocation(line: 114, column: 27, scope: !4049)
!4062 = !DILocation(line: 114, column: 25, scope: !4049)
!4063 = !DILocation(line: 114, column: 3, scope: !4049)
!4064 = !DILocation(line: 115, column: 1, scope: !4015)
!4065 = distinct !DISubprogram(name: "amplc_dio200_common_attach", scope: !3, file: !3, line: 775, type: !4066, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!145, !195, !7, !142}
!4068 = !DILocalVariable(name: "dev", arg: 1, scope: !4065, file: !3, line: 775, type: !195)
!4069 = !DILocation(line: 775, column: 54, scope: !4065)
!4070 = !DILocalVariable(name: "irq", arg: 2, scope: !4065, file: !3, line: 775, type: !7)
!4071 = !DILocation(line: 775, column: 72, scope: !4065)
!4072 = !DILocalVariable(name: "req_irq_flags", arg: 3, scope: !4065, file: !3, line: 776, type: !142)
!4073 = !DILocation(line: 776, column: 25, scope: !4065)
!4074 = !DILocalVariable(name: "board", scope: !4065, file: !3, line: 778, type: !4025)
!4075 = !DILocation(line: 778, column: 29, scope: !4065)
!4076 = !DILocation(line: 778, column: 37, scope: !4065)
!4077 = !DILocation(line: 778, column: 42, scope: !4065)
!4078 = !DILocalVariable(name: "s", scope: !4065, file: !3, line: 779, type: !264)
!4079 = !DILocation(line: 779, column: 27, scope: !4065)
!4080 = !DILocalVariable(name: "n", scope: !4065, file: !3, line: 780, type: !7)
!4081 = !DILocation(line: 780, column: 15, scope: !4065)
!4082 = !DILocalVariable(name: "ret", scope: !4065, file: !3, line: 781, type: !145)
!4083 = !DILocation(line: 781, column: 6, scope: !4065)
!4084 = !DILocation(line: 783, column: 32, scope: !4065)
!4085 = !DILocation(line: 783, column: 37, scope: !4065)
!4086 = !DILocation(line: 783, column: 44, scope: !4065)
!4087 = !DILocation(line: 783, column: 8, scope: !4065)
!4088 = !DILocation(line: 783, column: 6, scope: !4065)
!4089 = !DILocation(line: 784, column: 6, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 784, column: 6)
!4091 = !DILocation(line: 784, column: 6, scope: !4065)
!4092 = !DILocation(line: 785, column: 10, scope: !4090)
!4093 = !DILocation(line: 785, column: 3, scope: !4090)
!4094 = !DILocation(line: 787, column: 9, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 787, column: 2)
!4096 = !DILocation(line: 787, column: 7, scope: !4095)
!4097 = !DILocation(line: 787, column: 14, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4095, file: !3, line: 787, column: 2)
!4099 = !DILocation(line: 787, column: 18, scope: !4098)
!4100 = !DILocation(line: 787, column: 23, scope: !4098)
!4101 = !DILocation(line: 787, column: 16, scope: !4098)
!4102 = !DILocation(line: 787, column: 2, scope: !4095)
!4103 = !DILocation(line: 788, column: 8, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 787, column: 42)
!4105 = !DILocation(line: 788, column: 13, scope: !4104)
!4106 = !DILocation(line: 788, column: 24, scope: !4104)
!4107 = !DILocation(line: 788, column: 5, scope: !4104)
!4108 = !DILocation(line: 789, column: 11, scope: !4104)
!4109 = !DILocation(line: 789, column: 18, scope: !4104)
!4110 = !DILocation(line: 789, column: 25, scope: !4104)
!4111 = !DILocation(line: 789, column: 3, scope: !4104)
!4112 = !DILocation(line: 792, column: 34, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 789, column: 29)
!4114 = !DILocation(line: 792, column: 39, scope: !4113)
!4115 = !DILocation(line: 793, column: 13, scope: !4113)
!4116 = !DILocation(line: 793, column: 20, scope: !4113)
!4117 = !DILocation(line: 793, column: 27, scope: !4113)
!4118 = !DILocation(line: 792, column: 10, scope: !4113)
!4119 = !DILocation(line: 792, column: 8, scope: !4113)
!4120 = !DILocation(line: 794, column: 8, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 794, column: 8)
!4122 = !DILocation(line: 794, column: 12, scope: !4121)
!4123 = !DILocation(line: 794, column: 8, scope: !4113)
!4124 = !DILocation(line: 795, column: 12, scope: !4121)
!4125 = !DILocation(line: 795, column: 5, scope: !4121)
!4126 = !DILocation(line: 796, column: 4, scope: !4113)
!4127 = !DILocation(line: 799, column: 34, scope: !4113)
!4128 = !DILocation(line: 799, column: 39, scope: !4113)
!4129 = !DILocation(line: 800, column: 13, scope: !4113)
!4130 = !DILocation(line: 800, column: 20, scope: !4113)
!4131 = !DILocation(line: 800, column: 27, scope: !4113)
!4132 = !DILocation(line: 799, column: 10, scope: !4113)
!4133 = !DILocation(line: 799, column: 8, scope: !4113)
!4134 = !DILocation(line: 801, column: 8, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 801, column: 8)
!4136 = !DILocation(line: 801, column: 12, scope: !4135)
!4137 = !DILocation(line: 801, column: 8, scope: !4113)
!4138 = !DILocation(line: 802, column: 12, scope: !4135)
!4139 = !DILocation(line: 802, column: 5, scope: !4135)
!4140 = !DILocation(line: 803, column: 4, scope: !4113)
!4141 = !DILocation(line: 806, column: 8, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 806, column: 8)
!4143 = !DILocation(line: 806, column: 12, scope: !4142)
!4144 = !DILocation(line: 806, column: 16, scope: !4142)
!4145 = !DILocation(line: 806, column: 21, scope: !4142)
!4146 = !DILocation(line: 806, column: 8, scope: !4113)
!4147 = !DILocation(line: 807, column: 35, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 806, column: 34)
!4149 = !DILocation(line: 807, column: 40, scope: !4148)
!4150 = !DILocation(line: 809, column: 14, scope: !4148)
!4151 = !DILocation(line: 809, column: 21, scope: !4148)
!4152 = !DILocation(line: 809, column: 28, scope: !4148)
!4153 = !DILocation(line: 807, column: 11, scope: !4148)
!4154 = !DILocation(line: 807, column: 9, scope: !4148)
!4155 = !DILocation(line: 810, column: 9, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 810, column: 9)
!4157 = !DILocation(line: 810, column: 13, scope: !4156)
!4158 = !DILocation(line: 810, column: 9, scope: !4148)
!4159 = !DILocation(line: 811, column: 13, scope: !4156)
!4160 = !DILocation(line: 811, column: 6, scope: !4156)
!4161 = !DILocation(line: 812, column: 24, scope: !4148)
!4162 = !DILocation(line: 812, column: 5, scope: !4148)
!4163 = !DILocation(line: 812, column: 10, scope: !4148)
!4164 = !DILocation(line: 812, column: 22, scope: !4148)
!4165 = !DILocation(line: 813, column: 4, scope: !4148)
!4166 = !DILocation(line: 814, column: 5, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 813, column: 11)
!4168 = !DILocation(line: 814, column: 8, scope: !4167)
!4169 = !DILocation(line: 814, column: 13, scope: !4167)
!4170 = !DILocation(line: 816, column: 4, scope: !4113)
!4171 = !DILocation(line: 818, column: 4, scope: !4113)
!4172 = !DILocation(line: 818, column: 7, scope: !4113)
!4173 = !DILocation(line: 818, column: 13, scope: !4113)
!4174 = !DILocation(line: 819, column: 4, scope: !4113)
!4175 = !DILocation(line: 819, column: 7, scope: !4113)
!4176 = !DILocation(line: 819, column: 20, scope: !4113)
!4177 = !DILocation(line: 820, column: 4, scope: !4113)
!4178 = !DILocation(line: 820, column: 7, scope: !4113)
!4179 = !DILocation(line: 820, column: 14, scope: !4113)
!4180 = !DILocation(line: 821, column: 4, scope: !4113)
!4181 = !DILocation(line: 821, column: 7, scope: !4113)
!4182 = !DILocation(line: 821, column: 15, scope: !4113)
!4183 = !DILocation(line: 822, column: 4, scope: !4113)
!4184 = !DILocation(line: 822, column: 7, scope: !4113)
!4185 = !DILocation(line: 822, column: 17, scope: !4113)
!4186 = !DILocation(line: 823, column: 4, scope: !4113)
!4187 = !DILocation(line: 823, column: 7, scope: !4113)
!4188 = !DILocation(line: 823, column: 19, scope: !4113)
!4189 = !DILocation(line: 824, column: 4, scope: !4113)
!4190 = !DILocation(line: 826, column: 4, scope: !4113)
!4191 = !DILocation(line: 826, column: 7, scope: !4113)
!4192 = !DILocation(line: 826, column: 12, scope: !4113)
!4193 = !DILocation(line: 827, column: 4, scope: !4113)
!4194 = !DILocation(line: 829, column: 2, scope: !4104)
!4195 = !DILocation(line: 787, column: 38, scope: !4098)
!4196 = !DILocation(line: 787, column: 2, scope: !4098)
!4197 = distinct !{!4197, !4102, !4198}
!4198 = !DILocation(line: 829, column: 2, scope: !4095)
!4199 = !DILocation(line: 831, column: 6, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 831, column: 6)
!4201 = !DILocation(line: 831, column: 10, scope: !4200)
!4202 = !DILocation(line: 831, column: 13, scope: !4200)
!4203 = !DILocation(line: 831, column: 18, scope: !4200)
!4204 = !DILocation(line: 831, column: 6, scope: !4065)
!4205 = !DILocation(line: 832, column: 19, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 832, column: 7)
!4207 = distinct !DILexicalBlock(scope: !4200, file: !3, line: 831, column: 31)
!4208 = !DILocation(line: 832, column: 42, scope: !4206)
!4209 = !DILocation(line: 833, column: 5, scope: !4206)
!4210 = !DILocation(line: 833, column: 10, scope: !4206)
!4211 = !DILocation(line: 833, column: 22, scope: !4206)
!4212 = !DILocation(line: 832, column: 7, scope: !4206)
!4213 = !DILocation(line: 833, column: 27, scope: !4206)
!4214 = !DILocation(line: 832, column: 7, scope: !4207)
!4215 = !DILocation(line: 834, column: 15, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4206, file: !3, line: 833, column: 33)
!4217 = !DILocation(line: 834, column: 4, scope: !4216)
!4218 = !DILocation(line: 834, column: 9, scope: !4216)
!4219 = !DILocation(line: 834, column: 13, scope: !4216)
!4220 = !DILocation(line: 835, column: 3, scope: !4216)
!4221 = !DILocation(line: 836, column: 4, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4206, file: !3, line: 835, column: 10)
!4223 = !DILocation(line: 839, column: 2, scope: !4207)
!4224 = !DILocation(line: 841, column: 2, scope: !4065)
!4225 = !DILocation(line: 842, column: 1, scope: !4065)
!4226 = distinct !DISubprogram(name: "dio200_subdev_8254_init", scope: !3, file: !3, line: 539, type: !3911, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4227 = !DILocalVariable(name: "dev", arg: 1, scope: !4226, file: !3, line: 539, type: !195)
!4228 = !DILocation(line: 539, column: 58, scope: !4226)
!4229 = !DILocalVariable(name: "s", arg: 2, scope: !4226, file: !3, line: 540, type: !264)
!4230 = !DILocation(line: 540, column: 33, scope: !4226)
!4231 = !DILocalVariable(name: "offset", arg: 3, scope: !4226, file: !3, line: 541, type: !7)
!4232 = !DILocation(line: 541, column: 21, scope: !4226)
!4233 = !DILocalVariable(name: "board", scope: !4226, file: !3, line: 543, type: !4025)
!4234 = !DILocation(line: 543, column: 29, scope: !4226)
!4235 = !DILocation(line: 543, column: 37, scope: !4226)
!4236 = !DILocation(line: 543, column: 42, scope: !4226)
!4237 = !DILocalVariable(name: "i8254", scope: !4226, file: !3, line: 544, type: !237)
!4238 = !DILocation(line: 544, column: 22, scope: !4226)
!4239 = !DILocalVariable(name: "regshift", scope: !4226, file: !3, line: 545, type: !7)
!4240 = !DILocation(line: 545, column: 15, scope: !4226)
!4241 = !DILocalVariable(name: "chan", scope: !4226, file: !3, line: 546, type: !145)
!4242 = !DILocation(line: 546, column: 6, scope: !4226)
!4243 = !DILocation(line: 552, column: 6, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 552, column: 6)
!4245 = !DILocation(line: 552, column: 13, scope: !4244)
!4246 = !DILocation(line: 552, column: 6, scope: !4226)
!4247 = !DILocation(line: 553, column: 10, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 552, column: 22)
!4249 = !DILocation(line: 554, column: 12, scope: !4248)
!4250 = !DILocation(line: 555, column: 2, scope: !4248)
!4251 = !DILocation(line: 556, column: 12, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 555, column: 9)
!4253 = !DILocation(line: 559, column: 6, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 559, column: 6)
!4255 = !DILocation(line: 559, column: 11, scope: !4254)
!4256 = !DILocation(line: 559, column: 6, scope: !4226)
!4257 = !DILocation(line: 560, column: 31, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 559, column: 17)
!4259 = !DILocation(line: 560, column: 36, scope: !4258)
!4260 = !DILocation(line: 560, column: 43, scope: !4258)
!4261 = !DILocation(line: 560, column: 41, scope: !4258)
!4262 = !DILocation(line: 561, column: 24, scope: !4258)
!4263 = !DILocation(line: 560, column: 11, scope: !4258)
!4264 = !DILocation(line: 560, column: 9, scope: !4258)
!4265 = !DILocation(line: 562, column: 2, scope: !4258)
!4266 = !DILocation(line: 563, column: 28, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 562, column: 9)
!4268 = !DILocation(line: 563, column: 33, scope: !4267)
!4269 = !DILocation(line: 563, column: 42, scope: !4267)
!4270 = !DILocation(line: 563, column: 40, scope: !4267)
!4271 = !DILocation(line: 564, column: 21, scope: !4267)
!4272 = !DILocation(line: 563, column: 11, scope: !4267)
!4273 = !DILocation(line: 563, column: 9, scope: !4267)
!4274 = !DILocation(line: 566, column: 7, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 566, column: 6)
!4276 = !DILocation(line: 566, column: 6, scope: !4226)
!4277 = !DILocation(line: 567, column: 3, scope: !4275)
!4278 = !DILocation(line: 569, column: 29, scope: !4226)
!4279 = !DILocation(line: 569, column: 32, scope: !4226)
!4280 = !DILocation(line: 569, column: 2, scope: !4226)
!4281 = !DILocation(line: 571, column: 2, scope: !4226)
!4282 = !DILocation(line: 571, column: 9, scope: !4226)
!4283 = !DILocation(line: 571, column: 21, scope: !4226)
!4284 = !DILocation(line: 580, column: 29, scope: !4226)
!4285 = !DILocation(line: 580, column: 2, scope: !4226)
!4286 = !DILocation(line: 583, column: 6, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 583, column: 6)
!4288 = !DILocation(line: 583, column: 13, scope: !4287)
!4289 = !DILocation(line: 583, column: 6, scope: !4226)
!4290 = !DILocation(line: 584, column: 13, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4292, file: !3, line: 584, column: 3)
!4292 = distinct !DILexicalBlock(scope: !4287, file: !3, line: 583, column: 30)
!4293 = !DILocation(line: 584, column: 8, scope: !4291)
!4294 = !DILocation(line: 584, column: 18, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 584, column: 3)
!4296 = !DILocation(line: 584, column: 23, scope: !4295)
!4297 = !DILocation(line: 584, column: 3, scope: !4291)
!4298 = !DILocation(line: 586, column: 36, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 584, column: 36)
!4300 = !DILocation(line: 586, column: 41, scope: !4299)
!4301 = !DILocation(line: 586, column: 44, scope: !4299)
!4302 = !DILocation(line: 586, column: 4, scope: !4299)
!4303 = !DILocation(line: 588, column: 37, scope: !4299)
!4304 = !DILocation(line: 588, column: 42, scope: !4299)
!4305 = !DILocation(line: 588, column: 45, scope: !4299)
!4306 = !DILocation(line: 588, column: 4, scope: !4299)
!4307 = !DILocation(line: 589, column: 3, scope: !4299)
!4308 = !DILocation(line: 584, column: 32, scope: !4295)
!4309 = !DILocation(line: 584, column: 3, scope: !4295)
!4310 = distinct !{!4310, !4297, !4311}
!4311 = !DILocation(line: 589, column: 3, scope: !4291)
!4312 = !DILocation(line: 590, column: 2, scope: !4292)
!4313 = !DILocation(line: 592, column: 2, scope: !4226)
!4314 = !DILocation(line: 593, column: 1, scope: !4226)
!4315 = distinct !DISubprogram(name: "dio200_subdev_8255_init", scope: !3, file: !3, line: 675, type: !3911, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4316 = !DILocalVariable(name: "dev", arg: 1, scope: !4315, file: !3, line: 675, type: !195)
!4317 = !DILocation(line: 675, column: 58, scope: !4315)
!4318 = !DILocalVariable(name: "s", arg: 2, scope: !4315, file: !3, line: 676, type: !264)
!4319 = !DILocation(line: 676, column: 33, scope: !4315)
!4320 = !DILocalVariable(name: "offset", arg: 3, scope: !4315, file: !3, line: 677, type: !7)
!4321 = !DILocation(line: 677, column: 21, scope: !4315)
!4322 = !DILocalVariable(name: "subpriv", scope: !4315, file: !3, line: 679, type: !4323)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dio200_subdev_8255", file: !3, line: 78, size: 32, elements: !4325)
!4325 = !{!4326}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "ofs", scope: !4324, file: !3, line: 79, baseType: !7, size: 32)
!4327 = !DILocation(line: 679, column: 29, scope: !4315)
!4328 = !DILocation(line: 681, column: 31, scope: !4315)
!4329 = !DILocation(line: 681, column: 12, scope: !4315)
!4330 = !DILocation(line: 681, column: 10, scope: !4315)
!4331 = !DILocation(line: 682, column: 7, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 682, column: 6)
!4333 = !DILocation(line: 682, column: 6, scope: !4315)
!4334 = !DILocation(line: 683, column: 3, scope: !4332)
!4335 = !DILocation(line: 685, column: 17, scope: !4315)
!4336 = !DILocation(line: 685, column: 2, scope: !4315)
!4337 = !DILocation(line: 685, column: 11, scope: !4315)
!4338 = !DILocation(line: 685, column: 15, scope: !4315)
!4339 = !DILocation(line: 687, column: 2, scope: !4315)
!4340 = !DILocation(line: 687, column: 5, scope: !4315)
!4341 = !DILocation(line: 687, column: 10, scope: !4315)
!4342 = !DILocation(line: 688, column: 2, scope: !4315)
!4343 = !DILocation(line: 688, column: 5, scope: !4315)
!4344 = !DILocation(line: 688, column: 18, scope: !4315)
!4345 = !DILocation(line: 689, column: 2, scope: !4315)
!4346 = !DILocation(line: 689, column: 5, scope: !4315)
!4347 = !DILocation(line: 689, column: 12, scope: !4315)
!4348 = !DILocation(line: 690, column: 2, scope: !4315)
!4349 = !DILocation(line: 690, column: 5, scope: !4315)
!4350 = !DILocation(line: 690, column: 17, scope: !4315)
!4351 = !DILocation(line: 691, column: 2, scope: !4315)
!4352 = !DILocation(line: 691, column: 5, scope: !4315)
!4353 = !DILocation(line: 691, column: 13, scope: !4315)
!4354 = !DILocation(line: 692, column: 2, scope: !4315)
!4355 = !DILocation(line: 692, column: 5, scope: !4315)
!4356 = !DILocation(line: 692, column: 15, scope: !4315)
!4357 = !DILocation(line: 693, column: 2, scope: !4315)
!4358 = !DILocation(line: 693, column: 5, scope: !4315)
!4359 = !DILocation(line: 693, column: 17, scope: !4315)
!4360 = !DILocation(line: 694, column: 29, scope: !4315)
!4361 = !DILocation(line: 694, column: 34, scope: !4315)
!4362 = !DILocation(line: 694, column: 2, scope: !4315)
!4363 = !DILocation(line: 695, column: 2, scope: !4315)
!4364 = !DILocation(line: 696, column: 1, scope: !4315)
!4365 = distinct !DISubprogram(name: "dio200_subdev_intr_init", scope: !3, file: !3, line: 418, type: !4366, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!145, !195, !264, !7, !7}
!4368 = !DILocalVariable(name: "lock", arg: 1, scope: !4369, file: !4370, line: 327, type: !1133)
!4369 = distinct !DISubprogram(name: "spinlock_check", scope: !4370, file: !4370, line: 327, type: !4371, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4370 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!4373, !1133}
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!4374 = !DILocation(line: 327, column: 67, scope: !4369, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 432, column: 2, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 432, column: 2)
!4377 = !DILocalVariable(name: "dev", arg: 1, scope: !4365, file: !3, line: 418, type: !195)
!4378 = !DILocation(line: 418, column: 58, scope: !4365)
!4379 = !DILocalVariable(name: "s", arg: 2, scope: !4365, file: !3, line: 419, type: !264)
!4380 = !DILocation(line: 419, column: 33, scope: !4365)
!4381 = !DILocalVariable(name: "offset", arg: 3, scope: !4365, file: !3, line: 420, type: !7)
!4382 = !DILocation(line: 420, column: 21, scope: !4365)
!4383 = !DILocalVariable(name: "valid_isns", arg: 4, scope: !4365, file: !3, line: 421, type: !7)
!4384 = !DILocation(line: 421, column: 21, scope: !4365)
!4385 = !DILocalVariable(name: "board", scope: !4365, file: !3, line: 423, type: !4025)
!4386 = !DILocation(line: 423, column: 29, scope: !4365)
!4387 = !DILocation(line: 423, column: 37, scope: !4365)
!4388 = !DILocation(line: 423, column: 42, scope: !4365)
!4389 = !DILocalVariable(name: "subpriv", scope: !4365, file: !3, line: 424, type: !4390)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dio200_subdev_intr", file: !3, line: 82, size: 128, elements: !4392)
!4392 = !{!4393, !4394, !4395, !4396, !4397}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !4391, file: !3, line: 83, baseType: !307)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "ofs", scope: !4391, file: !3, line: 84, baseType: !7, size: 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "valid_isns", scope: !4391, file: !3, line: 85, baseType: !7, size: 32, offset: 32)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_isns", scope: !4391, file: !3, line: 86, baseType: !7, size: 32, offset: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4391, file: !3, line: 87, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!4398 = !DILocation(line: 424, column: 29, scope: !4365)
!4399 = !DILocation(line: 426, column: 31, scope: !4365)
!4400 = !DILocation(line: 426, column: 12, scope: !4365)
!4401 = !DILocation(line: 426, column: 10, scope: !4365)
!4402 = !DILocation(line: 427, column: 7, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 427, column: 6)
!4404 = !DILocation(line: 427, column: 6, scope: !4365)
!4405 = !DILocation(line: 428, column: 3, scope: !4403)
!4406 = !DILocation(line: 430, column: 17, scope: !4365)
!4407 = !DILocation(line: 430, column: 2, scope: !4365)
!4408 = !DILocation(line: 430, column: 11, scope: !4365)
!4409 = !DILocation(line: 430, column: 15, scope: !4365)
!4410 = !DILocation(line: 431, column: 24, scope: !4365)
!4411 = !DILocation(line: 431, column: 2, scope: !4365)
!4412 = !DILocation(line: 431, column: 11, scope: !4365)
!4413 = !DILocation(line: 431, column: 22, scope: !4365)
!4414 = !DILocation(line: 432, column: 2, scope: !4365)
!4415 = !DILocation(line: 432, column: 2, scope: !4376)
!4416 = !DILocation(line: 329, column: 10, scope: !4369, inlinedAt: !4375)
!4417 = !DILocation(line: 329, column: 16, scope: !4369, inlinedAt: !4375)
!4418 = !DILocation(line: 434, column: 6, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 434, column: 6)
!4420 = !DILocation(line: 434, column: 13, scope: !4419)
!4421 = !DILocation(line: 434, column: 6, scope: !4365)
!4422 = !DILocation(line: 436, column: 17, scope: !4419)
!4423 = !DILocation(line: 436, column: 22, scope: !4419)
!4424 = !DILocation(line: 436, column: 31, scope: !4419)
!4425 = !DILocation(line: 436, column: 3, scope: !4419)
!4426 = !DILocation(line: 438, column: 2, scope: !4365)
!4427 = !DILocation(line: 438, column: 5, scope: !4365)
!4428 = !DILocation(line: 438, column: 10, scope: !4365)
!4429 = !DILocation(line: 439, column: 2, scope: !4365)
!4430 = !DILocation(line: 439, column: 5, scope: !4365)
!4431 = !DILocation(line: 439, column: 18, scope: !4365)
!4432 = !DILocation(line: 440, column: 6, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 440, column: 6)
!4434 = !DILocation(line: 440, column: 13, scope: !4433)
!4435 = !DILocation(line: 440, column: 6, scope: !4365)
!4436 = !DILocation(line: 441, column: 3, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 440, column: 26)
!4438 = !DILocation(line: 441, column: 6, scope: !4437)
!4439 = !DILocation(line: 441, column: 13, scope: !4437)
!4440 = !DILocation(line: 442, column: 3, scope: !4437)
!4441 = !DILocation(line: 442, column: 6, scope: !4437)
!4442 = !DILocation(line: 442, column: 19, scope: !4437)
!4443 = !DILocation(line: 443, column: 2, scope: !4437)
!4444 = !DILocation(line: 445, column: 3, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 443, column: 9)
!4446 = !DILocation(line: 445, column: 6, scope: !4445)
!4447 = !DILocation(line: 445, column: 13, scope: !4445)
!4448 = !DILocation(line: 446, column: 3, scope: !4445)
!4449 = !DILocation(line: 446, column: 6, scope: !4445)
!4450 = !DILocation(line: 446, column: 19, scope: !4445)
!4451 = !DILocation(line: 448, column: 2, scope: !4365)
!4452 = !DILocation(line: 448, column: 5, scope: !4365)
!4453 = !DILocation(line: 448, column: 17, scope: !4365)
!4454 = !DILocation(line: 449, column: 2, scope: !4365)
!4455 = !DILocation(line: 449, column: 5, scope: !4365)
!4456 = !DILocation(line: 449, column: 13, scope: !4365)
!4457 = !DILocation(line: 450, column: 2, scope: !4365)
!4458 = !DILocation(line: 450, column: 5, scope: !4365)
!4459 = !DILocation(line: 450, column: 15, scope: !4365)
!4460 = !DILocation(line: 451, column: 2, scope: !4365)
!4461 = !DILocation(line: 451, column: 5, scope: !4365)
!4462 = !DILocation(line: 451, column: 16, scope: !4365)
!4463 = !DILocation(line: 452, column: 2, scope: !4365)
!4464 = !DILocation(line: 452, column: 5, scope: !4365)
!4465 = !DILocation(line: 452, column: 12, scope: !4365)
!4466 = !DILocation(line: 453, column: 2, scope: !4365)
!4467 = !DILocation(line: 453, column: 5, scope: !4365)
!4468 = !DILocation(line: 453, column: 12, scope: !4365)
!4469 = !DILocation(line: 455, column: 2, scope: !4365)
!4470 = !DILocation(line: 456, column: 1, scope: !4365)
!4471 = distinct !DISubprogram(name: "dio200_subdev_timer_read", scope: !3, file: !3, line: 698, type: !262, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4472 = !DILocalVariable(name: "dev", arg: 1, scope: !4471, file: !3, line: 698, type: !195)
!4473 = !DILocation(line: 698, column: 59, scope: !4471)
!4474 = !DILocalVariable(name: "s", arg: 2, scope: !4471, file: !3, line: 699, type: !264)
!4475 = !DILocation(line: 699, column: 34, scope: !4471)
!4476 = !DILocalVariable(name: "insn", arg: 3, scope: !4471, file: !3, line: 700, type: !3963)
!4477 = !DILocation(line: 700, column: 29, scope: !4471)
!4478 = !DILocalVariable(name: "data", arg: 4, scope: !4471, file: !3, line: 701, type: !2748)
!4479 = !DILocation(line: 701, column: 23, scope: !4471)
!4480 = !DILocalVariable(name: "n", scope: !4471, file: !3, line: 703, type: !7)
!4481 = !DILocation(line: 703, column: 15, scope: !4471)
!4482 = !DILocation(line: 705, column: 9, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 705, column: 2)
!4484 = !DILocation(line: 705, column: 7, scope: !4483)
!4485 = !DILocation(line: 705, column: 14, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 705, column: 2)
!4487 = !DILocation(line: 705, column: 18, scope: !4486)
!4488 = !DILocation(line: 705, column: 24, scope: !4486)
!4489 = !DILocation(line: 705, column: 16, scope: !4486)
!4490 = !DILocation(line: 705, column: 2, scope: !4483)
!4491 = !DILocation(line: 706, column: 27, scope: !4486)
!4492 = !DILocation(line: 706, column: 13, scope: !4486)
!4493 = !DILocation(line: 706, column: 3, scope: !4486)
!4494 = !DILocation(line: 706, column: 8, scope: !4486)
!4495 = !DILocation(line: 706, column: 11, scope: !4486)
!4496 = !DILocation(line: 705, column: 28, scope: !4486)
!4497 = !DILocation(line: 705, column: 2, scope: !4486)
!4498 = distinct !{!4498, !4490, !4499}
!4499 = !DILocation(line: 706, column: 47, scope: !4483)
!4500 = !DILocation(line: 707, column: 9, scope: !4471)
!4501 = !DILocation(line: 707, column: 2, scope: !4471)
!4502 = distinct !DISubprogram(name: "dio200_subdev_timer_config", scope: !3, file: !3, line: 743, type: !262, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4503 = !DILocalVariable(name: "dev", arg: 1, scope: !4502, file: !3, line: 743, type: !195)
!4504 = !DILocation(line: 743, column: 61, scope: !4502)
!4505 = !DILocalVariable(name: "s", arg: 2, scope: !4502, file: !3, line: 744, type: !264)
!4506 = !DILocation(line: 744, column: 36, scope: !4502)
!4507 = !DILocalVariable(name: "insn", arg: 3, scope: !4502, file: !3, line: 745, type: !3963)
!4508 = !DILocation(line: 745, column: 31, scope: !4502)
!4509 = !DILocalVariable(name: "data", arg: 4, scope: !4502, file: !3, line: 746, type: !2748)
!4510 = !DILocation(line: 746, column: 25, scope: !4502)
!4511 = !DILocalVariable(name: "ret", scope: !4502, file: !3, line: 748, type: !145)
!4512 = !DILocation(line: 748, column: 6, scope: !4502)
!4513 = !DILocation(line: 750, column: 10, scope: !4502)
!4514 = !DILocation(line: 750, column: 2, scope: !4502)
!4515 = !DILocation(line: 752, column: 29, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 750, column: 19)
!4517 = !DILocation(line: 752, column: 34, scope: !4516)
!4518 = !DILocation(line: 752, column: 3, scope: !4516)
!4519 = !DILocation(line: 753, column: 3, scope: !4516)
!4520 = !DILocation(line: 755, column: 43, scope: !4516)
!4521 = !DILocation(line: 755, column: 48, scope: !4516)
!4522 = !DILocation(line: 755, column: 51, scope: !4516)
!4523 = !DILocation(line: 755, column: 9, scope: !4516)
!4524 = !DILocation(line: 755, column: 7, scope: !4516)
!4525 = !DILocation(line: 756, column: 7, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 756, column: 7)
!4527 = !DILocation(line: 756, column: 11, scope: !4526)
!4528 = !DILocation(line: 756, column: 7, scope: !4516)
!4529 = !DILocation(line: 757, column: 8, scope: !4526)
!4530 = !DILocation(line: 757, column: 4, scope: !4526)
!4531 = !DILocation(line: 758, column: 3, scope: !4516)
!4532 = !DILocation(line: 760, column: 37, scope: !4516)
!4533 = !DILocation(line: 760, column: 42, scope: !4516)
!4534 = !DILocation(line: 760, column: 46, scope: !4516)
!4535 = !DILocation(line: 760, column: 56, scope: !4516)
!4536 = !DILocation(line: 760, column: 3, scope: !4516)
!4537 = !DILocation(line: 761, column: 3, scope: !4516)
!4538 = !DILocation(line: 763, column: 7, scope: !4516)
!4539 = !DILocation(line: 764, column: 3, scope: !4516)
!4540 = !DILocation(line: 766, column: 9, scope: !4502)
!4541 = !DILocation(line: 766, column: 13, scope: !4502)
!4542 = !DILocation(line: 766, column: 19, scope: !4502)
!4543 = !DILocation(line: 766, column: 25, scope: !4502)
!4544 = !DILocation(line: 766, column: 31, scope: !4502)
!4545 = !DILocation(line: 766, column: 2, scope: !4502)
!4546 = distinct !DISubprogram(name: "request_irq", scope: !4547, file: !4547, line: 157, type: !4548, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4547 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!145, !7, !4550, !142, !205, !185}
!4550 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4547, line: 92, baseType: !4551)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!4554, !145, !185}
!4554 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !122, line: 17, baseType: !121)
!4555 = !DILocalVariable(name: "irq", arg: 1, scope: !4546, file: !4547, line: 157, type: !7)
!4556 = !DILocation(line: 157, column: 26, scope: !4546)
!4557 = !DILocalVariable(name: "handler", arg: 2, scope: !4546, file: !4547, line: 157, type: !4550)
!4558 = !DILocation(line: 157, column: 45, scope: !4546)
!4559 = !DILocalVariable(name: "flags", arg: 3, scope: !4546, file: !4547, line: 157, type: !142)
!4560 = !DILocation(line: 157, column: 68, scope: !4546)
!4561 = !DILocalVariable(name: "name", arg: 4, scope: !4546, file: !4547, line: 158, type: !205)
!4562 = !DILocation(line: 158, column: 18, scope: !4546)
!4563 = !DILocalVariable(name: "dev", arg: 5, scope: !4546, file: !4547, line: 158, type: !185)
!4564 = !DILocation(line: 158, column: 30, scope: !4546)
!4565 = !DILocation(line: 160, column: 30, scope: !4546)
!4566 = !DILocation(line: 160, column: 35, scope: !4546)
!4567 = !DILocation(line: 160, column: 50, scope: !4546)
!4568 = !DILocation(line: 160, column: 57, scope: !4546)
!4569 = !DILocation(line: 160, column: 63, scope: !4546)
!4570 = !DILocation(line: 160, column: 9, scope: !4546)
!4571 = !DILocation(line: 160, column: 2, scope: !4546)
!4572 = distinct !DISubprogram(name: "dio200_interrupt", scope: !3, file: !3, line: 458, type: !4552, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4573 = !DILocalVariable(name: "irq", arg: 1, scope: !4572, file: !3, line: 458, type: !145)
!4574 = !DILocation(line: 458, column: 41, scope: !4572)
!4575 = !DILocalVariable(name: "d", arg: 2, scope: !4572, file: !3, line: 458, type: !185)
!4576 = !DILocation(line: 458, column: 52, scope: !4572)
!4577 = !DILocalVariable(name: "dev", scope: !4572, file: !3, line: 460, type: !195)
!4578 = !DILocation(line: 460, column: 24, scope: !4572)
!4579 = !DILocation(line: 460, column: 30, scope: !4572)
!4580 = !DILocalVariable(name: "s", scope: !4572, file: !3, line: 461, type: !264)
!4581 = !DILocation(line: 461, column: 27, scope: !4572)
!4582 = !DILocation(line: 461, column: 31, scope: !4572)
!4583 = !DILocation(line: 461, column: 36, scope: !4572)
!4584 = !DILocalVariable(name: "handled", scope: !4572, file: !3, line: 462, type: !145)
!4585 = !DILocation(line: 462, column: 6, scope: !4572)
!4586 = !DILocation(line: 464, column: 7, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 464, column: 6)
!4588 = !DILocation(line: 464, column: 12, scope: !4587)
!4589 = !DILocation(line: 464, column: 6, scope: !4572)
!4590 = !DILocation(line: 465, column: 3, scope: !4587)
!4591 = !DILocation(line: 467, column: 36, scope: !4572)
!4592 = !DILocation(line: 467, column: 41, scope: !4572)
!4593 = !DILocation(line: 467, column: 12, scope: !4572)
!4594 = !DILocation(line: 467, column: 10, scope: !4572)
!4595 = !DILocation(line: 469, column: 9, scope: !4572)
!4596 = !DILocation(line: 469, column: 2, scope: !4572)
!4597 = !DILocation(line: 470, column: 1, scope: !4572)
!4598 = distinct !DISubprogram(name: "amplc_dio200_common_init", scope: !3, file: !3, line: 845, type: !4599, scopeLine: 846, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!145}
!4601 = !DILocation(line: 847, column: 2, scope: !4598)
!4602 = distinct !DISubprogram(name: "amplc_dio200_common_exit", scope: !3, file: !3, line: 851, type: !152, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4603 = !DILocation(line: 853, column: 1, scope: !4602)
!4604 = distinct !DISubprogram(name: "writeb", scope: !4605, file: !4605, line: 65, type: !4606, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4605 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4606 = !DISubroutineType(types: !4607)
!4607 = !{null, !141, !4608}
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4610 = !DILocalVariable(name: "val", arg: 1, scope: !4604, file: !4605, line: 65, type: !141)
!4611 = !DILocation(line: 65, column: 1, scope: !4604)
!4612 = !DILocalVariable(name: "addr", arg: 2, scope: !4604, file: !4605, line: 65, type: !4608)
!4613 = !{i32 -2142147306}
!4614 = distinct !DISubprogram(name: "outb", scope: !4605, file: !4605, line: 334, type: !4615, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{null, !141, !145}
!4617 = !DILocalVariable(name: "value", arg: 1, scope: !4614, file: !4605, line: 334, type: !141)
!4618 = !DILocation(line: 334, column: 1, scope: !4614)
!4619 = !DILocalVariable(name: "port", arg: 2, scope: !4614, file: !4605, line: 334, type: !145)
!4620 = !{i32 -2142136666}
!4621 = distinct !DISubprogram(name: "dio200_subdev_8254_config", scope: !3, file: !3, line: 494, type: !262, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4622 = !DILocalVariable(name: "dev", arg: 1, scope: !4621, file: !3, line: 494, type: !195)
!4623 = !DILocation(line: 494, column: 60, scope: !4621)
!4624 = !DILocalVariable(name: "s", arg: 2, scope: !4621, file: !3, line: 495, type: !264)
!4625 = !DILocation(line: 495, column: 35, scope: !4621)
!4626 = !DILocalVariable(name: "insn", arg: 3, scope: !4621, file: !3, line: 496, type: !3963)
!4627 = !DILocation(line: 496, column: 30, scope: !4621)
!4628 = !DILocalVariable(name: "data", arg: 4, scope: !4621, file: !3, line: 497, type: !2748)
!4629 = !DILocation(line: 497, column: 24, scope: !4621)
!4630 = !DILocalVariable(name: "board", scope: !4621, file: !3, line: 499, type: !4025)
!4631 = !DILocation(line: 499, column: 29, scope: !4621)
!4632 = !DILocation(line: 499, column: 37, scope: !4621)
!4633 = !DILocation(line: 499, column: 42, scope: !4621)
!4634 = !DILocalVariable(name: "i8254", scope: !4621, file: !3, line: 500, type: !237)
!4635 = !DILocation(line: 500, column: 22, scope: !4621)
!4636 = !DILocation(line: 500, column: 30, scope: !4621)
!4637 = !DILocation(line: 500, column: 33, scope: !4621)
!4638 = !DILocalVariable(name: "chan", scope: !4621, file: !3, line: 501, type: !7)
!4639 = !DILocation(line: 501, column: 15, scope: !4621)
!4640 = !DILocation(line: 501, column: 22, scope: !4621)
!4641 = !DILocalVariable(name: "max_src", scope: !4621, file: !3, line: 502, type: !7)
!4642 = !DILocation(line: 502, column: 15, scope: !4621)
!4643 = !DILocation(line: 502, column: 25, scope: !4621)
!4644 = !DILocation(line: 502, column: 32, scope: !4621)
!4645 = !DILocalVariable(name: "src", scope: !4621, file: !3, line: 503, type: !7)
!4646 = !DILocation(line: 503, column: 15, scope: !4621)
!4647 = !DILocation(line: 505, column: 7, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 505, column: 6)
!4649 = !DILocation(line: 505, column: 14, scope: !4648)
!4650 = !DILocation(line: 505, column: 6, scope: !4621)
!4651 = !DILocation(line: 506, column: 3, scope: !4648)
!4652 = !DILocation(line: 508, column: 10, scope: !4621)
!4653 = !DILocation(line: 508, column: 2, scope: !4621)
!4654 = !DILocation(line: 510, column: 9, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 508, column: 19)
!4656 = !DILocation(line: 510, column: 7, scope: !4655)
!4657 = !DILocation(line: 511, column: 7, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 511, column: 7)
!4659 = !DILocation(line: 511, column: 13, scope: !4658)
!4660 = !DILocation(line: 511, column: 11, scope: !4658)
!4661 = !DILocation(line: 511, column: 7, scope: !4655)
!4662 = !DILocation(line: 512, column: 4, scope: !4658)
!4663 = !DILocation(line: 514, column: 35, scope: !4655)
!4664 = !DILocation(line: 514, column: 40, scope: !4655)
!4665 = !DILocation(line: 514, column: 43, scope: !4655)
!4666 = !DILocation(line: 514, column: 49, scope: !4655)
!4667 = !DILocation(line: 514, column: 3, scope: !4655)
!4668 = !DILocation(line: 515, column: 27, scope: !4655)
!4669 = !DILocation(line: 515, column: 3, scope: !4655)
!4670 = !DILocation(line: 515, column: 10, scope: !4655)
!4671 = !DILocation(line: 515, column: 19, scope: !4655)
!4672 = !DILocation(line: 515, column: 25, scope: !4655)
!4673 = !DILocation(line: 516, column: 3, scope: !4655)
!4674 = !DILocation(line: 518, column: 13, scope: !4655)
!4675 = !DILocation(line: 518, column: 20, scope: !4655)
!4676 = !DILocation(line: 518, column: 29, scope: !4655)
!4677 = !DILocation(line: 518, column: 3, scope: !4655)
!4678 = !DILocation(line: 518, column: 11, scope: !4655)
!4679 = !DILocation(line: 519, column: 3, scope: !4655)
!4680 = !DILocation(line: 521, column: 9, scope: !4655)
!4681 = !DILocation(line: 521, column: 7, scope: !4655)
!4682 = !DILocation(line: 522, column: 7, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 522, column: 7)
!4684 = !DILocation(line: 522, column: 13, scope: !4683)
!4685 = !DILocation(line: 522, column: 11, scope: !4683)
!4686 = !DILocation(line: 522, column: 7, scope: !4655)
!4687 = !DILocation(line: 523, column: 4, scope: !4683)
!4688 = !DILocation(line: 525, column: 36, scope: !4655)
!4689 = !DILocation(line: 525, column: 41, scope: !4655)
!4690 = !DILocation(line: 525, column: 44, scope: !4655)
!4691 = !DILocation(line: 525, column: 50, scope: !4655)
!4692 = !DILocation(line: 525, column: 3, scope: !4655)
!4693 = !DILocation(line: 526, column: 28, scope: !4655)
!4694 = !DILocation(line: 526, column: 3, scope: !4655)
!4695 = !DILocation(line: 526, column: 10, scope: !4655)
!4696 = !DILocation(line: 526, column: 20, scope: !4655)
!4697 = !DILocation(line: 526, column: 26, scope: !4655)
!4698 = !DILocation(line: 527, column: 3, scope: !4655)
!4699 = !DILocation(line: 529, column: 13, scope: !4655)
!4700 = !DILocation(line: 529, column: 20, scope: !4655)
!4701 = !DILocation(line: 529, column: 30, scope: !4655)
!4702 = !DILocation(line: 529, column: 3, scope: !4655)
!4703 = !DILocation(line: 529, column: 11, scope: !4655)
!4704 = !DILocation(line: 530, column: 26, scope: !4655)
!4705 = !DILocation(line: 530, column: 33, scope: !4655)
!4706 = !DILocation(line: 530, column: 43, scope: !4655)
!4707 = !DILocation(line: 530, column: 13, scope: !4655)
!4708 = !DILocation(line: 530, column: 3, scope: !4655)
!4709 = !DILocation(line: 530, column: 11, scope: !4655)
!4710 = !DILocation(line: 531, column: 3, scope: !4655)
!4711 = !DILocation(line: 533, column: 3, scope: !4655)
!4712 = !DILocation(line: 536, column: 9, scope: !4621)
!4713 = !DILocation(line: 536, column: 15, scope: !4621)
!4714 = !DILocation(line: 536, column: 2, scope: !4621)
!4715 = !DILocation(line: 537, column: 1, scope: !4621)
!4716 = distinct !DISubprogram(name: "dio200_subdev_8254_set_gate_src", scope: !3, file: !3, line: 472, type: !4717, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{null, !195, !264, !7, !7}
!4719 = !DILocalVariable(name: "dev", arg: 1, scope: !4716, file: !3, line: 472, type: !195)
!4720 = !DILocation(line: 472, column: 67, scope: !4716)
!4721 = !DILocalVariable(name: "s", arg: 2, scope: !4716, file: !3, line: 473, type: !264)
!4722 = !DILocation(line: 473, column: 35, scope: !4716)
!4723 = !DILocalVariable(name: "chan", arg: 3, scope: !4716, file: !3, line: 474, type: !7)
!4724 = !DILocation(line: 474, column: 23, scope: !4716)
!4725 = !DILocalVariable(name: "src", arg: 4, scope: !4716, file: !3, line: 475, type: !7)
!4726 = !DILocation(line: 475, column: 23, scope: !4716)
!4727 = !DILocalVariable(name: "offset", scope: !4716, file: !3, line: 477, type: !7)
!4728 = !DILocation(line: 477, column: 15, scope: !4716)
!4729 = !DILocation(line: 477, column: 50, scope: !4716)
!4730 = !DILocation(line: 477, column: 55, scope: !4716)
!4731 = !DILocation(line: 477, column: 24, scope: !4716)
!4732 = !DILocation(line: 479, column: 16, scope: !4716)
!4733 = !DILocation(line: 479, column: 21, scope: !4716)
!4734 = !DILocation(line: 480, column: 22, scope: !4716)
!4735 = !DILocation(line: 480, column: 29, scope: !4716)
!4736 = !DILocation(line: 480, column: 35, scope: !4716)
!4737 = !DILocation(line: 480, column: 40, scope: !4716)
!4738 = !DILocation(line: 480, column: 46, scope: !4716)
!4739 = !DILocation(line: 480, column: 9, scope: !4716)
!4740 = !DILocation(line: 479, column: 2, scope: !4716)
!4741 = !DILocation(line: 481, column: 1, scope: !4716)
!4742 = distinct !DISubprogram(name: "dio200_subdev_8254_set_clock_src", scope: !3, file: !3, line: 483, type: !4717, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4743 = !DILocalVariable(name: "dev", arg: 1, scope: !4742, file: !3, line: 483, type: !195)
!4744 = !DILocation(line: 483, column: 68, scope: !4742)
!4745 = !DILocalVariable(name: "s", arg: 2, scope: !4742, file: !3, line: 484, type: !264)
!4746 = !DILocation(line: 484, column: 36, scope: !4742)
!4747 = !DILocalVariable(name: "chan", arg: 3, scope: !4742, file: !3, line: 485, type: !7)
!4748 = !DILocation(line: 485, column: 24, scope: !4742)
!4749 = !DILocalVariable(name: "src", arg: 4, scope: !4742, file: !3, line: 486, type: !7)
!4750 = !DILocation(line: 486, column: 24, scope: !4742)
!4751 = !DILocalVariable(name: "offset", scope: !4742, file: !3, line: 488, type: !7)
!4752 = !DILocation(line: 488, column: 15, scope: !4742)
!4753 = !DILocation(line: 488, column: 50, scope: !4742)
!4754 = !DILocation(line: 488, column: 55, scope: !4742)
!4755 = !DILocation(line: 488, column: 24, scope: !4742)
!4756 = !DILocation(line: 490, column: 16, scope: !4742)
!4757 = !DILocation(line: 490, column: 21, scope: !4742)
!4758 = !DILocation(line: 491, column: 22, scope: !4742)
!4759 = !DILocation(line: 491, column: 29, scope: !4742)
!4760 = !DILocation(line: 491, column: 35, scope: !4742)
!4761 = !DILocation(line: 491, column: 40, scope: !4742)
!4762 = !DILocation(line: 491, column: 46, scope: !4742)
!4763 = !DILocation(line: 491, column: 9, scope: !4742)
!4764 = !DILocation(line: 490, column: 2, scope: !4742)
!4765 = !DILocation(line: 492, column: 1, scope: !4742)
!4766 = distinct !DISubprogram(name: "dio200_subdev_8254_offset", scope: !3, file: !3, line: 144, type: !4767, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!7, !195, !264}
!4769 = !DILocalVariable(name: "dev", arg: 1, scope: !4766, file: !3, line: 144, type: !195)
!4770 = !DILocation(line: 144, column: 69, scope: !4766)
!4771 = !DILocalVariable(name: "s", arg: 2, scope: !4766, file: !3, line: 145, type: !264)
!4772 = !DILocation(line: 145, column: 37, scope: !4766)
!4773 = !DILocalVariable(name: "board", scope: !4766, file: !3, line: 147, type: !4025)
!4774 = !DILocation(line: 147, column: 29, scope: !4766)
!4775 = !DILocation(line: 147, column: 37, scope: !4766)
!4776 = !DILocation(line: 147, column: 42, scope: !4766)
!4777 = !DILocalVariable(name: "i8254", scope: !4766, file: !3, line: 148, type: !237)
!4778 = !DILocation(line: 148, column: 22, scope: !4766)
!4779 = !DILocation(line: 148, column: 30, scope: !4766)
!4780 = !DILocation(line: 148, column: 33, scope: !4766)
!4781 = !DILocalVariable(name: "offset", scope: !4766, file: !3, line: 149, type: !7)
!4782 = !DILocation(line: 149, column: 15, scope: !4766)
!4783 = !DILocation(line: 152, column: 6, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 152, column: 6)
!4785 = !DILocation(line: 152, column: 11, scope: !4784)
!4786 = !DILocation(line: 152, column: 6, scope: !4766)
!4787 = !DILocation(line: 153, column: 12, scope: !4784)
!4788 = !DILocation(line: 153, column: 19, scope: !4784)
!4789 = !DILocation(line: 153, column: 26, scope: !4784)
!4790 = !DILocation(line: 153, column: 31, scope: !4784)
!4791 = !DILocation(line: 153, column: 24, scope: !4784)
!4792 = !DILocation(line: 153, column: 10, scope: !4784)
!4793 = !DILocation(line: 153, column: 3, scope: !4784)
!4794 = !DILocation(line: 155, column: 12, scope: !4784)
!4795 = !DILocation(line: 155, column: 19, scope: !4784)
!4796 = !DILocation(line: 155, column: 28, scope: !4784)
!4797 = !DILocation(line: 155, column: 33, scope: !4784)
!4798 = !DILocation(line: 155, column: 26, scope: !4784)
!4799 = !DILocation(line: 155, column: 10, scope: !4784)
!4800 = !DILocation(line: 158, column: 6, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 158, column: 6)
!4802 = !DILocation(line: 158, column: 13, scope: !4801)
!4803 = !DILocation(line: 158, column: 6, scope: !4766)
!4804 = !DILocation(line: 159, column: 10, scope: !4801)
!4805 = !DILocation(line: 159, column: 3, scope: !4801)
!4806 = !DILocation(line: 162, column: 9, scope: !4766)
!4807 = !DILocation(line: 162, column: 2, scope: !4766)
!4808 = distinct !DISubprogram(name: "clk_gat_sce", scope: !3, file: !3, line: 42, type: !4809, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!141, !7, !7, !7}
!4811 = !DILocalVariable(name: "which", arg: 1, scope: !4808, file: !3, line: 42, type: !7)
!4812 = !DILocation(line: 42, column: 47, scope: !4808)
!4813 = !DILocalVariable(name: "chan", arg: 2, scope: !4808, file: !3, line: 42, type: !7)
!4814 = !DILocation(line: 42, column: 67, scope: !4808)
!4815 = !DILocalVariable(name: "source", arg: 3, scope: !4808, file: !3, line: 43, type: !7)
!4816 = !DILocation(line: 43, column: 19, scope: !4808)
!4817 = !DILocation(line: 45, column: 10, scope: !4808)
!4818 = !DILocation(line: 45, column: 16, scope: !4808)
!4819 = !DILocation(line: 45, column: 25, scope: !4808)
!4820 = !DILocation(line: 45, column: 30, scope: !4808)
!4821 = !DILocation(line: 45, column: 22, scope: !4808)
!4822 = !DILocation(line: 46, column: 11, scope: !4808)
!4823 = !DILocation(line: 46, column: 18, scope: !4808)
!4824 = !DILocation(line: 46, column: 25, scope: !4808)
!4825 = !DILocation(line: 45, column: 36, scope: !4808)
!4826 = !DILocation(line: 46, column: 34, scope: !4808)
!4827 = !DILocation(line: 46, column: 41, scope: !4808)
!4828 = !DILocation(line: 46, column: 31, scope: !4808)
!4829 = !DILocation(line: 45, column: 9, scope: !4808)
!4830 = !DILocation(line: 45, column: 2, scope: !4808)
!4831 = distinct !DISubprogram(name: "dio200_subdev_8255_bits", scope: !3, file: !3, line: 614, type: !262, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4832 = !DILocalVariable(name: "dev", arg: 1, scope: !4831, file: !3, line: 614, type: !195)
!4833 = !DILocation(line: 614, column: 58, scope: !4831)
!4834 = !DILocalVariable(name: "s", arg: 2, scope: !4831, file: !3, line: 615, type: !264)
!4835 = !DILocation(line: 615, column: 33, scope: !4831)
!4836 = !DILocalVariable(name: "insn", arg: 3, scope: !4831, file: !3, line: 616, type: !3963)
!4837 = !DILocation(line: 616, column: 28, scope: !4831)
!4838 = !DILocalVariable(name: "data", arg: 4, scope: !4831, file: !3, line: 617, type: !2748)
!4839 = !DILocation(line: 617, column: 22, scope: !4831)
!4840 = !DILocalVariable(name: "subpriv", scope: !4831, file: !3, line: 619, type: !4323)
!4841 = !DILocation(line: 619, column: 29, scope: !4831)
!4842 = !DILocation(line: 619, column: 39, scope: !4831)
!4843 = !DILocation(line: 619, column: 42, scope: !4831)
!4844 = !DILocalVariable(name: "mask", scope: !4831, file: !3, line: 620, type: !7)
!4845 = !DILocation(line: 620, column: 15, scope: !4831)
!4846 = !DILocalVariable(name: "val", scope: !4831, file: !3, line: 621, type: !7)
!4847 = !DILocation(line: 621, column: 15, scope: !4831)
!4848 = !DILocation(line: 623, column: 33, scope: !4831)
!4849 = !DILocation(line: 623, column: 36, scope: !4831)
!4850 = !DILocation(line: 623, column: 9, scope: !4831)
!4851 = !DILocation(line: 623, column: 7, scope: !4831)
!4852 = !DILocation(line: 624, column: 6, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 624, column: 6)
!4854 = !DILocation(line: 624, column: 6, scope: !4831)
!4855 = !DILocation(line: 625, column: 7, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 625, column: 7)
!4857 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 624, column: 12)
!4858 = !DILocation(line: 625, column: 12, scope: !4856)
!4859 = !DILocation(line: 625, column: 7, scope: !4857)
!4860 = !DILocation(line: 626, column: 18, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 625, column: 20)
!4862 = !DILocation(line: 626, column: 23, scope: !4861)
!4863 = !DILocation(line: 626, column: 32, scope: !4861)
!4864 = !DILocation(line: 626, column: 36, scope: !4861)
!4865 = !DILocation(line: 627, column: 11, scope: !4861)
!4866 = !DILocation(line: 627, column: 14, scope: !4861)
!4867 = !DILocation(line: 627, column: 20, scope: !4861)
!4868 = !DILocation(line: 626, column: 4, scope: !4861)
!4869 = !DILocation(line: 628, column: 3, scope: !4861)
!4870 = !DILocation(line: 629, column: 7, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 629, column: 7)
!4872 = !DILocation(line: 629, column: 12, scope: !4871)
!4873 = !DILocation(line: 629, column: 7, scope: !4857)
!4874 = !DILocation(line: 630, column: 18, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 629, column: 22)
!4876 = !DILocation(line: 630, column: 23, scope: !4875)
!4877 = !DILocation(line: 630, column: 32, scope: !4875)
!4878 = !DILocation(line: 630, column: 36, scope: !4875)
!4879 = !DILocation(line: 631, column: 12, scope: !4875)
!4880 = !DILocation(line: 631, column: 15, scope: !4875)
!4881 = !DILocation(line: 631, column: 21, scope: !4875)
!4882 = !DILocation(line: 631, column: 27, scope: !4875)
!4883 = !DILocation(line: 631, column: 11, scope: !4875)
!4884 = !DILocation(line: 630, column: 4, scope: !4875)
!4885 = !DILocation(line: 632, column: 3, scope: !4875)
!4886 = !DILocation(line: 633, column: 7, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 633, column: 7)
!4888 = !DILocation(line: 633, column: 12, scope: !4887)
!4889 = !DILocation(line: 633, column: 7, scope: !4857)
!4890 = !DILocation(line: 634, column: 18, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 633, column: 24)
!4892 = !DILocation(line: 634, column: 23, scope: !4891)
!4893 = !DILocation(line: 634, column: 32, scope: !4891)
!4894 = !DILocation(line: 634, column: 36, scope: !4891)
!4895 = !DILocation(line: 635, column: 12, scope: !4891)
!4896 = !DILocation(line: 635, column: 15, scope: !4891)
!4897 = !DILocation(line: 635, column: 21, scope: !4891)
!4898 = !DILocation(line: 635, column: 28, scope: !4891)
!4899 = !DILocation(line: 635, column: 11, scope: !4891)
!4900 = !DILocation(line: 634, column: 4, scope: !4891)
!4901 = !DILocation(line: 636, column: 3, scope: !4891)
!4902 = !DILocation(line: 637, column: 2, scope: !4857)
!4903 = !DILocation(line: 639, column: 21, scope: !4831)
!4904 = !DILocation(line: 639, column: 26, scope: !4831)
!4905 = !DILocation(line: 639, column: 35, scope: !4831)
!4906 = !DILocation(line: 639, column: 39, scope: !4831)
!4907 = !DILocation(line: 639, column: 8, scope: !4831)
!4908 = !DILocation(line: 639, column: 6, scope: !4831)
!4909 = !DILocation(line: 640, column: 22, scope: !4831)
!4910 = !DILocation(line: 640, column: 27, scope: !4831)
!4911 = !DILocation(line: 640, column: 36, scope: !4831)
!4912 = !DILocation(line: 640, column: 40, scope: !4831)
!4913 = !DILocation(line: 640, column: 9, scope: !4831)
!4914 = !DILocation(line: 640, column: 60, scope: !4831)
!4915 = !DILocation(line: 640, column: 6, scope: !4831)
!4916 = !DILocation(line: 641, column: 22, scope: !4831)
!4917 = !DILocation(line: 641, column: 27, scope: !4831)
!4918 = !DILocation(line: 641, column: 36, scope: !4831)
!4919 = !DILocation(line: 641, column: 40, scope: !4831)
!4920 = !DILocation(line: 641, column: 9, scope: !4831)
!4921 = !DILocation(line: 641, column: 60, scope: !4831)
!4922 = !DILocation(line: 641, column: 6, scope: !4831)
!4923 = !DILocation(line: 643, column: 12, scope: !4831)
!4924 = !DILocation(line: 643, column: 2, scope: !4831)
!4925 = !DILocation(line: 643, column: 10, scope: !4831)
!4926 = !DILocation(line: 645, column: 9, scope: !4831)
!4927 = !DILocation(line: 645, column: 15, scope: !4831)
!4928 = !DILocation(line: 645, column: 2, scope: !4831)
!4929 = distinct !DISubprogram(name: "dio200_subdev_8255_config", scope: !3, file: !3, line: 648, type: !262, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4930 = !DILocalVariable(name: "dev", arg: 1, scope: !4929, file: !3, line: 648, type: !195)
!4931 = !DILocation(line: 648, column: 60, scope: !4929)
!4932 = !DILocalVariable(name: "s", arg: 2, scope: !4929, file: !3, line: 649, type: !264)
!4933 = !DILocation(line: 649, column: 35, scope: !4929)
!4934 = !DILocalVariable(name: "insn", arg: 3, scope: !4929, file: !3, line: 650, type: !3963)
!4935 = !DILocation(line: 650, column: 30, scope: !4929)
!4936 = !DILocalVariable(name: "data", arg: 4, scope: !4929, file: !3, line: 651, type: !2748)
!4937 = !DILocation(line: 651, column: 24, scope: !4929)
!4938 = !DILocalVariable(name: "chan", scope: !4929, file: !3, line: 653, type: !7)
!4939 = !DILocation(line: 653, column: 15, scope: !4929)
!4940 = !DILocation(line: 653, column: 22, scope: !4929)
!4941 = !DILocalVariable(name: "mask", scope: !4929, file: !3, line: 654, type: !7)
!4942 = !DILocation(line: 654, column: 15, scope: !4929)
!4943 = !DILocalVariable(name: "ret", scope: !4929, file: !3, line: 655, type: !145)
!4944 = !DILocation(line: 655, column: 6, scope: !4929)
!4945 = !DILocation(line: 657, column: 6, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 657, column: 6)
!4947 = !DILocation(line: 657, column: 11, scope: !4946)
!4948 = !DILocation(line: 657, column: 6, scope: !4929)
!4949 = !DILocation(line: 658, column: 8, scope: !4946)
!4950 = !DILocation(line: 658, column: 3, scope: !4946)
!4951 = !DILocation(line: 659, column: 11, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 659, column: 11)
!4953 = !DILocation(line: 659, column: 16, scope: !4952)
!4954 = !DILocation(line: 659, column: 11, scope: !4946)
!4955 = !DILocation(line: 660, column: 8, scope: !4952)
!4956 = !DILocation(line: 660, column: 3, scope: !4952)
!4957 = !DILocation(line: 661, column: 11, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 661, column: 11)
!4959 = !DILocation(line: 661, column: 16, scope: !4958)
!4960 = !DILocation(line: 661, column: 11, scope: !4952)
!4961 = !DILocation(line: 662, column: 8, scope: !4958)
!4962 = !DILocation(line: 662, column: 3, scope: !4958)
!4963 = !DILocation(line: 664, column: 8, scope: !4958)
!4964 = !DILocation(line: 666, column: 31, scope: !4929)
!4965 = !DILocation(line: 666, column: 36, scope: !4929)
!4966 = !DILocation(line: 666, column: 39, scope: !4929)
!4967 = !DILocation(line: 666, column: 45, scope: !4929)
!4968 = !DILocation(line: 666, column: 51, scope: !4929)
!4969 = !DILocation(line: 666, column: 8, scope: !4929)
!4970 = !DILocation(line: 666, column: 6, scope: !4929)
!4971 = !DILocation(line: 667, column: 6, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 667, column: 6)
!4973 = !DILocation(line: 667, column: 6, scope: !4929)
!4974 = !DILocation(line: 668, column: 10, scope: !4972)
!4975 = !DILocation(line: 668, column: 3, scope: !4972)
!4976 = !DILocation(line: 670, column: 29, scope: !4929)
!4977 = !DILocation(line: 670, column: 34, scope: !4929)
!4978 = !DILocation(line: 670, column: 2, scope: !4929)
!4979 = !DILocation(line: 672, column: 9, scope: !4929)
!4980 = !DILocation(line: 672, column: 15, scope: !4929)
!4981 = !DILocation(line: 672, column: 2, scope: !4929)
!4982 = !DILocation(line: 673, column: 1, scope: !4929)
!4983 = distinct !DISubprogram(name: "dio200_subdev_8255_set_dir", scope: !3, file: !3, line: 595, type: !4984, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{null, !195, !264}
!4986 = !DILocalVariable(name: "dev", arg: 1, scope: !4983, file: !3, line: 595, type: !195)
!4987 = !DILocation(line: 595, column: 62, scope: !4983)
!4988 = !DILocalVariable(name: "s", arg: 2, scope: !4983, file: !3, line: 596, type: !264)
!4989 = !DILocation(line: 596, column: 37, scope: !4983)
!4990 = !DILocalVariable(name: "subpriv", scope: !4983, file: !3, line: 598, type: !4323)
!4991 = !DILocation(line: 598, column: 29, scope: !4983)
!4992 = !DILocation(line: 598, column: 39, scope: !4983)
!4993 = !DILocation(line: 598, column: 42, scope: !4983)
!4994 = !DILocalVariable(name: "config", scope: !4983, file: !3, line: 599, type: !145)
!4995 = !DILocation(line: 599, column: 6, scope: !4983)
!4996 = !DILocation(line: 601, column: 9, scope: !4983)
!4997 = !DILocation(line: 603, column: 8, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 603, column: 6)
!4999 = !DILocation(line: 603, column: 11, scope: !4998)
!5000 = !DILocation(line: 603, column: 19, scope: !4998)
!5001 = !DILocation(line: 603, column: 6, scope: !4983)
!5002 = !DILocation(line: 604, column: 10, scope: !4998)
!5003 = !DILocation(line: 604, column: 3, scope: !4998)
!5004 = !DILocation(line: 605, column: 8, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 605, column: 6)
!5006 = !DILocation(line: 605, column: 11, scope: !5005)
!5007 = !DILocation(line: 605, column: 19, scope: !5005)
!5008 = !DILocation(line: 605, column: 6, scope: !4983)
!5009 = !DILocation(line: 606, column: 10, scope: !5005)
!5010 = !DILocation(line: 606, column: 3, scope: !5005)
!5011 = !DILocation(line: 607, column: 8, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 607, column: 6)
!5013 = !DILocation(line: 607, column: 11, scope: !5012)
!5014 = !DILocation(line: 607, column: 19, scope: !5012)
!5015 = !DILocation(line: 607, column: 6, scope: !4983)
!5016 = !DILocation(line: 608, column: 10, scope: !5012)
!5017 = !DILocation(line: 608, column: 3, scope: !5012)
!5018 = !DILocation(line: 609, column: 8, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 609, column: 6)
!5020 = !DILocation(line: 609, column: 11, scope: !5019)
!5021 = !DILocation(line: 609, column: 19, scope: !5019)
!5022 = !DILocation(line: 609, column: 6, scope: !4983)
!5023 = !DILocation(line: 610, column: 10, scope: !5019)
!5024 = !DILocation(line: 610, column: 3, scope: !5019)
!5025 = !DILocation(line: 611, column: 16, scope: !4983)
!5026 = !DILocation(line: 611, column: 21, scope: !4983)
!5027 = !DILocation(line: 611, column: 30, scope: !4983)
!5028 = !DILocation(line: 611, column: 34, scope: !4983)
!5029 = !DILocation(line: 611, column: 52, scope: !4983)
!5030 = !DILocation(line: 611, column: 2, scope: !4983)
!5031 = !DILocation(line: 612, column: 1, scope: !4983)
!5032 = distinct !DISubprogram(name: "dio200_read8", scope: !3, file: !3, line: 90, type: !5033, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!141, !195, !7}
!5035 = !DILocalVariable(name: "dev", arg: 1, scope: !5032, file: !3, line: 90, type: !195)
!5036 = !DILocation(line: 90, column: 57, scope: !5032)
!5037 = !DILocalVariable(name: "offset", arg: 2, scope: !5032, file: !3, line: 91, type: !7)
!5038 = !DILocation(line: 91, column: 20, scope: !5032)
!5039 = !DILocalVariable(name: "board", scope: !5032, file: !3, line: 93, type: !4025)
!5040 = !DILocation(line: 93, column: 29, scope: !5032)
!5041 = !DILocation(line: 93, column: 37, scope: !5032)
!5042 = !DILocation(line: 93, column: 42, scope: !5032)
!5043 = !DILocation(line: 95, column: 6, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 95, column: 6)
!5045 = !DILocation(line: 95, column: 13, scope: !5044)
!5046 = !DILocation(line: 95, column: 6, scope: !5032)
!5047 = !DILocation(line: 96, column: 10, scope: !5044)
!5048 = !DILocation(line: 96, column: 3, scope: !5044)
!5049 = !DILocation(line: 98, column: 6, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 98, column: 6)
!5051 = !DILocation(line: 98, column: 11, scope: !5050)
!5052 = !DILocation(line: 98, column: 6, scope: !5032)
!5053 = !DILocation(line: 99, column: 16, scope: !5050)
!5054 = !DILocation(line: 99, column: 21, scope: !5050)
!5055 = !DILocation(line: 99, column: 28, scope: !5050)
!5056 = !DILocation(line: 99, column: 26, scope: !5050)
!5057 = !DILocation(line: 99, column: 10, scope: !5050)
!5058 = !DILocation(line: 99, column: 3, scope: !5050)
!5059 = !DILocation(line: 100, column: 13, scope: !5032)
!5060 = !DILocation(line: 100, column: 18, scope: !5032)
!5061 = !DILocation(line: 100, column: 27, scope: !5032)
!5062 = !DILocation(line: 100, column: 25, scope: !5032)
!5063 = !DILocation(line: 100, column: 9, scope: !5032)
!5064 = !DILocation(line: 100, column: 2, scope: !5032)
!5065 = !DILocation(line: 101, column: 1, scope: !5032)
!5066 = distinct !DISubprogram(name: "readb", scope: !4605, file: !4605, line: 57, type: !5067, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!141, !5069}
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4609)
!5071 = !DILocalVariable(name: "addr", arg: 1, scope: !5066, file: !4605, line: 57, type: !5069)
!5072 = !DILocation(line: 57, column: 1, scope: !5066)
!5073 = !DILocalVariable(name: "ret", scope: !5066, file: !4605, line: 57, type: !141)
!5074 = !{i32 -2142149760}
!5075 = distinct !DISubprogram(name: "inb", scope: !4605, file: !4605, line: 334, type: !5076, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!141, !145}
!5078 = !DILocalVariable(name: "port", arg: 1, scope: !5075, file: !4605, line: 334, type: !145)
!5079 = !DILocation(line: 334, column: 1, scope: !5075)
!5080 = !DILocalVariable(name: "value", scope: !5075, file: !4605, line: 334, type: !141)
!5081 = !{i32 -2142136464}
!5082 = distinct !DISubprogram(name: "dio200_subdev_intr_insn_bits", scope: !3, file: !3, line: 165, type: !262, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5083 = !DILocalVariable(name: "dev", arg: 1, scope: !5082, file: !3, line: 165, type: !195)
!5084 = !DILocation(line: 165, column: 63, scope: !5082)
!5085 = !DILocalVariable(name: "s", arg: 2, scope: !5082, file: !3, line: 166, type: !264)
!5086 = !DILocation(line: 166, column: 31, scope: !5082)
!5087 = !DILocalVariable(name: "insn", arg: 3, scope: !5082, file: !3, line: 167, type: !3963)
!5088 = !DILocation(line: 167, column: 26, scope: !5082)
!5089 = !DILocalVariable(name: "data", arg: 4, scope: !5082, file: !3, line: 168, type: !2748)
!5090 = !DILocation(line: 168, column: 20, scope: !5082)
!5091 = !DILocalVariable(name: "board", scope: !5082, file: !3, line: 170, type: !4025)
!5092 = !DILocation(line: 170, column: 29, scope: !5082)
!5093 = !DILocation(line: 170, column: 37, scope: !5082)
!5094 = !DILocation(line: 170, column: 42, scope: !5082)
!5095 = !DILocalVariable(name: "subpriv", scope: !5082, file: !3, line: 171, type: !4390)
!5096 = !DILocation(line: 171, column: 29, scope: !5082)
!5097 = !DILocation(line: 171, column: 39, scope: !5082)
!5098 = !DILocation(line: 171, column: 42, scope: !5082)
!5099 = !DILocation(line: 173, column: 6, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 173, column: 6)
!5101 = !DILocation(line: 173, column: 13, scope: !5100)
!5102 = !DILocation(line: 173, column: 6, scope: !5082)
!5103 = !DILocation(line: 175, column: 26, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 173, column: 26)
!5105 = !DILocation(line: 175, column: 31, scope: !5104)
!5106 = !DILocation(line: 175, column: 40, scope: !5104)
!5107 = !DILocation(line: 175, column: 13, scope: !5104)
!5108 = !DILocation(line: 175, column: 47, scope: !5104)
!5109 = !DILocation(line: 175, column: 56, scope: !5104)
!5110 = !DILocation(line: 175, column: 45, scope: !5104)
!5111 = !DILocation(line: 175, column: 3, scope: !5104)
!5112 = !DILocation(line: 175, column: 11, scope: !5104)
!5113 = !DILocation(line: 176, column: 2, scope: !5104)
!5114 = !DILocation(line: 178, column: 3, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 176, column: 9)
!5116 = !DILocation(line: 178, column: 11, scope: !5115)
!5117 = !DILocation(line: 181, column: 9, scope: !5082)
!5118 = !DILocation(line: 181, column: 15, scope: !5082)
!5119 = !DILocation(line: 181, column: 2, scope: !5082)
!5120 = distinct !DISubprogram(name: "dio200_subdev_intr_cmdtest", scope: !3, file: !3, line: 347, type: !3948, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5121 = !DILocalVariable(name: "dev", arg: 1, scope: !5120, file: !3, line: 347, type: !195)
!5122 = !DILocation(line: 347, column: 61, scope: !5120)
!5123 = !DILocalVariable(name: "s", arg: 2, scope: !5120, file: !3, line: 348, type: !264)
!5124 = !DILocation(line: 348, column: 36, scope: !5120)
!5125 = !DILocalVariable(name: "cmd", arg: 3, scope: !5120, file: !3, line: 349, type: !3950)
!5126 = !DILocation(line: 349, column: 30, scope: !5120)
!5127 = !DILocalVariable(name: "err", scope: !5120, file: !3, line: 351, type: !145)
!5128 = !DILocation(line: 351, column: 6, scope: !5120)
!5129 = !DILocation(line: 355, column: 35, scope: !5120)
!5130 = !DILocation(line: 355, column: 40, scope: !5120)
!5131 = !DILocation(line: 355, column: 9, scope: !5120)
!5132 = !DILocation(line: 355, column: 6, scope: !5120)
!5133 = !DILocation(line: 356, column: 35, scope: !5120)
!5134 = !DILocation(line: 356, column: 40, scope: !5120)
!5135 = !DILocation(line: 356, column: 9, scope: !5120)
!5136 = !DILocation(line: 356, column: 6, scope: !5120)
!5137 = !DILocation(line: 357, column: 35, scope: !5120)
!5138 = !DILocation(line: 357, column: 40, scope: !5120)
!5139 = !DILocation(line: 357, column: 9, scope: !5120)
!5140 = !DILocation(line: 357, column: 6, scope: !5120)
!5141 = !DILocation(line: 358, column: 35, scope: !5120)
!5142 = !DILocation(line: 358, column: 40, scope: !5120)
!5143 = !DILocation(line: 358, column: 9, scope: !5120)
!5144 = !DILocation(line: 358, column: 6, scope: !5120)
!5145 = !DILocation(line: 359, column: 35, scope: !5120)
!5146 = !DILocation(line: 359, column: 40, scope: !5120)
!5147 = !DILocation(line: 359, column: 9, scope: !5120)
!5148 = !DILocation(line: 359, column: 6, scope: !5120)
!5149 = !DILocation(line: 361, column: 6, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 361, column: 6)
!5151 = !DILocation(line: 361, column: 6, scope: !5120)
!5152 = !DILocation(line: 362, column: 3, scope: !5150)
!5153 = !DILocation(line: 366, column: 40, scope: !5120)
!5154 = !DILocation(line: 366, column: 45, scope: !5120)
!5155 = !DILocation(line: 366, column: 9, scope: !5120)
!5156 = !DILocation(line: 366, column: 6, scope: !5120)
!5157 = !DILocation(line: 367, column: 40, scope: !5120)
!5158 = !DILocation(line: 367, column: 45, scope: !5120)
!5159 = !DILocation(line: 367, column: 9, scope: !5120)
!5160 = !DILocation(line: 367, column: 6, scope: !5120)
!5161 = !DILocation(line: 371, column: 6, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 371, column: 6)
!5163 = !DILocation(line: 371, column: 6, scope: !5120)
!5164 = !DILocation(line: 372, column: 3, scope: !5162)
!5165 = !DILocation(line: 376, column: 38, scope: !5120)
!5166 = !DILocation(line: 376, column: 43, scope: !5120)
!5167 = !DILocation(line: 376, column: 9, scope: !5120)
!5168 = !DILocation(line: 376, column: 6, scope: !5120)
!5169 = !DILocation(line: 377, column: 38, scope: !5120)
!5170 = !DILocation(line: 377, column: 43, scope: !5120)
!5171 = !DILocation(line: 377, column: 9, scope: !5120)
!5172 = !DILocation(line: 377, column: 6, scope: !5120)
!5173 = !DILocation(line: 378, column: 38, scope: !5120)
!5174 = !DILocation(line: 378, column: 43, scope: !5120)
!5175 = !DILocation(line: 378, column: 9, scope: !5120)
!5176 = !DILocation(line: 378, column: 6, scope: !5120)
!5177 = !DILocation(line: 379, column: 38, scope: !5120)
!5178 = !DILocation(line: 379, column: 43, scope: !5120)
!5179 = !DILocation(line: 380, column: 9, scope: !5120)
!5180 = !DILocation(line: 380, column: 14, scope: !5120)
!5181 = !DILocation(line: 379, column: 9, scope: !5120)
!5182 = !DILocation(line: 379, column: 6, scope: !5120)
!5183 = !DILocation(line: 382, column: 6, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 382, column: 6)
!5185 = !DILocation(line: 382, column: 11, scope: !5184)
!5186 = !DILocation(line: 382, column: 20, scope: !5184)
!5187 = !DILocation(line: 382, column: 6, scope: !5120)
!5188 = !DILocation(line: 383, column: 40, scope: !5184)
!5189 = !DILocation(line: 383, column: 45, scope: !5184)
!5190 = !DILocation(line: 383, column: 10, scope: !5184)
!5191 = !DILocation(line: 383, column: 7, scope: !5184)
!5192 = !DILocation(line: 383, column: 3, scope: !5184)
!5193 = !DILocation(line: 385, column: 39, scope: !5184)
!5194 = !DILocation(line: 385, column: 44, scope: !5184)
!5195 = !DILocation(line: 385, column: 10, scope: !5184)
!5196 = !DILocation(line: 385, column: 7, scope: !5184)
!5197 = !DILocation(line: 387, column: 6, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 387, column: 6)
!5199 = !DILocation(line: 387, column: 6, scope: !5120)
!5200 = !DILocation(line: 388, column: 3, scope: !5198)
!5201 = !DILocation(line: 394, column: 2, scope: !5120)
!5202 = !DILocation(line: 395, column: 1, scope: !5120)
!5203 = distinct !DISubprogram(name: "dio200_subdev_intr_cmd", scope: !3, file: !3, line: 397, type: !3944, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5204 = !DILocalVariable(name: "lock", arg: 1, scope: !5205, file: !4370, line: 407, type: !1133)
!5205 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4370, file: !4370, line: 407, type: !5206, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{null, !1133, !142}
!5208 = !DILocation(line: 407, column: 64, scope: !5205, inlinedAt: !5209)
!5209 = distinct !DILocation(line: 413, column: 2, scope: !5203)
!5210 = !DILocalVariable(name: "flags", arg: 2, scope: !5205, file: !4370, line: 407, type: !142)
!5211 = !DILocation(line: 407, column: 84, scope: !5205, inlinedAt: !5209)
!5212 = !DILocation(line: 327, column: 67, scope: !4369, inlinedAt: !5213)
!5213 = distinct !DILocation(line: 404, column: 2, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 404, column: 2)
!5215 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 404, column: 2)
!5216 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 404, column: 2)
!5217 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 404, column: 2)
!5218 = distinct !DILexicalBlock(scope: !5203, file: !3, line: 404, column: 2)
!5219 = !DILocalVariable(name: "dev", arg: 1, scope: !5203, file: !3, line: 397, type: !195)
!5220 = !DILocation(line: 397, column: 57, scope: !5203)
!5221 = !DILocalVariable(name: "s", arg: 2, scope: !5203, file: !3, line: 398, type: !264)
!5222 = !DILocation(line: 398, column: 32, scope: !5203)
!5223 = !DILocalVariable(name: "cmd", scope: !5203, file: !3, line: 400, type: !3950)
!5224 = !DILocation(line: 400, column: 21, scope: !5203)
!5225 = !DILocation(line: 400, column: 28, scope: !5203)
!5226 = !DILocation(line: 400, column: 31, scope: !5203)
!5227 = !DILocation(line: 400, column: 38, scope: !5203)
!5228 = !DILocalVariable(name: "subpriv", scope: !5203, file: !3, line: 401, type: !4390)
!5229 = !DILocation(line: 401, column: 29, scope: !5203)
!5230 = !DILocation(line: 401, column: 39, scope: !5203)
!5231 = !DILocation(line: 401, column: 42, scope: !5203)
!5232 = !DILocalVariable(name: "flags", scope: !5203, file: !3, line: 402, type: !142)
!5233 = !DILocation(line: 402, column: 16, scope: !5203)
!5234 = !DILocation(line: 404, column: 2, scope: !5203)
!5235 = !DILocation(line: 404, column: 2, scope: !5218)
!5236 = !DILocalVariable(name: "__dummy", scope: !5237, file: !3, line: 404, type: !142)
!5237 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 404, column: 2)
!5238 = !DILocation(line: 404, column: 2, scope: !5237)
!5239 = !DILocalVariable(name: "__dummy2", scope: !5237, file: !3, line: 404, type: !142)
!5240 = !DILocation(line: 404, column: 2, scope: !5217)
!5241 = !DILocation(line: 404, column: 2, scope: !5216)
!5242 = !DILocation(line: 404, column: 2, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 404, column: 2)
!5244 = !DILocalVariable(name: "__dummy", scope: !5245, file: !3, line: 404, type: !142)
!5245 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 404, column: 2)
!5246 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 404, column: 2)
!5247 = !DILocation(line: 404, column: 2, scope: !5245)
!5248 = !DILocalVariable(name: "__dummy2", scope: !5245, file: !3, line: 404, type: !142)
!5249 = !DILocation(line: 404, column: 2, scope: !5246)
!5250 = !DILocation(line: 404, column: 2, scope: !5215)
!5251 = !{i32 -2141994545}
!5252 = !DILocation(line: 404, column: 2, scope: !5214)
!5253 = !DILocation(line: 329, column: 10, scope: !4369, inlinedAt: !5213)
!5254 = !DILocation(line: 329, column: 16, scope: !4369, inlinedAt: !5213)
!5255 = !DILocation(line: 406, column: 2, scope: !5203)
!5256 = !DILocation(line: 406, column: 11, scope: !5203)
!5257 = !DILocation(line: 406, column: 18, scope: !5203)
!5258 = !DILocation(line: 408, column: 6, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5203, file: !3, line: 408, column: 6)
!5260 = !DILocation(line: 408, column: 11, scope: !5259)
!5261 = !DILocation(line: 408, column: 21, scope: !5259)
!5262 = !DILocation(line: 408, column: 6, scope: !5203)
!5263 = !DILocation(line: 409, column: 3, scope: !5259)
!5264 = !DILocation(line: 409, column: 6, scope: !5259)
!5265 = !DILocation(line: 409, column: 13, scope: !5259)
!5266 = !DILocation(line: 409, column: 21, scope: !5259)
!5267 = !DILocation(line: 411, column: 21, scope: !5259)
!5268 = !DILocation(line: 411, column: 26, scope: !5259)
!5269 = !DILocation(line: 411, column: 3, scope: !5259)
!5270 = !DILocation(line: 413, column: 26, scope: !5203)
!5271 = !DILocation(line: 413, column: 35, scope: !5203)
!5272 = !DILocation(line: 413, column: 45, scope: !5203)
!5273 = !DILocalVariable(name: "__dummy", scope: !5274, file: !4370, line: 409, type: !142)
!5274 = distinct !DILexicalBlock(scope: !5275, file: !4370, line: 409, column: 2)
!5275 = distinct !DILexicalBlock(scope: !5205, file: !4370, line: 409, column: 2)
!5276 = !DILocation(line: 409, column: 2, scope: !5274, inlinedAt: !5209)
!5277 = !DILocalVariable(name: "__dummy2", scope: !5274, file: !4370, line: 409, type: !142)
!5278 = !DILocalVariable(name: "__dummy", scope: !5279, file: !4370, line: 409, type: !142)
!5279 = distinct !DILexicalBlock(scope: !5280, file: !4370, line: 409, column: 2)
!5280 = distinct !DILexicalBlock(scope: !5281, file: !4370, line: 409, column: 2)
!5281 = distinct !DILexicalBlock(scope: !5282, file: !4370, line: 409, column: 2)
!5282 = distinct !DILexicalBlock(scope: !5275, file: !4370, line: 409, column: 2)
!5283 = !DILocation(line: 409, column: 2, scope: !5279, inlinedAt: !5209)
!5284 = !DILocalVariable(name: "__dummy2", scope: !5279, file: !4370, line: 409, type: !142)
!5285 = !DILocation(line: 409, column: 2, scope: !5280, inlinedAt: !5209)
!5286 = !DILocation(line: 409, column: 2, scope: !5287, inlinedAt: !5209)
!5287 = distinct !DILexicalBlock(scope: !5282, file: !4370, line: 409, column: 2)
!5288 = !{i32 -2145455723}
!5289 = !DILocation(line: 409, column: 2, scope: !5290, inlinedAt: !5209)
!5290 = distinct !DILexicalBlock(scope: !5287, file: !4370, line: 409, column: 2)
!5291 = !DILocation(line: 415, column: 2, scope: !5203)
!5292 = distinct !DISubprogram(name: "dio200_subdev_intr_cancel", scope: !3, file: !3, line: 332, type: !3944, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5293 = !DILocation(line: 407, column: 64, scope: !5205, inlinedAt: !5294)
!5294 = distinct !DILocation(line: 342, column: 2, scope: !5292)
!5295 = !DILocation(line: 407, column: 84, scope: !5205, inlinedAt: !5294)
!5296 = !DILocation(line: 327, column: 67, scope: !4369, inlinedAt: !5297)
!5297 = distinct !DILocation(line: 338, column: 2, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 338, column: 2)
!5299 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 338, column: 2)
!5300 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 338, column: 2)
!5301 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 338, column: 2)
!5302 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 338, column: 2)
!5303 = !DILocalVariable(name: "dev", arg: 1, scope: !5292, file: !3, line: 332, type: !195)
!5304 = !DILocation(line: 332, column: 60, scope: !5292)
!5305 = !DILocalVariable(name: "s", arg: 2, scope: !5292, file: !3, line: 333, type: !264)
!5306 = !DILocation(line: 333, column: 35, scope: !5292)
!5307 = !DILocalVariable(name: "subpriv", scope: !5292, file: !3, line: 335, type: !4390)
!5308 = !DILocation(line: 335, column: 29, scope: !5292)
!5309 = !DILocation(line: 335, column: 39, scope: !5292)
!5310 = !DILocation(line: 335, column: 42, scope: !5292)
!5311 = !DILocalVariable(name: "flags", scope: !5292, file: !3, line: 336, type: !142)
!5312 = !DILocation(line: 336, column: 16, scope: !5292)
!5313 = !DILocation(line: 338, column: 2, scope: !5292)
!5314 = !DILocation(line: 338, column: 2, scope: !5302)
!5315 = !DILocalVariable(name: "__dummy", scope: !5316, file: !3, line: 338, type: !142)
!5316 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 338, column: 2)
!5317 = !DILocation(line: 338, column: 2, scope: !5316)
!5318 = !DILocalVariable(name: "__dummy2", scope: !5316, file: !3, line: 338, type: !142)
!5319 = !DILocation(line: 338, column: 2, scope: !5301)
!5320 = !DILocation(line: 338, column: 2, scope: !5300)
!5321 = !DILocation(line: 338, column: 2, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 338, column: 2)
!5323 = !DILocalVariable(name: "__dummy", scope: !5324, file: !3, line: 338, type: !142)
!5324 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 338, column: 2)
!5325 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 338, column: 2)
!5326 = !DILocation(line: 338, column: 2, scope: !5324)
!5327 = !DILocalVariable(name: "__dummy2", scope: !5324, file: !3, line: 338, type: !142)
!5328 = !DILocation(line: 338, column: 2, scope: !5325)
!5329 = !DILocation(line: 338, column: 2, scope: !5299)
!5330 = !{i32 -2141995701}
!5331 = !DILocation(line: 338, column: 2, scope: !5298)
!5332 = !DILocation(line: 329, column: 10, scope: !4369, inlinedAt: !5297)
!5333 = !DILocation(line: 329, column: 16, scope: !4369, inlinedAt: !5297)
!5334 = !DILocation(line: 339, column: 6, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 339, column: 6)
!5336 = !DILocation(line: 339, column: 15, scope: !5335)
!5337 = !DILocation(line: 339, column: 6, scope: !5292)
!5338 = !DILocation(line: 340, column: 20, scope: !5335)
!5339 = !DILocation(line: 340, column: 25, scope: !5335)
!5340 = !DILocation(line: 340, column: 3, scope: !5335)
!5341 = !DILocation(line: 342, column: 26, scope: !5292)
!5342 = !DILocation(line: 342, column: 35, scope: !5292)
!5343 = !DILocation(line: 342, column: 45, scope: !5292)
!5344 = !DILocation(line: 409, column: 2, scope: !5274, inlinedAt: !5294)
!5345 = !DILocation(line: 409, column: 2, scope: !5279, inlinedAt: !5294)
!5346 = !DILocation(line: 409, column: 2, scope: !5280, inlinedAt: !5294)
!5347 = !DILocation(line: 409, column: 2, scope: !5287, inlinedAt: !5294)
!5348 = !DILocation(line: 409, column: 2, scope: !5290, inlinedAt: !5294)
!5349 = !DILocation(line: 344, column: 2, scope: !5292)
!5350 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !128, file: !128, line: 859, type: !5351, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!145, !2748, !7}
!5353 = !DILocalVariable(name: "src", arg: 1, scope: !5350, file: !128, line: 859, type: !2748)
!5354 = !DILocation(line: 859, column: 58, scope: !5350)
!5355 = !DILocalVariable(name: "flags", arg: 2, scope: !5350, file: !128, line: 860, type: !7)
!5356 = !DILocation(line: 860, column: 22, scope: !5350)
!5357 = !DILocalVariable(name: "orig_src", scope: !5350, file: !128, line: 862, type: !7)
!5358 = !DILocation(line: 862, column: 15, scope: !5350)
!5359 = !DILocation(line: 862, column: 27, scope: !5350)
!5360 = !DILocation(line: 862, column: 26, scope: !5350)
!5361 = !DILocation(line: 864, column: 9, scope: !5350)
!5362 = !DILocation(line: 864, column: 20, scope: !5350)
!5363 = !DILocation(line: 864, column: 18, scope: !5350)
!5364 = !DILocation(line: 864, column: 3, scope: !5350)
!5365 = !DILocation(line: 864, column: 7, scope: !5350)
!5366 = !DILocation(line: 865, column: 7, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5350, file: !128, line: 865, column: 6)
!5368 = !DILocation(line: 865, column: 6, scope: !5367)
!5369 = !DILocation(line: 865, column: 11, scope: !5367)
!5370 = !DILocation(line: 865, column: 27, scope: !5367)
!5371 = !DILocation(line: 865, column: 31, scope: !5367)
!5372 = !DILocation(line: 865, column: 30, scope: !5367)
!5373 = !DILocation(line: 865, column: 38, scope: !5367)
!5374 = !DILocation(line: 865, column: 35, scope: !5367)
!5375 = !DILocation(line: 865, column: 6, scope: !5350)
!5376 = !DILocation(line: 866, column: 3, scope: !5367)
!5377 = !DILocation(line: 867, column: 2, scope: !5350)
!5378 = !DILocation(line: 868, column: 1, scope: !5350)
!5379 = distinct !DISubprogram(name: "comedi_check_trigger_is_unique", scope: !128, file: !128, line: 878, type: !5380, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5380 = !DISubroutineType(types: !5381)
!5381 = !{!145, !7}
!5382 = !DILocalVariable(name: "src", arg: 1, scope: !5379, file: !128, line: 878, type: !7)
!5383 = !DILocation(line: 878, column: 63, scope: !5379)
!5384 = !DILocation(line: 881, column: 7, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5379, file: !128, line: 881, column: 6)
!5386 = !DILocation(line: 881, column: 14, scope: !5385)
!5387 = !DILocation(line: 881, column: 18, scope: !5385)
!5388 = !DILocation(line: 881, column: 11, scope: !5385)
!5389 = !DILocation(line: 881, column: 24, scope: !5385)
!5390 = !DILocation(line: 881, column: 6, scope: !5379)
!5391 = !DILocation(line: 882, column: 3, scope: !5385)
!5392 = !DILocation(line: 883, column: 2, scope: !5379)
!5393 = !DILocation(line: 884, column: 1, scope: !5379)
!5394 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !128, file: !128, line: 897, type: !5351, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5395 = !DILocalVariable(name: "arg", arg: 1, scope: !5394, file: !128, line: 897, type: !2748)
!5396 = !DILocation(line: 897, column: 61, scope: !5394)
!5397 = !DILocalVariable(name: "val", arg: 2, scope: !5394, file: !128, line: 898, type: !7)
!5398 = !DILocation(line: 898, column: 25, scope: !5394)
!5399 = !DILocation(line: 900, column: 7, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5394, file: !128, line: 900, column: 6)
!5401 = !DILocation(line: 900, column: 6, scope: !5400)
!5402 = !DILocation(line: 900, column: 14, scope: !5400)
!5403 = !DILocation(line: 900, column: 11, scope: !5400)
!5404 = !DILocation(line: 900, column: 6, scope: !5394)
!5405 = !DILocation(line: 901, column: 10, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5400, file: !128, line: 900, column: 19)
!5407 = !DILocation(line: 901, column: 4, scope: !5406)
!5408 = !DILocation(line: 901, column: 8, scope: !5406)
!5409 = !DILocation(line: 902, column: 3, scope: !5406)
!5410 = !DILocation(line: 904, column: 2, scope: !5394)
!5411 = !DILocation(line: 905, column: 1, scope: !5394)
!5412 = distinct !DISubprogram(name: "comedi_check_trigger_arg_min", scope: !128, file: !128, line: 918, type: !5351, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5413 = !DILocalVariable(name: "arg", arg: 1, scope: !5412, file: !128, line: 918, type: !2748)
!5414 = !DILocation(line: 918, column: 62, scope: !5412)
!5415 = !DILocalVariable(name: "val", arg: 2, scope: !5412, file: !128, line: 919, type: !7)
!5416 = !DILocation(line: 919, column: 26, scope: !5412)
!5417 = !DILocation(line: 921, column: 7, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5412, file: !128, line: 921, column: 6)
!5419 = !DILocation(line: 921, column: 6, scope: !5418)
!5420 = !DILocation(line: 921, column: 13, scope: !5418)
!5421 = !DILocation(line: 921, column: 11, scope: !5418)
!5422 = !DILocation(line: 921, column: 6, scope: !5412)
!5423 = !DILocation(line: 922, column: 10, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5418, file: !128, line: 921, column: 18)
!5425 = !DILocation(line: 922, column: 4, scope: !5424)
!5426 = !DILocation(line: 922, column: 8, scope: !5424)
!5427 = !DILocation(line: 923, column: 3, scope: !5424)
!5428 = !DILocation(line: 925, column: 2, scope: !5412)
!5429 = !DILocation(line: 926, column: 1, scope: !5412)
!5430 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5431, file: !5431, line: 666, type: !5432, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5431 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!142}
!5434 = !DILocalVariable(name: "f", scope: !5430, file: !5431, line: 668, type: !142)
!5435 = !DILocation(line: 668, column: 16, scope: !5430)
!5436 = !DILocation(line: 670, column: 6, scope: !5430)
!5437 = !DILocation(line: 670, column: 4, scope: !5430)
!5438 = !DILocation(line: 671, column: 2, scope: !5430)
!5439 = !DILocation(line: 672, column: 9, scope: !5430)
!5440 = !DILocation(line: 672, column: 2, scope: !5430)
!5441 = distinct !DISubprogram(name: "dio200_inttrig_start_intr", scope: !3, file: !3, line: 218, type: !3911, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5442 = !DILocation(line: 407, column: 64, scope: !5205, inlinedAt: !5443)
!5443 = distinct !DILocation(line: 234, column: 2, scope: !5441)
!5444 = !DILocation(line: 407, column: 84, scope: !5205, inlinedAt: !5443)
!5445 = !DILocation(line: 327, column: 67, scope: !4369, inlinedAt: !5446)
!5446 = distinct !DILocation(line: 229, column: 2, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5448, file: !3, line: 229, column: 2)
!5448 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 229, column: 2)
!5449 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 229, column: 2)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 229, column: 2)
!5451 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 229, column: 2)
!5452 = !DILocalVariable(name: "dev", arg: 1, scope: !5441, file: !3, line: 218, type: !195)
!5453 = !DILocation(line: 218, column: 60, scope: !5441)
!5454 = !DILocalVariable(name: "s", arg: 2, scope: !5441, file: !3, line: 219, type: !264)
!5455 = !DILocation(line: 219, column: 35, scope: !5441)
!5456 = !DILocalVariable(name: "trig_num", arg: 3, scope: !5441, file: !3, line: 220, type: !7)
!5457 = !DILocation(line: 220, column: 23, scope: !5441)
!5458 = !DILocalVariable(name: "subpriv", scope: !5441, file: !3, line: 222, type: !4390)
!5459 = !DILocation(line: 222, column: 29, scope: !5441)
!5460 = !DILocation(line: 222, column: 39, scope: !5441)
!5461 = !DILocation(line: 222, column: 42, scope: !5441)
!5462 = !DILocalVariable(name: "cmd", scope: !5441, file: !3, line: 223, type: !3950)
!5463 = !DILocation(line: 223, column: 21, scope: !5441)
!5464 = !DILocation(line: 223, column: 28, scope: !5441)
!5465 = !DILocation(line: 223, column: 31, scope: !5441)
!5466 = !DILocation(line: 223, column: 38, scope: !5441)
!5467 = !DILocalVariable(name: "flags", scope: !5441, file: !3, line: 224, type: !142)
!5468 = !DILocation(line: 224, column: 16, scope: !5441)
!5469 = !DILocation(line: 226, column: 6, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 226, column: 6)
!5471 = !DILocation(line: 226, column: 18, scope: !5470)
!5472 = !DILocation(line: 226, column: 23, scope: !5470)
!5473 = !DILocation(line: 226, column: 15, scope: !5470)
!5474 = !DILocation(line: 226, column: 6, scope: !5441)
!5475 = !DILocation(line: 227, column: 3, scope: !5470)
!5476 = !DILocation(line: 229, column: 2, scope: !5441)
!5477 = !DILocation(line: 229, column: 2, scope: !5451)
!5478 = !DILocalVariable(name: "__dummy", scope: !5479, file: !3, line: 229, type: !142)
!5479 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 229, column: 2)
!5480 = !DILocation(line: 229, column: 2, scope: !5479)
!5481 = !DILocalVariable(name: "__dummy2", scope: !5479, file: !3, line: 229, type: !142)
!5482 = !DILocation(line: 229, column: 2, scope: !5450)
!5483 = !DILocation(line: 229, column: 2, scope: !5449)
!5484 = !DILocation(line: 229, column: 2, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 229, column: 2)
!5486 = !DILocalVariable(name: "__dummy", scope: !5487, file: !3, line: 229, type: !142)
!5487 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 229, column: 2)
!5488 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 229, column: 2)
!5489 = !DILocation(line: 229, column: 2, scope: !5487)
!5490 = !DILocalVariable(name: "__dummy2", scope: !5487, file: !3, line: 229, type: !142)
!5491 = !DILocation(line: 229, column: 2, scope: !5488)
!5492 = !DILocation(line: 229, column: 2, scope: !5448)
!5493 = !{i32 -2141997892}
!5494 = !DILocation(line: 229, column: 2, scope: !5447)
!5495 = !DILocation(line: 329, column: 10, scope: !4369, inlinedAt: !5446)
!5496 = !DILocation(line: 329, column: 16, scope: !4369, inlinedAt: !5446)
!5497 = !DILocation(line: 230, column: 2, scope: !5441)
!5498 = !DILocation(line: 230, column: 5, scope: !5441)
!5499 = !DILocation(line: 230, column: 12, scope: !5441)
!5500 = !DILocation(line: 230, column: 20, scope: !5441)
!5501 = !DILocation(line: 231, column: 6, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 231, column: 6)
!5503 = !DILocation(line: 231, column: 15, scope: !5502)
!5504 = !DILocation(line: 231, column: 6, scope: !5441)
!5505 = !DILocation(line: 232, column: 21, scope: !5502)
!5506 = !DILocation(line: 232, column: 26, scope: !5502)
!5507 = !DILocation(line: 232, column: 3, scope: !5502)
!5508 = !DILocation(line: 234, column: 26, scope: !5441)
!5509 = !DILocation(line: 234, column: 35, scope: !5441)
!5510 = !DILocation(line: 234, column: 45, scope: !5441)
!5511 = !DILocation(line: 409, column: 2, scope: !5274, inlinedAt: !5443)
!5512 = !DILocation(line: 409, column: 2, scope: !5279, inlinedAt: !5443)
!5513 = !DILocation(line: 409, column: 2, scope: !5280, inlinedAt: !5443)
!5514 = !DILocation(line: 409, column: 2, scope: !5287, inlinedAt: !5443)
!5515 = !DILocation(line: 409, column: 2, scope: !5290, inlinedAt: !5443)
!5516 = !DILocation(line: 236, column: 2, scope: !5441)
!5517 = !DILocation(line: 237, column: 1, scope: !5441)
!5518 = distinct !DISubprogram(name: "dio200_start_intr", scope: !3, file: !3, line: 196, type: !4984, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5519 = !DILocalVariable(name: "dev", arg: 1, scope: !5518, file: !3, line: 196, type: !195)
!5520 = !DILocation(line: 196, column: 53, scope: !5518)
!5521 = !DILocalVariable(name: "s", arg: 2, scope: !5518, file: !3, line: 197, type: !264)
!5522 = !DILocation(line: 197, column: 35, scope: !5518)
!5523 = !DILocalVariable(name: "board", scope: !5518, file: !3, line: 199, type: !4025)
!5524 = !DILocation(line: 199, column: 29, scope: !5518)
!5525 = !DILocation(line: 199, column: 37, scope: !5518)
!5526 = !DILocation(line: 199, column: 42, scope: !5518)
!5527 = !DILocalVariable(name: "subpriv", scope: !5518, file: !3, line: 200, type: !4390)
!5528 = !DILocation(line: 200, column: 29, scope: !5518)
!5529 = !DILocation(line: 200, column: 39, scope: !5518)
!5530 = !DILocation(line: 200, column: 42, scope: !5518)
!5531 = !DILocalVariable(name: "cmd", scope: !5518, file: !3, line: 201, type: !3950)
!5532 = !DILocation(line: 201, column: 21, scope: !5518)
!5533 = !DILocation(line: 201, column: 28, scope: !5518)
!5534 = !DILocation(line: 201, column: 31, scope: !5518)
!5535 = !DILocation(line: 201, column: 38, scope: !5518)
!5536 = !DILocalVariable(name: "n", scope: !5518, file: !3, line: 202, type: !7)
!5537 = !DILocation(line: 202, column: 15, scope: !5518)
!5538 = !DILocalVariable(name: "isn_bits", scope: !5518, file: !3, line: 203, type: !7)
!5539 = !DILocation(line: 203, column: 15, scope: !5518)
!5540 = !DILocation(line: 206, column: 11, scope: !5518)
!5541 = !DILocation(line: 207, column: 6, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 207, column: 6)
!5543 = !DILocation(line: 207, column: 11, scope: !5542)
!5544 = !DILocation(line: 207, column: 6, scope: !5518)
!5545 = !DILocation(line: 208, column: 10, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 208, column: 3)
!5547 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 207, column: 21)
!5548 = !DILocation(line: 208, column: 8, scope: !5546)
!5549 = !DILocation(line: 208, column: 15, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 208, column: 3)
!5551 = !DILocation(line: 208, column: 19, scope: !5550)
!5552 = !DILocation(line: 208, column: 24, scope: !5550)
!5553 = !DILocation(line: 208, column: 17, scope: !5550)
!5554 = !DILocation(line: 208, column: 3, scope: !5546)
!5555 = !DILocation(line: 209, column: 23, scope: !5550)
!5556 = !DILocation(line: 209, column: 20, scope: !5550)
!5557 = !DILocation(line: 209, column: 13, scope: !5550)
!5558 = !DILocation(line: 209, column: 4, scope: !5550)
!5559 = !DILocation(line: 208, column: 39, scope: !5550)
!5560 = !DILocation(line: 208, column: 3, scope: !5550)
!5561 = distinct !{!5561, !5554, !5562}
!5562 = !DILocation(line: 209, column: 48, scope: !5546)
!5563 = !DILocation(line: 210, column: 2, scope: !5547)
!5564 = !DILocation(line: 211, column: 14, scope: !5518)
!5565 = !DILocation(line: 211, column: 23, scope: !5518)
!5566 = !DILocation(line: 211, column: 11, scope: !5518)
!5567 = !DILocation(line: 213, column: 26, scope: !5518)
!5568 = !DILocation(line: 213, column: 2, scope: !5518)
!5569 = !DILocation(line: 213, column: 11, scope: !5518)
!5570 = !DILocation(line: 213, column: 24, scope: !5518)
!5571 = !DILocation(line: 214, column: 6, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 214, column: 6)
!5573 = !DILocation(line: 214, column: 13, scope: !5572)
!5574 = !DILocation(line: 214, column: 6, scope: !5518)
!5575 = !DILocation(line: 215, column: 17, scope: !5572)
!5576 = !DILocation(line: 215, column: 22, scope: !5572)
!5577 = !DILocation(line: 215, column: 31, scope: !5572)
!5578 = !DILocation(line: 215, column: 36, scope: !5572)
!5579 = !DILocation(line: 215, column: 3, scope: !5572)
!5580 = !DILocation(line: 216, column: 1, scope: !5518)
!5581 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5431, file: !5431, line: 646, type: !5432, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5582 = !DILocalVariable(name: "__ret", scope: !5583, file: !5431, line: 648, type: !142)
!5583 = distinct !DILexicalBlock(scope: !5581, file: !5431, line: 648, column: 9)
!5584 = !DILocation(line: 648, column: 9, scope: !5583)
!5585 = !DILocalVariable(name: "__edi", scope: !5583, file: !5431, line: 648, type: !142)
!5586 = !DILocalVariable(name: "__esi", scope: !5583, file: !5431, line: 648, type: !142)
!5587 = !DILocalVariable(name: "__edx", scope: !5583, file: !5431, line: 648, type: !142)
!5588 = !DILocalVariable(name: "__ecx", scope: !5583, file: !5431, line: 648, type: !142)
!5589 = !DILocalVariable(name: "__eax", scope: !5583, file: !5431, line: 648, type: !142)
!5590 = !DILocation(line: 648, column: 9, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5592, file: !5431, line: 648, column: 9)
!5592 = distinct !DILexicalBlock(scope: !5583, file: !5431, line: 648, column: 9)
!5593 = !{i32 -2145769292, i32 -2145766977, i32 -2145766743, i32 -2145766692, i32 -2145766664, i32 -2145766639, i32 -2145766955, i32 -2145766942, i32 -2145766504, i32 -2145766385, i32 -2145766850, i32 -2145766823, i32 -2145766795, i32 -2145766765}
!5594 = !DILocalVariable(name: "__mask", scope: !5595, file: !5431, line: 648, type: !142)
!5595 = distinct !DILexicalBlock(scope: !5591, file: !5431, line: 648, column: 9)
!5596 = !DILocation(line: 648, column: 9, scope: !5595)
!5597 = !DILocation(line: 648, column: 9, scope: !5592)
!5598 = !DILocation(line: 648, column: 2, scope: !5581)
!5599 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5431, file: !5431, line: 656, type: !152, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5600 = !DILocalVariable(name: "__edi", scope: !5601, file: !5431, line: 658, type: !142)
!5601 = distinct !DILexicalBlock(scope: !5599, file: !5431, line: 658, column: 2)
!5602 = !DILocation(line: 658, column: 2, scope: !5601)
!5603 = !DILocalVariable(name: "__esi", scope: !5601, file: !5431, line: 658, type: !142)
!5604 = !DILocalVariable(name: "__edx", scope: !5601, file: !5431, line: 658, type: !142)
!5605 = !DILocalVariable(name: "__ecx", scope: !5601, file: !5431, line: 658, type: !142)
!5606 = !DILocalVariable(name: "__eax", scope: !5601, file: !5431, line: 658, type: !142)
!5607 = !{i32 -2145762198, i32 -2145761466, i32 -2145761232, i32 -2145761181, i32 -2145761153, i32 -2145761128, i32 -2145761444, i32 -2145761431, i32 -2145760993, i32 -2145760874, i32 -2145761339, i32 -2145761312, i32 -2145761284, i32 -2145761254}
!5608 = !DILocation(line: 659, column: 1, scope: !5599)
!5609 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5431, file: !5431, line: 651, type: !5610, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{null, !142}
!5612 = !DILocalVariable(name: "f", arg: 1, scope: !5609, file: !5431, line: 651, type: !142)
!5613 = !DILocation(line: 651, column: 65, scope: !5609)
!5614 = !DILocalVariable(name: "__edi", scope: !5615, file: !5431, line: 653, type: !142)
!5615 = distinct !DILexicalBlock(scope: !5609, file: !5431, line: 653, column: 2)
!5616 = !DILocation(line: 653, column: 2, scope: !5615)
!5617 = !DILocalVariable(name: "__esi", scope: !5615, file: !5431, line: 653, type: !142)
!5618 = !DILocalVariable(name: "__edx", scope: !5615, file: !5431, line: 653, type: !142)
!5619 = !DILocalVariable(name: "__ecx", scope: !5615, file: !5431, line: 653, type: !142)
!5620 = !DILocalVariable(name: "__eax", scope: !5615, file: !5431, line: 653, type: !142)
!5621 = !{i32 -2145764825, i32 -2145764075, i32 -2145763841, i32 -2145763790, i32 -2145763762, i32 -2145763737, i32 -2145764053, i32 -2145764040, i32 -2145763602, i32 -2145763483, i32 -2145763948, i32 -2145763921, i32 -2145763893, i32 -2145763863}
!5622 = !DILocation(line: 654, column: 1, scope: !5609)
!5623 = distinct !DISubprogram(name: "dio200_stop_intr", scope: !3, file: !3, line: 184, type: !4984, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5624 = !DILocalVariable(name: "dev", arg: 1, scope: !5623, file: !3, line: 184, type: !195)
!5625 = !DILocation(line: 184, column: 52, scope: !5623)
!5626 = !DILocalVariable(name: "s", arg: 2, scope: !5623, file: !3, line: 185, type: !264)
!5627 = !DILocation(line: 185, column: 34, scope: !5623)
!5628 = !DILocalVariable(name: "board", scope: !5623, file: !3, line: 187, type: !4025)
!5629 = !DILocation(line: 187, column: 29, scope: !5623)
!5630 = !DILocation(line: 187, column: 37, scope: !5623)
!5631 = !DILocation(line: 187, column: 42, scope: !5623)
!5632 = !DILocalVariable(name: "subpriv", scope: !5623, file: !3, line: 188, type: !4390)
!5633 = !DILocation(line: 188, column: 29, scope: !5623)
!5634 = !DILocation(line: 188, column: 39, scope: !5623)
!5635 = !DILocation(line: 188, column: 42, scope: !5623)
!5636 = !DILocation(line: 190, column: 2, scope: !5623)
!5637 = !DILocation(line: 190, column: 11, scope: !5623)
!5638 = !DILocation(line: 190, column: 18, scope: !5623)
!5639 = !DILocation(line: 191, column: 2, scope: !5623)
!5640 = !DILocation(line: 191, column: 11, scope: !5623)
!5641 = !DILocation(line: 191, column: 24, scope: !5623)
!5642 = !DILocation(line: 192, column: 6, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 192, column: 6)
!5644 = !DILocation(line: 192, column: 13, scope: !5643)
!5645 = !DILocation(line: 192, column: 6, scope: !5623)
!5646 = !DILocation(line: 193, column: 17, scope: !5643)
!5647 = !DILocation(line: 193, column: 22, scope: !5643)
!5648 = !DILocation(line: 193, column: 31, scope: !5643)
!5649 = !DILocation(line: 193, column: 3, scope: !5643)
!5650 = !DILocation(line: 194, column: 1, scope: !5623)
!5651 = distinct !DISubprogram(name: "dio200_read32", scope: !3, file: !3, line: 117, type: !5652, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5652 = !DISubroutineType(types: !5653)
!5653 = !{!7, !195, !7}
!5654 = !DILocalVariable(name: "dev", arg: 1, scope: !5651, file: !3, line: 117, type: !195)
!5655 = !DILocation(line: 117, column: 57, scope: !5651)
!5656 = !DILocalVariable(name: "offset", arg: 2, scope: !5651, file: !3, line: 118, type: !7)
!5657 = !DILocation(line: 118, column: 20, scope: !5651)
!5658 = !DILocalVariable(name: "board", scope: !5651, file: !3, line: 120, type: !4025)
!5659 = !DILocation(line: 120, column: 29, scope: !5651)
!5660 = !DILocation(line: 120, column: 37, scope: !5651)
!5661 = !DILocation(line: 120, column: 42, scope: !5651)
!5662 = !DILocation(line: 122, column: 6, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 122, column: 6)
!5664 = !DILocation(line: 122, column: 13, scope: !5663)
!5665 = !DILocation(line: 122, column: 6, scope: !5651)
!5666 = !DILocation(line: 123, column: 10, scope: !5663)
!5667 = !DILocation(line: 123, column: 3, scope: !5663)
!5668 = !DILocation(line: 125, column: 6, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 125, column: 6)
!5670 = !DILocation(line: 125, column: 11, scope: !5669)
!5671 = !DILocation(line: 125, column: 6, scope: !5651)
!5672 = !DILocation(line: 126, column: 16, scope: !5669)
!5673 = !DILocation(line: 126, column: 21, scope: !5669)
!5674 = !DILocation(line: 126, column: 28, scope: !5669)
!5675 = !DILocation(line: 126, column: 26, scope: !5669)
!5676 = !DILocation(line: 126, column: 10, scope: !5669)
!5677 = !DILocation(line: 126, column: 3, scope: !5669)
!5678 = !DILocation(line: 127, column: 13, scope: !5651)
!5679 = !DILocation(line: 127, column: 18, scope: !5651)
!5680 = !DILocation(line: 127, column: 27, scope: !5651)
!5681 = !DILocation(line: 127, column: 25, scope: !5651)
!5682 = !DILocation(line: 127, column: 9, scope: !5651)
!5683 = !DILocation(line: 127, column: 2, scope: !5651)
!5684 = !DILocation(line: 128, column: 1, scope: !5651)
!5685 = distinct !DISubprogram(name: "readl", scope: !4605, file: !4605, line: 59, type: !5686, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{!7, !5069}
!5688 = !DILocalVariable(name: "addr", arg: 1, scope: !5685, file: !4605, line: 59, type: !5069)
!5689 = !DILocation(line: 59, column: 1, scope: !5685)
!5690 = !DILocalVariable(name: "ret", scope: !5685, file: !4605, line: 59, type: !7)
!5691 = !{i32 -2142148929}
!5692 = distinct !DISubprogram(name: "inl", scope: !4605, file: !4605, line: 336, type: !5693, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{!7, !145}
!5695 = !DILocalVariable(name: "port", arg: 1, scope: !5692, file: !4605, line: 336, type: !145)
!5696 = !DILocation(line: 336, column: 1, scope: !5692)
!5697 = !DILocalVariable(name: "value", scope: !5692, file: !4605, line: 336, type: !7)
!5698 = !{i32 -2142130968}
!5699 = distinct !DISubprogram(name: "dio200_subdev_timer_reset", scope: !3, file: !3, line: 710, type: !4984, scopeLine: 712, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5700 = !DILocalVariable(name: "dev", arg: 1, scope: !5699, file: !3, line: 710, type: !195)
!5701 = !DILocation(line: 710, column: 61, scope: !5699)
!5702 = !DILocalVariable(name: "s", arg: 2, scope: !5699, file: !3, line: 711, type: !264)
!5703 = !DILocation(line: 711, column: 36, scope: !5699)
!5704 = !DILocalVariable(name: "clock", scope: !5699, file: !3, line: 713, type: !7)
!5705 = !DILocation(line: 713, column: 15, scope: !5699)
!5706 = !DILocation(line: 715, column: 24, scope: !5699)
!5707 = !DILocation(line: 715, column: 10, scope: !5699)
!5708 = !DILocation(line: 715, column: 47, scope: !5699)
!5709 = !DILocation(line: 715, column: 8, scope: !5699)
!5710 = !DILocation(line: 716, column: 17, scope: !5699)
!5711 = !DILocation(line: 716, column: 40, scope: !5699)
!5712 = !DILocation(line: 716, column: 46, scope: !5699)
!5713 = !DILocation(line: 716, column: 2, scope: !5699)
!5714 = !DILocation(line: 717, column: 17, scope: !5699)
!5715 = !DILocation(line: 717, column: 40, scope: !5699)
!5716 = !DILocation(line: 717, column: 2, scope: !5699)
!5717 = !DILocation(line: 718, column: 1, scope: !5699)
!5718 = distinct !DISubprogram(name: "dio200_subdev_timer_set_clock_src", scope: !3, file: !3, line: 733, type: !3911, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5719 = !DILocalVariable(name: "dev", arg: 1, scope: !5718, file: !3, line: 733, type: !195)
!5720 = !DILocation(line: 733, column: 68, scope: !5718)
!5721 = !DILocalVariable(name: "s", arg: 2, scope: !5718, file: !3, line: 734, type: !264)
!5722 = !DILocation(line: 734, column: 36, scope: !5718)
!5723 = !DILocalVariable(name: "src", arg: 3, scope: !5718, file: !3, line: 735, type: !7)
!5724 = !DILocation(line: 735, column: 24, scope: !5718)
!5725 = !DILocation(line: 737, column: 6, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 737, column: 6)
!5727 = !DILocation(line: 737, column: 10, scope: !5726)
!5728 = !DILocation(line: 737, column: 6, scope: !5718)
!5729 = !DILocation(line: 738, column: 3, scope: !5726)
!5730 = !DILocation(line: 739, column: 17, scope: !5718)
!5731 = !DILocation(line: 739, column: 40, scope: !5718)
!5732 = !DILocation(line: 739, column: 2, scope: !5718)
!5733 = !DILocation(line: 740, column: 2, scope: !5718)
!5734 = !DILocation(line: 741, column: 1, scope: !5718)
!5735 = distinct !DISubprogram(name: "dio200_subdev_timer_get_clock_src", scope: !3, file: !3, line: 720, type: !5736, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5736 = !DISubroutineType(types: !5737)
!5737 = !{null, !195, !264, !2748, !2748}
!5738 = !DILocalVariable(name: "dev", arg: 1, scope: !5735, file: !3, line: 720, type: !195)
!5739 = !DILocation(line: 720, column: 69, scope: !5735)
!5740 = !DILocalVariable(name: "s", arg: 2, scope: !5735, file: !3, line: 721, type: !264)
!5741 = !DILocation(line: 721, column: 37, scope: !5735)
!5742 = !DILocalVariable(name: "src", arg: 3, scope: !5735, file: !3, line: 722, type: !2748)
!5743 = !DILocation(line: 722, column: 26, scope: !5735)
!5744 = !DILocalVariable(name: "period", arg: 4, scope: !5735, file: !3, line: 723, type: !2748)
!5745 = !DILocation(line: 723, column: 26, scope: !5735)
!5746 = !DILocalVariable(name: "clk", scope: !5735, file: !3, line: 725, type: !7)
!5747 = !DILocation(line: 725, column: 15, scope: !5735)
!5748 = !DILocation(line: 727, column: 22, scope: !5735)
!5749 = !DILocation(line: 727, column: 8, scope: !5735)
!5750 = !DILocation(line: 727, column: 45, scope: !5735)
!5751 = !DILocation(line: 727, column: 6, scope: !5735)
!5752 = !DILocation(line: 728, column: 9, scope: !5735)
!5753 = !DILocation(line: 728, column: 3, scope: !5735)
!5754 = !DILocation(line: 728, column: 7, scope: !5735)
!5755 = !DILocation(line: 729, column: 13, scope: !5735)
!5756 = !DILocation(line: 729, column: 17, scope: !5735)
!5757 = !DILocation(line: 729, column: 12, scope: !5735)
!5758 = !DILocation(line: 730, column: 21, scope: !5735)
!5759 = !DILocation(line: 730, column: 5, scope: !5735)
!5760 = !DILocation(line: 729, column: 3, scope: !5735)
!5761 = !DILocation(line: 729, column: 10, scope: !5735)
!5762 = !DILocation(line: 731, column: 1, scope: !5735)
!5763 = distinct !DISubprogram(name: "dio200_write32", scope: !3, file: !3, line: 130, type: !5764, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5764 = !DISubroutineType(types: !5765)
!5765 = !{null, !195, !7, !7}
!5766 = !DILocalVariable(name: "dev", arg: 1, scope: !5763, file: !3, line: 130, type: !195)
!5767 = !DILocation(line: 130, column: 50, scope: !5763)
!5768 = !DILocalVariable(name: "offset", arg: 2, scope: !5763, file: !3, line: 131, type: !7)
!5769 = !DILocation(line: 131, column: 20, scope: !5763)
!5770 = !DILocalVariable(name: "val", arg: 3, scope: !5763, file: !3, line: 131, type: !7)
!5771 = !DILocation(line: 131, column: 41, scope: !5763)
!5772 = !DILocalVariable(name: "board", scope: !5763, file: !3, line: 133, type: !4025)
!5773 = !DILocation(line: 133, column: 29, scope: !5763)
!5774 = !DILocation(line: 133, column: 37, scope: !5763)
!5775 = !DILocation(line: 133, column: 42, scope: !5763)
!5776 = !DILocation(line: 135, column: 6, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 135, column: 6)
!5778 = !DILocation(line: 135, column: 13, scope: !5777)
!5779 = !DILocation(line: 135, column: 6, scope: !5763)
!5780 = !DILocation(line: 136, column: 10, scope: !5777)
!5781 = !DILocation(line: 136, column: 3, scope: !5777)
!5782 = !DILocation(line: 138, column: 6, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 138, column: 6)
!5784 = !DILocation(line: 138, column: 11, scope: !5783)
!5785 = !DILocation(line: 138, column: 6, scope: !5763)
!5786 = !DILocation(line: 139, column: 10, scope: !5783)
!5787 = !DILocation(line: 139, column: 15, scope: !5783)
!5788 = !DILocation(line: 139, column: 20, scope: !5783)
!5789 = !DILocation(line: 139, column: 27, scope: !5783)
!5790 = !DILocation(line: 139, column: 25, scope: !5783)
!5791 = !DILocation(line: 139, column: 3, scope: !5783)
!5792 = !DILocation(line: 141, column: 8, scope: !5783)
!5793 = !DILocation(line: 141, column: 13, scope: !5783)
!5794 = !DILocation(line: 141, column: 18, scope: !5783)
!5795 = !DILocation(line: 141, column: 27, scope: !5783)
!5796 = !DILocation(line: 141, column: 25, scope: !5783)
!5797 = !DILocation(line: 141, column: 3, scope: !5783)
!5798 = !DILocation(line: 142, column: 1, scope: !5763)
!5799 = distinct !DISubprogram(name: "writel", scope: !4605, file: !4605, line: 67, type: !5800, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5800 = !DISubroutineType(types: !5801)
!5801 = !{null, !7, !4608}
!5802 = !DILocalVariable(name: "val", arg: 1, scope: !5799, file: !4605, line: 67, type: !7)
!5803 = !DILocation(line: 67, column: 1, scope: !5799)
!5804 = !DILocalVariable(name: "addr", arg: 2, scope: !5799, file: !4605, line: 67, type: !4608)
!5805 = !{i32 -2142146536}
!5806 = distinct !DISubprogram(name: "outl", scope: !4605, file: !4605, line: 336, type: !5807, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5807 = !DISubroutineType(types: !5808)
!5808 = !{null, !7, !145}
!5809 = !DILocalVariable(name: "value", arg: 1, scope: !5806, file: !4605, line: 336, type: !7)
!5810 = !DILocation(line: 336, column: 1, scope: !5806)
!5811 = !DILocalVariable(name: "port", arg: 2, scope: !5806, file: !4605, line: 336, type: !145)
!5812 = !{i32 -2142131170}
!5813 = distinct !DISubprogram(name: "dio200_handle_read_intr", scope: !3, file: !3, line: 261, type: !3944, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5814 = !DILocation(line: 407, column: 64, scope: !5205, inlinedAt: !5815)
!5815 = distinct !DILocation(line: 325, column: 2, scope: !5813)
!5816 = !DILocation(line: 407, column: 84, scope: !5205, inlinedAt: !5815)
!5817 = !DILocation(line: 327, column: 67, scope: !4369, inlinedAt: !5818)
!5818 = distinct !DILocation(line: 273, column: 2, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 273, column: 2)
!5820 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 273, column: 2)
!5821 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 273, column: 2)
!5822 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 273, column: 2)
!5823 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 273, column: 2)
!5824 = !DILocalVariable(name: "dev", arg: 1, scope: !5813, file: !3, line: 261, type: !195)
!5825 = !DILocation(line: 261, column: 58, scope: !5813)
!5826 = !DILocalVariable(name: "s", arg: 2, scope: !5813, file: !3, line: 262, type: !264)
!5827 = !DILocation(line: 262, column: 33, scope: !5813)
!5828 = !DILocalVariable(name: "board", scope: !5813, file: !3, line: 264, type: !4025)
!5829 = !DILocation(line: 264, column: 29, scope: !5813)
!5830 = !DILocation(line: 264, column: 37, scope: !5813)
!5831 = !DILocation(line: 264, column: 42, scope: !5813)
!5832 = !DILocalVariable(name: "subpriv", scope: !5813, file: !3, line: 265, type: !4390)
!5833 = !DILocation(line: 265, column: 29, scope: !5813)
!5834 = !DILocation(line: 265, column: 39, scope: !5813)
!5835 = !DILocation(line: 265, column: 42, scope: !5813)
!5836 = !DILocalVariable(name: "triggered", scope: !5813, file: !3, line: 266, type: !7)
!5837 = !DILocation(line: 266, column: 15, scope: !5813)
!5838 = !DILocalVariable(name: "intstat", scope: !5813, file: !3, line: 267, type: !7)
!5839 = !DILocation(line: 267, column: 15, scope: !5813)
!5840 = !DILocalVariable(name: "cur_enabled", scope: !5813, file: !3, line: 268, type: !7)
!5841 = !DILocation(line: 268, column: 15, scope: !5813)
!5842 = !DILocalVariable(name: "flags", scope: !5813, file: !3, line: 269, type: !142)
!5843 = !DILocation(line: 269, column: 16, scope: !5813)
!5844 = !DILocation(line: 271, column: 12, scope: !5813)
!5845 = !DILocation(line: 273, column: 2, scope: !5813)
!5846 = !DILocation(line: 273, column: 2, scope: !5823)
!5847 = !DILocalVariable(name: "__dummy", scope: !5848, file: !3, line: 273, type: !142)
!5848 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 273, column: 2)
!5849 = !DILocation(line: 273, column: 2, scope: !5848)
!5850 = !DILocalVariable(name: "__dummy2", scope: !5848, file: !3, line: 273, type: !142)
!5851 = !DILocation(line: 273, column: 2, scope: !5822)
!5852 = !DILocation(line: 273, column: 2, scope: !5821)
!5853 = !DILocation(line: 273, column: 2, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 273, column: 2)
!5855 = !DILocalVariable(name: "__dummy", scope: !5856, file: !3, line: 273, type: !142)
!5856 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 273, column: 2)
!5857 = distinct !DILexicalBlock(scope: !5854, file: !3, line: 273, column: 2)
!5858 = !DILocation(line: 273, column: 2, scope: !5856)
!5859 = !DILocalVariable(name: "__dummy2", scope: !5856, file: !3, line: 273, type: !142)
!5860 = !DILocation(line: 273, column: 2, scope: !5857)
!5861 = !DILocation(line: 273, column: 2, scope: !5820)
!5862 = !{i32 -2141996769}
!5863 = !DILocation(line: 273, column: 2, scope: !5819)
!5864 = !DILocation(line: 329, column: 10, scope: !4369, inlinedAt: !5818)
!5865 = !DILocation(line: 329, column: 16, scope: !4369, inlinedAt: !5818)
!5866 = !DILocation(line: 274, column: 6, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 274, column: 6)
!5868 = !DILocation(line: 274, column: 13, scope: !5867)
!5869 = !DILocation(line: 274, column: 6, scope: !5813)
!5870 = !DILocation(line: 285, column: 17, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 274, column: 26)
!5872 = !DILocation(line: 285, column: 26, scope: !5871)
!5873 = !DILocation(line: 285, column: 15, scope: !5871)
!5874 = !DILocation(line: 286, column: 3, scope: !5871)
!5875 = !DILocation(line: 286, column: 35, scope: !5871)
!5876 = !DILocation(line: 286, column: 40, scope: !5871)
!5877 = !DILocation(line: 286, column: 49, scope: !5871)
!5878 = !DILocation(line: 286, column: 22, scope: !5871)
!5879 = !DILocation(line: 287, column: 8, scope: !5871)
!5880 = !DILocation(line: 287, column: 17, scope: !5871)
!5881 = !DILocation(line: 286, column: 54, scope: !5871)
!5882 = !DILocation(line: 287, column: 31, scope: !5871)
!5883 = !DILocation(line: 287, column: 30, scope: !5871)
!5884 = !DILocation(line: 287, column: 28, scope: !5871)
!5885 = !DILocation(line: 286, column: 19, scope: !5871)
!5886 = !DILocation(line: 287, column: 43, scope: !5871)
!5887 = !DILocation(line: 288, column: 17, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5871, file: !3, line: 287, column: 49)
!5889 = !DILocation(line: 288, column: 14, scope: !5888)
!5890 = !DILocation(line: 289, column: 20, scope: !5888)
!5891 = !DILocation(line: 289, column: 19, scope: !5888)
!5892 = !DILocation(line: 289, column: 16, scope: !5888)
!5893 = !DILocation(line: 290, column: 18, scope: !5888)
!5894 = !DILocation(line: 290, column: 23, scope: !5888)
!5895 = !DILocation(line: 290, column: 32, scope: !5888)
!5896 = !DILocation(line: 290, column: 37, scope: !5888)
!5897 = !DILocation(line: 290, column: 4, scope: !5888)
!5898 = distinct !{!5898, !5874, !5899}
!5899 = !DILocation(line: 291, column: 3, scope: !5871)
!5900 = !DILocation(line: 292, column: 2, scope: !5871)
!5901 = !DILocation(line: 297, column: 15, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 292, column: 9)
!5903 = !DILocation(line: 297, column: 24, scope: !5902)
!5904 = !DILocation(line: 297, column: 13, scope: !5902)
!5905 = !DILocation(line: 300, column: 6, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 300, column: 6)
!5907 = !DILocation(line: 300, column: 6, scope: !5813)
!5908 = !DILocation(line: 307, column: 17, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 300, column: 17)
!5910 = !DILocation(line: 307, column: 26, scope: !5909)
!5911 = !DILocation(line: 307, column: 15, scope: !5909)
!5912 = !DILocation(line: 308, column: 7, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 308, column: 7)
!5914 = !DILocation(line: 308, column: 14, scope: !5913)
!5915 = !DILocation(line: 308, column: 7, scope: !5909)
!5916 = !DILocation(line: 309, column: 18, scope: !5913)
!5917 = !DILocation(line: 309, column: 23, scope: !5913)
!5918 = !DILocation(line: 309, column: 32, scope: !5913)
!5919 = !DILocation(line: 309, column: 37, scope: !5913)
!5920 = !DILocation(line: 309, column: 4, scope: !5913)
!5921 = !DILocation(line: 311, column: 7, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 311, column: 7)
!5923 = !DILocation(line: 311, column: 16, scope: !5922)
!5924 = !DILocation(line: 311, column: 7, scope: !5909)
!5925 = !DILocation(line: 319, column: 8, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 319, column: 8)
!5927 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 311, column: 24)
!5928 = !DILocation(line: 319, column: 20, scope: !5926)
!5929 = !DILocation(line: 319, column: 29, scope: !5926)
!5930 = !DILocation(line: 319, column: 18, scope: !5926)
!5931 = !DILocation(line: 319, column: 8, scope: !5927)
!5932 = !DILocation(line: 321, column: 27, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 319, column: 43)
!5934 = !DILocation(line: 321, column: 32, scope: !5933)
!5935 = !DILocation(line: 321, column: 35, scope: !5933)
!5936 = !DILocation(line: 321, column: 5, scope: !5933)
!5937 = !DILocation(line: 322, column: 4, scope: !5933)
!5938 = !DILocation(line: 323, column: 3, scope: !5927)
!5939 = !DILocation(line: 324, column: 2, scope: !5909)
!5940 = !DILocation(line: 325, column: 26, scope: !5813)
!5941 = !DILocation(line: 325, column: 35, scope: !5813)
!5942 = !DILocation(line: 325, column: 45, scope: !5813)
!5943 = !DILocation(line: 409, column: 2, scope: !5274, inlinedAt: !5815)
!5944 = !DILocation(line: 409, column: 2, scope: !5279, inlinedAt: !5815)
!5945 = !DILocation(line: 409, column: 2, scope: !5280, inlinedAt: !5815)
!5946 = !DILocation(line: 409, column: 2, scope: !5287, inlinedAt: !5815)
!5947 = !DILocation(line: 409, column: 2, scope: !5290, inlinedAt: !5815)
!5948 = !DILocation(line: 327, column: 23, scope: !5813)
!5949 = !DILocation(line: 327, column: 28, scope: !5813)
!5950 = !DILocation(line: 327, column: 2, scope: !5813)
!5951 = !DILocation(line: 329, column: 10, scope: !5813)
!5952 = !DILocation(line: 329, column: 20, scope: !5813)
!5953 = !DILocation(line: 329, column: 2, scope: !5813)
!5954 = distinct !DISubprogram(name: "dio200_read_scan_intr", scope: !3, file: !3, line: 239, type: !5955, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5955 = !DISubroutineType(types: !5956)
!5956 = !{null, !195, !264, !7}
!5957 = !DILocalVariable(name: "dev", arg: 1, scope: !5954, file: !3, line: 239, type: !195)
!5958 = !DILocation(line: 239, column: 57, scope: !5954)
!5959 = !DILocalVariable(name: "s", arg: 2, scope: !5954, file: !3, line: 240, type: !264)
!5960 = !DILocation(line: 240, column: 32, scope: !5954)
!5961 = !DILocalVariable(name: "triggered", arg: 3, scope: !5954, file: !3, line: 241, type: !7)
!5962 = !DILocation(line: 241, column: 20, scope: !5954)
!5963 = !DILocalVariable(name: "cmd", scope: !5954, file: !3, line: 243, type: !3950)
!5964 = !DILocation(line: 243, column: 21, scope: !5954)
!5965 = !DILocation(line: 243, column: 28, scope: !5954)
!5966 = !DILocation(line: 243, column: 31, scope: !5954)
!5967 = !DILocation(line: 243, column: 38, scope: !5954)
!5968 = !DILocalVariable(name: "val", scope: !5954, file: !3, line: 244, type: !388)
!5969 = !DILocation(line: 244, column: 17, scope: !5954)
!5970 = !DILocalVariable(name: "n", scope: !5954, file: !3, line: 245, type: !7)
!5971 = !DILocation(line: 245, column: 15, scope: !5954)
!5972 = !DILocalVariable(name: "ch", scope: !5954, file: !3, line: 245, type: !7)
!5973 = !DILocation(line: 245, column: 18, scope: !5954)
!5974 = !DILocation(line: 247, column: 6, scope: !5954)
!5975 = !DILocation(line: 248, column: 9, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 248, column: 2)
!5977 = !DILocation(line: 248, column: 7, scope: !5976)
!5978 = !DILocation(line: 248, column: 14, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 248, column: 2)
!5980 = !DILocation(line: 248, column: 18, scope: !5979)
!5981 = !DILocation(line: 248, column: 23, scope: !5979)
!5982 = !DILocation(line: 248, column: 16, scope: !5979)
!5983 = !DILocation(line: 248, column: 2, scope: !5976)
!5984 = !DILocation(line: 249, column: 8, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 248, column: 42)
!5986 = !DILocation(line: 249, column: 6, scope: !5985)
!5987 = !DILocation(line: 250, column: 7, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 250, column: 7)
!5989 = !DILocation(line: 250, column: 26, scope: !5988)
!5990 = !DILocation(line: 250, column: 23, scope: !5988)
!5991 = !DILocation(line: 250, column: 17, scope: !5988)
!5992 = !DILocation(line: 250, column: 7, scope: !5985)
!5993 = !DILocation(line: 251, column: 18, scope: !5988)
!5994 = !DILocation(line: 251, column: 15, scope: !5988)
!5995 = !DILocation(line: 251, column: 8, scope: !5988)
!5996 = !DILocation(line: 251, column: 4, scope: !5988)
!5997 = !DILocation(line: 252, column: 2, scope: !5985)
!5998 = !DILocation(line: 248, column: 38, scope: !5979)
!5999 = !DILocation(line: 248, column: 2, scope: !5979)
!6000 = distinct !{!6000, !5983, !6001}
!6001 = !DILocation(line: 252, column: 2, scope: !5976)
!6002 = !DILocation(line: 254, column: 27, scope: !5954)
!6003 = !DILocation(line: 254, column: 30, scope: !5954)
!6004 = !DILocation(line: 254, column: 2, scope: !5954)
!6005 = !DILocation(line: 256, column: 6, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 256, column: 6)
!6007 = !DILocation(line: 256, column: 11, scope: !6006)
!6008 = !DILocation(line: 256, column: 20, scope: !6006)
!6009 = !DILocation(line: 256, column: 34, scope: !6006)
!6010 = !DILocation(line: 257, column: 6, scope: !6006)
!6011 = !DILocation(line: 257, column: 9, scope: !6006)
!6012 = !DILocation(line: 257, column: 16, scope: !6006)
!6013 = !DILocation(line: 257, column: 30, scope: !6006)
!6014 = !DILocation(line: 257, column: 35, scope: !6006)
!6015 = !DILocation(line: 257, column: 27, scope: !6006)
!6016 = !DILocation(line: 256, column: 6, scope: !5954)
!6017 = !DILocation(line: 258, column: 3, scope: !6006)
!6018 = !DILocation(line: 258, column: 6, scope: !6006)
!6019 = !DILocation(line: 258, column: 13, scope: !6006)
!6020 = !DILocation(line: 258, column: 20, scope: !6006)
!6021 = !DILocation(line: 259, column: 1, scope: !5954)
