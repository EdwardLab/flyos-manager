.class final Lcom/google/appinventor/components/runtime/PushNotifications$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PushNotifications;->GotAvailableTags(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Lcom/google/appinventor/components/runtime/util/YailList;

.field private synthetic TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PushNotifications$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/PushNotifications$3;->TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/PushNotifications$3;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PushNotifications$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PushNotifications$3;->TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PushNotifications$3;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "GotAvailableTags"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
