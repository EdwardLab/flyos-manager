.class public final synthetic Lcom/google/android/gms/internal/location/zzbe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/location/zzbe;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzbe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzbe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzbe;->zza:Lcom/google/android/gms/internal/location/zzbe;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/location/zzda;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v0, Lcom/google/android/gms/location/LastLocationRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LastLocationRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/location/LastLocationRequest$Builder;->build()Lcom/google/android/gms/location/LastLocationRequest;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/location/zzda;->zzt(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
