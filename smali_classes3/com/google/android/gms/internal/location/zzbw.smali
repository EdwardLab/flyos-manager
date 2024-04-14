.class public final synthetic Lcom/google/android/gms/internal/location/zzbw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/location/GeofencingRequest;

.field public final synthetic zzb:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbw;->zza:Lcom/google/android/gms/location/GeofencingRequest;

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzbw;->zzb:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbw;->zza:Lcom/google/android/gms/location/GeofencingRequest;

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbw;->zzb:Landroid/app/PendingIntent;

    check-cast p1, Lcom/google/android/gms/internal/location/zzda;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget v2, Lcom/google/android/gms/internal/location/zzbz;->zza:I

    .line 1
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/location/zzda;->zzq(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
