.class Lcom/onesignal/OSInAppMessageController$4;
.super Ljava/lang/Object;
.source "OSInAppMessageController.java"

# interfaces
.implements Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageController;->showMultiplePrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageController;

.field final synthetic val$inAppMessage:Lcom/onesignal/OSInAppMessage;

.field final synthetic val$prompts:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$4;->this$0:Lcom/onesignal/OSInAppMessageController;

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageController$4;->val$inAppMessage:Lcom/onesignal/OSInAppMessage;

    iput-object p3, p0, Lcom/onesignal/OSInAppMessageController$4;->val$prompts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/onesignal/OneSignal$PromptActionResult;)V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$4;->this$0:Lcom/onesignal/OSInAppMessageController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/OSInAppMessageController;->access$302(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessagePrompt;)Lcom/onesignal/OSInAppMessagePrompt;

    .line 341
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAM prompt to handle finished with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$4;->val$inAppMessage:Lcom/onesignal/OSInAppMessage;

    iget-boolean v0, v0, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal$PromptActionResult;->LOCATION_PERMISSIONS_MISSING_MANIFEST:Lcom/onesignal/OneSignal$PromptActionResult;

    if-ne p1, v0, :cond_0

    .line 345
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController$4;->this$0:Lcom/onesignal/OSInAppMessageController;

    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$4;->val$inAppMessage:Lcom/onesignal/OSInAppMessage;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController$4;->val$prompts:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/onesignal/OSInAppMessageController;->access$400(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController$4;->this$0:Lcom/onesignal/OSInAppMessageController;

    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$4;->val$inAppMessage:Lcom/onesignal/OSInAppMessage;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController$4;->val$prompts:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/onesignal/OSInAppMessageController;->access$500(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    :goto_0
    return-void
.end method
