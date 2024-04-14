.class public abstract Lcom/google/android/gms/internal/location/zzl;
.super Lcom/google/android/gms/internal/location/zzb;
.source "com.google.android.gms:play-services-location@@21.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/location/zzm;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGeofencerCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/zzb;-><init>(Ljava/lang/String;)V

    return-void
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

    if-eq p1, p3, :cond_2

    const/4 p4, 0x2

    if-eq p1, p4, :cond_1

    const/4 p4, 0x3

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p2, p4}, Lcom/google/android/gms/internal/location/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/app/PendingIntent;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/location/zzc;->zzb(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/location/zzl;->zzc(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/location/zzc;->zzb(Landroid/os/Parcel;)V

    .line 8
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/location/zzl;->zzd(I[Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/location/zzc;->zzb(Landroid/os/Parcel;)V

    .line 12
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/location/zzl;->zzb(I[Ljava/lang/String;)V

    :goto_0
    return p3
.end method
