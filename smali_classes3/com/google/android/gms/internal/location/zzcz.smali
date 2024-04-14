.class final Lcom/google/android/gms/internal/location/zzcz;
.super Lcom/google/android/gms/location/zzt;
.source "com.google.android.gms:play-services-location@@21.0.1"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/location/zzcs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzcs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/location/zzt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzcz;->zza:Lcom/google/android/gms/internal/location/zzcs;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/location/zzcz;)Lcom/google/android/gms/internal/location/zzcs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzcz;->zza:Lcom/google/android/gms/internal/location/zzcs;

    return-object p0
.end method


# virtual methods
.method public final zzd(Landroid/location/Location;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzcz;->zza:Lcom/google/android/gms/internal/location/zzcs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzcs;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/location/zzcx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/zzcx;-><init>(Lcom/google/android/gms/internal/location/zzcz;Landroid/location/Location;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzcz;->zza:Lcom/google/android/gms/internal/location/zzcs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzcs;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/location/zzcy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/location/zzcy;-><init>(Lcom/google/android/gms/internal/location/zzcz;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method final zzf(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/internal/location/zzcz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzcz;->zza:Lcom/google/android/gms/internal/location/zzcs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/location/zzcs;->zzc(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    return-object p0
.end method

.method final zzg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzcz;->zza:Lcom/google/android/gms/internal/location/zzcs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzcs;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->clear()V

    return-void
.end method
