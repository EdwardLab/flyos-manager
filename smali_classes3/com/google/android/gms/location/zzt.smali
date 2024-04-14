.class public abstract Lcom/google/android/gms/location/zzt;
.super Lcom/google/android/gms/internal/location/zzb;
.source "com.google.android.gms:play-services-location@@21.0.1"

# interfaces
.implements Lcom/google/android/gms/location/zzu;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.ILocationListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzu;
    .locals 2

    const-string v0, "com.google.android.gms.location.ILocationListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/location/zzu;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/location/zzu;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/location/zzs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/zzs;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/zzt;->zze()V

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/location/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/location/zzc;->zzb(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/zzt;->zzd(Landroid/location/Location;)V

    :goto_0
    return p3
.end method
