.class Lcom/onesignal/GMSLocationController$GoogleApiClientListener;
.super Ljava/lang/Object;
.source "GMSLocationController.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/GMSLocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleApiClientListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/GMSLocationController$1;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/onesignal/GMSLocationController$GoogleApiClientListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    .line 123
    sget-object p1, Lcom/onesignal/LocationController;->syncLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 124
    :try_start_0
    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    .line 126
    invoke-static {}, Lcom/onesignal/GMSLocationController;->access$200()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/onesignal/GMSLocationController;->access$200()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationController GoogleApiClientListener onConnected lastLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 131
    invoke-static {}, Lcom/onesignal/GMSLocationController;->access$200()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/GMSLocationController$FusedLocationApiWrapper;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    .line 132
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationController GoogleApiClientListener lastLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 134
    sget-object v0, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    invoke-static {v0}, Lcom/onesignal/LocationController;->fireCompleteForLocation(Landroid/location/Location;)V

    .line 137
    :cond_1
    new-instance v0, Lcom/onesignal/GMSLocationController$LocationUpdateListener;

    invoke-static {}, Lcom/onesignal/GMSLocationController;->access$200()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onesignal/GMSLocationController$LocationUpdateListener;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    sput-object v0, Lcom/onesignal/GMSLocationController;->locationUpdateListener:Lcom/onesignal/GMSLocationController$LocationUpdateListener;

    .line 138
    monitor-exit p1

    return-void

    .line 127
    :cond_2
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    .line 138
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 148
    invoke-static {}, Lcom/onesignal/GMSLocationController;->fireFailedComplete()V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .line 143
    invoke-static {}, Lcom/onesignal/GMSLocationController;->fireFailedComplete()V

    return-void
.end method
