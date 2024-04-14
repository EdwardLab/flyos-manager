.class public final synthetic Lcom/google/android/gms/internal/location/zzbj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/location/LastLocationRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/location/LastLocationRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbj;->zza:Lcom/google/android/gms/location/LastLocationRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbj;->zza:Lcom/google/android/gms/location/LastLocationRequest;

    check-cast p1, Lcom/google/android/gms/internal/location/zzda;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object v1, Lcom/google/android/gms/internal/location/zzbp;->zzb:Lcom/google/android/gms/common/api/Api;

    .line 1
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/location/zzda;->zzt(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
