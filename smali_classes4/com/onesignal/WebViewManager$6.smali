.class Lcom/onesignal/WebViewManager$6;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Lcom/onesignal/InAppMessageView$InAppMessageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/WebViewManager;->createNewInAppMessageView(Lcom/onesignal/WebViewManager$Position;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/WebViewManager;


# direct methods
.method constructor <init>(Lcom/onesignal/WebViewManager;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/onesignal/WebViewManager$6;->this$0:Lcom/onesignal/WebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageWasDismissed()V
    .locals 2

    .line 387
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/WebViewManager$6;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v1}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessageController;->messageWasDismissed(Lcom/onesignal/OSInAppMessage;)V

    .line 388
    iget-object v0, p0, Lcom/onesignal/WebViewManager$6;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v0}, Lcom/onesignal/WebViewManager;->access$1000(Lcom/onesignal/WebViewManager;)V

    return-void
.end method

.method public onMessageWasShown()V
    .locals 2

    .line 382
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/WebViewManager$6;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v1}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessageController;->onMessageWasShown(Lcom/onesignal/OSInAppMessage;)V

    return-void
.end method
