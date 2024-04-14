.class Lcom/onesignal/WebViewManager$4$1;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/WebViewManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/onesignal/WebViewManager$4;


# direct methods
.method constructor <init>(Lcom/onesignal/WebViewManager$4;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/onesignal/WebViewManager$4$1;->this$1:Lcom/onesignal/WebViewManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 271
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onesignal/WebViewManager$4$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 2

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/WebViewManager$4$1;->this$1:Lcom/onesignal/WebViewManager$4;

    iget-object v0, v0, Lcom/onesignal/WebViewManager$4;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v0}, Lcom/onesignal/WebViewManager;->access$400(Lcom/onesignal/WebViewManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/onesignal/WebViewManager;->access$500(Landroid/app/Activity;Lorg/json/JSONObject;)I

    move-result p1

    .line 276
    iget-object v0, p0, Lcom/onesignal/WebViewManager$4$1;->this$1:Lcom/onesignal/WebViewManager$4;

    iget-object v0, v0, Lcom/onesignal/WebViewManager$4;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onesignal/WebViewManager;->access$800(Lcom/onesignal/WebViewManager;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
