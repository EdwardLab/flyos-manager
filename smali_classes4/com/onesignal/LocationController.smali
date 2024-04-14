.class Lcom/onesignal/LocationController;
.super Ljava/lang/Object;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/LocationController$LocationHandlerThread;,
        Lcom/onesignal/LocationController$LocationPromptCompletionHandler;,
        Lcom/onesignal/LocationController$LocationHandler;,
        Lcom/onesignal/LocationController$LocationPoint;,
        Lcom/onesignal/LocationController$PermissionType;
    }
.end annotation


# static fields
.field static final BACKGROUND_UPDATE_TIME_MS:J = 0x8b290L

.field static final FOREGROUND_UPDATE_TIME_MS:J = 0x41eb0L

.field private static final TIME_BACKGROUND_SEC:J = 0x258L

.field private static final TIME_FOREGROUND_SEC:J = 0x12cL

.field static classContext:Landroid/content/Context;

.field static fallbackFailThread:Ljava/lang/Thread;

.field static lastLocation:Landroid/location/Location;

.field private static locationCoarse:Z

.field static locationHandlerThread:Lcom/onesignal/LocationController$LocationHandlerThread;

.field private static locationHandlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/onesignal/LocationController$PermissionType;",
            "Lcom/onesignal/LocationController$LocationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final promptHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/LocationController$LocationPromptCompletionHandler;",
            ">;"
        }
    .end annotation
.end field

.field static requestPermission:Ljava/lang/String;

.field static final syncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/LocationController;->promptHandlers:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/LocationController;->locationHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    new-instance v0, Lcom/onesignal/LocationController$1;

    invoke-direct {v0}, Lcom/onesignal/LocationController$1;-><init>()V

    sput-object v0, Lcom/onesignal/LocationController;->syncLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPromptHandlerIfAvailable(Lcom/onesignal/LocationController$LocationHandler;)V
    .locals 1

    .line 132
    instance-of v0, p0, Lcom/onesignal/LocationController$LocationPromptCompletionHandler;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/onesignal/LocationController;->promptHandlers:Ljava/util/List;

    monitor-enter v0

    .line 134
    :try_start_0
    check-cast p0, Lcom/onesignal/LocationController$LocationPromptCompletionHandler;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private static fireComplete(Lcom/onesignal/LocationController$LocationPoint;)V
    .locals 5

    .line 308
    const-class v0, Lcom/onesignal/LocationController;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 310
    monitor-enter v0

    .line 311
    :try_start_0
    sget-object v2, Lcom/onesignal/LocationController;->locationHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 312
    sget-object v2, Lcom/onesignal/LocationController;->locationHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 313
    sget-object v2, Lcom/onesignal/LocationController;->fallbackFailThread:Ljava/lang/Thread;

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onesignal/LocationController$PermissionType;

    .line 318
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onesignal/LocationController$LocationHandler;

    invoke-interface {v4, p0}, Lcom/onesignal/LocationController$LocationHandler;->onComplete(Lcom/onesignal/LocationController$LocationPoint;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 319
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 320
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 323
    :cond_1
    sget-object p0, Lcom/onesignal/LocationController;->fallbackFailThread:Ljava/lang/Thread;

    if-ne v2, p0, :cond_3

    .line 324
    monitor-enter v0

    .line 325
    :try_start_1
    sget-object p0, Lcom/onesignal/LocationController;->fallbackFailThread:Ljava/lang/Thread;

    if-ne v2, p0, :cond_2

    const/4 p0, 0x0

    .line 326
    sput-object p0, Lcom/onesignal/LocationController;->fallbackFailThread:Ljava/lang/Thread;

    .line 327
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 330
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/LocationController;->setLastLocationTime(J)V

    return-void

    :catchall_1
    move-exception p0

    .line 314
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method protected static fireCompleteForLocation(Landroid/location/Location;)V
    .locals 6

    .line 334
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationController fireCompleteForLocation with location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 335
    new-instance v0, Lcom/onesignal/LocationController$LocationPoint;

    invoke-direct {v0}, Lcom/onesignal/LocationController$LocationPoint;-><init>()V

    .line 337
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationController$LocationPoint;->accuracy:Ljava/lang/Float;

    .line 338
    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationController$LocationPoint;->bg:Ljava/lang/Boolean;

    .line 339
    sget-boolean v1, Lcom/onesignal/LocationController;->locationCoarse:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationController$LocationPoint;->type:Ljava/lang/Integer;

    .line 340
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationController$LocationPoint;->timeStamp:Ljava/lang/Long;

    .line 344
    sget-boolean v1, Lcom/onesignal/LocationController;->locationCoarse:Z

    if-eqz v1, :cond_0

    .line 345
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationController$LocationPoint;->lat:Ljava/lang/Double;

    .line 346
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v3, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, v0, Lcom/onesignal/LocationController$LocationPoint;->log:Ljava/lang/Double;

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationController$LocationPoint;->lat:Ljava/lang/Double;

    .line 349
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, v0, Lcom/onesignal/LocationController$LocationPoint;->log:Ljava/lang/Double;

    .line 352
    :goto_0
    invoke-static {v0}, Lcom/onesignal/LocationController;->fireComplete(Lcom/onesignal/LocationController$LocationPoint;)V

    .line 353
    sget-object p0, Lcom/onesignal/LocationController;->classContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/LocationController;->scheduleUpdate(Landroid/content/Context;)Z

    return-void
.end method

.method static fireFailedComplete()V
    .locals 2

    const/4 v0, 0x0

    .line 295
    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    .line 297
    sget-object v0, Lcom/onesignal/LocationController;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    invoke-static {}, Lcom/onesignal/LocationController;->isGooglePlayServicesAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-static {}, Lcom/onesignal/GMSLocationController;->fireFailedComplete()V

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {}, Lcom/onesignal/LocationController;->isHMSAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    invoke-static {}, Lcom/onesignal/HMSLocationController;->fireFailedComplete()V

    .line 302
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 303
    invoke-static {v0}, Lcom/onesignal/LocationController;->fireComplete(Lcom/onesignal/LocationController$LocationPoint;)V

    return-void

    :catchall_0
    move-exception v1

    .line 302
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getLastLocationTime()J
    .locals 4

    .line 119
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_LOCATION_TIME"

    const-wide/32 v2, -0x927c0

    invoke-static {v0, v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLocation(Landroid/content/Context;ZZLcom/onesignal/LocationController$LocationHandler;)V
    .locals 6

    .line 173
    invoke-static {p3}, Lcom/onesignal/LocationController;->addPromptHandlerIfAvailable(Lcom/onesignal/LocationController$LocationHandler;)V

    .line 174
    sput-object p0, Lcom/onesignal/LocationController;->classContext:Landroid/content/Context;

    .line 175
    sget-object v0, Lcom/onesignal/LocationController;->locationHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p3}, Lcom/onesignal/LocationController$LocationHandler;->getType()Lcom/onesignal/LocationController$PermissionType;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-boolean v0, Lcom/onesignal/OneSignal;->shareLocation:Z

    if-nez v0, :cond_0

    .line 178
    sget-object p0, Lcom/onesignal/OneSignal$PromptActionResult;->ERROR:Lcom/onesignal/OneSignal$PromptActionResult;

    invoke-static {p1, p0}, Lcom/onesignal/LocationController;->sendAndClearPromptHandlers(ZLcom/onesignal/OneSignal$PromptActionResult;)V

    .line 179
    invoke-static {}, Lcom/onesignal/LocationController;->fireFailedComplete()V

    return-void

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 185
    invoke-static {p0, v0}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    if-ne v1, v2, :cond_1

    .line 187
    invoke-static {p0, v3}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    .line 188
    sput-boolean v4, Lcom/onesignal/LocationController;->locationCoarse:Z

    .line 191
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_3

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 194
    sget-object p0, Lcom/onesignal/OneSignal$PromptActionResult;->LOCATION_PERMISSIONS_MISSING_MANIFEST:Lcom/onesignal/OneSignal$PromptActionResult;

    invoke-static {p1, p0}, Lcom/onesignal/LocationController;->sendAndClearPromptHandlers(ZLcom/onesignal/OneSignal$PromptActionResult;)V

    const/4 p0, 0x0

    .line 196
    invoke-interface {p3, p0}, Lcom/onesignal/LocationController$LocationHandler;->onComplete(Lcom/onesignal/LocationController$LocationPoint;)V

    return-void

    .line 199
    :cond_2
    sget-object p0, Lcom/onesignal/OneSignal$PromptActionResult;->PERMISSION_GRANTED:Lcom/onesignal/OneSignal$PromptActionResult;

    invoke-static {p1, p0}, Lcom/onesignal/LocationController;->sendAndClearPromptHandlers(ZLcom/onesignal/OneSignal$PromptActionResult;)V

    .line 200
    invoke-static {}, Lcom/onesignal/LocationController;->startGetLocation()V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_9

    .line 205
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {p3, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 206
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 207
    sget-object p3, Lcom/onesignal/OneSignal$PromptActionResult;->PERMISSION_DENIED:Lcom/onesignal/OneSignal$PromptActionResult;

    .line 208
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 211
    sput-object v0, Lcom/onesignal/LocationController;->requestPermission:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_4
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v2, :cond_6

    .line 216
    sput-object v3, Lcom/onesignal/LocationController;->requestPermission:Ljava/lang/String;

    goto :goto_0

    .line 219
    :cond_5
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p3, "Location permissions not added on AndroidManifest file"

    invoke-static {p0, p3}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 220
    sget-object p3, Lcom/onesignal/OneSignal$PromptActionResult;->LOCATION_PERMISSIONS_MISSING_MANIFEST:Lcom/onesignal/OneSignal$PromptActionResult;

    .line 230
    :cond_6
    :goto_0
    sget-object p0, Lcom/onesignal/LocationController;->requestPermission:Ljava/lang/String;

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 231
    invoke-static {p2}, Lcom/onesignal/PermissionsActivity;->startPrompt(Z)V

    goto :goto_1

    :cond_7
    if-nez v2, :cond_8

    .line 233
    sget-object p0, Lcom/onesignal/OneSignal$PromptActionResult;->PERMISSION_GRANTED:Lcom/onesignal/OneSignal$PromptActionResult;

    invoke-static {p1, p0}, Lcom/onesignal/LocationController;->sendAndClearPromptHandlers(ZLcom/onesignal/OneSignal$PromptActionResult;)V

    .line 234
    invoke-static {}, Lcom/onesignal/LocationController;->startGetLocation()V

    goto :goto_1

    .line 236
    :cond_8
    invoke-static {p1, p3}, Lcom/onesignal/LocationController;->sendAndClearPromptHandlers(ZLcom/onesignal/OneSignal$PromptActionResult;)V

    .line 237
    invoke-static {}, Lcom/onesignal/LocationController;->fireFailedComplete()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 240
    sget-object p2, Lcom/onesignal/OneSignal$PromptActionResult;->ERROR:Lcom/onesignal/OneSignal$PromptActionResult;

    invoke-static {p1, p2}, Lcom/onesignal/LocationController;->sendAndClearPromptHandlers(ZLcom/onesignal/OneSignal$PromptActionResult;)V

    .line 241
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 245
    :cond_9
    sget-object p0, Lcom/onesignal/OneSignal$PromptActionResult;->PERMISSION_GRANTED:Lcom/onesignal/OneSignal$PromptActionResult;

    invoke-static {p1, p0}, Lcom/onesignal/LocationController;->sendAndClearPromptHandlers(ZLcom/onesignal/OneSignal$PromptActionResult;)V

    .line 246
    invoke-static {}, Lcom/onesignal/LocationController;->startGetLocation()V

    :goto_1
    return-void
.end method

.method private static hasLocationPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 127
    invoke-static {p0, v0}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 128
    invoke-static {p0, v0}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static isGooglePlayServicesAvailable()Z
    .locals 1

    .line 286
    invoke-static {}, Lcom/onesignal/OSUtils;->isAndroidDeviceType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OSUtils;->hasGMSLocationLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isHMSAvailable()Z
    .locals 1

    .line 291
    invoke-static {}, Lcom/onesignal/OSUtils;->isHuaweiDeviceType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OSUtils;->hasHMSLocationLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static onFocusChange()V
    .locals 2

    .line 273
    sget-object v0, Lcom/onesignal/LocationController;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    invoke-static {}, Lcom/onesignal/LocationController;->isGooglePlayServicesAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-static {}, Lcom/onesignal/GMSLocationController;->onFocusChange()V

    .line 276
    monitor-exit v0

    return-void

    .line 279
    :cond_0
    invoke-static {}, Lcom/onesignal/LocationController;->isHMSAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    invoke-static {}, Lcom/onesignal/HMSLocationController;->onFocusChange()V

    .line 281
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static scheduleUpdate(Landroid/content/Context;)Z
    .locals 6

    .line 102
    invoke-static {p0}, Lcom/onesignal/LocationController;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/onesignal/OneSignal;->shareLocation:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/onesignal/LocationController;->getLastLocationTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 106
    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x12c

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x258

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    mul-long v4, v4, v2

    sub-long/2addr v4, v0

    .line 109
    invoke-static {p0, v4, v5}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleLocationUpdateTask(Landroid/content/Context;J)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method static sendAndClearPromptHandlers(ZLcom/onesignal/OneSignal$PromptActionResult;)V
    .locals 2

    if-nez p0, :cond_0

    .line 141
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p1, "LocationController sendAndClearPromptHandlers from non prompt flow"

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    sget-object p0, Lcom/onesignal/LocationController;->promptHandlers:Ljava/util/List;

    monitor-enter p0

    .line 146
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "LocationController calling prompt handlers"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 147
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/LocationController$LocationPromptCompletionHandler;

    .line 148
    invoke-virtual {v1, p1}, Lcom/onesignal/LocationController$LocationPromptCompletionHandler;->onAnswered(Lcom/onesignal/OneSignal$PromptActionResult;)V

    goto :goto_0

    .line 151
    :cond_1
    sget-object p1, Lcom/onesignal/LocationController;->promptHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static setLastLocationTime(J)V
    .locals 2

    .line 114
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_LOCATION_TIME"

    invoke-static {v0, v1, p0, p1}, Lcom/onesignal/OneSignalPrefs;->saveLong(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static startGetLocation()V
    .locals 3

    .line 253
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationController startGetLocation with lastLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/onesignal/LocationController;->locationHandlerThread:Lcom/onesignal/LocationController$LocationHandlerThread;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/onesignal/LocationController$LocationHandlerThread;

    invoke-direct {v0}, Lcom/onesignal/LocationController$LocationHandlerThread;-><init>()V

    sput-object v0, Lcom/onesignal/LocationController;->locationHandlerThread:Lcom/onesignal/LocationController$LocationHandlerThread;

    .line 259
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/onesignal/LocationController;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-static {}, Lcom/onesignal/GMSLocationController;->startGetLocation()V

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {}, Lcom/onesignal/LocationController;->isHMSAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    invoke-static {}, Lcom/onesignal/HMSLocationController;->startGetLocation()V

    goto :goto_0

    .line 264
    :cond_2
    invoke-static {}, Lcom/onesignal/LocationController;->fireFailedComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 267
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Location permission exists but there was an error initializing: "

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    invoke-static {}, Lcom/onesignal/LocationController;->fireFailedComplete()V

    :goto_0
    return-void
.end method
