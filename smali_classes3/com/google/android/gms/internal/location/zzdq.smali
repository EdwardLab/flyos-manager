.class final Lcom/google/android/gms/internal/location/zzdq;
.super Lcom/google/android/gms/internal/location/zzdo;
.source "com.google.android.gms:play-services-location@@21.0.1"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/location/zzds;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzds;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzds;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/location/zzdo;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzdq;->zza:Lcom/google/android/gms/internal/location/zzds;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdq;->zza:Lcom/google/android/gms/internal/location/zzds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/location/zzds;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
