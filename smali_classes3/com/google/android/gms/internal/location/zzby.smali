.class public final synthetic Lcom/google/android/gms/internal/location/zzby;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzby;->zza:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzby;->zza:Landroid/app/PendingIntent;

    check-cast p1, Lcom/google/android/gms/internal/location/zzda;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget v1, Lcom/google/android/gms/internal/location/zzbz;->zza:I

    .line 1
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/location/zzda;->zzx(Landroid/app/PendingIntent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
