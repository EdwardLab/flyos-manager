.class final Lcom/onesignal/OneSignal$3;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/LocationController$LocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->startLocationUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lcom/onesignal/LocationController$PermissionType;
    .locals 1

    .line 991
    sget-object v0, Lcom/onesignal/LocationController$PermissionType;->STARTUP:Lcom/onesignal/LocationController$PermissionType;

    return-object v0
.end method

.method public onComplete(Lcom/onesignal/LocationController$LocationPoint;)V
    .locals 0

    .line 995
    invoke-static {p1}, Lcom/onesignal/OneSignal;->access$602(Lcom/onesignal/LocationController$LocationPoint;)Lcom/onesignal/LocationController$LocationPoint;

    const/4 p1, 0x1

    .line 996
    invoke-static {p1}, Lcom/onesignal/OneSignal;->access$702(Z)Z

    .line 997
    invoke-static {}, Lcom/onesignal/OneSignal;->access$800()V

    return-void
.end method
