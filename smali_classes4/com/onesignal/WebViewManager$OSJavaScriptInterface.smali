.class Lcom/onesignal/WebViewManager$OSJavaScriptInterface;
.super Ljava/lang/Object;
.source "WebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/WebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OSJavaScriptInterface"
.end annotation


# static fields
.field static final EVENT_TYPE_ACTION_TAKEN:Ljava/lang/String; = "action_taken"

.field static final EVENT_TYPE_KEY:Ljava/lang/String; = "type"

.field static final EVENT_TYPE_RENDERING_COMPLETE:Ljava/lang/String; = "rendering_complete"

.field static final GET_PAGE_META_DATA_JS_FUNCTION:Ljava/lang/String; = "getPageMetaData()"

.field static final IAM_DISPLAY_LOCATION_KEY:Ljava/lang/String; = "displayLocation"

.field static final IAM_DRAG_TO_DISMISS_DISABLED_KEY:Ljava/lang/String; = "dragToDismissDisabled"

.field static final IAM_PAGE_META_DATA_KEY:Ljava/lang/String; = "pageMetaData"

.field static final JS_OBJ_NAME:Ljava/lang/String; = "OSAndroid"


# instance fields
.field final synthetic this$0:Lcom/onesignal/WebViewManager;


# direct methods
.method constructor <init>(Lcom/onesignal/WebViewManager;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDisplayLocation(Lorg/json/JSONObject;)Lcom/onesignal/WebViewManager$Position;
    .locals 4

    const-string v0, "displayLocation"

    .line 198
    sget-object v1, Lcom/onesignal/WebViewManager$Position;->FULL_SCREEN:Lcom/onesignal/WebViewManager$Position;

    .line 200
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "FULL_SCREEN"

    .line 201
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onesignal/WebViewManager$Position;->valueOf(Ljava/lang/String;)Lcom/onesignal/WebViewManager$Position;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method private getDragToDismissDisabled(Lorg/json/JSONObject;)Z
    .locals 1

    :try_start_0
    const-string v0, "dragToDismissDisabled"

    .line 210
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private getPageHeightData(Lorg/json/JSONObject;)I
    .locals 2

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v0}, Lcom/onesignal/WebViewManager;->access$400(Lcom/onesignal/WebViewManager;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "pageMetaData"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onesignal/WebViewManager;->access$500(Landroid/app/Activity;Lorg/json/JSONObject;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method private handleActionTaken(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "body"

    .line 217
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "id"

    const/4 v1, 0x0

    .line 218
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v2}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    if-eqz v2, :cond_0

    .line 220
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    iget-object v2, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v2}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/onesignal/OSInAppMessageController;->onMessageActionOccurredOnPreview(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 222
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    iget-object v2, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v2}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/onesignal/OSInAppMessageController;->onMessageActionOccurredOnMessage(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    const-string v0, "close"

    .line 225
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 227
    iget-object p1, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-virtual {p1, v1}, Lcom/onesignal/WebViewManager;->dismissAndAwaitNextMessage(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    :cond_2
    return-void
.end method

.method private handleRenderComplete(Lorg/json/JSONObject;)V
    .locals 3

    .line 183
    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->getDisplayLocation(Lorg/json/JSONObject;)Lcom/onesignal/WebViewManager$Position;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/onesignal/WebViewManager$Position;->FULL_SCREEN:Lcom/onesignal/WebViewManager$Position;

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->getPageHeightData(Lorg/json/JSONObject;)I

    move-result v1

    .line 185
    :goto_0
    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->getDragToDismissDisabled(Lorg/json/JSONObject;)Z

    move-result p1

    .line 186
    iget-object v2, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v2, v0, v1, p1}, Lcom/onesignal/WebViewManager;->access$300(Lcom/onesignal/WebViewManager;Lcom/onesignal/WebViewManager$Position;IZ)V

    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 166
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSJavaScriptInterface:postMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    .line 169
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "rendering_complete"

    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-direct {p0, v0}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->handleRenderComplete(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const-string v1, "action_taken"

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {p1}, Lcom/onesignal/WebViewManager;->access$200(Lcom/onesignal/WebViewManager;)Lcom/onesignal/InAppMessageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/InAppMessageView;->isDragging()Z

    move-result p1

    if-nez p1, :cond_1

    .line 175
    invoke-direct {p0, v0}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->handleActionTaken(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
