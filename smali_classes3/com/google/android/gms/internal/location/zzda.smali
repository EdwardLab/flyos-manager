.class public final Lcom/google/android/gms/internal/location/zzda;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-location@@21.0.1"


# static fields
.field public static final synthetic zze:I


# instance fields
.field private final zzf:Landroidx/collection/SimpleArrayMap;

.field private final zzg:Landroidx/collection/SimpleArrayMap;

.field private final zzh:Landroidx/collection/SimpleArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    .line 2
    new-instance p1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzda;->zzf:Landroidx/collection/SimpleArrayMap;

    new-instance p1, Landroidx/collection/SimpleArrayMap;

    .line 3
    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzda;->zzg:Landroidx/collection/SimpleArrayMap;

    new-instance p1, Landroidx/collection/SimpleArrayMap;

    .line 4
    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzda;->zzh:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private final zzE(Lcom/google/android/gms/common/Feature;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 2
    aget-object v4, v0, v3

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_3

    return v1

    .line 4
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-ltz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/location/zzo;

    if-eqz v1, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/location/zzo;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/location/zzn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/location/zzn;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/location/zzm;->zzl:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xb2c988

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->onConnectionSuspended(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/location/zzda;->zzf:Landroidx/collection/SimpleArrayMap;

    .line 2
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzda;->zzf:Landroidx/collection/SimpleArrayMap;

    .line 3
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzda;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 5
    monitor-enter v0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/location/zzda;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 6
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lcom/google/android/gms/internal/location/zzda;->zzh:Landroidx/collection/SimpleArrayMap;

    .line 8
    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzda;->zzh:Landroidx/collection/SimpleArrayMap;

    .line 9
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 10
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception v0

    .line 4
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final usesClientTelemetry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzA(ZLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/location/zzm;->zzg:Lcom/google/android/gms/common/Feature;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/zzda;->zzE(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzo;

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/location/zzcl;

    invoke-direct {v2, p0, v1, p2}, Lcom/google/android/gms/internal/location/zzcl;-><init>(Lcom/google/android/gms/internal/location/zzda;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/internal/location/zzo;->zzx(ZLcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/location/zzo;->zzw(Z)V

    .line 5
    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzB(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzda;->zzg:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzda;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/location/zzcw;

    if-nez v5, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p3, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v5}, Lcom/google/android/gms/internal/location/zzcw;->zzh()V

    if-eqz p2, :cond_2

    .line 6
    sget-object p1, Lcom/google/android/gms/location/zzm;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/location/zzda;->zzE(Lcom/google/android/gms/common/Feature;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzo;

    const/4 p2, 0x0

    .line 8
    invoke-static {p2, v5, p2, p2}, Lcom/google/android/gms/internal/location/zzdb;->zzb(Landroid/os/IInterface;Lcom/google/android/gms/location/zzr;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzdb;

    move-result-object p2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/location/zzcl;

    invoke-direct {v2, p0, v1, p3}, Lcom/google/android/gms/internal/location/zzcl;-><init>(Lcom/google/android/gms/internal/location/zzda;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 10
    invoke-interface {p1, p2, v2}, Lcom/google/android/gms/internal/location/zzo;->zzy(Lcom/google/android/gms/internal/location/zzdb;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzo;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v7, Lcom/google/android/gms/internal/location/zzcn;

    .line 12
    invoke-direct {v7, p2, p3}, Lcom/google/android/gms/internal/location/zzcn;-><init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 13
    new-instance p2, Lcom/google/android/gms/internal/location/zzdf;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/location/zzdf;-><init>(ILcom/google/android/gms/internal/location/zzdd;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 15
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/location/zzo;->zzz(Lcom/google/android/gms/internal/location/zzdf;)V

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p3, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 17
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzC(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzda;->zzf:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzda;->zzf:Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/location/zzcz;

    if-nez v4, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p3, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/location/zzcz;->zzg()V

    if-eqz p2, :cond_2

    .line 6
    sget-object p1, Lcom/google/android/gms/location/zzm;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/location/zzda;->zzE(Lcom/google/android/gms/common/Feature;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzo;

    const/4 p2, 0x0

    .line 8
    invoke-static {p2, v4, p2, p2}, Lcom/google/android/gms/internal/location/zzdb;->zzc(Landroid/os/IInterface;Lcom/google/android/gms/location/zzu;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzdb;

    move-result-object p2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/location/zzcl;

    invoke-direct {v2, p0, v1, p3}, Lcom/google/android/gms/internal/location/zzcl;-><init>(Lcom/google/android/gms/internal/location/zzda;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 10
    invoke-interface {p1, p2, v2}, Lcom/google/android/gms/internal/location/zzo;->zzy(Lcom/google/android/gms/internal/location/zzdb;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzo;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v7, Lcom/google/android/gms/internal/location/zzcn;

    .line 12
    invoke-direct {v7, p2, p3}, Lcom/google/android/gms/internal/location/zzcn;-><init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 13
    new-instance p2, Lcom/google/android/gms/internal/location/zzdf;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/location/zzdf;-><init>(ILcom/google/android/gms/internal/location/zzdd;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 15
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/location/zzo;->zzz(Lcom/google/android/gms/internal/location/zzdf;)V

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p3, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 17
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzD(Landroid/app/PendingIntent;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object p3, Lcom/google/android/gms/location/zzm;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/location/zzda;->zzE(Lcom/google/android/gms/common/Feature;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/location/zzo;

    .line 3
    invoke-static {p1, v0, v0}, Lcom/google/android/gms/internal/location/zzdb;->zza(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzdb;

    move-result-object p1

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/location/zzcl;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/location/zzcl;-><init>(Lcom/google/android/gms/internal/location/zzda;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 5
    invoke-interface {p3, p1, v1}, Lcom/google/android/gms/internal/location/zzo;->zzy(Lcom/google/android/gms/internal/location/zzdb;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/location/zzo;

    new-instance v7, Lcom/google/android/gms/internal/location/zzcn;

    .line 7
    invoke-direct {v7, v0, p2}, Lcom/google/android/gms/internal/location/zzcn;-><init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/location/zzdf;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    move-object v6, p1

    .line 9
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/location/zzdf;-><init>(ILcom/google/android/gms/internal/location/zzdd;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 10
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/location/zzo;->zzz(Lcom/google/android/gms/internal/location/zzdf;)V

    return-void
.end method

.method public final zzp()Lcom/google/android/gms/location/LocationAvailability;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/location/zzo;->zzf(Ljava/lang/String;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v0

    return-object v0
.end method

.method public final zzq(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "geofencingRequest can\'t be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PendingIntent must be specified."

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzo;

    new-instance v1, Lcom/google/android/gms/internal/location/zzci;

    .line 4
    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/location/zzci;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 5
    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/location/zzo;->zzg(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/location/zzm;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzo;

    new-instance v1, Lcom/google/android/gms/internal/location/zzcn;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/location/zzcn;-><init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 1
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/location/zzo;->zzi(Lcom/google/android/gms/internal/location/zzk;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getContext()Landroid/content/Context;

    .line 2
    sget-object v0, Lcom/google/android/gms/location/zzm;->zze:Lcom/google/android/gms/common/Feature;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/zzda;->zzE(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzo;

    new-instance v1, Lcom/google/android/gms/internal/location/zzcm;

    .line 4
    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/internal/location/zzcm;-><init>(Lcom/google/android/gms/internal/location/zzda;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/location/zzo;->zze(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/internal/location/zzq;)Lcom/google/android/gms/common/internal/ICancelToken;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 5
    new-instance p3, Lcom/google/android/gms/internal/location/zzcf;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/location/zzcf;-><init>(Lcom/google/android/gms/common/internal/ICancelToken;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/location/zzcj;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/location/zzcj;-><init>(Lcom/google/android/gms/internal/location/zzda;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/location/zzdx;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    const-string v2, "GetCurrentLocation"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->createListenerHolder(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/gms/internal/location/zzck;

    invoke-direct {v2, p0, v0, p3}, Lcom/google/android/gms/internal/location/zzck;-><init>(Lcom/google/android/gms/internal/location/zzda;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v3, Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getPriority()I

    move-result v4

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(IJ)V

    .line 10
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getDurationMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/location/LocationRequest$Builder;->setDurationMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getGranularity()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->setGranularity(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getMaxUpdateAgeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMaxUpdateAgeMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zze()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->zza(Z)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zza()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->zzc(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    const/4 v4, 0x1

    .line 16
    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->setWaitForAccurateLocation(Z)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->zzb(Ljava/lang/String;)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zzb()Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/location/LocationRequest$Builder;->zzd(Landroid/os/WorkSource;)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    .line 20
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/location/zzda;->zzu(Lcom/google/android/gms/internal/location/zzcs;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/location/zzcg;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/location/zzcg;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    if-eqz p2, :cond_1

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/location/zzch;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/location/zzch;-><init>(Lcom/google/android/gms/internal/location/zzda;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    :cond_1
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getContext()Landroid/content/Context;

    .line 2
    sget-object v0, Lcom/google/android/gms/location/zzm;->zzf:Lcom/google/android/gms/common/Feature;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/zzda;->zzE(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzo;

    new-instance v1, Lcom/google/android/gms/internal/location/zzcm;

    .line 4
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/location/zzcm;-><init>(Lcom/google/android/gms/internal/location/zzda;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 5
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/location/zzo;->zzj(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/internal/location/zzq;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/location/zzo;->zzd()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzu(Lcom/google/android/gms/internal/location/zzcs;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/location/zzcs;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v5, Lcom/google/android/gms/location/zzm;->zzj:Lcom/google/android/gms/common/Feature;

    .line 4
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/location/zzda;->zzE(Lcom/google/android/gms/common/Feature;)Z

    move-result v5

    iget-object v6, v1, Lcom/google/android/gms/internal/location/zzda;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 5
    monitor-enter v6

    :try_start_0
    iget-object v7, v1, Lcom/google/android/gms/internal/location/zzda;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 6
    invoke-virtual {v7, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/location/zzcw;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    if-eqz v5, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/location/zzcw;->zzg(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/internal/location/zzcw;

    move-object v13, v7

    move-object v7, v8

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/location/zzcw;

    move-object/from16 v9, p1

    .line 7
    invoke-direct {v3, v9}, Lcom/google/android/gms/internal/location/zzcw;-><init>(Lcom/google/android/gms/internal/location/zzcs;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/location/zzda;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 8
    invoke-virtual {v9, v4, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v3

    .line 10
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/location/zzda;->getContext()Landroid/content/Context;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;->toIdString()Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_2

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/location/zzo;

    .line 13
    invoke-static {v7, v13, v8, v3}, Lcom/google/android/gms/internal/location/zzdb;->zzb(Landroid/os/IInterface;Lcom/google/android/gms/location/zzr;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzdb;

    move-result-object v3

    .line 14
    new-instance v5, Lcom/google/android/gms/internal/location/zzcl;

    invoke-direct {v5, v1, v8, v2}, Lcom/google/android/gms/internal/location/zzcl;-><init>(Lcom/google/android/gms/internal/location/zzda;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 15
    invoke-interface {v4, v3, v0, v5}, Lcom/google/android/gms/internal/location/zzo;->zzk(Lcom/google/android/gms/internal/location/zzdb;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/location/zzo;

    new-instance v5, Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-direct {v5, v0}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(Lcom/google/android/gms/location/LocationRequest;)V

    .line 17
    invoke-virtual {v5, v8}, Lcom/google/android/gms/location/LocationRequest$Builder;->zzb(Ljava/lang/String;)Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-virtual {v5}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 18
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/location/zzdd;->zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/location/zzdd;

    move-result-object v11

    new-instance v15, Lcom/google/android/gms/internal/location/zzcp;

    .line 19
    invoke-direct {v15, v2, v13}, Lcom/google/android/gms/internal/location/zzcp;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/location/zzr;)V

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/location/zzdf;

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v9, v0

    move-object/from16 v16, v3

    .line 21
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/location/zzdf;-><init>(ILcom/google/android/gms/internal/location/zzdd;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 22
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/location/zzo;->zzz(Lcom/google/android/gms/internal/location/zzdf;)V

    .line 23
    :goto_2
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzv(Lcom/google/android/gms/internal/location/zzcs;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/location/zzcs;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v5, Lcom/google/android/gms/location/zzm;->zzj:Lcom/google/android/gms/common/Feature;

    .line 4
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/location/zzda;->zzE(Lcom/google/android/gms/common/Feature;)Z

    move-result v5

    iget-object v6, v1, Lcom/google/android/gms/internal/location/zzda;->zzf:Landroidx/collection/SimpleArrayMap;

    .line 5
    monitor-enter v6

    :try_start_0
    iget-object v7, v1, Lcom/google/android/gms/internal/location/zzda;->zzf:Landroidx/collection/SimpleArrayMap;

    .line 6
    invoke-virtual {v7, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/location/zzcz;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    if-eqz v5, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/location/zzcz;->zzf(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/internal/location/zzcz;

    move-object v12, v7

    move-object v7, v8

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/location/zzcz;

    move-object/from16 v9, p1

    .line 7
    invoke-direct {v3, v9}, Lcom/google/android/gms/internal/location/zzcz;-><init>(Lcom/google/android/gms/internal/location/zzcs;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/location/zzda;->zzf:Landroidx/collection/SimpleArrayMap;

    .line 8
    invoke-virtual {v9, v4, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v3

    .line 10
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/location/zzda;->getContext()Landroid/content/Context;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;->toIdString()Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_2

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/location/zzo;

    .line 13
    invoke-static {v7, v12, v8, v3}, Lcom/google/android/gms/internal/location/zzdb;->zzc(Landroid/os/IInterface;Lcom/google/android/gms/location/zzu;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzdb;

    move-result-object v3

    .line 14
    new-instance v5, Lcom/google/android/gms/internal/location/zzcl;

    invoke-direct {v5, v1, v8, v2}, Lcom/google/android/gms/internal/location/zzcl;-><init>(Lcom/google/android/gms/internal/location/zzda;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 15
    invoke-interface {v4, v3, v0, v5}, Lcom/google/android/gms/internal/location/zzo;->zzk(Lcom/google/android/gms/internal/location/zzdb;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/location/zzo;

    new-instance v5, Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-direct {v5, v0}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(Lcom/google/android/gms/location/LocationRequest;)V

    .line 17
    invoke-virtual {v5, v8}, Lcom/google/android/gms/location/LocationRequest$Builder;->zzb(Ljava/lang/String;)Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-virtual {v5}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 18
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/location/zzdd;->zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/location/zzdd;

    move-result-object v11

    new-instance v15, Lcom/google/android/gms/internal/location/zzco;

    .line 19
    invoke-direct {v15, v2, v12}, Lcom/google/android/gms/internal/location/zzco;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/location/zzu;)V

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/location/zzdf;

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v0

    move-object/from16 v16, v3

    .line 21
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/location/zzdf;-><init>(ILcom/google/android/gms/internal/location/zzdd;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 22
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/location/zzo;->zzz(Lcom/google/android/gms/internal/location/zzdf;)V

    .line 23
    :goto_2
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzw(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getContext()Landroid/content/Context;

    .line 2
    sget-object v0, Lcom/google/android/gms/location/zzm;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/zzda;->zzE(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzo;

    .line 4
    invoke-static {p1, v1, v1}, Lcom/google/android/gms/internal/location/zzdb;->zza(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzdb;

    move-result-object p1

    .line 5
    new-instance v2, Lcom/google/android/gms/internal/location/zzcl;

    invoke-direct {v2, p0, v1, p3}, Lcom/google/android/gms/internal/location/zzcl;-><init>(Lcom/google/android/gms/internal/location/zzda;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    invoke-interface {v0, p1, p2, v2}, Lcom/google/android/gms/internal/location/zzo;->zzk(Lcom/google/android/gms/internal/location/zzdb;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzo;

    new-instance v2, Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-direct {v2, p2}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(Lcom/google/android/gms/location/LocationRequest;)V

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/location/LocationRequest$Builder;->zzb(Ljava/lang/String;)Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-virtual {v2}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p2

    .line 9
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/location/zzdd;->zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/location/zzdd;

    move-result-object v4

    new-instance v8, Lcom/google/android/gms/internal/location/zzcn;

    .line 10
    invoke-direct {v8, v1, p3}, Lcom/google/android/gms/internal/location/zzcn;-><init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 11
    new-instance p2, Lcom/google/android/gms/internal/location/zzdf;

    .line 12
    invoke-virtual {p1}, Landroid/app/PendingIntent;->hashCode()I

    move-result p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PendingIntent@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v2, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/location/zzdf;-><init>(ILcom/google/android/gms/internal/location/zzdd;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 13
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/location/zzo;->zzz(Lcom/google/android/gms/internal/location/zzdf;)V

    return-void
.end method

.method public final zzx(Landroid/app/PendingIntent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "PendingIntent must be specified."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzo;

    new-instance v1, Lcom/google/android/gms/internal/location/zzci;

    .line 3
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/location/zzci;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/internal/location/zzo;->zzn(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/location/zzm;Ljava/lang/String;)V

    return-void
.end method

.method public final zzy(Ljava/util/List;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "geofenceRequestIds can\'t be null nor empty."

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzo;

    new-instance v1, Lcom/google/android/gms/internal/location/zzci;

    .line 5
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/location/zzci;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/internal/location/zzo;->zzo([Ljava/lang/String;Lcom/google/android/gms/internal/location/zzm;Ljava/lang/String;)V

    return-void
.end method

.method public final zzz(Landroid/location/Location;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/location/zzm;->zzh:Lcom/google/android/gms/common/Feature;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/zzda;->zzE(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzo;

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/location/zzcl;

    invoke-direct {v2, p0, v1, p2}, Lcom/google/android/gms/internal/location/zzcl;-><init>(Lcom/google/android/gms/internal/location/zzda;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/internal/location/zzo;->zzv(Landroid/location/Location;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/location/zzo;->zzu(Landroid/location/Location;)V

    .line 6
    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
