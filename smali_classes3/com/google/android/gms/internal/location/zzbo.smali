.class final Lcom/google/android/gms/internal/location/zzbo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lcom/google/android/gms/internal/location/zzcs;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/location/zzbp;

.field private final zzb:Lcom/google/android/gms/internal/location/zzbn;

.field private zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field private zzd:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzbp;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/internal/location/zzbn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbo;->zza:Lcom/google/android/gms/internal/location/zzbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/location/zzbo;->zzd:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzbo;->zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzbo;->zzb:Lcom/google/android/gms/internal/location/zzbn;

    return-void
.end method


# virtual methods
.method public final bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/location/zzda;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbo;->zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/location/zzbo;->zzd:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzbo;->zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->clear()V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzbo;->zzb:Lcom/google/android/gms/internal/location/zzbn;

    .line 6
    invoke-interface {v2, p1, v0, v1, p2}, Lcom/google/android/gms/internal/location/zzbn;->zza(Lcom/google/android/gms/internal/location/zzda;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbo;->zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzb()V
    .locals 3

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/location/zzbo;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbo;->zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v0

    .line 2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbo;->zza:Lcom/google/android/gms/internal/location/zzbp;

    const/16 v2, 0x989

    .line 3
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/location/zzbp;->doUnregisterEventListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;I)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbo;->zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->clear()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbo;->zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
