.class final Lcom/google/android/gms/internal/location/zzca;
.super Lcom/google/android/gms/internal/location/zzcb;
.source "com.google.android.gms:play-services-location@@21.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/location/LocationSettingsRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzcc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationSettingsRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzca;->zza:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/zzcb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/location/zzda;

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzca;->zza:Lcom/google/android/gms/location/LocationSettingsRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "locationSettingsRequest can\'t be null"

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzda;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/location/zzo;

    new-instance v1, Lcom/google/android/gms/internal/location/zzcr;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/location/zzcr;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    const/4 v2, 0x0

    .line 4
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/location/zzo;->zzh(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/internal/location/zzs;Ljava/lang/String;)V

    return-void
.end method
