.class Lcom/onesignal/PermissionsActivity$1;
.super Ljava/lang/Object;
.source "PermissionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/PermissionsActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/PermissionsActivity;

.field final synthetic val$grantResults:[I


# direct methods
.method constructor <init>(Lcom/onesignal/PermissionsActivity;[I)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/onesignal/PermissionsActivity$1;->this$0:Lcom/onesignal/PermissionsActivity;

    iput-object p2, p0, Lcom/onesignal/PermissionsActivity$1;->val$grantResults:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/onesignal/PermissionsActivity$1;->val$grantResults:[I

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    aget v0, v0, v3

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 111
    sget-object v0, Lcom/onesignal/OneSignal$PromptActionResult;->PERMISSION_GRANTED:Lcom/onesignal/OneSignal$PromptActionResult;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal$PromptActionResult;->PERMISSION_DENIED:Lcom/onesignal/OneSignal$PromptActionResult;

    .line 112
    :goto_0
    invoke-static {v2, v0}, Lcom/onesignal/LocationController;->sendAndClearPromptHandlers(ZLcom/onesignal/OneSignal$PromptActionResult;)V

    if-eqz v3, :cond_2

    .line 114
    invoke-static {}, Lcom/onesignal/LocationController;->startGetLocation()V

    goto :goto_1

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/onesignal/PermissionsActivity$1;->this$0:Lcom/onesignal/PermissionsActivity;

    invoke-static {v0}, Lcom/onesignal/PermissionsActivity;->access$000(Lcom/onesignal/PermissionsActivity;)V

    .line 117
    invoke-static {}, Lcom/onesignal/LocationController;->fireFailedComplete()V

    :goto_1
    return-void
.end method
