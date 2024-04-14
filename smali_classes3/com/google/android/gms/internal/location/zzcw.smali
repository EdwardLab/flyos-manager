.class final Lcom/google/android/gms/internal/location/zzcw;
.super Lcom/google/android/gms/location/zzq;
.source "com.google.android.gms:play-services-location@@21.0.1"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/location/zzcs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzcs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/location/zzq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzcw;->zza:Lcom/google/android/gms/internal/location/zzcs;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/location/zzcw;)Lcom/google/android/gms/internal/location/zzcs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzcw;->zza:Lcom/google/android/gms/internal/location/zzcs;

    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzcw;->zza:Lcom/google/android/gms/internal/location/zzcs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzcs;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/location/zzcu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/zzcu;-><init>(Lcom/google/android/gms/internal/location/zzcw;Lcom/google/android/gms/location/LocationAvailability;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzcw;->zza:Lcom/google/android/gms/internal/location/zzcs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzcs;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/location/zzct;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/zzct;-><init>(Lcom/google/android/gms/internal/location/zzcw;Lcom/google/android/gms/location/LocationResult;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method public final zzf()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzcw;->zza:Lcom/google/android/gms/internal/location/zzcs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzcs;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/location/zzcv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/location/zzcv;-><init>(Lcom/google/android/gms/internal/location/zzcw;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method final zzg(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/internal/location/zzcw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzcw;->zza:Lcom/google/android/gms/internal/location/zzcs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/location/zzcs;->zzc(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    return-object p0
.end method

.method final zzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzcw;->zza:Lcom/google/android/gms/internal/location/zzcs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzcs;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->clear()V

    return-void
.end method
