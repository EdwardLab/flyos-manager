.class Lcom/onesignal/OSInAppMessageController$11;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OSInAppMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageController;->displayPreviewMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageController;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$11;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const-string p3, "html"

    .line 729
    invoke-static {p3, p1, p2}, Lcom/onesignal/OSInAppMessageController;->access$200(Ljava/lang/String;ILjava/lang/String;)V

    .line 731
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController$11;->this$0:Lcom/onesignal/OSInAppMessageController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/onesignal/OSInAppMessageController;->access$1100(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V

    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 4

    .line 737
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "html"

    .line 738
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 740
    new-instance v1, Lcom/onesignal/OSInAppMessage;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/onesignal/OSInAppMessage;-><init>(Z)V

    const-string v2, "display_duration"

    .line 742
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 743
    invoke-virtual {v1, v2, v3}, Lcom/onesignal/OSInAppMessage;->setDisplayDuration(D)V

    .line 745
    invoke-static {v1, p1}, Lcom/onesignal/WebViewManager;->showHTMLString(Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 747
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
