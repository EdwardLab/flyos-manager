.class Lcom/onesignal/AdvertisingIdProviderGPS;
.super Ljava/lang/Object;
.source "AdvertisingIdProviderGPS.java"

# interfaces
.implements Lcom/onesignal/AdvertisingIdentifierProvider;


# static fields
.field private static lastValue:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLastValue()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/onesignal/AdvertisingIdProviderGPS;->lastValue:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getIdentifier(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 45
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "OptedOut"

    .line 47
    sput-object p1, Lcom/onesignal/AdvertisingIdProviderGPS;->lastValue:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/onesignal/AdvertisingIdProviderGPS;->lastValue:Ljava/lang/String;

    .line 51
    :goto_0
    sget-object p1, Lcom/onesignal/AdvertisingIdProviderGPS;->lastValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 53
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Error getting Google Ad id: "

    invoke-static {v0, v1, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
