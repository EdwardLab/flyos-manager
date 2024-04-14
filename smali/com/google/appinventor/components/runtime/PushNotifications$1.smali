.class final Lcom/google/appinventor/components/runtime/PushNotifications$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PushNotifications;->GetAvailableTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PushNotifications;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PushNotifications$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 224
    new-instance v0, Lcom/google/appinventor/components/runtime/PushNotifications$1$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/PushNotifications$1$1;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications$1;)V

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getTags(Lcom/onesignal/OneSignal$GetTagsHandler;)V

    return-void
.end method
