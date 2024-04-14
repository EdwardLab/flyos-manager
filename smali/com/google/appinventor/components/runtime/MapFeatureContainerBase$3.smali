.class final Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->loadUrl(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

.field private synthetic nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

.field private synthetic nrk4qDbuonwjAUi7HPDytbtabfk6KLkf1OM4Z1o9O6dUiFPBfNVpTU1RRHKJKimM:Ljava/lang/String;

.field private synthetic plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;->nrk4qDbuonwjAUi7HPDytbtabfk6KLkf1OM4Z1o9O6dUiFPBfNVpTU1RRHKJKimM:Ljava/lang/String;

    iput p3, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;->nrk4qDbuonwjAUi7HPDytbtabfk6KLkf1OM4Z1o9O6dUiFPBfNVpTU1RRHKJKimM:Ljava/lang/String;

    iget v2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->LoadError(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
