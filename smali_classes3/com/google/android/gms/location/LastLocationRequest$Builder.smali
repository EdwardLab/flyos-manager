.class public final Lcom/google/android/gms/location/LastLocationRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/LastLocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:J

.field private zzb:I

.field private zzc:Z

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/location/zzd;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zza:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zzb:I

    iput-boolean v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zzc:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zze:Lcom/google/android/gms/internal/location/zzd;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/LastLocationRequest;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/LastLocationRequest;->getMaxUpdateAgeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zza:J

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/location/LastLocationRequest;->getGranularity()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zzb:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/location/LastLocationRequest;->zzc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zzc:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/location/LastLocationRequest;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zzd:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/location/LastLocationRequest;->zza()Lcom/google/android/gms/internal/location/zzd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zze:Lcom/google/android/gms/internal/location/zzd;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/LastLocationRequest;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/location/LastLocationRequest;

    iget-wide v1, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zza:J

    iget v3, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zzb:I

    iget-boolean v4, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zzc:Z

    iget-object v5, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zzd:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zze:Lcom/google/android/gms/internal/location/zzd;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/location/LastLocationRequest;-><init>(JIZLjava/lang/String;Lcom/google/android/gms/internal/location/zzd;)V

    return-object v7
.end method

.method public setGranularity(I)Lcom/google/android/gms/location/LastLocationRequest$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/location/zzo;->zza(I)I

    iput p1, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zzb:I

    return-object p0
.end method

.method public setMaxUpdateAgeMillis(J)Lcom/google/android/gms/location/LastLocationRequest$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxUpdateAgeMillis must be greater than 0"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->zza:J

    return-object p0
.end method
