.class Lcom/onesignal/UserStateSynchronizer$3;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/UserStateSynchronizer;->doPutSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/UserStateSynchronizer;

.field final synthetic val$dependDiff:Lorg/json/JSONObject;

.field final synthetic val$jsonBody:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/onesignal/UserStateSynchronizer;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/onesignal/UserStateSynchronizer$3;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iput-object p2, p0, Lcom/onesignal/UserStateSynchronizer$3;->val$jsonBody:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/onesignal/UserStateSynchronizer$3;->val$dependDiff:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 320
    sget-object p3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed PUT sync request with status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 322
    iget-object p3, p0, Lcom/onesignal/UserStateSynchronizer$3;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object p3, p3, Lcom/onesignal/UserStateSynchronizer;->LOCK:Ljava/lang/Object;

    monitor-enter p3

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$3;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const-string v1, "No user with this id found"

    invoke-static {v0, p1, p2, v1}, Lcom/onesignal/UserStateSynchronizer;->access$200(Lcom/onesignal/UserStateSynchronizer;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$3;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v0}, Lcom/onesignal/UserStateSynchronizer;->access$400(Lcom/onesignal/UserStateSynchronizer;)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$3;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v0, p1}, Lcom/onesignal/UserStateSynchronizer;->access$500(Lcom/onesignal/UserStateSynchronizer;I)V

    .line 327
    :goto_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    iget-object p3, p0, Lcom/onesignal/UserStateSynchronizer$3;->val$jsonBody:Lorg/json/JSONObject;

    const-string v0, "tags"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 330
    iget-object p3, p0, Lcom/onesignal/UserStateSynchronizer$3;->this$0:Lcom/onesignal/UserStateSynchronizer;

    new-instance v0, Lcom/onesignal/OneSignal$SendTagsError;

    invoke-direct {v0, p1, p2}, Lcom/onesignal/OneSignal$SendTagsError;-><init>(ILjava/lang/String;)V

    invoke-static {p3, v0}, Lcom/onesignal/UserStateSynchronizer;->access$600(Lcom/onesignal/UserStateSynchronizer;Lcom/onesignal/OneSignal$SendTagsError;)V

    .line 332
    :cond_1
    iget-object p3, p0, Lcom/onesignal/UserStateSynchronizer$3;->val$jsonBody:Lorg/json/JSONObject;

    const-string v0, "external_user_id"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 333
    sget-object p3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error setting external user id for push with status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and message: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/onesignal/UserStateSynchronizer$3;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {p1}, Lcom/onesignal/UserStateSynchronizer;->access$700(Lcom/onesignal/UserStateSynchronizer;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 327
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 340
    iget-object p1, p0, Lcom/onesignal/UserStateSynchronizer$3;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object p1, p1, Lcom/onesignal/UserStateSynchronizer;->LOCK:Ljava/lang/Object;

    monitor-enter p1

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$3;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v0, v0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$3;->val$dependDiff:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$3;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 342
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$3;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$3;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/onesignal/UserStateSynchronizer;->onSuccessfulSync(Lorg/json/JSONObject;)V

    .line 343
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object p1, p0, Lcom/onesignal/UserStateSynchronizer$3;->val$jsonBody:Lorg/json/JSONObject;

    const-string v0, "tags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 346
    iget-object p1, p0, Lcom/onesignal/UserStateSynchronizer$3;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {p1}, Lcom/onesignal/UserStateSynchronizer;->access$800(Lcom/onesignal/UserStateSynchronizer;)V

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/onesignal/UserStateSynchronizer$3;->val$jsonBody:Lorg/json/JSONObject;

    const-string v0, "external_user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 349
    iget-object p1, p0, Lcom/onesignal/UserStateSynchronizer$3;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {p1}, Lcom/onesignal/UserStateSynchronizer;->access$900(Lcom/onesignal/UserStateSynchronizer;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 343
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
