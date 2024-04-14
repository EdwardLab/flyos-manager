.class public final synthetic Lcom/google/android/gms/internal/location/zzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/location/zzb;

.field public final synthetic zzb:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/location/zzb;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzz;->zza:Lcom/google/android/gms/location/zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzz;->zzb:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzz;->zza:Lcom/google/android/gms/location/zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzz;->zzb:Landroid/app/PendingIntent;

    check-cast p1, Lcom/google/android/gms/internal/location/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object v2, Lcom/google/android/gms/internal/location/zzag;->zzb:Lcom/google/android/gms/common/api/Api;

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/location/zzaf;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/location/zzaf;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const-string p2, "ActivityRecognitionRequest can\'t be null."

    .line 2
    invoke-static {v0, p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PendingIntent must be specified."

    .line 3
    invoke-static {v1, p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ResultHolder not provided."

    .line 4
    invoke-static {v2, p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p2, Lcom/google/android/gms/common/api/internal/StatusCallback;

    invoke-direct {p2, v2}, Lcom/google/android/gms/common/api/internal/StatusCallback;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzf;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/location/zzo;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/location/zzo;->zzs(Lcom/google/android/gms/location/zzb;Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void
.end method
