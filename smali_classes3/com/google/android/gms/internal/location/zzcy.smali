.class final Lcom/google/android/gms/internal/location/zzcy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/location/zzcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzcz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzcy;->zza:Lcom/google/android/gms/internal/location/zzcz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/location/LocationListener;

    iget-object p1, p0, Lcom/google/android/gms/internal/location/zzcy;->zza:Lcom/google/android/gms/internal/location/zzcz;

    invoke-static {p1}, Lcom/google/android/gms/internal/location/zzcz;->zzc(Lcom/google/android/gms/internal/location/zzcz;)Lcom/google/android/gms/internal/location/zzcs;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/location/zzcs;->zzb()V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
